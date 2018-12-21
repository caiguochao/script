#!/usr/bin/expect
set timeout 10
set port [lindex $argv 0]
set port [expr {$port + 5600}]
spawn telnet 127.0.0.1 $port
send "from common.EntityManager import EntityManager as e\r"
sleep 0.01
send "e = e._entities\r"
sleep 0.01
send "p=e\['XATnNAY5BnO1Tgjl'\]\r"
sleep 0.01
send "for key in sorted(e.values()):\r"
sleep 0.01
send "    print key\r\r"
interact
