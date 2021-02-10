=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign application.  We provide SDKs for customers. They are generated using OpenAPI codegen, we encourage customers to use them as we also provide samples for them.  You can choose to build your own implementation manually or can use any compatible OpenAPI 3.0 generator like Swagger Codegen, OpenAPI codegen or any commercial generators.  If you need helping understanding how to use this API, don't waste too much time looking for it. Contact support-api@ezmax.ca, we're here to help. We are developpers so we know programmers don't like bad documentation. If you don't find what you need in the documentation, let us know, we'll improve it and put you rapidly up on track.

The version of the OpenAPI document: 1.0.29
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module EzmaxApi
  # A Contactinformations Object and children to create a complete structure
  class ContactinformationsRequestCompound
    attr_accessor :a_obj_address

    attr_accessor :a_obj_phone

    attr_accessor :a_obj_email

    attr_accessor :a_obj_website

    # The index in the a_objAddress array (zero based index) representing the Address object that should become the default one.  You can leave the value to 0 if the array is empty.
    attr_accessor :i_address_default

    # The index in the a_objPhone array (zero based index) representing the Phone object that should become the default one.  You can leave the value to 0 if the array is empty.
    attr_accessor :i_phone_default

    # The index in the a_objEmail array (zero based index) representing the Email object that should become the default one.  You can leave the value to 0 if the array is empty.
    attr_accessor :i_email_default

    # The index in the a_objWebsite array (zero based index) representing the Website object that should become the default one.  You can leave the value to 0 if the array is empty.
    attr_accessor :i_website_default

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'a_obj_address' => :'a_objAddress',
        :'a_obj_phone' => :'a_objPhone',
        :'a_obj_email' => :'a_objEmail',
        :'a_obj_website' => :'a_objWebsite',
        :'i_address_default' => :'iAddressDefault',
        :'i_phone_default' => :'iPhoneDefault',
        :'i_email_default' => :'iEmailDefault',
        :'i_website_default' => :'iWebsiteDefault'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'a_obj_address' => :'Array<AddressRequest>',
        :'a_obj_phone' => :'Array<PhoneRequest>',
        :'a_obj_email' => :'Array<EmailRequest>',
        :'a_obj_website' => :'Array<WebsiteRequest>',
        :'i_address_default' => :'Integer',
        :'i_phone_default' => :'Integer',
        :'i_email_default' => :'Integer',
        :'i_website_default' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ContactinformationsRequest'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EzmaxApi::ContactinformationsRequestCompound` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EzmaxApi::ContactinformationsRequestCompound`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'a_obj_address')
        if (value = attributes[:'a_obj_address']).is_a?(Array)
          self.a_obj_address = value
        end
      end

      if attributes.key?(:'a_obj_phone')
        if (value = attributes[:'a_obj_phone']).is_a?(Array)
          self.a_obj_phone = value
        end
      end

      if attributes.key?(:'a_obj_email')
        if (value = attributes[:'a_obj_email']).is_a?(Array)
          self.a_obj_email = value
        end
      end

      if attributes.key?(:'a_obj_website')
        if (value = attributes[:'a_obj_website']).is_a?(Array)
          self.a_obj_website = value
        end
      end

      if attributes.key?(:'i_address_default')
        self.i_address_default = attributes[:'i_address_default']
      end

      if attributes.key?(:'i_phone_default')
        self.i_phone_default = attributes[:'i_phone_default']
      end

      if attributes.key?(:'i_email_default')
        self.i_email_default = attributes[:'i_email_default']
      end

      if attributes.key?(:'i_website_default')
        self.i_website_default = attributes[:'i_website_default']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @a_obj_address.nil?
        invalid_properties.push('invalid value for "a_obj_address", a_obj_address cannot be nil.')
      end

      if @a_obj_phone.nil?
        invalid_properties.push('invalid value for "a_obj_phone", a_obj_phone cannot be nil.')
      end

      if @a_obj_email.nil?
        invalid_properties.push('invalid value for "a_obj_email", a_obj_email cannot be nil.')
      end

      if @a_obj_website.nil?
        invalid_properties.push('invalid value for "a_obj_website", a_obj_website cannot be nil.')
      end

      if @i_address_default.nil?
        invalid_properties.push('invalid value for "i_address_default", i_address_default cannot be nil.')
      end

      if @i_phone_default.nil?
        invalid_properties.push('invalid value for "i_phone_default", i_phone_default cannot be nil.')
      end

      if @i_email_default.nil?
        invalid_properties.push('invalid value for "i_email_default", i_email_default cannot be nil.')
      end

      if @i_website_default.nil?
        invalid_properties.push('invalid value for "i_website_default", i_website_default cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @a_obj_address.nil?
      return false if @a_obj_phone.nil?
      return false if @a_obj_email.nil?
      return false if @a_obj_website.nil?
      return false if @i_address_default.nil?
      return false if @i_phone_default.nil?
      return false if @i_email_default.nil?
      return false if @i_website_default.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          a_obj_address == o.a_obj_address &&
          a_obj_phone == o.a_obj_phone &&
          a_obj_email == o.a_obj_email &&
          a_obj_website == o.a_obj_website &&
          i_address_default == o.i_address_default &&
          i_phone_default == o.i_phone_default &&
          i_email_default == o.i_email_default &&
          i_website_default == o.i_website_default
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [a_obj_address, a_obj_phone, a_obj_email, a_obj_website, i_address_default, i_phone_default, i_email_default, i_website_default].hash
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
