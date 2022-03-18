require 'aws-sdk-s3'  # v2: require 'aws-sdk'
require 'dotenv'
Dotenv.load

# puts ENV['name']
def list_buckets(s3_client, max_buckets = 50)
    if max_buckets < 1 || max_buckets > 50
      puts 'Maximum number of buckets to request must be between 1 and 50.'
      return
    end
    buckets = s3_client.list_buckets.buckets
    if buckets.count.zero?
      puts 'No buckets.'
      return
    else
      if buckets.count > max_buckets
        puts "First #{max_buckets} buckets:"
        i = 0
        max_buckets.times do
          puts "#{i + 1}) #{buckets[i].name}"
          i += 1
        end
      else
        puts "#{buckets.count} buckets:"
        i = 0
        buckets.count.times do
          puts "#{i + 1}) #{buckets[i].name}"
          i += 1
        end
      end
    end
  rescue StandardError => e
    puts "Error listing buckets: #{e.message}"
  end
  
  def run_me
    region = 'us-east-1'
    s3_client = Aws::S3::Client.new(region: region)
    list_buckets(s3_client, 25)
  end

s3 = Aws::S3::Resource.new(region: 'us-west-2')

s3.buckets.limit(50).each do |b|
  puts "#{b.name}"
end
# run_me