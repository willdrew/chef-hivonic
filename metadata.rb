name             'hivonic'
maintainer       'Will Drew'
maintainer_email 'willdrew@gmail.com'
license          'MIT'
description      'Installs/Configures the hivonic gem'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

recipe "hivonic::_install", "This recipe is used to install the hivonic (ruby gem)"
recipe "hivonic::default", "This (driver) recipe is used to call the _install recipe"

supports "ubuntu"'
