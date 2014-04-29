Given(/^a service is running on port "(.*?)" on "(.*?)"$/) do |port, host|
  @host = host
  @port = port
end

When(/^I visit "(.*?)"$/) do |path|
  url = "http://#{@infrastructure[@host].ip}"
  url += ":#{@port}" if @port
  url += path
  connection = Faraday.new(url: url) do |faraday|
    faraday.adapter Faraday.default_adapter
  end
  @response = connection.get(path)
end

Then(/^I should see "(.*?)"$/) do |content|
  @response.body.should match /#{content}/
end

Then(/^I should get a successful response$/) do
  @response.should be_success
end
