require 'spec_helper'

# Make sure we have english dictionaries
describe command("aspell dicts") do
  it { should return_stdout /en/ }
end
