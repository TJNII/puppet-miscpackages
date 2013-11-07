# Copyright 2013 Tom Noonan II (TJNII)
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# 
class miscpackages {
  case $operatingsystem {
    debian, ubuntu: {
      package { ['dnsutils',
                 'arping',
                 'netcat-traditional',
                 ]:
                   ensure => installed,
      }
    }
    redhat, centos: {
      package { ['bind-utils',
                 'iputils',
                 'nc',
                 ]:
                   ensure => installed,
      }
    }
  }
    
  package { ['curl',
             'tcpdump',
             'telnet',
             'traceroute',
             'pciutils',
             'usbutils',
             'strace',
             'zip',
             'unzip',
             'wget',
             'nano',
             'ethtool',
             'nmap',
             ]:
               ensure => installed,
  }
  
  # Packages that cause problems
  package { ['mpt-status',
             'bash-completion',
             ]:
               ensure => purged,
  }
  
}
