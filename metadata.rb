maintainer        "Tim Boisvert"
maintainer_email  "tboisvert@asheavenue.com"
license           "Apache 2.0"
description       "Adds an nginx config file"
version           "0.0.1"

depends "nginx"

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end
