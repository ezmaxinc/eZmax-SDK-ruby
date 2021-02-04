=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign application.  We provide SDKs for customers. They are generated using OpenAPI codegen, we encourage customers to use them as we also provide samples for them.  You can choose to build your own implementation manually or can use any compatible OpenAPI 3.0 generator like Swagger Codegen, OpenAPI codegen or any commercial generators.  If you need helping understanding how to use this API, don't waste too much time looking for it. Contact support-api@ezmax.ca, we're here to help. We are developpers so we know programmers don't like bad documentation. If you don't find what you need in the documentation, let us know, we'll improve it and put you rapidly up on track.

The version of the OpenAPI document: 1.0.28
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

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
