#!/bin/bash

# Prompt for user inputs
read -p "Enter the disk device(s) for ZFS (e.g., /dev/sda1 or /dev/sda1 /dev/sdb1): " DiskDevices
read -p "Enter the name for the ZFS pool (e.g., zraid0): " ZfsPool
read -p "Enter the mount point for the ZFS pool (default: /mnt/$ZfsPool): " MountPoint

# Default mount point if left blank
if [ -z "$MountPoint" ]; then
    MountPoint="/mnt/$ZfsPool"
fi

echo "Starting Proxmox setup..."

# Step 1: Confirm available disks in the system
lsblk

# Step 2: Disable Proxmox enterprise repositories
sed -i 's/^deb https:\/\/enterprise.proxmox.com/#deb https:\/\/enterprise.proxmox.com/' /etc/apt/sources.list.d/pve-enterprise.list

# Step 3: Disable the Proxmox Ceph enterprise repository (if exists)
sed -i 's/^deb https:\/\/enterprise.proxmox.com/#deb https:\/\/enterprise.proxmox.com/' /etc/apt/sources.list.d/ceph-quincy.list

# Step 4: Enable the Proxmox non-subscription repository
echo "deb http://download.proxmox.com/debian bookworm pve-no-subscription" > /etc/apt/sources.list.d/pve-no-subscription.list

# Step 5: Update package lists, perform a full system upgrade, and install ZFS
apt update -y && apt full-upgrade -y && apt install -y zfsutils-linux

echo "Proxmox repository setup completed. Proceeding with ZFS configuration..."

# Ensure ZFS is installed
apt install -y zfsutils-linux

# Create the ZFS pool dynamically based on user input
echo "Creating ZFS pool named $ZfsPool with disk(s): $DiskDevices..."
zpool create $ZfsPool $DiskDevices

# Verify the pool creation
zpool status

# Set the mount point dynamically
echo "Setting ZFS mount point to $MountPoint..."
zfs set mountpoint=$MountPoint $ZfsPool

# Enable compression for efficiency
echo "Enabling compression on ZFS pool $ZfsPool..."
zfs set compression=on $ZfsPool

echo "Proxmox setup and ZFS pool configuration complete!"
