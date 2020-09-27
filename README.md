# Perfect Privacy Killswitch

A killswitch made for the OpenVPN configs for all Perfect Privacy VPN Servers.

## Usage
First you have to make it executable:
```
chmod +x killswitch.sh
```
Then you can run it:
```
./killswitch.sh
```

## Example
```
./killswitch.sh CH1 
```
Enables the network traffic for Basel/Switzerland only.
Then use the normal instructions for OpenVPN to connect with Perfect Privacy.
```
sudo openvpn /etc/openvpn/Basel.conf 
```
If your VPN now disconnects accidentally you are safe* that no ping get out of your network until the connection is restored.
Every other parameter is also explained within the tool.


## Perfect Privacy VPN Server

```
Australia
AU1 - Melbourne     Active Server: 1

Canada
CA1 - Montreal      Active Server: 1

China
CN1 - Hongkong      Active Server: 1

Czech Republic
CZ1 - Prague        Active Server: 1

Denmark
DK1 - Copenhagen    Active Server: 1

France
FR1 - Calais        Active Server: 1
FR2 - Paris         Active Server: 1
FR3 - Strasbourg    Active Server: 1

Germany
DE1 - Berlin        Active Server: 1
DE2 - Erfurt        Active Server: 1
DE3 - Frankfurt     Active Server: 2
DE4 - Hamburg       Active Server: 1
DE5 - Nuremberg     Active Server: 2

Great Britain
GB1 - London        Active Server: 2
GB2 - Manchester    Active Server: 1

Iceland
IS1 - Reykjavik     Active Server: 1

Italy
IT1 - Milan         Active Server: 1

Israel
IL1 - Tel Aviv      Active Server: 1

Japan
JP1 - Tokyo         Active Server: 1

Latvia
LV1 - Riga          Active Server: 1

Luxembourg
LU1 - Steinsel      Active Server: 2

Netherlands
NL1 - Amsterdam     Active Server: 5
NL2 - Rotterdam     Active Server: 5

Norway
NO1 - Oslo          Active Server: 1

Romania
RO1 - Bucharest     Active Server: 1

Russia
RU1 - Moscow        Active Server: 2

Serbia
RS1 - Belgrade      Active Server: 1

Singapore
SG1 - Singapore     Active Server: 2

Spain
ES1 - Madrid        Active Server: 1

Sweden
SE1 - Malmoe        Active Server: 1
SE2 - Stockholm     Active Server: 2

Switzerland
CH1 - Basel         Active Server: 2
CH2 - Zurich        Active Server: 3

Turkey
TR1 - Istanbul      Active Server: 1

United States of America
US1 - Chicago       Active Server: 1
US1 - Dallas        Active Server: 1
US3 - Los Angeles   Active Server: 1
US4 - Miami         Active Server: 1
US5 - New York      Active Server: 1
```

### Thank you!
If you like it, then rate it and donate if you want. <br/>
<br/>
Bitcoin: 1DnFABekbJ3TpdxYuaKbTwuNz6kYnvfSTa   <br/>

If you have any questions feel free to let me know:                             <br/>
Mail:                                     exit_n0de@gmx.net                     <br/>
Follow me on Twitter:                     https://twitter.com/e_n0de            <br/>
Instagram:                                https://www.instagram.com/exit_n0de/  <br/>
GitHub:                                   https://github.com/exit-n0de          <br/>
