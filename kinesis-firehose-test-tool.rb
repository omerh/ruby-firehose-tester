require 'aws-sdk'

firehose = Aws::Firehose::Client.new(
  region: 'your region',
  #region: ENV['AWS_REGION'],
  access_key_id: ENV['AWS_ACCESS_KEY'],
  secret_access_key: ENV['AWS_SECRET_KEY'],
)

x = 0

# Inorder to check put record (not recomended, it will be expensive compared to put batch)

#loop do 
#	x += 1
#	puts "#{x}"
#	resp = firehose.put_record({
#  		delivery_stream_name: "oppdata-events-development", # required
#  			record: {
#    			data: "count is #{x}",
#  			},
#		})
#end


loop do 
  x += 1
  puts "#{x}"
  resp = firehose.put_record_batch({
      delivery_stream_name: "oppdata-events-development",
        records: [
          {
            data: "count is #{x}",
          },
        ],
    })
end