maintainer       "Peter Donald"
maintainer_email "peter@realityforge.org"
license          "Apache 2.0"
description      "Installs/Configures authbind and defines resources for managing authorization"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.3"

%w{ ubuntu debian }.each do |os|
  supports os
end

recipe "authbind::default", "Installs and configures Authbind"
