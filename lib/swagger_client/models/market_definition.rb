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

  class MarketDefinition
    attr_accessor :venue

    attr_accessor :settled_time

    attr_accessor :timezone

    attr_accessor :each_way_divisor

    # The market regulators.
    attr_accessor :regulators

    attr_accessor :market_type

    attr_accessor :market_base_rate

    attr_accessor :number_of_winners

    attr_accessor :country_code

    attr_accessor :in_play

    attr_accessor :bet_delay

    attr_accessor :bsp_market

    attr_accessor :betting_type

    attr_accessor :number_of_active_runners

    attr_accessor :event_id

    attr_accessor :cross_matching

    attr_accessor :runners_voidable

    attr_accessor :turn_in_play_enabled

    attr_accessor :suspend_time

    attr_accessor :discount_allowed

    attr_accessor :persistence_enabled

    attr_accessor :runners

    attr_accessor :version

    # The Event Type the market is contained within.
    attr_accessor :event_type_id

    attr_accessor :complete

    attr_accessor :open_date

    attr_accessor :market_time

    attr_accessor :bsp_reconciled

    attr_accessor :status

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
        :'venue' => :'venue',
        :'settled_time' => :'settledTime',
        :'timezone' => :'timezone',
        :'each_way_divisor' => :'eachWayDivisor',
        :'regulators' => :'regulators',
        :'market_type' => :'marketType',
        :'market_base_rate' => :'marketBaseRate',
        :'number_of_winners' => :'numberOfWinners',
        :'country_code' => :'countryCode',
        :'in_play' => :'inPlay',
        :'bet_delay' => :'betDelay',
        :'bsp_market' => :'bspMarket',
        :'betting_type' => :'bettingType',
        :'number_of_active_runners' => :'numberOfActiveRunners',
        :'event_id' => :'eventId',
        :'cross_matching' => :'crossMatching',
        :'runners_voidable' => :'runnersVoidable',
        :'turn_in_play_enabled' => :'turnInPlayEnabled',
        :'suspend_time' => :'suspendTime',
        :'discount_allowed' => :'discountAllowed',
        :'persistence_enabled' => :'persistenceEnabled',
        :'runners' => :'runners',
        :'version' => :'version',
        :'event_type_id' => :'eventTypeId',
        :'complete' => :'complete',
        :'open_date' => :'openDate',
        :'market_time' => :'marketTime',
        :'bsp_reconciled' => :'bspReconciled',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'venue' => :'String',
        :'settled_time' => :'DateTime',
        :'timezone' => :'String',
        :'each_way_divisor' => :'Float',
        :'regulators' => :'Array<String>',
        :'market_type' => :'String',
        :'market_base_rate' => :'Float',
        :'number_of_winners' => :'Integer',
        :'country_code' => :'String',
        :'in_play' => :'BOOLEAN',
        :'bet_delay' => :'Integer',
        :'bsp_market' => :'BOOLEAN',
        :'betting_type' => :'String',
        :'number_of_active_runners' => :'Integer',
        :'event_id' => :'String',
        :'cross_matching' => :'BOOLEAN',
        :'runners_voidable' => :'BOOLEAN',
        :'turn_in_play_enabled' => :'BOOLEAN',
        :'suspend_time' => :'DateTime',
        :'discount_allowed' => :'BOOLEAN',
        :'persistence_enabled' => :'BOOLEAN',
        :'runners' => :'Array<RunnerDefinition>',
        :'version' => :'Integer',
        :'event_type_id' => :'String',
        :'complete' => :'BOOLEAN',
        :'open_date' => :'DateTime',
        :'market_time' => :'DateTime',
        :'bsp_reconciled' => :'BOOLEAN',
        :'status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'venue')
        self.venue = attributes[:'venue']
      end

      if attributes.has_key?(:'settledTime')
        self.settled_time = attributes[:'settledTime']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'eachWayDivisor')
        self.each_way_divisor = attributes[:'eachWayDivisor']
      end

      if attributes.has_key?(:'regulators')
        if (value = attributes[:'regulators']).is_a?(Array)
          self.regulators = value
        end
      end

      if attributes.has_key?(:'marketType')
        self.market_type = attributes[:'marketType']
      end

      if attributes.has_key?(:'marketBaseRate')
        self.market_base_rate = attributes[:'marketBaseRate']
      end

      if attributes.has_key?(:'numberOfWinners')
        self.number_of_winners = attributes[:'numberOfWinners']
      end

      if attributes.has_key?(:'countryCode')
        self.country_code = attributes[:'countryCode']
      end

      if attributes.has_key?(:'inPlay')
        self.in_play = attributes[:'inPlay']
      end

      if attributes.has_key?(:'betDelay')
        self.bet_delay = attributes[:'betDelay']
      end

      if attributes.has_key?(:'bspMarket')
        self.bsp_market = attributes[:'bspMarket']
      end

      if attributes.has_key?(:'bettingType')
        self.betting_type = attributes[:'bettingType']
      end

      if attributes.has_key?(:'numberOfActiveRunners')
        self.number_of_active_runners = attributes[:'numberOfActiveRunners']
      end

      if attributes.has_key?(:'eventId')
        self.event_id = attributes[:'eventId']
      end

      if attributes.has_key?(:'crossMatching')
        self.cross_matching = attributes[:'crossMatching']
      end

      if attributes.has_key?(:'runnersVoidable')
        self.runners_voidable = attributes[:'runnersVoidable']
      end

      if attributes.has_key?(:'turnInPlayEnabled')
        self.turn_in_play_enabled = attributes[:'turnInPlayEnabled']
      end

      if attributes.has_key?(:'suspendTime')
        self.suspend_time = attributes[:'suspendTime']
      end

      if attributes.has_key?(:'discountAllowed')
        self.discount_allowed = attributes[:'discountAllowed']
      end

      if attributes.has_key?(:'persistenceEnabled')
        self.persistence_enabled = attributes[:'persistenceEnabled']
      end

      if attributes.has_key?(:'runners')
        if (value = attributes[:'runners']).is_a?(Array)
          self.runners = value
        end
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'eventTypeId')
        self.event_type_id = attributes[:'eventTypeId']
      end

      if attributes.has_key?(:'complete')
        self.complete = attributes[:'complete']
      end

      if attributes.has_key?(:'openDate')
        self.open_date = attributes[:'openDate']
      end

      if attributes.has_key?(:'marketTime')
        self.market_time = attributes[:'marketTime']
      end

      if attributes.has_key?(:'bspReconciled')
        self.bsp_reconciled = attributes[:'bspReconciled']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
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
      betting_type_validator = EnumAttributeValidator.new('String', ["ODDS", "LINE", "RANGE", "ASIAN_HANDICAP_DOUBLE_LINE", "ASIAN_HANDICAP_SINGLE_LINE"])
      return false unless betting_type_validator.valid?(@betting_type)
      status_validator = EnumAttributeValidator.new('String', ["INACTIVE", "OPEN", "SUSPENDED", "CLOSED"])
      return false unless status_validator.valid?(@status)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] betting_type Object to be assigned
    def betting_type=(betting_type)
      validator = EnumAttributeValidator.new('String', ["ODDS", "LINE", "RANGE", "ASIAN_HANDICAP_DOUBLE_LINE", "ASIAN_HANDICAP_SINGLE_LINE"])
      unless validator.valid?(betting_type)
        fail ArgumentError, "invalid value for 'betting_type', must be one of #{validator.allowable_values}."
      end
      @betting_type = betting_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["INACTIVE", "OPEN", "SUSPENDED", "CLOSED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          venue == o.venue &&
          settled_time == o.settled_time &&
          timezone == o.timezone &&
          each_way_divisor == o.each_way_divisor &&
          regulators == o.regulators &&
          market_type == o.market_type &&
          market_base_rate == o.market_base_rate &&
          number_of_winners == o.number_of_winners &&
          country_code == o.country_code &&
          in_play == o.in_play &&
          bet_delay == o.bet_delay &&
          bsp_market == o.bsp_market &&
          betting_type == o.betting_type &&
          number_of_active_runners == o.number_of_active_runners &&
          event_id == o.event_id &&
          cross_matching == o.cross_matching &&
          runners_voidable == o.runners_voidable &&
          turn_in_play_enabled == o.turn_in_play_enabled &&
          suspend_time == o.suspend_time &&
          discount_allowed == o.discount_allowed &&
          persistence_enabled == o.persistence_enabled &&
          runners == o.runners &&
          version == o.version &&
          event_type_id == o.event_type_id &&
          complete == o.complete &&
          open_date == o.open_date &&
          market_time == o.market_time &&
          bsp_reconciled == o.bsp_reconciled &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [venue, settled_time, timezone, each_way_divisor, regulators, market_type, market_base_rate, number_of_winners, country_code, in_play, bet_delay, bsp_market, betting_type, number_of_active_runners, event_id, cross_matching, runners_voidable, turn_in_play_enabled, suspend_time, discount_allowed, persistence_enabled, runners, version, event_type_id, complete, open_date, market_time, bsp_reconciled, status].hash
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
