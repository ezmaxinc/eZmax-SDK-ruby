=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.43
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EzmaxApi::GlobalCustomerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GlobalCustomerApi' do
  before do
    # run before each test
    @api_instance = EzmaxApi::GlobalCustomerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GlobalCustomerApi' do
    it 'should create an instance of GlobalCustomerApi' do
      expect(@api_instance).to be_instance_of(EzmaxApi::GlobalCustomerApi)
    end
  end

  # unit tests for global_customer_get_endpoint_v1
  # Get customer endpoint
  # Retrieve the customer&#39;s specific server endpoint where to send requests. This will help locate the proper region (ie: sInfrastructureregionCode) and the proper environment (ie: sInfrastructureenvironmenttypeDescription) where the customer&#39;s data is stored.
  # @param pks_customer_code The customer code assigned to your account
  # @param [Hash] opts the optional parameters
  # @option opts [String] :s_infrastructureproduct_code The infrastructure product Code  If undefined, \&quot;appcluster01\&quot; is assumed
  # @return [GlobalCustomerGetEndpointV1Response]
  describe 'global_customer_get_endpoint_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
