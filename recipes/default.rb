#
# Cookbook Name:: jaxrs_tutorial
# Recipe:: default
#
# Copyright (C) 2014 Jamie Ly
# 
# All rights reserved - Do Not Redistribute
#
#
case node['platform']
when 'debian', 'ubuntu'
  include_recipe 'apt'
  package 'curl' # here for tests. Don't do this!
end

include_recipe 'java'

application node[:jaxrs_tutorial][:application_name] do 
  path node[:jaxrs_tutorial][:application_path]
  repository node[:jaxrs_tutorial][:war_uri]
  revision node[:jaxrs_tutorial][:application_version]
  scm_provider Chef::Provider::RemoteFile::Deploy

  java_webapp

  tomcat
end

