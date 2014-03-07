default[:jaxrs_tutorial][:application_name] = 'jaxrs_tutorial'
default[:jaxrs_tutorial][:application_path] = '/var/www/jaxrs_tutorial'
default[:jaxrs_tutorial][:application_version] = '1.0.0'
default[:jaxrs_tutorial][:war_uri] = 'http://path_to_your_nexus/jaxrs_tutorial-1.0.0.war'

case node['platform']
when 'centos', 'redhat', 'fedora', 'amazon'
  normal['tomcat']['keytool'] = '/usr/lib/jvm/jre-1.6.0-openjdk.x86_64/bin/keytool'
end

