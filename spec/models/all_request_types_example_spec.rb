=begin
#Betfair: Exchange Streaming API

#API to receive streamed updates. This is an ssl socket connection of CRLF delimited json messages (see RequestMessage & ResponseMessage)

OpenAPI spec version: 1.0.1423

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::AllRequestTypesExample
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AllRequestTypesExample' do
  before do
    # run before each test
    @instance = SwaggerClient::AllRequestTypesExample.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AllRequestTypesExample' do
    it 'should create an instact of AllRequestTypesExample' do
      expect(@instance).to be_instance_of(SwaggerClient::AllRequestTypesExample)
    end
  end
  describe 'test attribute "op_types"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["heartbeat", "authentication", "marketSubscription", "orderSubscription"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.op_types = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "heartbeat"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "order_subscription_message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "market_subscription"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "authentication"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

