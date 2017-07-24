# ruby-firehose-tester
Use to test if kinesis firehose is configured correct and credentials work

> Simple loop that writes to kinesis firehose
* set the appropriate policy ARN for allowing put to kinesis firehose
> See [ARN template](./arn-policy-sample.json)
* make sure to have ruby installed
* install aws-sdk
```
gem install aws-sdk
```
* run the script
```
ruby kinesis-firehose-test-tool.rb
```
