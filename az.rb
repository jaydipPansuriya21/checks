require 'aws-sdk'
require 'aws-sdk-s3'
require 'dotenv'
require 'byebug'
Dotenv.load

# s3 = Aws::S3::Resource.new(region: 'ap-south-1')
# my_bucket = s3.bucket('jaydip21')
# my_bucket.create
# Aws.config.update({
#   credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'],ENV['AWS_SECRET_ACCESS_KEY'])
# })

# client = Aws::S3::Client.new(
#     :region => ENV['AWS_REGION'],
#     :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
#     :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
#   )


s3 = Aws::S3::Resource.new(region: 'sa-east-1')
my_bucket = s3.bucket('jaydip21')
# my_bucket.create

# upload file to bucket
# name = File.basename 'main.rb'
# obj = s3.bucket('jaydip21').object(name)
# obj.upload_file('amzon.rb')

# list all object
my_bucket.objects.limit(50).each do |obj|
  puts "  #{obj.key} => #{obj.etag}"
end



# download file/object 
s3_client = Aws::S3::Client.new(region: 'sa-east-1')
s3_client.get_object(
  response_target: './download/1.rb',
  bucket: 'jaydip21',
  key: 'main.rb'
)