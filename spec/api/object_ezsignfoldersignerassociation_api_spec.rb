=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign application.  We provide SDKs for customers. They are generated using OpenAPI codegen, we encourage customers to use them as we also provide samples for them.  You can choose to build your own implementation manually or can use any compatible OpenAPI 3.0 generator like Swagger Codegen, OpenAPI codegen or any commercial generators.  If you need helping understanding how to use this API, don't waste too much time looking for it. Contact support-api@ezmax.ca, we're here to help. We are developpers so we know programmers don't like bad documentation. If you don't find what you need in the documentation, let us know, we'll improve it and put you rapidly up on track.

The version of the OpenAPI document: 1.0.27
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for EzmaxApi::ObjectEzsignfoldersignerassociationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ObjectEzsignfoldersignerassociationApi' do
  before do
    # run before each test
    @api_instance = EzmaxApi::ObjectEzsignfoldersignerassociationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ObjectEzsignfoldersignerassociationApi' do
    it 'should create an instance of ObjectEzsignfoldersignerassociationApi' do
      expect(@api_instance).to be_instance_of(EzmaxApi::ObjectEzsignfoldersignerassociationApi)
    end
  end

  # unit tests for ezsignfoldersignerassociation_create_object_v1
  # Create a new Ezsignfoldersignerassociation
  # The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.
  # @param ezsignfoldersignerassociation_create_object_v1_request 
  # @param [Hash] opts the optional parameters
  # @return [EzsignfoldersignerassociationCreateObjectV1Response]
  describe 'ezsignfoldersignerassociation_create_object_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ezsignfoldersignerassociation_delete_object_v1
  # Delete an existing Ezsignfoldersignerassociation
  # @param pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation
  # @param [Hash] opts the optional parameters
  # @return [EzsignfoldersignerassociationDeleteObjectV1Response]
  describe 'ezsignfoldersignerassociation_delete_object_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ezsignfoldersignerassociation_edit_object_v1
  # Modify an existing Ezsignfoldersignerassociation
  # @param pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation
  # @param ezsignfoldersignerassociation_edit_object_v1_request 
  # @param [Hash] opts the optional parameters
  # @return [EzsignfoldersignerassociationEditObjectV1Response]
  describe 'ezsignfoldersignerassociation_edit_object_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ezsignfoldersignerassociation_get_in_person_login_url_v1
  # Retrieve a Login Url to allow In-Person signing
  # This endpoint returns a Login Url that can be used in a browser or embedded in an I-Frame to allow in person signing.  The signer Login type must be configured as In-Person.
  # @param pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation
  # @param [Hash] opts the optional parameters
  # @return [EzsignfoldersignerassociationGetInPersonLoginUrlV1Response]
  describe 'ezsignfoldersignerassociation_get_in_person_login_url_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ezsignfoldersignerassociation_get_object_get_children_v1
  # Retrieve an existing Ezsignfoldersignerassociation&#39;s children IDs
  # @param pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'ezsignfoldersignerassociation_get_object_get_children_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ezsignfoldersignerassociation_get_object_v1
  # Retrieve an existing Ezsignfoldersignerassociation
  # @param pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation
  # @param [Hash] opts the optional parameters
  # @return [EzsignfoldersignerassociationGetObjectV1Response]
  describe 'ezsignfoldersignerassociation_get_object_v1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end