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

# Unit tests for SwaggerClient::MarketDataFilter
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MarketDataFilter' do
  before do
    # run before each test
    @instance = SwaggerClient::MarketDataFilter.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MarketDataFilter' do
    it 'should create an instact of MarketDataFilter' do
      expect(@instance).to be_instance_of(SwaggerClient::MarketDataFilter)
    end
  end
  describe 'test attribute "ladder_levels"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "fields"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["EX_BEST_OFFERS_DISP", "EX_BEST_OFFERS", "EX_ALL_OFFERS", "EX_TRADED", "EX_TRADED_VOL", "EX_LTP", "EX_MARKET_DEF", "SP_TRADED", "SP_PROJECTED"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.fields = value }.not_to raise_error
       #end
    end
  end

end
