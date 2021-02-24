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
  class FieldEEzsigndocumentStep
    UNSENT = "Unsent".freeze
    UNSIGNED = "Unsigned".freeze
    PARTIALLY_SIGNED = "PartiallySigned".freeze
    COMPLETED = "Completed".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = FieldEEzsigndocumentStep.constants.select { |c| FieldEEzsigndocumentStep::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #FieldEEzsigndocumentStep" if constantValues.empty?
      value
    end
  end
end
