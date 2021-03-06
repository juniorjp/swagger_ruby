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

  class RunnerChange
    # The total amount matched. This value is truncated at 2dp.
    attr_accessor :tv

    # Best Available To Back - LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove)
    attr_accessor :batb

    # Starting Price Back - PriceVol tuple delta of price changes (0 vol is remove)
    attr_accessor :spb

    # Best Display Available To Lay (includes virtual prices)- LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove)
    attr_accessor :bdatl

    # Traded - PriceVol tuple delta of price changes (0 vol is remove)
    attr_accessor :trd

    # Starting Price Far - The far starting price (or null if un-changed)
    attr_accessor :spf

    # Last Traded Price - The last traded price (or null if un-changed)
    attr_accessor :ltp

    # Available To Back - PriceVol tuple delta of price changes (0 vol is remove)
    attr_accessor :atb

    # Starting Price Lay - PriceVol tuple delta of price changes (0 vol is remove)
    attr_accessor :spl

    # Starting Price Near - The far starting price (or null if un-changed)
    attr_accessor :spn

    # Available To Lay - PriceVol tuple delta of price changes (0 vol is remove)
    attr_accessor :atl

    # Best Available To Lay - LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove)
    attr_accessor :batl

    # Selection Id - the id of the runner (selection)
    attr_accessor :id

    # Handicap - the handicap of the runner (selection) (null if not applicable)
    attr_accessor :hc

    # Best Display Available To Back (includes virtual prices)- LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove)
    attr_accessor :bdatb


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tv' => :'tv',
        :'batb' => :'batb',
        :'spb' => :'spb',
        :'bdatl' => :'bdatl',
        :'trd' => :'trd',
        :'spf' => :'spf',
        :'ltp' => :'ltp',
        :'atb' => :'atb',
        :'spl' => :'spl',
        :'spn' => :'spn',
        :'atl' => :'atl',
        :'batl' => :'batl',
        :'id' => :'id',
        :'hc' => :'hc',
        :'bdatb' => :'bdatb'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'tv' => :'Float',
        :'batb' => :'Array<Array<Float>>',
        :'spb' => :'Array<Array<Float>>',
        :'bdatl' => :'Array<Array<Float>>',
        :'trd' => :'Array<Array<Float>>',
        :'spf' => :'Float',
        :'ltp' => :'Float',
        :'atb' => :'Array<Array<Float>>',
        :'spl' => :'Array<Array<Float>>',
        :'spn' => :'Float',
        :'atl' => :'Array<Array<Float>>',
        :'batl' => :'Array<Array<Float>>',
        :'id' => :'Integer',
        :'hc' => :'Float',
        :'bdatb' => :'Array<Array<Float>>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'tv')
        self.tv = attributes[:'tv']
      end

      if attributes.has_key?(:'batb')
        if (value = attributes[:'batb']).is_a?(Array)
          self.batb = value
        end
      end

      if attributes.has_key?(:'spb')
        if (value = attributes[:'spb']).is_a?(Array)
          self.spb = value
        end
      end

      if attributes.has_key?(:'bdatl')
        if (value = attributes[:'bdatl']).is_a?(Array)
          self.bdatl = value
        end
      end

      if attributes.has_key?(:'trd')
        if (value = attributes[:'trd']).is_a?(Array)
          self.trd = value
        end
      end

      if attributes.has_key?(:'spf')
        self.spf = attributes[:'spf']
      end

      if attributes.has_key?(:'ltp')
        self.ltp = attributes[:'ltp']
      end

      if attributes.has_key?(:'atb')
        if (value = attributes[:'atb']).is_a?(Array)
          self.atb = value
        end
      end

      if attributes.has_key?(:'spl')
        if (value = attributes[:'spl']).is_a?(Array)
          self.spl = value
        end
      end

      if attributes.has_key?(:'spn')
        self.spn = attributes[:'spn']
      end

      if attributes.has_key?(:'atl')
        if (value = attributes[:'atl']).is_a?(Array)
          self.atl = value
        end
      end

      if attributes.has_key?(:'batl')
        if (value = attributes[:'batl']).is_a?(Array)
          self.batl = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'hc')
        self.hc = attributes[:'hc']
      end

      if attributes.has_key?(:'bdatb')
        if (value = attributes[:'bdatb']).is_a?(Array)
          self.bdatb = value
        end
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
          tv == o.tv &&
          batb == o.batb &&
          spb == o.spb &&
          bdatl == o.bdatl &&
          trd == o.trd &&
          spf == o.spf &&
          ltp == o.ltp &&
          atb == o.atb &&
          spl == o.spl &&
          spn == o.spn &&
          atl == o.atl &&
          batl == o.batl &&
          id == o.id &&
          hc == o.hc &&
          bdatb == o.bdatb
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [tv, batb, spb, bdatl, trd, spf, ltp, atb, spl, spn, atl, batl, id, hc, bdatb].hash
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
