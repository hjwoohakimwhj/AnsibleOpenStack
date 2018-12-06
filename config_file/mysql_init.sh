#!/usr/bin/expect
set password 123456
spawn mysql_secure_installation
expect {
"enter for none" { send "\r"; exp_continue}
"Y/n" { send "Y\r" ; exp_continue}
"password" { send "$password\r"; exp_continue}
"Cleaning up" { send "\r"}
}
