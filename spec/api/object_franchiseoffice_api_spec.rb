=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.33
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EzmaxApi::ObjectFranchiseofficeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ObjectFranchiseofficeApi' do
  before do
    # run before each test
    @api_instance = EzmaxApi::ObjectFranchiseofficeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ObjectFranchiseofficeApi' do
    it 'should create an instance of ObjectFranchiseofficeApi' do
      expect(@api_instance).to be_instance_of(EzmaxApi::ObjectFranchiseofficeApi)
    end
  end

  # unit tests for franchiseoffice_get_autocomplete_v1
  # Retrieve Franchiseoffices and IDs
  # Get the list of Franchiseoffices to be used in a dropdown or autocomplete control.
  # @param s_selector The type of Franchiseoffices to return
  # @param [Hash] opts the optional parameters
  # @option opts [String] :s_query Allow to filter on the option value
  # @return [CommonGetAutocompleteV1Response]
  describe 'franchiseoffice_get_autocomplete_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
