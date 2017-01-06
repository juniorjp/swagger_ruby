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

  class OrderSubscriptionMessage
    # The operation type
    attr_accessor :op

    # Client generated unique id to link request with response (like json rpc)
    attr_accessor :id

    # Segmentation Enabled - allow the server to send large sets of data in segments, instead of a single block
    attr_accessor :segmentation_enabled

    # Optional filter applied to order subscription
    attr_accessor :order_filter

    # Token value delta (received in MarketChangeMessage) that should be passed to resume a subscription
    attr_accessor :clk

    # Heartbeat Milliseconds - the heartbeat rate (looped back on initial image after validation: bounds are 500 to 30000)
    attr_accessor :heartbeat_ms

    # Token value (received in initial MarketChangeMessage) that should be passed to resume a subscription
    attr_accessor :initial_clk

    # Conflate Milliseconds - the conflation rate (looped back on initial image after validation: bounds are 0 to 120000)
    attr_accessor :conflate_ms


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'op' => :'op',
        :'id' => :'id',
        :'segmentation_enabled' => :'segmentationEnabled',
        :'order_filter' => :'orderFilter',
        :'clk' => :'clk',
        :'heartbeat_ms' => :'heartbeatMs',
        :'initial_clk' => :'initialClk',
        :'conflate_ms' => :'conflateMs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'op' => :'String',
        :'id' => :'Integer',
        :'segmentation_enabled' => :'BOOLEAN',
        :'order_filter' => :'OrderFilter',
        :'clk' => :'String',
        :'heartbeat_ms' => :'Integer',
        :'initial_clk' => :'String',
        :'conflate_ms' => :'Integer'
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

      if attributes.has_key?(:'segmentationEnabled')
        self.segmentation_enabled = attributes[:'segmentationEnabled']
      end

      if attributes.has_key?(:'orderFilter')
        self.order_filter = attributes[:'orderFilter']
      end

      if attributes.has_key?(:'clk')
        self.clk = attributes[:'clk']
      end

      if attributes.has_key?(:'heartbeatMs')
        self.heartbeat_ms = attributes[:'heartbeatMs']
      end

      if attributes.has_key?(:'initialClk')
        self.initial_clk = attributes[:'initialClk']
      end

      if attributes.has_key?(:'conflateMs')
        self.conflate_ms = attributes[:'conflateMs']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          op == o.op &&
          id == o.id &&
          segmentation_enabled == o.segmentation_enabled &&
          order_filter == o.order_filter &&
          clk == o.clk &&
          heartbeat_ms == o.heartbeat_ms &&
          initial_clk == o.initial_clk &&
          conflate_ms == o.conflate_ms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [op, id, segmentation_enabled, order_filter, clk, heartbeat_ms, initial_clk, conflate_ms].hash
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