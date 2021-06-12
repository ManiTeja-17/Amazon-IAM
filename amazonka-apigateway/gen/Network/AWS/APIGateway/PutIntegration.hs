{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.PutIntegration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets up a method\'s integration.
module Network.AWS.APIGateway.PutIntegration
  ( -- * Creating a Request
    PutIntegration (..),
    newPutIntegration,

    -- * Request Lenses
    putIntegration_integrationHttpMethod,
    putIntegration_passthroughBehavior,
    putIntegration_contentHandling,
    putIntegration_uri,
    putIntegration_connectionType,
    putIntegration_connectionId,
    putIntegration_requestTemplates,
    putIntegration_timeoutInMillis,
    putIntegration_cacheNamespace,
    putIntegration_cacheKeyParameters,
    putIntegration_tlsConfig,
    putIntegration_requestParameters,
    putIntegration_credentials,
    putIntegration_restApiId,
    putIntegration_resourceId,
    putIntegration_httpMethod,
    putIntegration_type,

    -- * Destructuring the Response
    Integration (..),
    newIntegration,

    -- * Response Lenses
    integration_httpMethod,
    integration_passthroughBehavior,
    integration_contentHandling,
    integration_uri,
    integration_connectionType,
    integration_connectionId,
    integration_requestTemplates,
    integration_timeoutInMillis,
    integration_cacheNamespace,
    integration_cacheKeyParameters,
    integration_tlsConfig,
    integration_integrationResponses,
    integration_requestParameters,
    integration_type,
    integration_credentials,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Sets up a method\'s integration.
--
-- /See:/ 'newPutIntegration' smart constructor.
data PutIntegration = PutIntegration'
  { -- | Specifies a put integration HTTP method. When the integration type is
    -- HTTP or AWS, this field is required.
    integrationHttpMethod :: Core.Maybe Core.Text,
    -- | Specifies the pass-through behavior for incoming requests based on the
    -- Content-Type header in the request, and the available mapping templates
    -- specified as the @requestTemplates@ property on the Integration
    -- resource. There are three valid values: @WHEN_NO_MATCH@,
    -- @WHEN_NO_TEMPLATES@, and @NEVER@.
    --
    -- -   @WHEN_NO_MATCH@ passes the request body for unmapped content types
    --     through to the integration back end without transformation.
    --
    -- -   @NEVER@ rejects unmapped content types with an HTTP 415
    --     \'Unsupported Media Type\' response.
    --
    -- -   @WHEN_NO_TEMPLATES@ allows pass-through when the integration has NO
    --     content types mapped to templates. However if there is at least one
    --     content type defined, unmapped content types will be rejected with
    --     the same 415 response.
    passthroughBehavior :: Core.Maybe Core.Text,
    -- | Specifies how to handle request payload content type conversions.
    -- Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@, with the
    -- following behaviors:
    --
    -- -   @CONVERT_TO_BINARY@: Converts a request payload from a
    --     Base64-encoded string to the corresponding binary blob.
    --
    -- -   @CONVERT_TO_TEXT@: Converts a request payload from a binary blob to
    --     a Base64-encoded string.
    --
    -- If this property is not defined, the request payload will be passed
    -- through from the method request to integration request without
    -- modification, provided that the @passthroughBehavior@ is configured to
    -- support payload pass-through.
    contentHandling :: Core.Maybe ContentHandlingStrategy,
    -- | Specifies Uniform Resource Identifier (URI) of the integration endpoint.
    --
    -- -   For @HTTP@ or @HTTP_PROXY@ integrations, the URI must be a fully
    --     formed, encoded HTTP(S) URL according to the
    --     <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier RFC-3986 specification>,
    --     for either standard integration, where @connectionType@ is not
    --     @VPC_LINK@, or private integration, where @connectionType@ is
    --     @VPC_LINK@. For a private HTTP integration, the URI is not used for
    --     routing.
    --
    -- -   For @AWS@ or @AWS_PROXY@ integrations, the URI is of the form
    --     @arn:aws:apigateway:{region}:{subdomain.service|service}:path|action\/{service_api}@.
    --     Here, @{Region}@ is the API Gateway region (e.g., @us-east-1@);
    --     @{service}@ is the name of the integrated AWS service (e.g., @s3@);
    --     and @{subdomain}@ is a designated subdomain supported by certain AWS
    --     service for fast host-name lookup. @action@ can be used for an AWS
    --     service action-based API, using an
    --     @Action={name}&{p1}={v1}&p2={v2}...@ query string. The ensuing
    --     @{service_api}@ refers to a supported action @{name}@ plus any
    --     required input parameters. Alternatively, @path@ can be used for an
    --     AWS service path-based API. The ensuing @service_api@ refers to the
    --     path to an AWS service resource, including the region of the
    --     integrated AWS service, if applicable. For example, for integration
    --     with the S3 API of @GetObject@, the @uri@ can be either
    --     @arn:aws:apigateway:us-west-2:s3:action\/GetObject&Bucket={bucket}&Key={key}@
    --     or @arn:aws:apigateway:us-west-2:s3:path\/{bucket}\/{key}@
    uri :: Core.Maybe Core.Text,
    -- | The type of the network connection to the integration endpoint. The
    -- valid value is @INTERNET@ for connections through the public routable
    -- internet or @VPC_LINK@ for private connections between API Gateway and a
    -- network load balancer in a VPC. The default value is @INTERNET@.
    connectionType :: Core.Maybe ConnectionType,
    -- | The
    -- (<https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id id>)
    -- of the VpcLink used for the integration when @connectionType=VPC_LINK@
    -- and undefined, otherwise.
    connectionId :: Core.Maybe Core.Text,
    -- | Represents a map of Velocity templates that are applied on the request
    -- payload based on the value of the Content-Type header sent by the
    -- client. The content type value is the key in this map, and the template
    -- (as a String) is the value.
    requestTemplates :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | Custom timeout between 50 and 29,000 milliseconds. The default value is
    -- 29,000 milliseconds or 29 seconds.
    timeoutInMillis :: Core.Maybe Core.Int,
    -- | Specifies a group of related cached parameters. By default, API Gateway
    -- uses the resource ID as the @cacheNamespace@. You can specify the same
    -- @cacheNamespace@ across resources to return the same cached data for
    -- requests to different resources.
    cacheNamespace :: Core.Maybe Core.Text,
    -- | A list of request parameters whose values API Gateway caches. To be
    -- valid values for @cacheKeyParameters@, these parameters must also be
    -- specified for Method @requestParameters@.
    cacheKeyParameters :: Core.Maybe [Core.Text],
    tlsConfig :: Core.Maybe TlsConfig,
    -- | A key-value map specifying request parameters that are passed from the
    -- method request to the back end. The key is an integration request
    -- parameter name and the associated value is a method request parameter
    -- value or static value that must be enclosed within single quotes and
    -- pre-encoded as required by the back end. The method request parameter
    -- value must match the pattern of @method.request.{location}.{name}@,
    -- where @location@ is @querystring@, @path@, or @header@ and @name@ must
    -- be a valid and unique method request parameter name.
    requestParameters :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | Specifies whether credentials are required for a put integration.
    credentials :: Core.Maybe Core.Text,
    -- | [Required] The string identifier of the associated RestApi.
    restApiId :: Core.Text,
    -- | [Required] Specifies a put integration request\'s resource ID.
    resourceId :: Core.Text,
    -- | [Required] Specifies a put integration request\'s HTTP method.
    httpMethod :: Core.Text,
    -- | [Required] Specifies a put integration input\'s type.
    type' :: IntegrationType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutIntegration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'integrationHttpMethod', 'putIntegration_integrationHttpMethod' - Specifies a put integration HTTP method. When the integration type is
-- HTTP or AWS, this field is required.
--
-- 'passthroughBehavior', 'putIntegration_passthroughBehavior' - Specifies the pass-through behavior for incoming requests based on the
-- Content-Type header in the request, and the available mapping templates
-- specified as the @requestTemplates@ property on the Integration
-- resource. There are three valid values: @WHEN_NO_MATCH@,
-- @WHEN_NO_TEMPLATES@, and @NEVER@.
--
-- -   @WHEN_NO_MATCH@ passes the request body for unmapped content types
--     through to the integration back end without transformation.
--
-- -   @NEVER@ rejects unmapped content types with an HTTP 415
--     \'Unsupported Media Type\' response.
--
-- -   @WHEN_NO_TEMPLATES@ allows pass-through when the integration has NO
--     content types mapped to templates. However if there is at least one
--     content type defined, unmapped content types will be rejected with
--     the same 415 response.
--
-- 'contentHandling', 'putIntegration_contentHandling' - Specifies how to handle request payload content type conversions.
-- Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@, with the
-- following behaviors:
--
-- -   @CONVERT_TO_BINARY@: Converts a request payload from a
--     Base64-encoded string to the corresponding binary blob.
--
-- -   @CONVERT_TO_TEXT@: Converts a request payload from a binary blob to
--     a Base64-encoded string.
--
-- If this property is not defined, the request payload will be passed
-- through from the method request to integration request without
-- modification, provided that the @passthroughBehavior@ is configured to
-- support payload pass-through.
--
-- 'uri', 'putIntegration_uri' - Specifies Uniform Resource Identifier (URI) of the integration endpoint.
--
-- -   For @HTTP@ or @HTTP_PROXY@ integrations, the URI must be a fully
--     formed, encoded HTTP(S) URL according to the
--     <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier RFC-3986 specification>,
--     for either standard integration, where @connectionType@ is not
--     @VPC_LINK@, or private integration, where @connectionType@ is
--     @VPC_LINK@. For a private HTTP integration, the URI is not used for
--     routing.
--
-- -   For @AWS@ or @AWS_PROXY@ integrations, the URI is of the form
--     @arn:aws:apigateway:{region}:{subdomain.service|service}:path|action\/{service_api}@.
--     Here, @{Region}@ is the API Gateway region (e.g., @us-east-1@);
--     @{service}@ is the name of the integrated AWS service (e.g., @s3@);
--     and @{subdomain}@ is a designated subdomain supported by certain AWS
--     service for fast host-name lookup. @action@ can be used for an AWS
--     service action-based API, using an
--     @Action={name}&{p1}={v1}&p2={v2}...@ query string. The ensuing
--     @{service_api}@ refers to a supported action @{name}@ plus any
--     required input parameters. Alternatively, @path@ can be used for an
--     AWS service path-based API. The ensuing @service_api@ refers to the
--     path to an AWS service resource, including the region of the
--     integrated AWS service, if applicable. For example, for integration
--     with the S3 API of @GetObject@, the @uri@ can be either
--     @arn:aws:apigateway:us-west-2:s3:action\/GetObject&Bucket={bucket}&Key={key}@
--     or @arn:aws:apigateway:us-west-2:s3:path\/{bucket}\/{key}@
--
-- 'connectionType', 'putIntegration_connectionType' - The type of the network connection to the integration endpoint. The
-- valid value is @INTERNET@ for connections through the public routable
-- internet or @VPC_LINK@ for private connections between API Gateway and a
-- network load balancer in a VPC. The default value is @INTERNET@.
--
-- 'connectionId', 'putIntegration_connectionId' - The
-- (<https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id id>)
-- of the VpcLink used for the integration when @connectionType=VPC_LINK@
-- and undefined, otherwise.
--
-- 'requestTemplates', 'putIntegration_requestTemplates' - Represents a map of Velocity templates that are applied on the request
-- payload based on the value of the Content-Type header sent by the
-- client. The content type value is the key in this map, and the template
-- (as a String) is the value.
--
-- 'timeoutInMillis', 'putIntegration_timeoutInMillis' - Custom timeout between 50 and 29,000 milliseconds. The default value is
-- 29,000 milliseconds or 29 seconds.
--
-- 'cacheNamespace', 'putIntegration_cacheNamespace' - Specifies a group of related cached parameters. By default, API Gateway
-- uses the resource ID as the @cacheNamespace@. You can specify the same
-- @cacheNamespace@ across resources to return the same cached data for
-- requests to different resources.
--
-- 'cacheKeyParameters', 'putIntegration_cacheKeyParameters' - A list of request parameters whose values API Gateway caches. To be
-- valid values for @cacheKeyParameters@, these parameters must also be
-- specified for Method @requestParameters@.
--
-- 'tlsConfig', 'putIntegration_tlsConfig' - Undocumented member.
--
-- 'requestParameters', 'putIntegration_requestParameters' - A key-value map specifying request parameters that are passed from the
-- method request to the back end. The key is an integration request
-- parameter name and the associated value is a method request parameter
-- value or static value that must be enclosed within single quotes and
-- pre-encoded as required by the back end. The method request parameter
-- value must match the pattern of @method.request.{location}.{name}@,
-- where @location@ is @querystring@, @path@, or @header@ and @name@ must
-- be a valid and unique method request parameter name.
--
-- 'credentials', 'putIntegration_credentials' - Specifies whether credentials are required for a put integration.
--
-- 'restApiId', 'putIntegration_restApiId' - [Required] The string identifier of the associated RestApi.
--
-- 'resourceId', 'putIntegration_resourceId' - [Required] Specifies a put integration request\'s resource ID.
--
-- 'httpMethod', 'putIntegration_httpMethod' - [Required] Specifies a put integration request\'s HTTP method.
--
-- 'type'', 'putIntegration_type' - [Required] Specifies a put integration input\'s type.
newPutIntegration ::
  -- | 'restApiId'
  Core.Text ->
  -- | 'resourceId'
  Core.Text ->
  -- | 'httpMethod'
  Core.Text ->
  -- | 'type''
  IntegrationType ->
  PutIntegration
newPutIntegration
  pRestApiId_
  pResourceId_
  pHttpMethod_
  pType_ =
    PutIntegration'
      { integrationHttpMethod =
          Core.Nothing,
        passthroughBehavior = Core.Nothing,
        contentHandling = Core.Nothing,
        uri = Core.Nothing,
        connectionType = Core.Nothing,
        connectionId = Core.Nothing,
        requestTemplates = Core.Nothing,
        timeoutInMillis = Core.Nothing,
        cacheNamespace = Core.Nothing,
        cacheKeyParameters = Core.Nothing,
        tlsConfig = Core.Nothing,
        requestParameters = Core.Nothing,
        credentials = Core.Nothing,
        restApiId = pRestApiId_,
        resourceId = pResourceId_,
        httpMethod = pHttpMethod_,
        type' = pType_
      }

-- | Specifies a put integration HTTP method. When the integration type is
-- HTTP or AWS, this field is required.
putIntegration_integrationHttpMethod :: Lens.Lens' PutIntegration (Core.Maybe Core.Text)
putIntegration_integrationHttpMethod = Lens.lens (\PutIntegration' {integrationHttpMethod} -> integrationHttpMethod) (\s@PutIntegration' {} a -> s {integrationHttpMethod = a} :: PutIntegration)

-- | Specifies the pass-through behavior for incoming requests based on the
-- Content-Type header in the request, and the available mapping templates
-- specified as the @requestTemplates@ property on the Integration
-- resource. There are three valid values: @WHEN_NO_MATCH@,
-- @WHEN_NO_TEMPLATES@, and @NEVER@.
--
-- -   @WHEN_NO_MATCH@ passes the request body for unmapped content types
--     through to the integration back end without transformation.
--
-- -   @NEVER@ rejects unmapped content types with an HTTP 415
--     \'Unsupported Media Type\' response.
--
-- -   @WHEN_NO_TEMPLATES@ allows pass-through when the integration has NO
--     content types mapped to templates. However if there is at least one
--     content type defined, unmapped content types will be rejected with
--     the same 415 response.
putIntegration_passthroughBehavior :: Lens.Lens' PutIntegration (Core.Maybe Core.Text)
putIntegration_passthroughBehavior = Lens.lens (\PutIntegration' {passthroughBehavior} -> passthroughBehavior) (\s@PutIntegration' {} a -> s {passthroughBehavior = a} :: PutIntegration)

-- | Specifies how to handle request payload content type conversions.
-- Supported values are @CONVERT_TO_BINARY@ and @CONVERT_TO_TEXT@, with the
-- following behaviors:
--
-- -   @CONVERT_TO_BINARY@: Converts a request payload from a
--     Base64-encoded string to the corresponding binary blob.
--
-- -   @CONVERT_TO_TEXT@: Converts a request payload from a binary blob to
--     a Base64-encoded string.
--
-- If this property is not defined, the request payload will be passed
-- through from the method request to integration request without
-- modification, provided that the @passthroughBehavior@ is configured to
-- support payload pass-through.
putIntegration_contentHandling :: Lens.Lens' PutIntegration (Core.Maybe ContentHandlingStrategy)
putIntegration_contentHandling = Lens.lens (\PutIntegration' {contentHandling} -> contentHandling) (\s@PutIntegration' {} a -> s {contentHandling = a} :: PutIntegration)

-- | Specifies Uniform Resource Identifier (URI) of the integration endpoint.
--
-- -   For @HTTP@ or @HTTP_PROXY@ integrations, the URI must be a fully
--     formed, encoded HTTP(S) URL according to the
--     <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier RFC-3986 specification>,
--     for either standard integration, where @connectionType@ is not
--     @VPC_LINK@, or private integration, where @connectionType@ is
--     @VPC_LINK@. For a private HTTP integration, the URI is not used for
--     routing.
--
-- -   For @AWS@ or @AWS_PROXY@ integrations, the URI is of the form
--     @arn:aws:apigateway:{region}:{subdomain.service|service}:path|action\/{service_api}@.
--     Here, @{Region}@ is the API Gateway region (e.g., @us-east-1@);
--     @{service}@ is the name of the integrated AWS service (e.g., @s3@);
--     and @{subdomain}@ is a designated subdomain supported by certain AWS
--     service for fast host-name lookup. @action@ can be used for an AWS
--     service action-based API, using an
--     @Action={name}&{p1}={v1}&p2={v2}...@ query string. The ensuing
--     @{service_api}@ refers to a supported action @{name}@ plus any
--     required input parameters. Alternatively, @path@ can be used for an
--     AWS service path-based API. The ensuing @service_api@ refers to the
--     path to an AWS service resource, including the region of the
--     integrated AWS service, if applicable. For example, for integration
--     with the S3 API of @GetObject@, the @uri@ can be either
--     @arn:aws:apigateway:us-west-2:s3:action\/GetObject&Bucket={bucket}&Key={key}@
--     or @arn:aws:apigateway:us-west-2:s3:path\/{bucket}\/{key}@
putIntegration_uri :: Lens.Lens' PutIntegration (Core.Maybe Core.Text)
putIntegration_uri = Lens.lens (\PutIntegration' {uri} -> uri) (\s@PutIntegration' {} a -> s {uri = a} :: PutIntegration)

-- | The type of the network connection to the integration endpoint. The
-- valid value is @INTERNET@ for connections through the public routable
-- internet or @VPC_LINK@ for private connections between API Gateway and a
-- network load balancer in a VPC. The default value is @INTERNET@.
putIntegration_connectionType :: Lens.Lens' PutIntegration (Core.Maybe ConnectionType)
putIntegration_connectionType = Lens.lens (\PutIntegration' {connectionType} -> connectionType) (\s@PutIntegration' {} a -> s {connectionType = a} :: PutIntegration)

-- | The
-- (<https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id id>)
-- of the VpcLink used for the integration when @connectionType=VPC_LINK@
-- and undefined, otherwise.
putIntegration_connectionId :: Lens.Lens' PutIntegration (Core.Maybe Core.Text)
putIntegration_connectionId = Lens.lens (\PutIntegration' {connectionId} -> connectionId) (\s@PutIntegration' {} a -> s {connectionId = a} :: PutIntegration)

-- | Represents a map of Velocity templates that are applied on the request
-- payload based on the value of the Content-Type header sent by the
-- client. The content type value is the key in this map, and the template
-- (as a String) is the value.
putIntegration_requestTemplates :: Lens.Lens' PutIntegration (Core.Maybe (Core.HashMap Core.Text Core.Text))
putIntegration_requestTemplates = Lens.lens (\PutIntegration' {requestTemplates} -> requestTemplates) (\s@PutIntegration' {} a -> s {requestTemplates = a} :: PutIntegration) Core.. Lens.mapping Lens._Coerce

-- | Custom timeout between 50 and 29,000 milliseconds. The default value is
-- 29,000 milliseconds or 29 seconds.
putIntegration_timeoutInMillis :: Lens.Lens' PutIntegration (Core.Maybe Core.Int)
putIntegration_timeoutInMillis = Lens.lens (\PutIntegration' {timeoutInMillis} -> timeoutInMillis) (\s@PutIntegration' {} a -> s {timeoutInMillis = a} :: PutIntegration)

-- | Specifies a group of related cached parameters. By default, API Gateway
-- uses the resource ID as the @cacheNamespace@. You can specify the same
-- @cacheNamespace@ across resources to return the same cached data for
-- requests to different resources.
putIntegration_cacheNamespace :: Lens.Lens' PutIntegration (Core.Maybe Core.Text)
putIntegration_cacheNamespace = Lens.lens (\PutIntegration' {cacheNamespace} -> cacheNamespace) (\s@PutIntegration' {} a -> s {cacheNamespace = a} :: PutIntegration)

-- | A list of request parameters whose values API Gateway caches. To be
-- valid values for @cacheKeyParameters@, these parameters must also be
-- specified for Method @requestParameters@.
putIntegration_cacheKeyParameters :: Lens.Lens' PutIntegration (Core.Maybe [Core.Text])
putIntegration_cacheKeyParameters = Lens.lens (\PutIntegration' {cacheKeyParameters} -> cacheKeyParameters) (\s@PutIntegration' {} a -> s {cacheKeyParameters = a} :: PutIntegration) Core.. Lens.mapping Lens._Coerce

-- | Undocumented member.
putIntegration_tlsConfig :: Lens.Lens' PutIntegration (Core.Maybe TlsConfig)
putIntegration_tlsConfig = Lens.lens (\PutIntegration' {tlsConfig} -> tlsConfig) (\s@PutIntegration' {} a -> s {tlsConfig = a} :: PutIntegration)

-- | A key-value map specifying request parameters that are passed from the
-- method request to the back end. The key is an integration request
-- parameter name and the associated value is a method request parameter
-- value or static value that must be enclosed within single quotes and
-- pre-encoded as required by the back end. The method request parameter
-- value must match the pattern of @method.request.{location}.{name}@,
-- where @location@ is @querystring@, @path@, or @header@ and @name@ must
-- be a valid and unique method request parameter name.
putIntegration_requestParameters :: Lens.Lens' PutIntegration (Core.Maybe (Core.HashMap Core.Text Core.Text))
putIntegration_requestParameters = Lens.lens (\PutIntegration' {requestParameters} -> requestParameters) (\s@PutIntegration' {} a -> s {requestParameters = a} :: PutIntegration) Core.. Lens.mapping Lens._Coerce

-- | Specifies whether credentials are required for a put integration.
putIntegration_credentials :: Lens.Lens' PutIntegration (Core.Maybe Core.Text)
putIntegration_credentials = Lens.lens (\PutIntegration' {credentials} -> credentials) (\s@PutIntegration' {} a -> s {credentials = a} :: PutIntegration)

-- | [Required] The string identifier of the associated RestApi.
putIntegration_restApiId :: Lens.Lens' PutIntegration Core.Text
putIntegration_restApiId = Lens.lens (\PutIntegration' {restApiId} -> restApiId) (\s@PutIntegration' {} a -> s {restApiId = a} :: PutIntegration)

-- | [Required] Specifies a put integration request\'s resource ID.
putIntegration_resourceId :: Lens.Lens' PutIntegration Core.Text
putIntegration_resourceId = Lens.lens (\PutIntegration' {resourceId} -> resourceId) (\s@PutIntegration' {} a -> s {resourceId = a} :: PutIntegration)

-- | [Required] Specifies a put integration request\'s HTTP method.
putIntegration_httpMethod :: Lens.Lens' PutIntegration Core.Text
putIntegration_httpMethod = Lens.lens (\PutIntegration' {httpMethod} -> httpMethod) (\s@PutIntegration' {} a -> s {httpMethod = a} :: PutIntegration)

-- | [Required] Specifies a put integration input\'s type.
putIntegration_type :: Lens.Lens' PutIntegration IntegrationType
putIntegration_type = Lens.lens (\PutIntegration' {type'} -> type') (\s@PutIntegration' {} a -> s {type' = a} :: PutIntegration)

instance Core.AWSRequest PutIntegration where
  type AWSResponse PutIntegration = Integration
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Core.Hashable PutIntegration

instance Core.NFData PutIntegration

instance Core.ToHeaders PutIntegration where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Core.ByteString)
          ]
      )

instance Core.ToJSON PutIntegration where
  toJSON PutIntegration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("httpMethod" Core..=)
              Core.<$> integrationHttpMethod,
            ("passthroughBehavior" Core..=)
              Core.<$> passthroughBehavior,
            ("contentHandling" Core..=) Core.<$> contentHandling,
            ("uri" Core..=) Core.<$> uri,
            ("connectionType" Core..=) Core.<$> connectionType,
            ("connectionId" Core..=) Core.<$> connectionId,
            ("requestTemplates" Core..=)
              Core.<$> requestTemplates,
            ("timeoutInMillis" Core..=) Core.<$> timeoutInMillis,
            ("cacheNamespace" Core..=) Core.<$> cacheNamespace,
            ("cacheKeyParameters" Core..=)
              Core.<$> cacheKeyParameters,
            ("tlsConfig" Core..=) Core.<$> tlsConfig,
            ("requestParameters" Core..=)
              Core.<$> requestParameters,
            ("credentials" Core..=) Core.<$> credentials,
            Core.Just ("type" Core..= type')
          ]
      )

instance Core.ToPath PutIntegration where
  toPath PutIntegration' {..} =
    Core.mconcat
      [ "/restapis/",
        Core.toBS restApiId,
        "/resources/",
        Core.toBS resourceId,
        "/methods/",
        Core.toBS httpMethod,
        "/integration"
      ]

instance Core.ToQuery PutIntegration where
  toQuery = Core.const Core.mempty
