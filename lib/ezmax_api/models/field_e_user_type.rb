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
  class FieldEUserType
    AGENT_BROKER = "AgentBroker".freeze
    ASSISTANT = "Assistant".freeze
    ATTENDANCE = "Attendance".freeze
    CUSTOMER = "Customer".freeze
    EMPLOYEE = "Employee".freeze
    EZCOM = "Ezcom".freeze
    EZSIGN_SIGNER = "EzsignSigner".freeze
    EZSIGN_USER = "EzsignUser".freeze
    FRANCHISE_CUSTOMER_SERVER = "FranchiseCustomerServer".freeze
    NORMAL = "Normal".freeze
    REWARD_ADMINISTRATION = "RewardAdministration".freeze
    REWARD_MEMBER = "RewardMember".freeze
    REWARD_REPRESENTATIVE = "RewardRepresentative".freeze
    REWARD_CUSTOMER = "RewardCustomer".freeze
    REWARD_DISTRIBUTOR_SERVER = "RewardDistributorServer".freeze
    SUPPLIER = "Supplier".freeze
    VETRX_CUSTOMER = "VetrxCustomer".freeze
    VETRXCUSTOMERGROUP = "Vetrxcustomergroup".freeze
    VETRX_CUSTOMER_SERVER = "VetrxCustomerServer".freeze
    VETRX_MANUFACTURER = "VetrxManufacturer".freeze
    VETRX_VENDOR = "VetrxVendor".freeze

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
      constantValues = FieldEUserType.constants.select { |c| FieldEUserType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #FieldEUserType" if constantValues.empty?
      value
    end
  end
end
