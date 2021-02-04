=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign application.  We provide SDKs for customers. They are generated using OpenAPI codegen, we encourage customers to use them as we also provide samples for them.  You can choose to build your own implementation manually or can use any compatible OpenAPI 3.0 generator like Swagger Codegen, OpenAPI codegen or any commercial generators.  If you need helping understanding how to use this API, don't waste too much time looking for it. Contact support-api@ezmax.ca, we're here to help. We are developpers so we know programmers don't like bad documentation. If you don't find what you need in the documentation, let us know, we'll improve it and put you rapidly up on track.

The version of the OpenAPI document: 1.0.28
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'cgi'

module EzmaxApi
  class ObjectEzsigndocumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Apply an Ezsign Template to the Ezsigndocument.
    # This endpoint applies a predefined template to the ezsign document. This allows to automatically apply all the form and signature fields on a document in a single step.  The document must not already have fields otherwise an error will be returned.
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param ezsigndocument_apply_ezsigntemplate_v1_request [EzsigndocumentApplyEzsigntemplateV1Request] 
    # @param [Hash] opts the optional parameters
    # @return [EzsigndocumentApplyEzsigntemplateV1Response]
    def ezsigndocument_apply_ezsigntemplate_v1(pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request, opts = {})
      data, _status_code, _headers = ezsigndocument_apply_ezsigntemplate_v1_with_http_info(pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request, opts)
      data
    end

    # Apply an Ezsign Template to the Ezsigndocument.
    # This endpoint applies a predefined template to the ezsign document. This allows to automatically apply all the form and signature fields on a document in a single step.  The document must not already have fields otherwise an error will be returned.
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param ezsigndocument_apply_ezsigntemplate_v1_request [EzsigndocumentApplyEzsigntemplateV1Request] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsigndocumentApplyEzsigntemplateV1Response, Integer, Hash)>] EzsigndocumentApplyEzsigntemplateV1Response data, response status code and response headers
    def ezsigndocument_apply_ezsigntemplate_v1_with_http_info(pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsigndocumentApi.ezsigndocument_apply_ezsigntemplate_v1 ...'
      end
      # verify the required parameter 'pki_ezsigndocument_id' is set
      if @api_client.config.client_side_validation && pki_ezsigndocument_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsigndocument_id' when calling ObjectEzsigndocumentApi.ezsigndocument_apply_ezsigntemplate_v1"
      end
      # verify the required parameter 'ezsigndocument_apply_ezsigntemplate_v1_request' is set
      if @api_client.config.client_side_validation && ezsigndocument_apply_ezsigntemplate_v1_request.nil?
        fail ArgumentError, "Missing the required parameter 'ezsigndocument_apply_ezsigntemplate_v1_request' when calling ObjectEzsigndocumentApi.ezsigndocument_apply_ezsigntemplate_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}/applyezsigntemplate'.sub('{' + 'pkiEzsigndocumentID' + '}', CGI.escape(pki_ezsigndocument_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ezsigndocument_apply_ezsigntemplate_v1_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EzsigndocumentApplyEzsigntemplateV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsigndocumentApi.ezsigndocument_apply_ezsigntemplate_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsigndocumentApi#ezsigndocument_apply_ezsigntemplate_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new Ezsigndocument
    # The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.
    # @param ezsigndocument_create_object_v1_request [Array<EzsigndocumentCreateObjectV1Request>] 
    # @param [Hash] opts the optional parameters
    # @return [EzsigndocumentCreateObjectV1Response]
    def ezsigndocument_create_object_v1(ezsigndocument_create_object_v1_request, opts = {})
      data, _status_code, _headers = ezsigndocument_create_object_v1_with_http_info(ezsigndocument_create_object_v1_request, opts)
      data
    end

    # Create a new Ezsigndocument
    # The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.
    # @param ezsigndocument_create_object_v1_request [Array<EzsigndocumentCreateObjectV1Request>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsigndocumentCreateObjectV1Response, Integer, Hash)>] EzsigndocumentCreateObjectV1Response data, response status code and response headers
    def ezsigndocument_create_object_v1_with_http_info(ezsigndocument_create_object_v1_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsigndocumentApi.ezsigndocument_create_object_v1 ...'
      end
      # verify the required parameter 'ezsigndocument_create_object_v1_request' is set
      if @api_client.config.client_side_validation && ezsigndocument_create_object_v1_request.nil?
        fail ArgumentError, "Missing the required parameter 'ezsigndocument_create_object_v1_request' when calling ObjectEzsigndocumentApi.ezsigndocument_create_object_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsigndocument'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ezsigndocument_create_object_v1_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EzsigndocumentCreateObjectV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsigndocumentApi.ezsigndocument_create_object_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsigndocumentApi#ezsigndocument_create_object_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing Ezsigndocument
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param [Hash] opts the optional parameters
    # @return [EzsigndocumentDeleteObjectV1Response]
    def ezsigndocument_delete_object_v1(pki_ezsigndocument_id, opts = {})
      data, _status_code, _headers = ezsigndocument_delete_object_v1_with_http_info(pki_ezsigndocument_id, opts)
      data
    end

    # Delete an existing Ezsigndocument
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsigndocumentDeleteObjectV1Response, Integer, Hash)>] EzsigndocumentDeleteObjectV1Response data, response status code and response headers
    def ezsigndocument_delete_object_v1_with_http_info(pki_ezsigndocument_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsigndocumentApi.ezsigndocument_delete_object_v1 ...'
      end
      # verify the required parameter 'pki_ezsigndocument_id' is set
      if @api_client.config.client_side_validation && pki_ezsigndocument_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsigndocument_id' when calling ObjectEzsigndocumentApi.ezsigndocument_delete_object_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}'.sub('{' + 'pkiEzsigndocumentID' + '}', CGI.escape(pki_ezsigndocument_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EzsigndocumentDeleteObjectV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsigndocumentApi.ezsigndocument_delete_object_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsigndocumentApi#ezsigndocument_delete_object_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify an existing Ezsigndocument
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param ezsigndocument_edit_object_v1_request [EzsigndocumentEditObjectV1Request] 
    # @param [Hash] opts the optional parameters
    # @return [EzsigndocumentEditObjectV1Response]
    def ezsigndocument_edit_object_v1(pki_ezsigndocument_id, ezsigndocument_edit_object_v1_request, opts = {})
      data, _status_code, _headers = ezsigndocument_edit_object_v1_with_http_info(pki_ezsigndocument_id, ezsigndocument_edit_object_v1_request, opts)
      data
    end

    # Modify an existing Ezsigndocument
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param ezsigndocument_edit_object_v1_request [EzsigndocumentEditObjectV1Request] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsigndocumentEditObjectV1Response, Integer, Hash)>] EzsigndocumentEditObjectV1Response data, response status code and response headers
    def ezsigndocument_edit_object_v1_with_http_info(pki_ezsigndocument_id, ezsigndocument_edit_object_v1_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsigndocumentApi.ezsigndocument_edit_object_v1 ...'
      end
      # verify the required parameter 'pki_ezsigndocument_id' is set
      if @api_client.config.client_side_validation && pki_ezsigndocument_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsigndocument_id' when calling ObjectEzsigndocumentApi.ezsigndocument_edit_object_v1"
      end
      # verify the required parameter 'ezsigndocument_edit_object_v1_request' is set
      if @api_client.config.client_side_validation && ezsigndocument_edit_object_v1_request.nil?
        fail ArgumentError, "Missing the required parameter 'ezsigndocument_edit_object_v1_request' when calling ObjectEzsigndocumentApi.ezsigndocument_edit_object_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}'.sub('{' + 'pkiEzsigndocumentID' + '}', CGI.escape(pki_ezsigndocument_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ezsigndocument_edit_object_v1_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EzsigndocumentEditObjectV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsigndocumentApi.ezsigndocument_edit_object_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsigndocumentApi#ezsigndocument_edit_object_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a URL to download documents.
    # This endpoint returns URLs to different files that can be downloaded during the signing process.  These links will expire after 5 minutes so the download of the file should be made soon after retrieving the link.
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param e_document_type [String] The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **Signed** Is the final document once all signatures were applied. 3. **Proofdocument** Is the evidence report. 4. **Proof** Is the complete evidence archive including all of the above and more. 
    # @param [Hash] opts the optional parameters
    # @return [EzsigndocumentGetDownloadUrlV1Response]
    def ezsigndocument_get_download_url_v1(pki_ezsigndocument_id, e_document_type, opts = {})
      data, _status_code, _headers = ezsigndocument_get_download_url_v1_with_http_info(pki_ezsigndocument_id, e_document_type, opts)
      data
    end

    # Retrieve a URL to download documents.
    # This endpoint returns URLs to different files that can be downloaded during the signing process.  These links will expire after 5 minutes so the download of the file should be made soon after retrieving the link.
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param e_document_type [String] The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **Signed** Is the final document once all signatures were applied. 3. **Proofdocument** Is the evidence report. 4. **Proof** Is the complete evidence archive including all of the above and more. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsigndocumentGetDownloadUrlV1Response, Integer, Hash)>] EzsigndocumentGetDownloadUrlV1Response data, response status code and response headers
    def ezsigndocument_get_download_url_v1_with_http_info(pki_ezsigndocument_id, e_document_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsigndocumentApi.ezsigndocument_get_download_url_v1 ...'
      end
      # verify the required parameter 'pki_ezsigndocument_id' is set
      if @api_client.config.client_side_validation && pki_ezsigndocument_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsigndocument_id' when calling ObjectEzsigndocumentApi.ezsigndocument_get_download_url_v1"
      end
      # verify the required parameter 'e_document_type' is set
      if @api_client.config.client_side_validation && e_document_type.nil?
        fail ArgumentError, "Missing the required parameter 'e_document_type' when calling ObjectEzsigndocumentApi.ezsigndocument_get_download_url_v1"
      end
      # verify enum value
      allowable_values = ["Initial", "Signed", "Proof", "Proofdocument"]
      if @api_client.config.client_side_validation && !allowable_values.include?(e_document_type)
        fail ArgumentError, "invalid value for \"e_document_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}/getDownloadUrl/{eDocumentType}'.sub('{' + 'pkiEzsigndocumentID' + '}', CGI.escape(pki_ezsigndocument_id.to_s)).sub('{' + 'eDocumentType' + '}', CGI.escape(e_document_type.to_s))

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
      return_type = opts[:debug_return_type] || 'EzsigndocumentGetDownloadUrlV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsigndocumentApi.ezsigndocument_get_download_url_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsigndocumentApi#ezsigndocument_get_download_url_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an existing Ezsigndocument's children IDs
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def ezsigndocument_get_object_get_children_v1(pki_ezsigndocument_id, opts = {})
      ezsigndocument_get_object_get_children_v1_with_http_info(pki_ezsigndocument_id, opts)
      nil
    end

    # Retrieve an existing Ezsigndocument&#39;s children IDs
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def ezsigndocument_get_object_get_children_v1_with_http_info(pki_ezsigndocument_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsigndocumentApi.ezsigndocument_get_object_get_children_v1 ...'
      end
      # verify the required parameter 'pki_ezsigndocument_id' is set
      if @api_client.config.client_side_validation && pki_ezsigndocument_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsigndocument_id' when calling ObjectEzsigndocumentApi.ezsigndocument_get_object_get_children_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}/getChildren'.sub('{' + 'pkiEzsigndocumentID' + '}', CGI.escape(pki_ezsigndocument_id.to_s))

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
        :operation => :"ObjectEzsigndocumentApi.ezsigndocument_get_object_get_children_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsigndocumentApi#ezsigndocument_get_object_get_children_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an existing Ezsigndocument
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param [Hash] opts the optional parameters
    # @return [EzsigndocumentGetObjectV1Response]
    def ezsigndocument_get_object_v1(pki_ezsigndocument_id, opts = {})
      data, _status_code, _headers = ezsigndocument_get_object_v1_with_http_info(pki_ezsigndocument_id, opts)
      data
    end

    # Retrieve an existing Ezsigndocument
    # @param pki_ezsigndocument_id [Integer] The unique ID of the Ezsigndocument
    # @param [Hash] opts the optional parameters
    # @return [Array<(EzsigndocumentGetObjectV1Response, Integer, Hash)>] EzsigndocumentGetObjectV1Response data, response status code and response headers
    def ezsigndocument_get_object_v1_with_http_info(pki_ezsigndocument_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectEzsigndocumentApi.ezsigndocument_get_object_v1 ...'
      end
      # verify the required parameter 'pki_ezsigndocument_id' is set
      if @api_client.config.client_side_validation && pki_ezsigndocument_id.nil?
        fail ArgumentError, "Missing the required parameter 'pki_ezsigndocument_id' when calling ObjectEzsigndocumentApi.ezsigndocument_get_object_v1"
      end
      # resource path
      local_var_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}'.sub('{' + 'pkiEzsigndocumentID' + '}', CGI.escape(pki_ezsigndocument_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EzsigndocumentGetObjectV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectEzsigndocumentApi.ezsigndocument_get_object_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectEzsigndocumentApi#ezsigndocument_get_object_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
