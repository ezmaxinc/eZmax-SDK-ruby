=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.40
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EzmaxApi::ObjectActivesessionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ObjectActivesessionApi' do
  before do
    # run before each test
    @api_instance = EzmaxApi::ObjectActivesessionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ObjectActivesessionApi' do
    it 'should create an instance of ObjectActivesessionApi' do
      expect(@api_instance).to be_instance_of(EzmaxApi::ObjectActivesessionApi)
    end
  end

  # unit tests for activesession_get_current_v1
  # Get Current Activesession
  # Retrieve the details about the current activesession
  # @param [Hash] opts the optional parameters
  # @return [ActivesessionGetCurrentV1Response]
  describe 'activesession_get_current_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
