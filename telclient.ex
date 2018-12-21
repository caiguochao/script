#!/usr/bin/expect
set timeout 10
set port [lindex $argv 0]
set port [expr {$port + 5600}]
spawn telnet 127.0.0.1 $port
send "from common.EntityManager import EntityManager as e\r"
expect "from"
sleep 0.01
send "e = e._entities\r"
expect "entities"
sleep 0.01
send "p=e\['XATnNAY5BnO1Tgjl'\]\r"
expect "p"
sleep 0.01
send "for key in sorted(e.values()):\r"
expect "sorted"
sleep 0.01
send "    print key\r"
expect "key"
sleep 0.01
send "\r"
interact
