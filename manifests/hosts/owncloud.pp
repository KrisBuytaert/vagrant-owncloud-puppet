node /owncloud/ {




  yumrepo { 'isv_ownCloud_ownCloud2012':
    baseurl        => 'http://download.opensuse.org/repositories/isv:/ownCloud:/ownCloud2012/CentOS_CentOS-6/',
    descr        => 'ownCloud 2012 Server - Private file sync and share server (CentOS_CentOS-6)',
    enabled    => '1',
    gpgcheck => '1',
    gpgkey => 'http://download.opensuse.org/repositories/isv:/ownCloud:/ownCloud2012/CentOS_CentOS-6/repodata/repomd.xml.key',
  }

  include owncloud::params
  class {'owncloud': }

  service { 'httpd':
    ensure   => 'running',
    enable => 'true',
  }

}
