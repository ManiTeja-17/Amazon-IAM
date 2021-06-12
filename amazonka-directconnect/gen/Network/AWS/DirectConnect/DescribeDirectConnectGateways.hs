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
-- Module      : Network.AWS.DirectConnect.DescribeDirectConnectGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all your Direct Connect gateways or only the specified Direct
-- Connect gateway. Deleted Direct Connect gateways are not returned.
--
-- This operation returns paginated results.
module Network.AWS.DirectConnect.DescribeDirectConnectGateways
  ( -- * Creating a Request
    DescribeDirectConnectGateways (..),
    newDescribeDirectConnectGateways,

    -- * Request Lenses
    describeDirectConnectGateways_nextToken,
    describeDirectConnectGateways_maxResults,
    describeDirectConnectGateways_directConnectGatewayId,

    -- * Destructuring the Response
    DescribeDirectConnectGatewaysResponse (..),
    newDescribeDirectConnectGatewaysResponse,

    -- * Response Lenses
    describeDirectConnectGatewaysResponse_nextToken,
    describeDirectConnectGatewaysResponse_directConnectGateways,
    describeDirectConnectGatewaysResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectConnect.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDirectConnectGateways' smart constructor.
data DescribeDirectConnectGateways = DescribeDirectConnectGateways'
  { -- | The token provided in the previous call to retrieve the next page.
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    --
    -- If @MaxResults@ is given a value larger than 100, only 100 results are
    -- returned.
    maxResults :: Core.Maybe Core.Int,
    -- | The ID of the Direct Connect gateway.
    directConnectGatewayId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeDirectConnectGateways' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDirectConnectGateways_nextToken' - The token provided in the previous call to retrieve the next page.
--
-- 'maxResults', 'describeDirectConnectGateways_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- If @MaxResults@ is given a value larger than 100, only 100 results are
-- returned.
--
-- 'directConnectGatewayId', 'describeDirectConnectGateways_directConnectGatewayId' - The ID of the Direct Connect gateway.
newDescribeDirectConnectGateways ::
  DescribeDirectConnectGateways
newDescribeDirectConnectGateways =
  DescribeDirectConnectGateways'
    { nextToken =
        Core.Nothing,
      maxResults = Core.Nothing,
      directConnectGatewayId = Core.Nothing
    }

-- | The token provided in the previous call to retrieve the next page.
describeDirectConnectGateways_nextToken :: Lens.Lens' DescribeDirectConnectGateways (Core.Maybe Core.Text)
describeDirectConnectGateways_nextToken = Lens.lens (\DescribeDirectConnectGateways' {nextToken} -> nextToken) (\s@DescribeDirectConnectGateways' {} a -> s {nextToken = a} :: DescribeDirectConnectGateways)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- If @MaxResults@ is given a value larger than 100, only 100 results are
-- returned.
describeDirectConnectGateways_maxResults :: Lens.Lens' DescribeDirectConnectGateways (Core.Maybe Core.Int)
describeDirectConnectGateways_maxResults = Lens.lens (\DescribeDirectConnectGateways' {maxResults} -> maxResults) (\s@DescribeDirectConnectGateways' {} a -> s {maxResults = a} :: DescribeDirectConnectGateways)

-- | The ID of the Direct Connect gateway.
describeDirectConnectGateways_directConnectGatewayId :: Lens.Lens' DescribeDirectConnectGateways (Core.Maybe Core.Text)
describeDirectConnectGateways_directConnectGatewayId = Lens.lens (\DescribeDirectConnectGateways' {directConnectGatewayId} -> directConnectGatewayId) (\s@DescribeDirectConnectGateways' {} a -> s {directConnectGatewayId = a} :: DescribeDirectConnectGateways)

instance Core.AWSPager DescribeDirectConnectGateways where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeDirectConnectGatewaysResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeDirectConnectGatewaysResponse_directConnectGateways
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeDirectConnectGateways_nextToken
          Lens..~ rs
          Lens.^? describeDirectConnectGatewaysResponse_nextToken
            Core.. Lens._Just

instance
  Core.AWSRequest
    DescribeDirectConnectGateways
  where
  type
    AWSResponse DescribeDirectConnectGateways =
      DescribeDirectConnectGatewaysResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDirectConnectGatewaysResponse'
            Core.<$> (x Core..?> "nextToken")
            Core.<*> ( x Core..?> "directConnectGateways"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeDirectConnectGateways

instance Core.NFData DescribeDirectConnectGateways

instance Core.ToHeaders DescribeDirectConnectGateways where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OvertureService.DescribeDirectConnectGateways" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeDirectConnectGateways where
  toJSON DescribeDirectConnectGateways' {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextToken" Core..=) Core.<$> nextToken,
            ("maxResults" Core..=) Core.<$> maxResults,
            ("directConnectGatewayId" Core..=)
              Core.<$> directConnectGatewayId
          ]
      )

instance Core.ToPath DescribeDirectConnectGateways where
  toPath = Core.const "/"

instance Core.ToQuery DescribeDirectConnectGateways where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeDirectConnectGatewaysResponse' smart constructor.
data DescribeDirectConnectGatewaysResponse = DescribeDirectConnectGatewaysResponse'
  { -- | The token to retrieve the next page.
    nextToken :: Core.Maybe Core.Text,
    -- | The Direct Connect gateways.
    directConnectGateways :: Core.Maybe [DirectConnectGateway],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeDirectConnectGatewaysResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDirectConnectGatewaysResponse_nextToken' - The token to retrieve the next page.
--
-- 'directConnectGateways', 'describeDirectConnectGatewaysResponse_directConnectGateways' - The Direct Connect gateways.
--
-- 'httpStatus', 'describeDirectConnectGatewaysResponse_httpStatus' - The response's http status code.
newDescribeDirectConnectGatewaysResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeDirectConnectGatewaysResponse
newDescribeDirectConnectGatewaysResponse pHttpStatus_ =
  DescribeDirectConnectGatewaysResponse'
    { nextToken =
        Core.Nothing,
      directConnectGateways = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to retrieve the next page.
describeDirectConnectGatewaysResponse_nextToken :: Lens.Lens' DescribeDirectConnectGatewaysResponse (Core.Maybe Core.Text)
describeDirectConnectGatewaysResponse_nextToken = Lens.lens (\DescribeDirectConnectGatewaysResponse' {nextToken} -> nextToken) (\s@DescribeDirectConnectGatewaysResponse' {} a -> s {nextToken = a} :: DescribeDirectConnectGatewaysResponse)

-- | The Direct Connect gateways.
describeDirectConnectGatewaysResponse_directConnectGateways :: Lens.Lens' DescribeDirectConnectGatewaysResponse (Core.Maybe [DirectConnectGateway])
describeDirectConnectGatewaysResponse_directConnectGateways = Lens.lens (\DescribeDirectConnectGatewaysResponse' {directConnectGateways} -> directConnectGateways) (\s@DescribeDirectConnectGatewaysResponse' {} a -> s {directConnectGateways = a} :: DescribeDirectConnectGatewaysResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeDirectConnectGatewaysResponse_httpStatus :: Lens.Lens' DescribeDirectConnectGatewaysResponse Core.Int
describeDirectConnectGatewaysResponse_httpStatus = Lens.lens (\DescribeDirectConnectGatewaysResponse' {httpStatus} -> httpStatus) (\s@DescribeDirectConnectGatewaysResponse' {} a -> s {httpStatus = a} :: DescribeDirectConnectGatewaysResponse)

instance
  Core.NFData
    DescribeDirectConnectGatewaysResponse
