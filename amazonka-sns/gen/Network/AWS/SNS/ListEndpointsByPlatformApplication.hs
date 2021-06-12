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
-- Module      : Network.AWS.SNS.ListEndpointsByPlatformApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the endpoints and endpoint attributes for devices in a supported
-- push notification service, such as GCM (Firebase Cloud Messaging) and
-- APNS. The results for @ListEndpointsByPlatformApplication@ are paginated
-- and return a limited list of endpoints, up to 100. If additional records
-- are available after the first page results, then a NextToken string will
-- be returned. To receive the next page, you call
-- @ListEndpointsByPlatformApplication@ again using the NextToken string
-- received from the previous call. When there are no more records to
-- return, NextToken will be null. For more information, see
-- <https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html Using Amazon SNS Mobile Push Notifications>.
--
-- This action is throttled at 30 transactions per second (TPS).
--
-- This operation returns paginated results.
module Network.AWS.SNS.ListEndpointsByPlatformApplication
  ( -- * Creating a Request
    ListEndpointsByPlatformApplication (..),
    newListEndpointsByPlatformApplication,

    -- * Request Lenses
    listEndpointsByPlatformApplication_nextToken,
    listEndpointsByPlatformApplication_platformApplicationArn,

    -- * Destructuring the Response
    ListEndpointsByPlatformApplicationResponse (..),
    newListEndpointsByPlatformApplicationResponse,

    -- * Response Lenses
    listEndpointsByPlatformApplicationResponse_nextToken,
    listEndpointsByPlatformApplicationResponse_endpoints,
    listEndpointsByPlatformApplicationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SNS.Types

-- | Input for ListEndpointsByPlatformApplication action.
--
-- /See:/ 'newListEndpointsByPlatformApplication' smart constructor.
data ListEndpointsByPlatformApplication = ListEndpointsByPlatformApplication'
  { -- | NextToken string is used when calling ListEndpointsByPlatformApplication
    -- action to retrieve additional records that are available after the first
    -- page results.
    nextToken :: Core.Maybe Core.Text,
    -- | PlatformApplicationArn for ListEndpointsByPlatformApplicationInput
    -- action.
    platformApplicationArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListEndpointsByPlatformApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEndpointsByPlatformApplication_nextToken' - NextToken string is used when calling ListEndpointsByPlatformApplication
-- action to retrieve additional records that are available after the first
-- page results.
--
-- 'platformApplicationArn', 'listEndpointsByPlatformApplication_platformApplicationArn' - PlatformApplicationArn for ListEndpointsByPlatformApplicationInput
-- action.
newListEndpointsByPlatformApplication ::
  -- | 'platformApplicationArn'
  Core.Text ->
  ListEndpointsByPlatformApplication
newListEndpointsByPlatformApplication
  pPlatformApplicationArn_ =
    ListEndpointsByPlatformApplication'
      { nextToken =
          Core.Nothing,
        platformApplicationArn =
          pPlatformApplicationArn_
      }

-- | NextToken string is used when calling ListEndpointsByPlatformApplication
-- action to retrieve additional records that are available after the first
-- page results.
listEndpointsByPlatformApplication_nextToken :: Lens.Lens' ListEndpointsByPlatformApplication (Core.Maybe Core.Text)
listEndpointsByPlatformApplication_nextToken = Lens.lens (\ListEndpointsByPlatformApplication' {nextToken} -> nextToken) (\s@ListEndpointsByPlatformApplication' {} a -> s {nextToken = a} :: ListEndpointsByPlatformApplication)

-- | PlatformApplicationArn for ListEndpointsByPlatformApplicationInput
-- action.
listEndpointsByPlatformApplication_platformApplicationArn :: Lens.Lens' ListEndpointsByPlatformApplication Core.Text
listEndpointsByPlatformApplication_platformApplicationArn = Lens.lens (\ListEndpointsByPlatformApplication' {platformApplicationArn} -> platformApplicationArn) (\s@ListEndpointsByPlatformApplication' {} a -> s {platformApplicationArn = a} :: ListEndpointsByPlatformApplication)

instance
  Core.AWSPager
    ListEndpointsByPlatformApplication
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listEndpointsByPlatformApplicationResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listEndpointsByPlatformApplicationResponse_endpoints
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listEndpointsByPlatformApplication_nextToken
          Lens..~ rs
          Lens.^? listEndpointsByPlatformApplicationResponse_nextToken
            Core.. Lens._Just

instance
  Core.AWSRequest
    ListEndpointsByPlatformApplication
  where
  type
    AWSResponse ListEndpointsByPlatformApplication =
      ListEndpointsByPlatformApplicationResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListEndpointsByPlatformApplicationResult"
      ( \s h x ->
          ListEndpointsByPlatformApplicationResponse'
            Core.<$> (x Core..@? "NextToken")
            Core.<*> ( x Core..@? "Endpoints" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "member")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    ListEndpointsByPlatformApplication

instance
  Core.NFData
    ListEndpointsByPlatformApplication

instance
  Core.ToHeaders
    ListEndpointsByPlatformApplication
  where
  toHeaders = Core.const Core.mempty

instance
  Core.ToPath
    ListEndpointsByPlatformApplication
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    ListEndpointsByPlatformApplication
  where
  toQuery ListEndpointsByPlatformApplication' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ( "ListEndpointsByPlatformApplication" ::
                      Core.ByteString
                  ),
        "Version" Core.=: ("2010-03-31" :: Core.ByteString),
        "NextToken" Core.=: nextToken,
        "PlatformApplicationArn"
          Core.=: platformApplicationArn
      ]

-- | Response for ListEndpointsByPlatformApplication action.
--
-- /See:/ 'newListEndpointsByPlatformApplicationResponse' smart constructor.
data ListEndpointsByPlatformApplicationResponse = ListEndpointsByPlatformApplicationResponse'
  { -- | NextToken string is returned when calling
    -- ListEndpointsByPlatformApplication action if additional records are
    -- available after the first page results.
    nextToken :: Core.Maybe Core.Text,
    -- | Endpoints returned for ListEndpointsByPlatformApplication action.
    endpoints :: Core.Maybe [Endpoint],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListEndpointsByPlatformApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEndpointsByPlatformApplicationResponse_nextToken' - NextToken string is returned when calling
-- ListEndpointsByPlatformApplication action if additional records are
-- available after the first page results.
--
-- 'endpoints', 'listEndpointsByPlatformApplicationResponse_endpoints' - Endpoints returned for ListEndpointsByPlatformApplication action.
--
-- 'httpStatus', 'listEndpointsByPlatformApplicationResponse_httpStatus' - The response's http status code.
newListEndpointsByPlatformApplicationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListEndpointsByPlatformApplicationResponse
newListEndpointsByPlatformApplicationResponse
  pHttpStatus_ =
    ListEndpointsByPlatformApplicationResponse'
      { nextToken =
          Core.Nothing,
        endpoints = Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | NextToken string is returned when calling
-- ListEndpointsByPlatformApplication action if additional records are
-- available after the first page results.
listEndpointsByPlatformApplicationResponse_nextToken :: Lens.Lens' ListEndpointsByPlatformApplicationResponse (Core.Maybe Core.Text)
listEndpointsByPlatformApplicationResponse_nextToken = Lens.lens (\ListEndpointsByPlatformApplicationResponse' {nextToken} -> nextToken) (\s@ListEndpointsByPlatformApplicationResponse' {} a -> s {nextToken = a} :: ListEndpointsByPlatformApplicationResponse)

-- | Endpoints returned for ListEndpointsByPlatformApplication action.
listEndpointsByPlatformApplicationResponse_endpoints :: Lens.Lens' ListEndpointsByPlatformApplicationResponse (Core.Maybe [Endpoint])
listEndpointsByPlatformApplicationResponse_endpoints = Lens.lens (\ListEndpointsByPlatformApplicationResponse' {endpoints} -> endpoints) (\s@ListEndpointsByPlatformApplicationResponse' {} a -> s {endpoints = a} :: ListEndpointsByPlatformApplicationResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listEndpointsByPlatformApplicationResponse_httpStatus :: Lens.Lens' ListEndpointsByPlatformApplicationResponse Core.Int
listEndpointsByPlatformApplicationResponse_httpStatus = Lens.lens (\ListEndpointsByPlatformApplicationResponse' {httpStatus} -> httpStatus) (\s@ListEndpointsByPlatformApplicationResponse' {} a -> s {httpStatus = a} :: ListEndpointsByPlatformApplicationResponse)

instance
  Core.NFData
    ListEndpointsByPlatformApplicationResponse
