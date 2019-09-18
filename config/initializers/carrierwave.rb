# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_public = false
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIA324C6MZYTRRI6MWD"],        # required
    aws_secret_access_key: ENV["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"],        # required
  }
  config.fog_directory  = ENV["my-new-user"]              # required
end