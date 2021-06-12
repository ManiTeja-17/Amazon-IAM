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
-- Module      : Network.AWS.DeviceFarm.ListVPCEConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all Amazon Virtual Private Cloud (VPC)
-- endpoint configurations in the AWS account.
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListVPCEConfigurations
  ( -- * Creating a Request
    ListVPCEConfigurations (..),
    newListVPCEConfigurations,

    -- * Request Lenses
    listVPCEConfigurations_nextToken,
    listVPCEConfigurations_maxResults,

    -- * Destructuring the Response
    ListVPCEConfigurationsResponse (..),
    newListVPCEConfigurationsResponse,

    -- * Response Lenses
    listVPCEConfigurationsResponse_nextToken,
    listVPCEConfigurationsResponse_vpceConfigurations,
    listVPCEConfigurationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DeviceFarm.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListVPCEConfigurations' smart constructor.
data ListVPCEConfigurations = ListVPCEConfigurations'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Core.Maybe Core.Text,
    -- | An integer that specifies the maximum number of items you want to return
    -- in the API response.
    maxResults :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListVPCEConfigurations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listVPCEConfigurations_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'maxResults', 'listVPCEConfigurations_maxResults' - An integer that specifies the maximum number of items you want to return
-- in the API response.
newListVPCEConfigurations ::
  ListVPCEConfigurations
newListVPCEConfigurations =
  ListVPCEConfigurations'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listVPCEConfigurations_nextToken :: Lens.Lens' ListVPCEConfigurations (Core.Maybe Core.Text)
listVPCEConfigurations_nextToken = Lens.lens (\ListVPCEConfigurations' {nextToken} -> nextToken) (\s@ListVPCEConfigurations' {} a -> s {nextToken = a} :: ListVPCEConfigurations)

-- | An integer that specifies the maximum number of items you want to return
-- in the API response.
listVPCEConfigurations_maxResults :: Lens.Lens' ListVPCEConfigurations (Core.Maybe Core.Int)
listVPCEConfigurations_maxResults = Lens.lens (\ListVPCEConfigurations' {maxResults} -> maxResults) (\s@ListVPCEConfigurations' {} a -> s {maxResults = a} :: ListVPCEConfigurations)

instance Core.AWSPager ListVPCEConfigurations where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listVPCEConfigurationsResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listVPCEConfigurationsResponse_vpceConfigurations
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listVPCEConfigurations_nextToken
          Lens..~ rs
          Lens.^? listVPCEConfigurationsResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest ListVPCEConfigurations where
  type
    AWSResponse ListVPCEConfigurations =
      ListVPCEConfigurationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListVPCEConfigurationsResponse'
            Core.<$> (x Core..?> "nextToken")
            Core.<*> ( x Core..?> "vpceConfigurations"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListVPCEConfigurations

instance Core.NFData ListVPCEConfigurations

instance Core.ToHeaders ListVPCEConfigurations where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DeviceFarm_20150623.ListVPCEConfigurations" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListVPCEConfigurations where
  toJSON ListVPCEConfigurations' {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextToken" Core..=) Core.<$> nextToken,
            ("maxResults" Core..=) Core.<$> maxResults
          ]
      )

instance Core.ToPath ListVPCEConfigurations where
  toPath = Core.const "/"

instance Core.ToQuery ListVPCEConfigurations where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListVPCEConfigurationsResponse' smart constructor.
data ListVPCEConfigurationsResponse = ListVPCEConfigurationsResponse'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Core.Maybe Core.Text,
    -- | An array of @VPCEConfiguration@ objects that contain information about
    -- your VPC endpoint configuration.
    vpceConfigurations :: Core.Maybe [VPCEConfiguration],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListVPCEConfigurationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listVPCEConfigurationsResponse_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'vpceConfigurations', 'listVPCEConfigurationsResponse_vpceConfigurations' - An array of @VPCEConfiguration@ objects that contain information about
-- your VPC endpoint configuration.
--
-- 'httpStatus', 'listVPCEConfigurationsResponse_httpStatus' - The response's http status code.
newListVPCEConfigurationsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListVPCEConfigurationsResponse
newListVPCEConfigurationsResponse pHttpStatus_ =
  ListVPCEConfigurationsResponse'
    { nextToken =
        Core.Nothing,
      vpceConfigurations = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listVPCEConfigurationsResponse_nextToken :: Lens.Lens' ListVPCEConfigurationsResponse (Core.Maybe Core.Text)
listVPCEConfigurationsResponse_nextToken = Lens.lens (\ListVPCEConfigurationsResponse' {nextToken} -> nextToken) (\s@ListVPCEConfigurationsResponse' {} a -> s {nextToken = a} :: ListVPCEConfigurationsResponse)

-- | An array of @VPCEConfiguration@ objects that contain information about
-- your VPC endpoint configuration.
listVPCEConfigurationsResponse_vpceConfigurations :: Lens.Lens' ListVPCEConfigurationsResponse (Core.Maybe [VPCEConfiguration])
listVPCEConfigurationsResponse_vpceConfigurations = Lens.lens (\ListVPCEConfigurationsResponse' {vpceConfigurations} -> vpceConfigurations) (\s@ListVPCEConfigurationsResponse' {} a -> s {vpceConfigurations = a} :: ListVPCEConfigurationsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listVPCEConfigurationsResponse_httpStatus :: Lens.Lens' ListVPCEConfigurationsResponse Core.Int
listVPCEConfigurationsResponse_httpStatus = Lens.lens (\ListVPCEConfigurationsResponse' {httpStatus} -> httpStatus) (\s@ListVPCEConfigurationsResponse' {} a -> s {httpStatus = a} :: ListVPCEConfigurationsResponse)

instance Core.NFData ListVPCEConfigurationsResponse
