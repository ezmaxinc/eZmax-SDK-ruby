=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.40
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'date'
require 'time'

module EzmaxApi
  # An Ezsigndocument Object
  class EzsigndocumentRequest
    # Indicates where to look for the document binary content.
    attr_accessor :e_ezsigndocument_source

    # Indicates the format of the document.
    attr_accessor :e_ezsigndocument_format

    # The Base64 encoded binary content of the document.  This field is Required when eEzsigndocumentSource = Base64.
    attr_accessor :s_ezsigndocument_base64

    # A reference to a valid Ezsignfolder.  That value is returned after a successful Ezsignfolder Creation.
    attr_accessor :fki_ezsignfolder_id

    # Represent a Date Time. The timezone is the one configured in the User's profile.
    attr_accessor :dt_ezsigndocument_duedate

    # The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English|
    attr_accessor :fki_language_id

    # The name of the document that will be presented to Ezsignfoldersignerassociations
    attr_accessor :s_ezsigndocument_name

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
        :'e_ezsigndocument_source' => :'eEzsigndocumentSource',
        :'e_ezsigndocument_format' => :'eEzsigndocumentFormat',
        :'s_ezsigndocument_base64' => :'sEzsigndocumentBase64',
        :'fki_ezsignfolder_id' => :'fkiEzsignfolderID',
        :'dt_ezsigndocument_duedate' => :'dtEzsigndocumentDuedate',
        :'fki_language_id' => :'fkiLanguageID',
        :'s_ezsigndocument_name' => :'sEzsigndocumentName'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'e_ezsigndocument_source' => :'String',
        :'e_ezsigndocument_format' => :'String',
        :'s_ezsigndocument_base64' => :'String',
        :'fki_ezsignfolder_id' => :'Integer',
        :'dt_ezsigndocument_duedate' => :'String',
        :'fki_language_id' => :'Integer',
        :'s_ezsigndocument_name' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `EzmaxApi::EzsigndocumentRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EzmaxApi::EzsigndocumentRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'e_ezsigndocument_source')
        self.e_ezsigndocument_source = attributes[:'e_ezsigndocument_source']
      end

      if attributes.key?(:'e_ezsigndocument_format')
        self.e_ezsigndocument_format = attributes[:'e_ezsigndocument_format']
      end

      if attributes.key?(:'s_ezsigndocument_base64')
        self.s_ezsigndocument_base64 = attributes[:'s_ezsigndocument_base64']
      end

      if attributes.key?(:'fki_ezsignfolder_id')
        self.fki_ezsignfolder_id = attributes[:'fki_ezsignfolder_id']
      end

      if attributes.key?(:'dt_ezsigndocument_duedate')
        self.dt_ezsigndocument_duedate = attributes[:'dt_ezsigndocument_duedate']
      end

      if attributes.key?(:'fki_language_id')
        self.fki_language_id = attributes[:'fki_language_id']
      end

      if attributes.key?(:'s_ezsigndocument_name')
        self.s_ezsigndocument_name = attributes[:'s_ezsigndocument_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @e_ezsigndocument_source.nil?
        invalid_properties.push('invalid value for "e_ezsigndocument_source", e_ezsigndocument_source cannot be nil.')
      end

      if @e_ezsigndocument_format.nil?
        invalid_properties.push('invalid value for "e_ezsigndocument_format", e_ezsigndocument_format cannot be nil.')
      end

      if @fki_ezsignfolder_id.nil?
        invalid_properties.push('invalid value for "fki_ezsignfolder_id", fki_ezsignfolder_id cannot be nil.')
      end

      if @fki_ezsignfolder_id < 1
        invalid_properties.push('invalid value for "fki_ezsignfolder_id", must be greater than or equal to 1.')
      end

      if @dt_ezsigndocument_duedate.nil?
        invalid_properties.push('invalid value for "dt_ezsigndocument_duedate", dt_ezsigndocument_duedate cannot be nil.')
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

      if @s_ezsigndocument_name.nil?
        invalid_properties.push('invalid value for "s_ezsigndocument_name", s_ezsigndocument_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @e_ezsigndocument_source.nil?
      e_ezsigndocument_source_validator = EnumAttributeValidator.new('String', ["Base64"])
      return false unless e_ezsigndocument_source_validator.valid?(@e_ezsigndocument_source)
      return false if @e_ezsigndocument_format.nil?
      e_ezsigndocument_format_validator = EnumAttributeValidator.new('String', ["Pdf"])
      return false unless e_ezsigndocument_format_validator.valid?(@e_ezsigndocument_format)
      return false if @fki_ezsignfolder_id.nil?
      return false if @fki_ezsignfolder_id < 1
      return false if @dt_ezsigndocument_duedate.nil?
      return false if @fki_language_id.nil?
      return false if @fki_language_id > 2
      return false if @fki_language_id < 1
      return false if @s_ezsigndocument_name.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] e_ezsigndocument_source Object to be assigned
    def e_ezsigndocument_source=(e_ezsigndocument_source)
      validator = EnumAttributeValidator.new('String', ["Base64"])
      unless validator.valid?(e_ezsigndocument_source)
        fail ArgumentError, "invalid value for \"e_ezsigndocument_source\", must be one of #{validator.allowable_values}."
      end
      @e_ezsigndocument_source = e_ezsigndocument_source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] e_ezsigndocument_format Object to be assigned
    def e_ezsigndocument_format=(e_ezsigndocument_format)
      validator = EnumAttributeValidator.new('String', ["Pdf"])
      unless validator.valid?(e_ezsigndocument_format)
        fail ArgumentError, "invalid value for \"e_ezsigndocument_format\", must be one of #{validator.allowable_values}."
      end
      @e_ezsigndocument_format = e_ezsigndocument_format
    end

    # Custom attribute writer method with validation
    # @param [Object] fki_ezsignfolder_id Value to be assigned
    def fki_ezsignfolder_id=(fki_ezsignfolder_id)
      if fki_ezsignfolder_id.nil?
        fail ArgumentError, 'fki_ezsignfolder_id cannot be nil'
      end

      if fki_ezsignfolder_id < 1
        fail ArgumentError, 'invalid value for "fki_ezsignfolder_id", must be greater than or equal to 1.'
      end

      @fki_ezsignfolder_id = fki_ezsignfolder_id
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
          e_ezsigndocument_source == o.e_ezsigndocument_source &&
          e_ezsigndocument_format == o.e_ezsigndocument_format &&
          s_ezsigndocument_base64 == o.s_ezsigndocument_base64 &&
          fki_ezsignfolder_id == o.fki_ezsignfolder_id &&
          dt_ezsigndocument_duedate == o.dt_ezsigndocument_duedate &&
          fki_language_id == o.fki_language_id &&
          s_ezsigndocument_name == o.s_ezsigndocument_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [e_ezsigndocument_source, e_ezsigndocument_format, s_ezsigndocument_base64, fki_ezsignfolder_id, dt_ezsigndocument_duedate, fki_language_id, s_ezsigndocument_name].hash
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
