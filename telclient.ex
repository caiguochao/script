#!/usr/bin/expect
set timeout 10
set port [lindex $argv 0]
set port [expr {$port + 5600}]
spawn telnet 127.0.0.1 $port
send "from common.EntityManager import EntityManager as e\r"
sleep 0.02
send "for key in sorted(e._entities.values()):\r"
sleep 0.02
send "    if 'SpaceStub' in key.__str__(): spaceStub = key\r"
sleep 0.02
send "    if 'SphereStub' in key.__str__(): sphereStub = key\r"
sleep 0.02
send "    if 'TeamStub' in key.__str__(): teamStub = key\r"
sleep 0.02
send "    if 'StatStub' in key.__str__(): statStub = key\r"
sleep 0.02
send "    if 'RollStub' in key.__str__(): rollStub = key\r"
sleep 0.02
send "    if 'GlobalEventCallback' in key.__str__(): callBack = key\r"
sleep 0.02
send "    if 'Channel' in key.__str__(): channel = key\r"
sleep 0.02
send "    print key\r\r\r"
sleep 0.02
send "p=e._entities\['W9mcOQY5BgfUBiyK'\]\r"
interact
