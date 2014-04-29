require 'spec_helper'

# Make sure we have english dictionaries
describe command("aspell dicts") do
  it { should return_stdout /en/ }
end

# Make sure serverdensity agent is running
describe service("sd-agent") do
  it { should be_running }
end

# Make sure we have some rummager code
describe file("/var/www/rummager/current/config.ru") do
  it { should be_file }
end
