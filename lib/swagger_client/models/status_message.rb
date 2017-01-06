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

require 'date'

module SwaggerClient

  class StatusMessage
    # The operation type
    attr_accessor :op

    # Client generated unique id to link request with response (like json rpc)
    attr_accessor :id

    # Additional message in case of a failure
    attr_accessor :error_message

    # The type of error in case of a failure
    attr_accessor :error_code

    # The connection id
    attr_accessor :connection_id

    # Is the connection now closed
    attr_accessor :connection_closed

    # The status of the last request
    attr_accessor :status_code

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'op' => :'op',
        :'id' => :'id',
        :'error_message' => :'errorMessage',
        :'error_code' => :'errorCode',
        :'connection_id' => :'connectionId',
        :'connection_closed' => :'connectionClosed',
        :'status_code' => :'statusCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'op' => :'String',
        :'id' => :'Integer',
        :'error_message' => :'String',
        :'error_code' => :'String',
        :'connection_id' => :'String',
        :'connection_closed' => :'BOOLEAN',
        :'status_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'op')
        self.op = attributes[:'op']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'errorMessage')
        self.error_message = attributes[:'errorMessage']
      end

      if attributes.has_key?(:'errorCode')
        self.error_code = attributes[:'errorCode']
      end

      if attributes.has_key?(:'connectionId')
        self.connection_id = attributes[:'connectionId']
      end

      if attributes.has_key?(:'connectionClosed')
        self.connection_closed = attributes[:'connectionClosed']
      end

      if attributes.has_key?(:'statusCode')
        self.status_code = attributes[:'statusCode']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      error_code_validator = EnumAttributeValidator.new('String', ["NO_APP_KEY", "INVALID_APP_KEY", "NO_SESSION", "INVALID_SESSION_INFORMATION", "NOT_AUTHORIZED", "INVALID_INPUT", "INVALID_CLOCK", "UNEXPECTED_ERROR", "TIMEOUT", "SUBSCRIPTION_LIMIT_EXCEEDED", "INVALID_REQUEST", "CONNECTION_FAILED", "MAX_CONNECTION_LIMIT_EXCEEDED"])
      return false unless error_code_validator.valid?(@error_code)
      status_code_validator = EnumAttributeValidator.new('String', ["SUCCESS", "FAILURE"])
      return false unless status_code_validator.valid?(@status_code)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(error_code)
      validator = EnumAttributeValidator.new('String', ["NO_APP_KEY", "INVALID_APP_KEY", "NO_SESSION", "INVALID_SESSION_INFORMATION", "NOT_AUTHORIZED", "INVALID_INPUT", "INVALID_CLOCK", "UNEXPECTED_ERROR", "TIMEOUT", "SUBSCRIPTION_LIMIT_EXCEEDED", "INVALID_REQUEST", "CONNECTION_FAILED", "MAX_CONNECTION_LIMIT_EXCEEDED"])
      unless validator.valid?(error_code)
        fail ArgumentError, "invalid value for 'error_code', must be one of #{validator.allowable_values}."
      end
      @error_code = error_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_code Object to be assigned
    def status_code=(status_code)
      validator = EnumAttributeValidator.new('String', ["SUCCESS", "FAILURE"])
      unless validator.valid?(status_code)
        fail ArgumentError, "invalid value for 'status_code', must be one of #{validator.allowable_values}."
      end
      @status_code = status_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          op == o.op &&
          id == o.id &&
          error_message == o.error_message &&
          error_code == o.error_code &&
          connection_id == o.connection_id &&
          connection_closed == o.connection_closed &&
          status_code == o.status_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [op, id, error_message, error_code, connection_id, connection_closed, status_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
