CarrierWave.configure do |config|
config.cache_dir = '#{Rails.root}/tmp/uploads'
if Rails.env.production?
  config.storage = :fog
config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
  }
  config.fog_directory  = 'addup'
  config.fog_public     = true                                    # optional, defaults to true
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}  # optional, defaults to {}
else
 #for development and testing locally
  config.storage = :file
 end
end


