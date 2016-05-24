require 'erb'
require 'dotenv'

Dotenv.load(
  File.join(File.dirname(File.expand_path(__FILE__)), '.env'),
)

erb = File.open('kubernetes/svc-nginx-proxy.yaml.erb') { |f| ERB.new(f.read) }
File.write('kubernetes/svc-nginx-proxy.yaml', erb.result(binding))

erb = File.open('kubernetes/deployment-nginx-proxy.yaml.erb') { |f| ERB.new(f.read) }
File.write('kubernetes/deployment-nginx-proxy.yaml', erb.result(binding))

