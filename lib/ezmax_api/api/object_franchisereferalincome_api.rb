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
