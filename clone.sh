#!/bin/bash

echo "making new dir ./Tools"
mkdir -p Tools

echo "Moving to the dir ./Tools"
cd Tools

echo "Cloning from github"

tools[0]=https://github.com/rasta-mouse/ThreatCheck.git
tools[1]=https://github.com/GhostPack/Seatbelt.git
tools[2]=https://github.com/GhostPack/Rubeus.git
tools[3]=https://github.com/praetorian-inc/PortBender.git
tools[4]=https://github.com/cube0x0/SharpSystemTriggers.git
tools[5]=https://github.com/GhostPack/SharpDPAPI.git
tools[6]=https://github.com/PowerShellMafia/PowerSploit.git
tools[7]=https://github.com/FuzzySecurity/StandIn.git
tools[8]=https://github.com/Mayyhem/SharpSCCM.git
tools[9]=https://github.com/mandiant/SharPersist.git
tools[10]=https://github.com/tomcarver16/ADSearch.git
tools[11]=https://github.com/leoloobeek/LAPSToolkit.git
tools[12]=https://github.com/CCob/SweetPotato.git
tools[13]=https://github.com/GhostPack/Certify.git
tools[14]=https://github.com/dnSpy/dnSpy.git
tools[15]=https://github.com/GhostPack/ForgeCert.git
tools[16]=https://github.com/cube0x0/KrbRelay.git
tools[17]=https://github.com/dafthack/MailSniper.git
tools[18]=https://github.com/ParrotSec/mimikatz.git
tools[19]=https://github.com/rasta-mouse/SCMUACBypass.git
tools[20]=https://github.com/FSecureLABS/SharpGPOAbuse.git
tools[21]=https://github.com/GhostPack/SharpUp.git
tools[22]=https://github.com/tevora-threat/SharpView.git
tools[23]=https://github.com/GhostPack/SharpWMI.git
tools[24]=https://github.com/skahwah/SQLRecon.git
tools[25]=https://github.com/NetSPI/PowerUpSQL.git
tools[26]=https://github.com/eladshamir/Whisker.git
tools[27]=https://github.com/mgeeky/Stracciatella.git
tools[28]=https://github.com/Flangvik/NetLoader.git
tools[29]=https://github.com/danielbohannon/Invoke-Obfuscation

for i in ${tools[@]}; do
    git clone $i
done
