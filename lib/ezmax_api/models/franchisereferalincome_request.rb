=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.33
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module EzmaxApi
  # An Franchisereferalincome Object
  class FranchisereferalincomeRequest
    # The unique ID of the Franchisebroker
    attr_accessor :fki_franchisebroker_id

    # The unique ID of the Franchisereferalincomeprogram
    attr_accessor :fki_franchisereferalincomeprogram_id

    # The unique ID of the Period
    attr_accessor :fki_period_id

    # The loan amount
    attr_accessor :d_franchisereferalincome_loan

    # The amount that will be given to the franchise
    attr_accessor :d_franchisereferalincome_franchiseamount

    # The amount that will be kept by the franchisor
    attr_accessor :d_franchisereferalincome_franchisoramount

    # The amount that will be given to the agent
    attr_accessor :d_franchisereferalincome_agentamount

    # The date the amounts were disbursed
    attr_accessor :dt_franchisereferalincome_disbursed

    # A comment about the transaction
    attr_accessor :t_franchisereferalincome_comment

    # The unique ID of the Franchisereoffice
    attr_accessor :fki_franchiseoffice_id

    attr_accessor :s_franchisereferalincome_remoteid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'fki_franchisebroker_id' => :'fkiFranchisebrokerID',
        :'fki_franchisereferalincomeprogram_id' => :'fkiFranchisereferalincomeprogramID',
        :'fki_period_id' => :'fkiPeriodID',
        :'d_franchisereferalincome_loan' => :'dFranchisereferalincomeLoan',
        :'d_franchisereferalincome_franchiseamount' => :'dFranchisereferalincomeFranchiseamount',
        :'d_franchisereferalincome_franchisoramount' => :'dFranchisereferalincomeFranchisoramount',
        :'d_franchisereferalincome_agentamount' => :'dFranchisereferalincomeAgentamount',
        :'dt_franchisereferalincome_disbursed' => :'dtFranchisereferalincomeDisbursed',
        :'t_franchisereferalincome_comment' => :'tFranchisereferalincomeComment',
        :'fki_franchiseoffice_id' => :'fkiFranchiseofficeID',
        :'s_franchisereferalincome_remoteid' => :'sFranchisereferalincomeRemoteid'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'fki_franchisebroker_id' => :'Integer',
        :'fki_franchisereferalincomeprogram_id' => :'Integer',
        :'fki_period_id' => :'Integer',
        :'d_franchisereferalincome_loan' => :'String',
        :'d_franchisereferalincome_franchiseamount' => :'String',
        :'d_franchisereferalincome_franchisoramount' => :'String',
        :'d_franchisereferalincome_agentamount' => :'String',
        :'dt_franchisereferalincome_disbursed' => :'String',
        :'t_franchisereferalincome_comment' => :'String',
        :'fki_franchiseoffice_id' => :'Integer',
        :'s_franchisereferalincome_remoteid' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EzmaxApi::FranchisereferalincomeRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EzmaxApi::FranchisereferalincomeRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'fki_franchisebroker_id')
        self.fki_franchisebroker_id = attributes[:'fki_franchisebroker_id']
      end

      if attributes.key?(:'fki_franchisereferalincomeprogram_id')
        self.fki_franchisereferalincomeprogram_id = attributes[:'fki_franchisereferalincomeprogram_id']
      end

      if attributes.key?(:'fki_period_id')
        self.fki_period_id = attributes[:'fki_period_id']
      end

      if attributes.key?(:'d_franchisereferalincome_loan')
        self.d_franchisereferalincome_loan = attributes[:'d_franchisereferalincome_loan']
      end

      if attributes.key?(:'d_franchisereferalincome_franchiseamount')
        self.d_franchisereferalincome_franchiseamount = attributes[:'d_franchisereferalincome_franchiseamount']
      end

      if attributes.key?(:'d_franchisereferalincome_franchisoramount')
        self.d_franchisereferalincome_franchisoramount = attributes[:'d_franchisereferalincome_franchisoramount']
      end

      if attributes.key?(:'d_franchisereferalincome_agentamount')
        self.d_franchisereferalincome_agentamount = attributes[:'d_franchisereferalincome_agentamount']
      end

      if attributes.key?(:'dt_franchisereferalincome_disbursed')
        self.dt_franchisereferalincome_disbursed = attributes[:'dt_franchisereferalincome_disbursed']
      end

      if attributes.key?(:'t_franchisereferalincome_comment')
        self.t_franchisereferalincome_comment = attributes[:'t_franchisereferalincome_comment']
      end

      if attributes.key?(:'fki_franchiseoffice_id')
        self.fki_franchiseoffice_id = attributes[:'fki_franchiseoffice_id']
      end

      if attributes.key?(:'s_franchisereferalincome_remoteid')
        self.s_franchisereferalincome_remoteid = attributes[:'s_franchisereferalincome_remoteid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @fki_franchisebroker_id.nil?
        invalid_properties.push('invalid value for "fki_franchisebroker_id", fki_franchisebroker_id cannot be nil.')
      end

      if @fki_franchisereferalincomeprogram_id.nil?
        invalid_properties.push('invalid value for "fki_franchisereferalincomeprogram_id", fki_franchisereferalincomeprogram_id cannot be nil.')
      end

      if @fki_period_id.nil?
        invalid_properties.push('invalid value for "fki_period_id", fki_period_id cannot be nil.')
      end

      if @d_franchisereferalincome_loan.nil?
        invalid_properties.push('invalid value for "d_franchisereferalincome_loan", d_franchisereferalincome_loan cannot be nil.')
      end

      if @d_franchisereferalincome_franchiseamount.nil?
        invalid_properties.push('invalid value for "d_franchisereferalincome_franchiseamount", d_franchisereferalincome_franchiseamount cannot be nil.')
      end

      if @d_franchisereferalincome_franchisoramount.nil?
        invalid_properties.push('invalid value for "d_franchisereferalincome_franchisoramount", d_franchisereferalincome_franchisoramount cannot be nil.')
      end

      if @d_franchisereferalincome_agentamount.nil?
        invalid_properties.push('invalid value for "d_franchisereferalincome_agentamount", d_franchisereferalincome_agentamount cannot be nil.')
      end

      if @dt_franchisereferalincome_disbursed.nil?
        invalid_properties.push('invalid value for "dt_franchisereferalincome_disbursed", dt_franchisereferalincome_disbursed cannot be nil.')
      end

      if @t_franchisereferalincome_comment.nil?
        invalid_properties.push('invalid value for "t_franchisereferalincome_comment", t_franchisereferalincome_comment cannot be nil.')
      end

      if @fki_franchiseoffice_id.nil?
        invalid_properties.push('invalid value for "fki_franchiseoffice_id", fki_franchiseoffice_id cannot be nil.')
      end

      if @s_franchisereferalincome_remoteid.nil?
        invalid_properties.push('invalid value for "s_franchisereferalincome_remoteid", s_franchisereferalincome_remoteid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @fki_franchisebroker_id.nil?
      return false if @fki_franchisereferalincomeprogram_id.nil?
      return false if @fki_period_id.nil?
      return false if @d_franchisereferalincome_loan.nil?
      return false if @d_franchisereferalincome_franchiseamount.nil?
      return false if @d_franchisereferalincome_franchisoramount.nil?
      return false if @d_franchisereferalincome_agentamount.nil?
      return false if @dt_franchisereferalincome_disbursed.nil?
      return false if @t_franchisereferalincome_comment.nil?
      return false if @fki_franchiseoffice_id.nil?
      return false if @s_franchisereferalincome_remoteid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          fki_franchisebroker_id == o.fki_franchisebroker_id &&
          fki_franchisereferalincomeprogram_id == o.fki_franchisereferalincomeprogram_id &&
          fki_period_id == o.fki_period_id &&
          d_franchisereferalincome_loan == o.d_franchisereferalincome_loan &&
          d_franchisereferalincome_franchiseamount == o.d_franchisereferalincome_franchiseamount &&
          d_franchisereferalincome_franchisoramount == o.d_franchisereferalincome_franchisoramount &&
          d_franchisereferalincome_agentamount == o.d_franchisereferalincome_agentamount &&
          dt_franchisereferalincome_disbursed == o.dt_franchisereferalincome_disbursed &&
          t_franchisereferalincome_comment == o.t_franchisereferalincome_comment &&
          fki_franchiseoffice_id == o.fki_franchiseoffice_id &&
          s_franchisereferalincome_remoteid == o.s_franchisereferalincome_remoteid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [fki_franchisebroker_id, fki_franchisereferalincomeprogram_id, fki_period_id, d_franchisereferalincome_loan, d_franchisereferalincome_franchiseamount, d_franchisereferalincome_franchisoramount, d_franchisereferalincome_agentamount, dt_franchisereferalincome_disbursed, t_franchisereferalincome_comment, fki_franchiseoffice_id, s_franchisereferalincome_remoteid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = EzmaxApi.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
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
