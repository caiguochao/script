#!/usr/bin/expect
set timeout 10
spawn telnet 127.0.0.1 5600
send "from common.EntityManager import EntityManager as e\r"
sleep 0.01
send "_list = list(e._entities.values())\r"
sleep 0.01
send "_list.sort()\r"
sleep 0.01
send "for key in _list:\r"
sleep 0.01
send "    if 'SpaceStub' in key.__str__(): spaceStub = key\r"
sleep 0.01
send "    if 'SphereStub' in key.__str__(): sphereStub = key\r"
sleep 0.01
send "    if 'TeamStub' in key.__str__(): teamStub = key\r"
sleep 0.01
send "    if 'StatStub' in key.__str__(): statStub = key\r"
sleep 0.01
send "    if 'RollStub' in key.__str__(): rollStub = key\r"
sleep 0.01
send "    print key\r\r"
sleep 0.01
send "p=e._entities\['W8aqxAY5BjlMTHmU'\]\r"
interact
