=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.31
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0-SNAPSHOT

=end

# Common files
require 'ezmax_api/api_client'
require 'ezmax_api/api_error'
require 'ezmax_api/version'
require 'ezmax_api/configuration'

# Models
require 'ezmax_api/models/activesession_get_current_v1_response'
require 'ezmax_api/models/activesession_get_current_v1_response_m_payload'
require 'ezmax_api/models/address_request'
require 'ezmax_api/models/apikey_create_object_v1_request'
require 'ezmax_api/models/apikey_create_object_v1_response'
require 'ezmax_api/models/apikey_create_object_v1_response_m_payload'
require 'ezmax_api/models/apikey_request'
require 'ezmax_api/models/apikey_request_compound'
require 'ezmax_api/models/apikey_response'
require 'ezmax_api/models/attempt_response'
require 'ezmax_api/models/common_audit'
require 'ezmax_api/models/common_get_autocomplete_v1_response'
require 'ezmax_api/models/common_get_autocomplete_v1_response_m_payload'
require 'ezmax_api/models/common_response'
require 'ezmax_api/models/common_response_error'
require 'ezmax_api/models/common_response_obj_debug'
require 'ezmax_api/models/common_response_obj_debug_payload'
require 'ezmax_api/models/common_response_obj_sql_query'
require 'ezmax_api/models/common_webhook'
require 'ezmax_api/models/contact_request'
require 'ezmax_api/models/contact_request_compound'
require 'ezmax_api/models/contact_request_compound_all_of'
require 'ezmax_api/models/contactinformations_request'
require 'ezmax_api/models/contactinformations_request_compound'
require 'ezmax_api/models/email_request'
require 'ezmax_api/models/ezsigndocument_apply_ezsigntemplate_v1_request'
require 'ezmax_api/models/ezsigndocument_apply_ezsigntemplate_v1_response'
require 'ezmax_api/models/ezsigndocument_create_object_v1_request'
require 'ezmax_api/models/ezsigndocument_create_object_v1_response'
require 'ezmax_api/models/ezsigndocument_create_object_v1_response_m_payload'
require 'ezmax_api/models/ezsigndocument_delete_object_v1_response'
require 'ezmax_api/models/ezsigndocument_get_download_url_v1_response'
require 'ezmax_api/models/ezsigndocument_get_download_url_v1_response_m_payload'
require 'ezmax_api/models/ezsigndocument_get_object_v1_response'
require 'ezmax_api/models/ezsigndocument_get_object_v1_response_m_payload'
require 'ezmax_api/models/ezsigndocument_request'
require 'ezmax_api/models/ezsigndocument_request_compound'
require 'ezmax_api/models/ezsigndocument_response'
require 'ezmax_api/models/ezsigndocument_response_all_of'
require 'ezmax_api/models/ezsigndocument_response_compound'
require 'ezmax_api/models/ezsignfolder_create_object_v1_request'
require 'ezmax_api/models/ezsignfolder_create_object_v1_response'
require 'ezmax_api/models/ezsignfolder_create_object_v1_response_m_payload'
require 'ezmax_api/models/ezsignfolder_delete_object_v1_response'
require 'ezmax_api/models/ezsignfolder_get_object_v1_response'
require 'ezmax_api/models/ezsignfolder_get_object_v1_response_m_payload'
require 'ezmax_api/models/ezsignfolder_request'
require 'ezmax_api/models/ezsignfolder_request_compound'
require 'ezmax_api/models/ezsignfolder_response'
require 'ezmax_api/models/ezsignfolder_response_all_of'
require 'ezmax_api/models/ezsignfolder_response_compound'
require 'ezmax_api/models/ezsignfolder_send_v1_request'
require 'ezmax_api/models/ezsignfolder_send_v1_response'
require 'ezmax_api/models/ezsignfoldersignerassociation_create_object_v1_request'
require 'ezmax_api/models/ezsignfoldersignerassociation_create_object_v1_response'
require 'ezmax_api/models/ezsignfoldersignerassociation_create_object_v1_response_m_payload'
require 'ezmax_api/models/ezsignfoldersignerassociation_delete_object_v1_response'
require 'ezmax_api/models/ezsignfoldersignerassociation_get_in_person_login_url_v1_response'
require 'ezmax_api/models/ezsignfoldersignerassociation_get_in_person_login_url_v1_response_m_payload'
require 'ezmax_api/models/ezsignfoldersignerassociation_get_object_v1_response'
require 'ezmax_api/models/ezsignfoldersignerassociation_request'
require 'ezmax_api/models/ezsignfoldersignerassociation_request_compound'
require 'ezmax_api/models/ezsignsignature_create_object_v1_request'
require 'ezmax_api/models/ezsignsignature_create_object_v1_response'
require 'ezmax_api/models/ezsignsignature_create_object_v1_response_m_payload'
require 'ezmax_api/models/ezsignsignature_delete_object_v1_response'
require 'ezmax_api/models/ezsignsignature_get_object_v1_response'
require 'ezmax_api/models/ezsignsignature_request'
require 'ezmax_api/models/ezsignsignature_request_compound'
require 'ezmax_api/models/ezsignsigner_request'
require 'ezmax_api/models/ezsignsigner_request_compound'
require 'ezmax_api/models/ezsignsigner_request_compound_contact'
require 'ezmax_api/models/field_e_ezsigndocument_step'
require 'ezmax_api/models/field_e_ezsignfolder_sendreminderfrequency'
require 'ezmax_api/models/field_e_ezsignfolder_step'
require 'ezmax_api/models/field_e_phone_type'
require 'ezmax_api/models/field_e_user_type'
require 'ezmax_api/models/franchisereferalincome_create_object_v1_request'
require 'ezmax_api/models/franchisereferalincome_create_object_v1_response'
require 'ezmax_api/models/franchisereferalincome_create_object_v1_response_m_payload'
require 'ezmax_api/models/franchisereferalincome_request'
require 'ezmax_api/models/franchisereferalincome_request_compound'
require 'ezmax_api/models/global_customer_get_endpoint_v1_response'
require 'ezmax_api/models/multilingual_apikey_description'
require 'ezmax_api/models/phone_request'
require 'ezmax_api/models/unused_ezsigndocument_edit_object_v1_request'
require 'ezmax_api/models/unused_ezsigndocument_edit_object_v1_response'
require 'ezmax_api/models/unused_ezsignfolder_edit_object_v1_request'
require 'ezmax_api/models/unused_ezsignfolder_edit_object_v1_response'
require 'ezmax_api/models/unused_ezsignfoldersignerassociation_edit_object_v1_request'
require 'ezmax_api/models/unused_ezsignfoldersignerassociation_edit_object_v1_response'
require 'ezmax_api/models/unused_ezsignsignature_edit_object_v1_request'
require 'ezmax_api/models/unused_ezsignsignature_edit_object_v1_response'
require 'ezmax_api/models/user_create_ezsignuser_v1_request'
require 'ezmax_api/models/user_create_ezsignuser_v1_response'
require 'ezmax_api/models/user_create_ezsignuser_v1_response_m_payload'
require 'ezmax_api/models/user_response'
require 'ezmax_api/models/user_response_all_of'
require 'ezmax_api/models/webhook_ezsign_document_completed'
require 'ezmax_api/models/webhook_ezsign_document_completed_all_of'
require 'ezmax_api/models/webhook_ezsign_folder_completed'
require 'ezmax_api/models/webhook_ezsign_folder_completed_all_of'
require 'ezmax_api/models/webhook_response'
require 'ezmax_api/models/webhook_user_user_created'
require 'ezmax_api/models/webhook_user_user_created_all_of'
require 'ezmax_api/models/website_request'

# APIs
require 'ezmax_api/api/global_customer_api'
require 'ezmax_api/api/module_sspr_api'
require 'ezmax_api/api/module_user_api'
require 'ezmax_api/api/object_activesession_api'
require 'ezmax_api/api/object_apikey_api'
require 'ezmax_api/api/object_ezsigndocument_api'
require 'ezmax_api/api/object_ezsignfolder_api'
require 'ezmax_api/api/object_ezsignfoldersignerassociation_api'
require 'ezmax_api/api/object_ezsignsignature_api'
require 'ezmax_api/api/object_franchisebroker_api'
require 'ezmax_api/api/object_franchiseoffice_api'
require 'ezmax_api/api/object_franchisereferalincome_api'
require 'ezmax_api/api/object_period_api'

module EzmaxApi
  class << self
    # Customize default settings for the SDK using block.
    #   EzmaxApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
