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
  class EzsignfolderResponseAllOf
    # The unique ID of the Ezsignfoldertype.    This value can be queried by the API and is also visible in the admin interface.    There are two types of Ezsignfoldertype. **User** and **Shared**. **User** can only be seen by the user who created the folder or its assistants. Access to **Shared** folders are configurable for access and email delivery. You should typically choose a **Shared** type here.
    attr_accessor :fki_ezsignfoldertype_id

    # The unique ID of the Ezsigntsarequirement.  Determine if a Time Stamping Authority should add a timestamp on each of the signature. Valid values:  |Value|Description| |-|-| |1|No. TSA Timestamping will requested. This will make all signatures a lot faster since no round-trip to the TSA server will be required. Timestamping will be made using eZsign server's time.| |2|Best effort. Timestamping from a Time Stamping Authority will be requested but is not mandatory. In the very improbable case it cannot be completed, the timestamping will be made using eZsign server's time. **Additional fee applies**| |3|Mandatory. Timestamping from a Time Stamping Authority will be requested and is mandatory. In the very improbable case it cannot be completed, the signature will fail and the user will be asked to retry. **Additional fee applies**|
    attr_accessor :fki_ezsigntsarequirement_id

    # The description of the Ezsign Folder
    attr_accessor :s_ezsignfolder_description

    # Somes extra notes about the eZsign Folder
    attr_accessor :t_ezsignfolder_note

    attr_accessor :e_ezsignfolder_sendreminderfrequency

    # The unique ID of the Ezsignfolder
    attr_accessor :pki_ezsignfolder_id

    # The date and time at which the Ezsign folder was sent the last time.
    attr_accessor :dt_ezsignfolder_sentdate

    attr_accessor :e_ezsignfolder_step

    # The date and time at which the folder was closed. Either by applying the last signature or by completing it prematurely.
    attr_accessor :dt_ezsignfolder_close

    attr_accessor :obj_audit

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'fki_ezsignfoldertype_id' => :'fkiEzsignfoldertypeID',
        :'fki_ezsigntsarequirement_id' => :'fkiEzsigntsarequirementID',
        :'s_ezsignfolder_description' => :'sEzsignfolderDescription',
        :'t_ezsignfolder_note' => :'tEzsignfolderNote',
        :'e_ezsignfolder_sendreminderfrequency' => :'eEzsignfolderSendreminderfrequency',
        :'pki_ezsignfolder_id' => :'pkiEzsignfolderID',
        :'dt_ezsignfolder_sentdate' => :'dtEzsignfolderSentdate',
        :'e_ezsignfolder_step' => :'eEzsignfolderStep',
        :'dt_ezsignfolder_close' => :'dtEzsignfolderClose',
        :'obj_audit' => :'objAudit'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'fki_ezsignfoldertype_id' => :'Integer',
        :'fki_ezsigntsarequirement_id' => :'Integer',
        :'s_ezsignfolder_description' => :'String',
        :'t_ezsignfolder_note' => :'String',
        :'e_ezsignfolder_sendreminderfrequency' => :'FieldEEzsignfolderSendreminderfrequency',
        :'pki_ezsignfolder_id' => :'Integer',
        :'dt_ezsignfolder_sentdate' => :'String',
        :'e_ezsignfolder_step' => :'FieldEEzsignfolderStep',
        :'dt_ezsignfolder_close' => :'String',
        :'obj_audit' => :'CommonAudit'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `EzmaxApi::EzsignfolderResponseAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EzmaxApi::EzsignfolderResponseAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

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

      if attributes.key?(:'pki_ezsignfolder_id')
        self.pki_ezsignfolder_id = attributes[:'pki_ezsignfolder_id']
      end

      if attributes.key?(:'dt_ezsignfolder_sentdate')
        self.dt_ezsignfolder_sentdate = attributes[:'dt_ezsignfolder_sentdate']
      end

      if attributes.key?(:'e_ezsignfolder_step')
        self.e_ezsignfolder_step = attributes[:'e_ezsignfolder_step']
      end

      if attributes.key?(:'dt_ezsignfolder_close')
        self.dt_ezsignfolder_close = attributes[:'dt_ezsignfolder_close']
      end

      if attributes.key?(:'obj_audit')
        self.obj_audit = attributes[:'obj_audit']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
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

      if @t_ezsignfolder_note.nil?
        invalid_properties.push('invalid value for "t_ezsignfolder_note", t_ezsignfolder_note cannot be nil.')
      end

      if @e_ezsignfolder_sendreminderfrequency.nil?
        invalid_properties.push('invalid value for "e_ezsignfolder_sendreminderfrequency", e_ezsignfolder_sendreminderfrequency cannot be nil.')
      end

      if @pki_ezsignfolder_id.nil?
        invalid_properties.push('invalid value for "pki_ezsignfolder_id", pki_ezsignfolder_id cannot be nil.')
      end

      if @dt_ezsignfolder_sentdate.nil?
        invalid_properties.push('invalid value for "dt_ezsignfolder_sentdate", dt_ezsignfolder_sentdate cannot be nil.')
      end

      if @e_ezsignfolder_step.nil?
        invalid_properties.push('invalid value for "e_ezsignfolder_step", e_ezsignfolder_step cannot be nil.')
      end

      if @dt_ezsignfolder_close.nil?
        invalid_properties.push('invalid value for "dt_ezsignfolder_close", dt_ezsignfolder_close cannot be nil.')
      end

      if @obj_audit.nil?
        invalid_properties.push('invalid value for "obj_audit", obj_audit cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @fki_ezsignfoldertype_id.nil?
      return false if @fki_ezsigntsarequirement_id.nil?
      return false if @fki_ezsigntsarequirement_id > 3
      return false if @fki_ezsigntsarequirement_id < 1
      return false if @s_ezsignfolder_description.nil?
      return false if @t_ezsignfolder_note.nil?
      return false if @e_ezsignfolder_sendreminderfrequency.nil?
      return false if @pki_ezsignfolder_id.nil?
      return false if @dt_ezsignfolder_sentdate.nil?
      return false if @e_ezsignfolder_step.nil?
      return false if @dt_ezsignfolder_close.nil?
      return false if @obj_audit.nil?
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          fki_ezsignfoldertype_id == o.fki_ezsignfoldertype_id &&
          fki_ezsigntsarequirement_id == o.fki_ezsigntsarequirement_id &&
          s_ezsignfolder_description == o.s_ezsignfolder_description &&
          t_ezsignfolder_note == o.t_ezsignfolder_note &&
          e_ezsignfolder_sendreminderfrequency == o.e_ezsignfolder_sendreminderfrequency &&
          pki_ezsignfolder_id == o.pki_ezsignfolder_id &&
          dt_ezsignfolder_sentdate == o.dt_ezsignfolder_sentdate &&
          e_ezsignfolder_step == o.e_ezsignfolder_step &&
          dt_ezsignfolder_close == o.dt_ezsignfolder_close &&
          obj_audit == o.obj_audit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [fki_ezsignfoldertype_id, fki_ezsigntsarequirement_id, s_ezsignfolder_description, t_ezsignfolder_note, e_ezsignfolder_sendreminderfrequency, pki_ezsignfolder_id, dt_ezsignfolder_sentdate, e_ezsignfolder_step, dt_ezsignfolder_close, obj_audit].hash
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
