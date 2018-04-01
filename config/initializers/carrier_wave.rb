if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['your val'],
      :aws_secret_access_key => ENV['your va']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end