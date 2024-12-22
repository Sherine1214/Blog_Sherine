CustomLibrary.configure do |config|
    config.api_key = ENV["CUSTOM_API_KEY"]
    config.secret = ENV["CUSTOM_SECRET"]
  end
  