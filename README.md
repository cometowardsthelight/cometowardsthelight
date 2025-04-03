Hi there 👋 

🌱 I’m currently learning about Git and the development lifecycle, focusing on more collaboration and the sharing of ideas. 

I'm entering my 3rd year as a Junior Network and Systems Administrator for a large multi-national. It has become apparent to me that I need to continuously push myself and make a choice to become more collaborative and align my time to knowledge acquisition and people networking. 

I recently bought a 4TB SSD and chucked a bunch of memory into my home PC. I have been using Hyper-V Manager via Windows 10 Pro to build labs simulating my interests. I am naive and most definitely 'green'. I am choosing to put myself out there and become more public about who I am and the things I attempt to achieve or play with from a personal/hobbyist point of view, and I think this mindset will lend itself nicely to a skills acquisition phase in my role at work. 

In the last few weeks, I have: 

Bought my first domain name.
Hyper-V Manager built 5 x Ubuntu Server 24.04 LTS
1. Built my first DNS server - bind9
2. Built my first reverse proxy - nginx | used certbot to enable SSL/TLS
3. Built my first mail-exchange server - Postfix & Dovecot (WIP)
4. Built my first mail-filter server - rspamd (WIP) 
5. Built my first docker server: 
      running 2 containers: 
        OpenVPN-as
        Keycloak 

I did the above after work during nights over the course of a week. I would like to get OpenVPN SAML Auth working, that's my current after work project. 

I then became abundantly clear to me that I need to formalize my learning and adhere to a higher standard, coasting and relying on a companion(co-pilot) is going to create a certain type of sysadmin. Out of respect for those before me I think I should invest time in vendor specific training. 
 
I have started doing courses over at The Linux Foundation, currently working my way through LFS101. Ambitiously I have already started a subscription on Coursera and enrolled in IBM Backend Dev-Ops, which a completion time estimated to be around 4-6months IIRC at 10 hours a week. I'm about a week past the 7-day free trial and I've yet to look at it. Between the excitement of building LABs to satisfy my curiosities in my role at work watching senior colleagues and other members from other teams realize their work project I've identified a newfound passion for technology. I haven't been this excited about learning and tinkering in 20 years, I turned 41 last week. 

Outside of the above Ubuntu Server LTS cli lab work I have also:

Built another lab (weekend just gone) on a private vSwitch:
Windows Server 2025 x 4 
Ceated a domain called isolated.network using: 
1 x primary domain controller 
1 x read-only domain controller 
1 x DHCP server with a /24 scope + options 66 and 67 
1 x Deployment server which initially had WDS/MDT serving boot.wim and install.wim
notes: EFI PXE boot worked against a guest VM, but Windows 11 Pro has a locked bootloader by Microsoft so didn't work. I ended up binning WDS/MDT and started to go down the Configuration Manager((S)CCM) route but it's a bit of a cobbled mess regarding the user experience and installation, so I paused on that and decided I needed to focus more on my study. 

It's now Thursday and I've been scripting things at work via Co-Pilot having great results but my senior colleague as mentioned that Microsoft Teams main chat for our department isn't the place for my rubber-ducking ad hoc updates and I need to put stuff in the corporate repository at work, and it dawned on me that I had no idea what he meant and it's pretty embarrassing at this juncture of my career to be admitting that. So that's why I've come here and signed up and completed the intro course. I have no idea what I will do in future, but the plan is to have this here, having completed the first exercise I now understand perfectly well the esoteric 'git' related terminology I've been hearing for years in my career and just nodded along to. 

It's up to me to Get Good. And this is me putting it out there, so it's dated and public. My plan is to do an hour of LFS101 after work during the week, and do 2hours Saturday mornings, and 2hours Sunday mornings until completion and then move on to IBM Back dev-ops which is already taking payment from my CC, heh. I'm really glad I completed the GitHub exercise and created my public repository. 

Thank you for reading, peace and love. W 

 
