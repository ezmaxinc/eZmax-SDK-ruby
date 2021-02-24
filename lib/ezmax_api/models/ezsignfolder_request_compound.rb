=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.31
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module EzmaxApi
  # An Ezsignfolder Object and children to create a complete structure
  class EzsignfolderRequestCompound
    # An array of signers that will be invited to sign the Ezsigndocuments
    attr_accessor :a_ezsignfoldersignerassociation

    # The unique ID of the Ezsignfoldertype.    This value can be queried by the API and is also visible in the admin interface.    There are two types of Ezsignfoldertype. **User** and **Shared**. **User** can only be seen by the user who created the folder or its assistants. Access to **Shared** folders are configurable for access and email delivery. You should typically choose a **Shared** type here.
    attr_accessor :fki_ezsignfoldertype_id

    # The unique ID of the Ezsigntsarequirement.  Determine if a Time Stamping Authority should add a timestamp on each of the signature. Valid values:  |Value|Description| |-|-| |1|No. TSA Timestamping will requested. This will make all signatures a lot faster since no round-trip to the TSA server will be required. Timestamping will be made using eZsign server's time.| |2|Best effort. Timestamping from a Time Stamping Authority will be requested but is not mandatory. In the very improbable case it cannot be completed, the timestamping will be made using eZsign server's time. **Additional fee applies**| |3|Mandatory. Timestamping from a Time Stamping Authority will be requested and is mandatory. In the very improbable case it cannot be completed, the signature will fail and the user will be asked to retry. **Additional fee applies**|
    attr_accessor :fki_ezsigntsarequirement_id

    # The description of the Ezsign Folder
    attr_accessor :s_ezsignfolder_description

    # Somes extra notes about the eZsign Folder
    attr_accessor :t_ezsignfolder_note

    attr_accessor :e_ezsignfolder_sendreminderfrequency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'a_ezsignfoldersignerassociation' => :'a_Ezsignfoldersignerassociation',
        :'fki_ezsignfoldertype_id' => :'fkiEzsignfoldertypeID',
        :'fki_ezsigntsarequirement_id' => :'fkiEzsigntsarequirementID',
        :'s_ezsignfolder_description' => :'sEzsignfolderDescription',
        :'t_ezsignfolder_note' => :'tEzsignfolderNote',
        :'e_ezsignfolder_sendreminderfrequency' => :'eEzsignfolderSendreminderfrequency'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'a_ezsignfoldersignerassociation' => :'Array<EzsignfoldersignerassociationRequest>',
        :'fki_ezsignfoldertype_id' => :'Integer',
        :'fki_ezsigntsarequirement_id' => :'Integer',
        :'s_ezsignfolder_description' => :'String',
        :'t_ezsignfolder_note' => :'String',
        :'e_ezsignfolder_sendreminderfrequency' => :'FieldEEzsignfolderSendreminderfrequency'
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
      :'EzsignfolderRequest'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EzmaxApi::EzsignfolderRequestCompound` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EzmaxApi::EzsignfolderRequestCompound`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'a_ezsignfoldersignerassociation')
        if (value = attributes[:'a_ezsignfoldersignerassociation']).is_a?(Array)
          self.a_ezsignfoldersignerassociation = value
        end
      end

      if attributes.key?(:'fki_ezsignfoldertype_id')
        self.fki_ezsignfoldertype_id = attributes[:'fki_ezsignfoldertype_id']
      end

      if attributes.key?(:'fki_ezsigntsarequirement_id')
        self.fki_ezsigntsarequirement_id = attributes[:'fki_ezsigntsarequirement_id']
      end

      if attributes.key?(:'s_ezsignfolder_description')
        self.s_ezsignfolder_description = attributes[:'s_ezsignfolder_description']
      end

      if attributes.key?(:'t_ezsignfolder_note')
        self.t_ezsignfolder_note = attributes[:'t_ezsignfolder_note']
      end

      if attributes.key?(:'e_ezsignfolder_sendreminderfrequency')
        self.e_ezsignfolder_sendreminderfrequency = attributes[:'e_ezsignfolder_sendreminderfrequency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @a_ezsignfoldersignerassociation.nil?
        invalid_properties.push('invalid value for "a_ezsignfoldersignerassociation", a_ezsignfoldersignerassociation cannot be nil.')
      end

      if @fki_ezsignfoldertype_id.nil?
        invalid_properties.push('invalid value for "fki_ezsignfoldertype_id", fki_ezsignfoldertype_id cannot be nil.')
      end

      if @fki_ezsigntsarequirement_id.nil?
        invalid_properties.push('invalid value for "fki_ezsigntsarequirement_id", fki_ezsigntsarequirement_id cannot be nil.')
      end

      if @fki_ezsigntsarequirement_id > 3
        invalid_properties.push('invalid value for "fki_ezsigntsarequirement_id", must be smaller than or equal to 3.')
      end

      if @fki_ezsigntsarequirement_id < 1
        invalid_properties.push('invalid value for "fki_ezsigntsarequirement_id", must be greater than or equal to 1.')
      end

      if @s_ezsignfolder_description.nil?
        invalid_properties.push('invalid value for "s_ezsignfolder_description", s_ezsignfolder_description cannot be nil.')
      end

      if @s_ezsignfolder_description.to_s.length > 75
        invalid_properties.push('invalid value for "s_ezsignfolder_description", the character length must be smaller than or equal to 75.')
      end

      if @s_ezsignfolder_description.to_s.length < 1
        invalid_properties.push('invalid value for "s_ezsignfolder_description", the character length must be great than or equal to 1.')
      end

      if @t_ezsignfolder_note.nil?
        invalid_properties.push('invalid value for "t_ezsignfolder_note", t_ezsignfolder_note cannot be nil.')
      end

      if @e_ezsignfolder_sendreminderfrequency.nil?
        invalid_properties.push('invalid value for "e_ezsignfolder_sendreminderfrequency", e_ezsignfolder_sendreminderfrequency cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @a_ezsignfoldersignerassociation.nil?
      return false if @fki_ezsignfoldertype_id.nil?
      return false if @fki_ezsigntsarequirement_id.nil?
      return false if @fki_ezsigntsarequirement_id > 3
      return false if @fki_ezsigntsarequirement_id < 1
      return false if @s_ezsignfolder_description.nil?
      return false if @s_ezsignfolder_description.to_s.length > 75
      return false if @s_ezsignfolder_description.to_s.length < 1
      return false if @t_ezsignfolder_note.nil?
      return false if @e_ezsignfolder_sendreminderfrequency.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] fki_ezsigntsarequirement_id Value to be assigned
    def fki_ezsigntsarequirement_id=(fki_ezsigntsarequirement_id)
      if fki_ezsigntsarequirement_id.nil?
        fail ArgumentError, 'fki_ezsigntsarequirement_id cannot be nil'
      end

      if fki_ezsigntsarequirement_id > 3
        fail ArgumentError, 'invalid value for "fki_ezsigntsarequirement_id", must be smaller than or equal to 3.'
      end

      if fki_ezsigntsarequirement_id < 1
        fail ArgumentError, 'invalid value for "fki_ezsigntsarequirement_id", must be greater than or equal to 1.'
      end

      @fki_ezsigntsarequirement_id = fki_ezsigntsarequirement_id
    end

    # Custom attribute writer method with validation
    # @param [Object] s_ezsignfolder_description Value to be assigned
    def s_ezsignfolder_description=(s_ezsignfolder_description)
      if s_ezsignfolder_description.nil?
        fail ArgumentError, 's_ezsignfolder_description cannot be nil'
      end

      if s_ezsignfolder_description.to_s.length > 75
        fail ArgumentError, 'invalid value for "s_ezsignfolder_description", the character length must be smaller than or equal to 75.'
      end

      if s_ezsignfolder_description.to_s.length < 1
        fail ArgumentError, 'invalid value for "s_ezsignfolder_description", the character length must be great than or equal to 1.'
      end

      @s_ezsignfolder_description = s_ezsignfolder_description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          a_ezsignfoldersignerassociation == o.a_ezsignfoldersignerassociation &&
          fki_ezsignfoldertype_id == o.fki_ezsignfoldertype_id &&
          fki_ezsigntsarequirement_id == o.fki_ezsigntsarequirement_id &&
          s_ezsignfolder_description == o.s_ezsignfolder_description &&
          t_ezsignfolder_note == o.t_ezsignfolder_note &&
          e_ezsignfolder_sendreminderfrequency == o.e_ezsignfolder_sendreminderfrequency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [a_ezsignfoldersignerassociation, fki_ezsignfoldertype_id, fki_ezsigntsarequirement_id, s_ezsignfolder_description, t_ezsignfolder_note, e_ezsignfolder_sendreminderfrequency].hash
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
