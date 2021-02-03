=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign application.  We provide SDKs for customers. They are generated using OpenAPI codegen, we encourage customers to use them as we also provide samples for them.  You can choose to build your own implementation manually or can use any compatible OpenAPI 3.0 generator like Swagger Codegen, OpenAPI codegen or any commercial generators.  If you need helping understanding how to use this API, don't waste too much time looking for it. Contact support-api@ezmax.ca, we're here to help. We are developpers so we know programmers don't like bad documentation. If you don't find what you need in the documentation, let us know, we'll improve it and put you rapidly up on track.

The version of the OpenAPI document: 1.0.27
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module EzmaxApi
  # Payload for the /1/object/activesession/getCurrent API Request
  class ActivesessionGetCurrentV1ResponseMPayload
    # The customer code specific to the client in which the API request is being made
    attr_accessor :s_customer_code

    # The type of session used for the API request call
    attr_accessor :e_activesession_sessiontype

    # The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English|
    attr_accessor :fki_language_id

    # The name of the active Company in the current language
    attr_accessor :s_company_name_x

    # The name of the active Department in the current language
    attr_accessor :s_department_name_x

    # An Array of Registered modules.  These are the modules that are Licensed to be used by the User or the API Key.
    attr_accessor :a_registered_modules

    # An array of permissions granted to the user or api key
    attr_accessor :a_permissions

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
        :'s_customer_code' => :'sCustomerCode',
        :'e_activesession_sessiontype' => :'eActivesessionSessiontype',
        :'fki_language_id' => :'fkiLanguageID',
        :'s_company_name_x' => :'sCompanyNameX',
        :'s_department_name_x' => :'sDepartmentNameX',
        :'a_registered_modules' => :'a_RegisteredModules',
        :'a_permissions' => :'a_Permissions'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'s_customer_code' => :'String',
        :'e_activesession_sessiontype' => :'String',
        :'fki_language_id' => :'Integer',
        :'s_company_name_x' => :'String',
        :'s_department_name_x' => :'String',
        :'a_registered_modules' => :'Array<String>',
        :'a_permissions' => :'Array<Integer>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `EzmaxApi::ActivesessionGetCurrentV1ResponseMPayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EzmaxApi::ActivesessionGetCurrentV1ResponseMPayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'s_customer_code')
        self.s_customer_code = attributes[:'s_customer_code']
      end

      if attributes.key?(:'e_activesession_sessiontype')
        self.e_activesession_sessiontype = attributes[:'e_activesession_sessiontype']
      end

      if attributes.key?(:'fki_language_id')
        self.fki_language_id = attributes[:'fki_language_id']
      end

      if attributes.key?(:'s_company_name_x')
        self.s_company_name_x = attributes[:'s_company_name_x']
      end

      if attributes.key?(:'s_department_name_x')
        self.s_department_name_x = attributes[:'s_department_name_x']
      end

      if attributes.key?(:'a_registered_modules')
        if (value = attributes[:'a_registered_modules']).is_a?(Array)
          self.a_registered_modules = value
        end
      end

      if attributes.key?(:'a_permissions')
        if (value = attributes[:'a_permissions']).is_a?(Array)
          self.a_permissions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @s_customer_code.nil?
        invalid_properties.push('invalid value for "s_customer_code", s_customer_code cannot be nil.')
      end

      if @e_activesession_sessiontype.nil?
        invalid_properties.push('invalid value for "e_activesession_sessiontype", e_activesession_sessiontype cannot be nil.')
      end

      if @fki_language_id.nil?
        invalid_properties.push('invalid value for "fki_language_id", fki_language_id cannot be nil.')
      end

      if @fki_language_id > 2
        invalid_properties.push('invalid value for "fki_language_id", must be smaller than or equal to 2.')
      end

      if @fki_language_id < 1
        invalid_properties.push('invalid value for "fki_language_id", must be greater than or equal to 1.')
      end

      if @s_company_name_x.nil?
        invalid_properties.push('invalid value for "s_company_name_x", s_company_name_x cannot be nil.')
      end

      if @s_department_name_x.nil?
        invalid_properties.push('invalid value for "s_department_name_x", s_department_name_x cannot be nil.')
      end

      if @a_registered_modules.nil?
        invalid_properties.push('invalid value for "a_registered_modules", a_registered_modules cannot be nil.')
      end

      if @a_permissions.nil?
        invalid_properties.push('invalid value for "a_permissions", a_permissions cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @s_customer_code.nil?
      return false if @e_activesession_sessiontype.nil?
      e_activesession_sessiontype_validator = EnumAttributeValidator.new('String', ["Normal"])
      return false unless e_activesession_sessiontype_validator.valid?(@e_activesession_sessiontype)
      return false if @fki_language_id.nil?
      return false if @fki_language_id > 2
      return false if @fki_language_id < 1
      return false if @s_company_name_x.nil?
      return false if @s_department_name_x.nil?
      return false if @a_registered_modules.nil?
      return false if @a_permissions.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] e_activesession_sessiontype Object to be assigned
    def e_activesession_sessiontype=(e_activesession_sessiontype)
      validator = EnumAttributeValidator.new('String', ["Normal"])
      unless validator.valid?(e_activesession_sessiontype)
        fail ArgumentError, "invalid value for \"e_activesession_sessiontype\", must be one of #{validator.allowable_values}."
      end
      @e_activesession_sessiontype = e_activesession_sessiontype
    end

    # Custom attribute writer method with validation
    # @param [Object] fki_language_id Value to be assigned
    def fki_language_id=(fki_language_id)
      if fki_language_id.nil?
        fail ArgumentError, 'fki_language_id cannot be nil'
      end

      if fki_language_id > 2
        fail ArgumentError, 'invalid value for "fki_language_id", must be smaller than or equal to 2.'
      end

      if fki_language_id < 1
        fail ArgumentError, 'invalid value for "fki_language_id", must be greater than or equal to 1.'
      end

      @fki_language_id = fki_language_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          s_customer_code == o.s_customer_code &&
          e_activesession_sessiontype == o.e_activesession_sessiontype &&
          fki_language_id == o.fki_language_id &&
          s_company_name_x == o.s_company_name_x &&
          s_department_name_x == o.s_department_name_x &&
          a_registered_modules == o.a_registered_modules &&
          a_permissions == o.a_permissions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [s_customer_code, e_activesession_sessiontype, fki_language_id, s_company_name_x, s_department_name_x, a_registered_modules, a_permissions].hash
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