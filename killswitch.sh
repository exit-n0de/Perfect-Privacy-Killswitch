#!/bin/bash

# Things you should change:
# IP of your Subnet
# inet_adapter -> Check your Network Adapters. Choose the adapter you are connected to the internet with.
# Use ifconfig or ./killswitch.sh -n to check


HOMENET="192.168.2.0/24"
inet_adapter="wlp2s0"





# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# !!!!! DONT CHANGE ANYTHING BELOW HERE !!!!!
# at least that would be very nice of you :)

if [ $# -eq 0 ];
then

	clear
	echo ""
	echo -e "\e[1;35m########  ######## ########  ######## ########  ######  ########\e[0m"
	echo -e "\e[1;35m##     ## ##       ##     ## ##       ##       ##    ##    ##\e[0m"
	echo -e "\e[1;35m##     ## ##       ##     ## ##       ##       ##          ##\e[0m"
	echo -e "\e[1;35m########  ######   ########  ######   ######   ##          ##\e[0m"
	echo -e "\e[1;35m##        ##       ##   ##   ##       ##       ##          ##\e[0m"
	echo -e "\e[1;35m##        ##       ##    ##  ##       ##       ##    ##    ##\e[0m"
	echo -e "\e[1;35m##        ######## ##     ## ##       ########  ######     ##\e[0m"
	echo -e "\e[0;33m#############################################################\e[0m"
	echo -e "\e[1;36m########  ########  #### ##     ##    ###     ######  ##    ##\e[0m"
	echo -e "\e[1;36m##     ## ##     ##  ##  ##     ##   ## ##   ##    ##  ##  ##\e[0m"
	echo -e "\e[1;36m##     ## ##     ##  ##  ##     ##  ##   ##  ##         ####\e[0m"
	echo -e "\e[1;36m########  ########   ##  ##     ## ##     ## ##          ##\e[0m"
	echo -e "\e[1;36m##        ##   ##    ##   ##   ##  ######### ##          ##\e[0m"
	echo -e "\e[1;36m##        ##    ##   ##    ## ##   ##     ## ##    ##    ##\e[0m"
	echo -e "\e[1;36m##        ##     ## ####    ###    ##     ##  ######     ##\e[0m"
	echo -e "\e[1;31m          +++ Unofficial killswitch by exit_n0de +++				\e[0m"
	echo ""
	echo -e "\e[1;31m            [!] root privileges are required!! [!]         \e[0m"
	echo ""
	echo -e "\e[1;36m                            Usage                          \e[0m"
	echo ""
	echo "Before you use the killswitch, make sure you have set HOMENET and inet_adapter in this file correct."
	echo "Open killswitch.sh with a texteditor and edit line 9 and 10."
	echo ""
	echo -e "\e[1;36mActivate killswitch for specific Server Location:\e[0m"
	echo ""
	echo "./killswitch.sh CH1       - If you want to connect to a Server in Basel/Switzerland"
	echo ""
	echo ""
	echo -e "\e[1;36mGet Network Adapters:\e[0m"
	echo ""
	echo "./killswitch.sh -n"
	echo ""
	echo ""
	echo -e "\e[1;36mReset iptables:\e[0m"
	echo ""
	echo "./killswitch.sh -r"
	echo ""
	echo ""
	echo -e "\e[1;36mList all Server Locations:\e[0m"
	echo ""
	echo "./killswitch -s"
	echo ""
	echo ""
	echo -e "\e[1;36mYou would like to donate something to me?\e[0m"
	echo ""
	echo "./killswitch.sh -d"
	echo ""

elif [ $1 == "-d" ];
then

	echo ""
	echo -e "\e[1;36mThank you for using my killswitch!\e[0m"
	echo ""
	echo "If you like it, then rate it on GitHub and donate if you want."
	echo ""
	echo "Bitcoin: 1DnFABekbJ3TpdxYuaKbTwuNz6kYnvfSTa"
	echo ""
	echo ""
	echo "If you have any questions feel free to let me know:"
	echo ""
	echo "Mail:                    exit_n0de@gmx.net"
	echo "Twitter:                 https://twitter.com/e_n0de"
	echo "Instagram:               https://www.instagram.com/exit_n0de/"
	echo "GitHub:                  https://github.com/exit-n0de"
	echo ""

elif [ $1 == "-n" ];
then

	echo ""
	sudo lshw -class network -short
	echo ""

elif [ $1 == "-r" ];
then

	sudo iptables -P INPUT ACCEPT
	sudo iptables -P FORWARD ACCEPT
	sudo iptables -P OUTPUT ACCEPT
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] iptables successfully resetted\e[0m"
	echo -e "\e[1;31m[!] Watch out! All incoming and outgoing network traffic is now possible! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "-s" ];
then

	echo ""
	echo "Possible Server Locations:"
	echo ""
	echo -e "\e[1;36mAustralia\e[0m"
	echo "AU1 - Melbourne     Active Server: 1"
	echo ""
	echo -e "\e[1;36mCanada\e[0m"
	echo "CA1 - Montreal      Active Server: 1"
	echo ""
	echo -e "\e[1;36mChina\e[0m"
	echo "CN1 - Hongkong      Active Server: 1"
	echo ""
	echo -e "\e[1;36mCzech Republic\e[0m"
	echo "CZ1 - Prague        Active Server: 1"
	echo ""
	echo -e "\e[1;36mDenmark\e[0m"
	echo "DK1 - Copenhagen    Active Server: 1"
	echo ""
	echo -e "\e[1;36mFrance\e[0m"
	echo "FR1 - Calais        Active Server: 1"
	echo "FR2 - Paris         Active Server: 1"
	echo "FR3 - Strasbourg    Active Server: 1"
	echo ""
	echo -e "\e[1;36mGermany\e[0m"
	echo "DE1 - Berlin        Active Server: 1"
	echo "DE2 - Erfurt        Active Server: 1"
	echo "DE3 - Frankfurt     Active Server: 2"
	echo "DE4 - Hamburg       Active Server: 1"
	echo "DE5 - Nuremberg     Active Server: 2"
	echo ""
	echo -e "\e[1;36mGreat Britain\e[0m"
	echo "GB1 - London        Active Server: 2"
	echo "GB2 - Manchester    Active Server: 1"
	echo ""
	echo -e "\e[1;36mIceland\e[0m"
	echo "IS1 - Reykjavik     Active Server: 1"
	echo ""
	echo -e "\e[1;36mItaly\e[0m"
	echo "IT1 - Milan         Active Server: 1"
	echo ""
	echo -e "\e[1;36mIsrael\e[0m"
	echo "IL1 - Tel Aviv      Active Server: 1"
	echo ""
	echo -e "\e[1;36mJapan\e[0m"
	echo "JP1 - Tokyo         Active Server: 1"
	echo ""
	echo -e "\e[1;36mLatvia\e[0m"
	echo "LV1 - Riga          Active Server: 1"
	echo ""
	echo -e "\e[1;36mLuxembourg\e[0m"
	echo "LU1 - Steinsel      Active Server: 2"
	echo ""
	echo -e "\e[1;36mNetherlands\e[0m"
	echo "NL1 - Amsterdam     Active Server: 5"
	echo "NL2 - Rotterdam     Active Server: 5"
	echo ""
	echo -e "\e[1;36mNorway\e[0m"
	echo "NO1 - Oslo          Active Server: 1"
	echo ""
	echo -e "\e[1;36mRomania\e[0m"
	echo "RO1 - Bucharest     Active Server: 1"
	echo ""
	echo -e "\e[1;36mRussia\e[0m"
	echo "RU1 - Moscow        Active Server: 2"
	echo ""
	echo -e "\e[1;36mSerbia\e[0m"
	echo "RS1 - Belgrade      Active Server: 1"
	echo ""
	echo -e "\e[1;36mSingapore\e[0m"
	echo "SG1 - Singapore     Active Server: 2"
	echo ""
	echo -e "\e[1;36mSpain\e[0m"
	echo "ES1 - Madrid        Active Server: 1"
	echo ""
	echo -e "\e[1;36mSweden\e[0m"
	echo "SE1 - Malmoe        Active Server: 1"
	echo "SE2 - Stockholm     Active Server: 2"
	echo ""
	echo -e "\e[1;36mSwitzerland\e[0m"
	echo "CH1 - Basel         Active Server: 2"
	echo "CH2 - Zurich        Active Server: 3"
	echo ""
	echo -e "\e[1;36mTurkey\e[0m"
	echo "TR1 - Istanbul      Active Server: 1"
	echo ""
	echo -e "\e[1;36mUnited States of America\e[0m"
	echo "US1 - Chicago       Active Server: 1"
	echo "US1 - Dallas        Active Server: 1"
	echo "US3 - Los Angeles   Active Server: 1"
	echo "US4 - Miami         Active Server: 1"
	echo "US5 - New York      Active Server: 1"
	echo ""
	echo ""

elif [ $1 == "CH1" ];
then
	SERVER1="82.199.134.162"
	SERVER2="80.255.7.66"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Basel - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Basel - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Basel.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "CH2" ];
then
	SERVER1="152.89.162.226"
	SERVER2="37.120.213.194"
	SERVER3="37.120.213.210"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Zurich - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Zurich - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# Zurich - Server 3
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Zurich.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "NL1" ];
then
	SERVER1="85.17.28.145"
	SERVER2="95.211.95.232"
	SERVER3="95.211.95.244"
	SERVER4="37.48.94.1"
	SERVER5="85.17.64.131"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Amsterdam - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Amsterdam - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# Amsterdam - Server 3
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1151
	# Amsterdam - Server 4
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 1151
	# Amsterdam - Server 5
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Amsterdam.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "NL2" ];
then
	SERVER1="31.204.150.106"
	SERVER2="31.204.150.138"
	SERVER3="31.204.152.102"
	SERVER4="31.204.152.189"
	SERVER5="31.204.153.106"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Rotterdam - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Rotterdam - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# Rotterdam - Server 3
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER3 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER3 -i $inet_adapter -p udp -m udp --sport 1151
	# Rotterdam - Server 4
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER4 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER4 -i $inet_adapter -p udp -m udp --sport 1151
	# Rotterdam - Server 5
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER5 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER5 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Rotterdam.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "DE1" ];
then
	SERVER1="80.255.7.98"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Berlin - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Berlin.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "DE2" ];
then
	SERVER1="217.114.218.18"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Erfurt - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Erfurt.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "DE3" ];
then
	SERVER1="178.162.194.30"
	SERVER2="37.58.58.239"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Frankfurt - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Frankfurt - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Frankfurt.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "DE4" ];
then
	SERVER1="80.255.7.114"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Hamburg - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Hamburg.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "DE5" ];
then
	SERVER1="81.95.5.34"
	SERVER2="80.255.10.194"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Nuremberg - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Nuremberg - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Nuremberg.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "RS1" ];
then
	SERVER1="152.89.160.98"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Belgrade - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Belgrade.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "RO1" ];
then
	SERVER1="185.57.82.25"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Bucharest - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Bucharest.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "FR1" ];
then
	SERVER1="149.202.77.77"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Calais - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Calais.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "FR2" ];
then
	SERVER1="5.135.143.84"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Paris - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Paris.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "FR3" ];
then
	SERVER1="37.187.163.66"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Strasbourg - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Strasbourg.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "US1" ];
then
	SERVER1="104.237.193.26"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Chicago - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Chicago.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "US2" ];
then
	SERVER1="138.128.136.164"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Dallas - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Dallas.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "US3" ];
then
	SERVER1="162.245.206.242"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Los Angeles - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Los Angeles.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "US4" ];
then
	SERVER1="38.132.118.66"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Miami - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Miami.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "US5" ];
then
	SERVER1="96.9.246.194"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# New York - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for New York.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "DK1" ];
then
	SERVER1="185.152.32.66"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Copenhagen - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Copenhagen.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "CN1" ];
then
	SERVER1="209.58.188.129"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Hongkong - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Hongkong.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "TR1" ];
then
	SERVER1="185.65.205.18"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Istanbul - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Istanbul.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "GB1" ];
then
	SERVER1="82.199.130.34"
	SERVER2="5.187.21.98"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# London - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# London - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for London.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "GB2" ];
then
	SERVER1="217.138.196.98"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Manchester - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Manchester.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "ES1" ];
then
	SERVER1="185.183.106.146"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Madrid - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Madrid.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "SE1" ];
then
	SERVER1="194.68.170.51"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Malmoe - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Malmoe.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "SE2" ];
then
	SERVER1="185.41.240.18"
	SERVER2="185.217.1.2"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Stockholm - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Stockholm - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Stockholm.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "AU1" ];
then
	SERVER1="168.1.112.72"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Melbourne - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Melbourne.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "IT1" ];
then
	SERVER1="192.145.127.210"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Milan - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Milan.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "CA1" ];
then
	SERVER1="167.114.209.103"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Montreal - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Montreal.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "RU1" ];
then
	SERVER1="192.162.100.240"
	SERVER2="192.162.100.241"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Moscow - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Moscow - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Moscow.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "NO1" ];
then
	SERVER1="91.205.187.186"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Oslo - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Oslo.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "CZ1" ];
then
	SERVER1="195.138.249.2"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Prague - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Prague.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "IS1" ];
then
	SERVER1="82.221.105.61"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Reykjavik - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Reykjavik.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "LV1" ];
then
	SERVER1="46.183.221.194"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Riga - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Riga.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "SG1" ];
then
	SERVER1="209.58.162.197"
	SERVER2="103.254.153.202"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Singapore - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Singapore - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Singapore.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "LU1" ];
then
	SERVER1="94.242.243.162"
	SERVER2="94.242.243.66"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Steinsel - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# Steinsel - Server 2
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 151
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1148
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1149
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1149
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1150
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1150
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER2 -o $inet_adapter -p udp -m udp --dport 1151
	sudo iptables -A INPUT -j ACCEPT -s $SERVER2 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Steinsel.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "IL1" ];
then
	SERVER1="185.18.205.122"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Tel Aviv - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Tel Aviv.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

elif [ $1 == "JP1" ];
then
	SERVER1="31.204.145.166"

	sudo iptables --flush
	sudo iptables --delete-chain
	sudo iptables -t nat --flush
	sudo iptables -t nat --delete-chain
	sudo iptables -P OUTPUT DROP
	sudo iptables -A INPUT -j ACCEPT -i lo
	sudo iptables -A OUTPUT -j ACCEPT -o lo
	sudo iptables -A INPUT -s $HOMENET -j ACCEPT -i $inet_adapter
	sudo iptables -A OUTPUT -d $HOMENET -j ACCEPT -o $inet_adapter
	# Tokyo - Server 1
	sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 148
	sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 151
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1148
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1148
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1149
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1149
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1150
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1150
  sudo iptables -A OUTPUT -j ACCEPT -d $SERVER1 -o $inet_adapter -p udp -m udp --dport 1151
  sudo iptables -A INPUT -j ACCEPT -s $SERVER1 -i $inet_adapter -p udp -m udp --sport 1151
	# - #
	sudo iptables -A INPUT -j ACCEPT -i tun0
	sudo iptables -A OUTPUT -j ACCEPT -o tun0;
	echo -e "\e[1;32m[+]\e[0m"
	echo -e "\e[1;32m[+] Killswitch active for Tokyo.\e[0m"
	echo -e "\e[1;31m[!] All incoming and outgoing network traffic is now blocked! [!]\e[0m"
	echo -e "\e[1;32m[+]\e[0m"

else
	echo -e "\e[1;31m[-]\e[0m"
	echo -e "\e[1;31m[-] Killswitch is NOT active!\e[0m"
	echo -e "\e[1;31m[-] Try again!\e[0m"
	echo -e "\e[1;31m[-]\e[0m"
fi
