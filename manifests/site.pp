import 'defaults.pp'
import 'classes/*.pp'
import 'hosts/*.pp'

include localhosts
include my-repos

service { 'iptables':
  ensure   => 'stopped',
  enable => 'false',
}

