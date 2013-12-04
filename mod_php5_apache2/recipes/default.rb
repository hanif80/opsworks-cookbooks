packages = []

case node[:platform]
when 'debian', 'ubuntu'
  packages = [
    'php5-xsl',
    'php5-curl',
    'php5-xmlrpc',
    'php5-sqlite',
    'php5-dev',
    'php5-gd',
    'php5-cli',
    'php5-sasl',
    'php5-mysql',
    'php5-mcrypt',
    'php5-memcache',
    'php-pear',
    'php-xml-parser',
    'php-mail-mime',
    'php-db',
    'php-mdb2',
    'php-html-common'
  ]

when 'centos', 'redhat', 'fedora', 'amazon'
  # TODO: Compile php-sqlite extension for RHEL based systems.
  packages = [
    'php54w-cli.x86_64',
    'php54w-common.x86_64',
    'php55w-imap.x86_64',
    'php54w-devel.x86_64',
  ]
end

packages.each do |pkg|
  package pkg do
    action :install
  end
end
