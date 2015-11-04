# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'json'
require 'yaml'

VAGRANTFILE_API_VERSION = "2"

configYamlPath = "config.yaml"
require File.expand_path(File.dirname(__FILE__) + '/scripts/homestead.rb')
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
   Homestead.configure(config, YAML::load(File.read(configYamlPath)))
end
