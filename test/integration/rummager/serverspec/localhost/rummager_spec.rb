require 'spec_helper'

# Make sure we have english dictionaries
describe command("aspell dicts") do
  it { should return_stdout /en/ }
end

# Make sure /usr/lib/libaspell.so exists
describe file("/usr/lib/libaspell.so") do
  it { should be_linked_to "/usr/lib/libaspell.so.15" }
end

# Make sure serverdensity agent is running
describe service("sd-agent") do
  it { should be_running }
end

# Make sure we have rvm installed
describe command('/usr/local/rvm/bin/rvm') do
  it { should return_stdout /RVM is the Ruby enVironment Manager/ }
end

# Make sure we have the right default ruby
describe command('/usr/local/rvm/bin/rvm current') do
  it { should return_stdout /ruby\-1\.9\.3/ }
end

# Check we have a rummager user
describe user('rummager') do
  it { should exist }
end

# Check we have the environment from chef
describe file("/home/rummager/env") do
  it { should be_file }
  its(:content) { should match /SUCH: test/ }
end

# Make sure nginx is running
describe service("nginx") do
  it { should be_running }
end

# Make sure vhosts have the correct stuff
describe file("/etc/nginx/sites-enabled/search.theodi.org") do
  it { should be_file }
  its(:content) { should match /search.theodi.org/ }
end

# Make sure we have some rummager code
describe file("/var/www/search.theodi.org/current/config.ru") do
  it { should be_file }
end

# Make sure foreman job is running
describe service("rummager-thin-1") do
  it { should be_running }
end
