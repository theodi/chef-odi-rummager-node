require 'spec_helper'

# Make sure we have english dictionaries
describe command("aspell dicts") do
  it { should return_stdout /en/ }
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
  it { should return_stdout /ruby\-2\.1\.0/ }
end

# Make sure we have some rummager code
# describe file("/var/www/rummager/current/config.ru") do
#   it { should be_file }
# end
