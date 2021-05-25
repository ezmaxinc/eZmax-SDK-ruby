=begin
#eZmax API Definition

#This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.43
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'cgi'

module EzmaxApi
  class ObjectFranchisereferalincomeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new Franchisereferalincome
    # The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.
    # @param franchisereferalincome_create_object_v1_request [Array<FranchisereferalincomeCreateObjectV1Request>] 
    # @param [Hash] opts the optional parameters
    # @return [FranchisereferalincomeCreateObjectV1Response]
    def franchisereferalincome_create_object_v1(franchisereferalincome_create_object_v1_request, opts = {})
      data, _status_code, _headers = franchisereferalincome_create_object_v1_with_http_info(franchisereferalincome_create_object_v1_request, opts)
      data
    end

    # Create a new Franchisereferalincome
    # The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.
    # @param franchisereferalincome_create_object_v1_request [Array<FranchisereferalincomeCreateObjectV1Request>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FranchisereferalincomeCreateObjectV1Response, Integer, Hash)>] FranchisereferalincomeCreateObjectV1Response data, response status code and response headers
    def franchisereferalincome_create_object_v1_with_http_info(franchisereferalincome_create_object_v1_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ObjectFranchisereferalincomeApi.franchisereferalincome_create_object_v1 ...'
      end
      # verify the required parameter 'franchisereferalincome_create_object_v1_request' is set
      if @api_client.config.client_side_validation && franchisereferalincome_create_object_v1_request.nil?
        fail ArgumentError, "Missing the required parameter 'franchisereferalincome_create_object_v1_request' when calling ObjectFranchisereferalincomeApi.franchisereferalincome_create_object_v1"
      end
      # resource path
      local_var_path = '/1/object/franchisereferalincome'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(franchisereferalincome_create_object_v1_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FranchisereferalincomeCreateObjectV1Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ObjectFranchisereferalincomeApi.franchisereferalincome_create_object_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ObjectFranchisereferalincomeApi#franchisereferalincome_create_object_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
