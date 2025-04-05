# Prompt for user inputs
$FolderPath = Read-Host "Enter the drive letter and path to the share (e.g., A:\ISOs)"
$ShareName = Read-Host "Enter the name for the share"
$UserName = Read-Host "Enter the username for the share"
$SecurePassword = Read-Host "Enter password" -AsSecureString
$UserDescription = Read-Host "Enter a description for the user"

# Create the local user
New-LocalUser -Name $UserName -Password $SecurePassword -Description $UserDescription

# Add user to 'Users' group (optional)
Add-LocalGroupMember -Group "Users" -Member $UserName

# Create the SMB share
New-SmbShare -Name $ShareName -Path $FolderPath -FullAccess $UserName -EncryptData $true

# Set NTFS permissions
icacls $FolderPath /grant "$UserName:F"

Write-Host "Share '$ShareName' created successfully for user '$UserName'."
