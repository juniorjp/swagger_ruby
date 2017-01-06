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

# Unit tests for SwaggerClient::StatusMessage
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StatusMessage' do
  before do
    # run before each test
    @instance = SwaggerClient::StatusMessage.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatusMessage' do
    it 'should create an instact of StatusMessage' do
      expect(@instance).to be_instance_of(SwaggerClient::StatusMessage)
    end
  end
  describe 'test attribute "op"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "error_message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "error_code"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NO_APP_KEY", "INVALID_APP_KEY", "NO_SESSION", "INVALID_SESSION_INFORMATION", "NOT_AUTHORIZED", "INVALID_INPUT", "INVALID_CLOCK", "UNEXPECTED_ERROR", "TIMEOUT", "SUBSCRIPTION_LIMIT_EXCEEDED", "INVALID_REQUEST", "CONNECTION_FAILED", "MAX_CONNECTION_LIMIT_EXCEEDED"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.error_code = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "connection_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "connection_closed"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status_code"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SUCCESS", "FAILURE"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.status_code = value }.not_to raise_error
       #end
    end
  end

end

