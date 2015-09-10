CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIL7FJ5P7YC4APBMA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'haru-bang'                          # required
end