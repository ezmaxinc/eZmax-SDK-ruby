=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.41
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'cgi'

module EzmaxApi
  class ObjectEzsignfolderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new Ezsignfolder
    # The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.
    # @param ezsignfolder_create_object_v1_request [Array<EzsignfolderCreateObjectV1Request>] 
    # @param [Hash] opts the optional parameters
    # @return [EzsignfolderCreateObjectV1Response]
    def ezsignfolder_create_object_v1(ezsignfolder_create_object_v1_request, opts = {})
      data, _status_code, _headers = ezsignfolder_create_object_v1_with_http_info(ezsignfolder_create_object_v1_request, opts)
      data
    end

    # Create a new Ezsignfolder
    # The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.
    # @param ezsignfolder_create_object_v1_request [Array<EzsignfolderCreateObjectV1Request>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsignfolderCreateObjectV1Response, Integer, Hash)>] EzsignfolderCreateObjectV1Response data, response status code and response headers
    def ezsignfolder_create_object_v1_with_http_info(ezsignfolder_create_object_v1_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsignfolderApi.ezsignfolder_create_object_v1 ...'
      end
      # verify the required parameter 'ezsignfolder_create_object_v1_request' is set
      if @api_client.config.client_side_validation && ezsignfolder_create_object_v1_request.nil?
        fail ArgumentError, "Missing the required parameter 'ezsignfolder_create_object_v1_request' when calling ObjectEzsignfolderApi.ezsignfolder_create_object_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsignfolder'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ezsignfolder_create_object_v1_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EzsignfolderCreateObjectV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsignfolderApi.ezsignfolder_create_object_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsignfolderApi#ezsignfolder_create_object_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing Ezsignfolder
    # @param pki_ezsignfolder_id [Integer] The unique ID of the Ezsignfolder
    # @param [Hash] opts the optional parameters
    # @return [EzsignfolderDeleteObjectV1Response]
    def ezsignfolder_delete_object_v1(pki_ezsignfolder_id, opts = {})
      data, _status_code, _headers = ezsignfolder_delete_object_v1_with_http_info(pki_ezsignfolder_id, opts)
      data
    end

    # Delete an existing Ezsignfolder
    # @param pki_ezsignfolder_id [Integer] The unique ID of the Ezsignfolder
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsignfolderDeleteObjectV1Response, Integer, Hash)>] EzsignfolderDeleteObjectV1Response data, response status code and response headers
    def ezsignfolder_delete_object_v1_with_http_info(pki_ezsignfolder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsignfolderApi.ezsignfolder_delete_object_v1 ...'
      end
      # verify the required parameter 'pki_ezsignfolder_id' is set
      if @api_client.config.client_side_validation && pki_ezsignfolder_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsignfolder_id' when calling ObjectEzsignfolderApi.ezsignfolder_delete_object_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsignfolder/{pkiEzsignfolderID}'.sub('{' + 'pkiEzsignfolderID' + '}', CGI.escape(pki_ezsignfolder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EzsignfolderDeleteObjectV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsignfolderApi.ezsignfolder_delete_object_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsignfolderApi#ezsignfolder_delete_object_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an existing Ezsignfolder's children IDs
    # @param pki_ezsignfolder_id [Integer] The unique ID of the Ezsignfolder
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def ezsignfolder_get_children_v1(pki_ezsignfolder_id, opts = {})
      ezsignfolder_get_children_v1_with_http_info(pki_ezsignfolder_id, opts)
      nil
    end

    # Retrieve an existing Ezsignfolder&#39;s children IDs
    # @param pki_ezsignfolder_id [Integer] The unique ID of the Ezsignfolder
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def ezsignfolder_get_children_v1_with_http_info(pki_ezsignfolder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsignfolderApi.ezsignfolder_get_children_v1 ...'
      end
      # verify the required parameter 'pki_ezsignfolder_id' is set
      if @api_client.config.client_side_validation && pki_ezsignfolder_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsignfolder_id' when calling ObjectEzsignfolderApi.ezsignfolder_get_children_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsignfolder/{pkiEzsignfolderID}/getChildren'.sub('{' + 'pkiEzsignfolderID' + '}', CGI.escape(pki_ezsignfolder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsignfolderApi.ezsignfolder_get_children_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsignfolderApi#ezsignfolder_get_children_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an existing Ezsignfolder
    # @param pki_ezsignfolder_id [Integer] The unique ID of the Ezsignfolder
    # @param [Hash] opts the optional parameters
    # @return [EzsignfolderGetObjectV1Response]
    def ezsignfolder_get_object_v1(pki_ezsignfolder_id, opts = {})
      data, _status_code, _headers = ezsignfolder_get_object_v1_with_http_info(pki_ezsignfolder_id, opts)
      data
    end

    # Retrieve an existing Ezsignfolder
    # @param pki_ezsignfolder_id [Integer] The unique ID of the Ezsignfolder
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsignfolderGetObjectV1Response, Integer, Hash)>] EzsignfolderGetObjectV1Response data, response status code and response headers
    def ezsignfolder_get_object_v1_with_http_info(pki_ezsignfolder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsignfolderApi.ezsignfolder_get_object_v1 ...'
      end
      # verify the required parameter 'pki_ezsignfolder_id' is set
      if @api_client.config.client_side_validation && pki_ezsignfolder_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsignfolder_id' when calling ObjectEzsignfolderApi.ezsignfolder_get_object_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsignfolder/{pkiEzsignfolderID}'.sub('{' + 'pkiEzsignfolderID' + '}', CGI.escape(pki_ezsignfolder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EzsignfolderGetObjectV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsignfolderApi.ezsignfolder_get_object_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsignfolderApi#ezsignfolder_get_object_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send the Ezsignfolder to the signatories for signature
    # @param pki_ezsignfolder_id [Integer] The unique ID of the Ezsignfolder
    # @param ezsignfolder_send_v1_request [EzsignfolderSendV1Request] 
    # @param [Hash] opts the optional parameters
    # @return [EzsignfolderSendV1Response]
    def ezsignfolder_send_v1(pki_ezsignfolder_id, ezsignfolder_send_v1_request, opts = {})
      data, _status_code, _headers = ezsignfolder_send_v1_with_http_info(pki_ezsignfolder_id, ezsignfolder_send_v1_request, opts)
      data
    end

    # Send the Ezsignfolder to the signatories for signature
    # @param pki_ezsignfolder_id [Integer] The unique ID of the Ezsignfolder
    # @param ezsignfolder_send_v1_request [EzsignfolderSendV1Request] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsignfolderSendV1Response, Integer, Hash)>] EzsignfolderSendV1Response data, response status code and response headers
    def ezsignfolder_send_v1_with_http_info(pki_ezsignfolder_id, ezsignfolder_send_v1_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsignfolderApi.ezsignfolder_send_v1 ...'
      end
      # verify the required parameter 'pki_ezsignfolder_id' is set
      if @api_client.config.client_side_validation && pki_ezsignfolder_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsignfolder_id' when calling ObjectEzsignfolderApi.ezsignfolder_send_v1"
      end
      # verify the required parameter 'ezsignfolder_send_v1_request' is set
      if @api_client.config.client_side_validation && ezsignfolder_send_v1_request.nil?
        fail ArgumentError, "Missing the required parameter 'ezsignfolder_send_v1_request' when calling ObjectEzsignfolderApi.ezsignfolder_send_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsignfolder/{pkiEzsignfolderID}/send'.sub('{' + 'pkiEzsignfolderID' + '}', CGI.escape(pki_ezsignfolder_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ezsignfolder_send_v1_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EzsignfolderSendV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsignfolderApi.ezsignfolder_send_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsignfolderApi#ezsignfolder_send_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
