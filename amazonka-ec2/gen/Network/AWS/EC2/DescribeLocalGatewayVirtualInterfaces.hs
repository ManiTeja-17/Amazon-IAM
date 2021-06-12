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
-- Module      : Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified local gateway virtual interfaces.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaces
  ( -- * Creating a Request
    DescribeLocalGatewayVirtualInterfaces (..),
    newDescribeLocalGatewayVirtualInterfaces,

    -- * Request Lenses
    describeLocalGatewayVirtualInterfaces_localGatewayVirtualInterfaceIds,
    describeLocalGatewayVirtualInterfaces_nextToken,
    describeLocalGatewayVirtualInterfaces_dryRun,
    describeLocalGatewayVirtualInterfaces_maxResults,
    describeLocalGatewayVirtualInterfaces_filters,

    -- * Destructuring the Response
    DescribeLocalGatewayVirtualInterfacesResponse (..),
    newDescribeLocalGatewayVirtualInterfacesResponse,

    -- * Response Lenses
    describeLocalGatewayVirtualInterfacesResponse_nextToken,
    describeLocalGatewayVirtualInterfacesResponse_localGatewayVirtualInterfaces,
    describeLocalGatewayVirtualInterfacesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeLocalGatewayVirtualInterfaces' smart constructor.
data DescribeLocalGatewayVirtualInterfaces = DescribeLocalGatewayVirtualInterfaces'
  { -- | The IDs of the virtual interfaces.
    localGatewayVirtualInterfaceIds :: Core.Maybe [Core.Text],
    -- | The token for the next page of results.
    nextToken :: Core.Maybe Core.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Core.Maybe Core.Natural,
    -- | One or more filters.
    filters :: Core.Maybe [Filter]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeLocalGatewayVirtualInterfaces' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'localGatewayVirtualInterfaceIds', 'describeLocalGatewayVirtualInterfaces_localGatewayVirtualInterfaceIds' - The IDs of the virtual interfaces.
--
-- 'nextToken', 'describeLocalGatewayVirtualInterfaces_nextToken' - The token for the next page of results.
--
-- 'dryRun', 'describeLocalGatewayVirtualInterfaces_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeLocalGatewayVirtualInterfaces_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'filters', 'describeLocalGatewayVirtualInterfaces_filters' - One or more filters.
newDescribeLocalGatewayVirtualInterfaces ::
  DescribeLocalGatewayVirtualInterfaces
newDescribeLocalGatewayVirtualInterfaces =
  DescribeLocalGatewayVirtualInterfaces'
    { localGatewayVirtualInterfaceIds =
        Core.Nothing,
      nextToken = Core.Nothing,
      dryRun = Core.Nothing,
      maxResults = Core.Nothing,
      filters = Core.Nothing
    }

-- | The IDs of the virtual interfaces.
describeLocalGatewayVirtualInterfaces_localGatewayVirtualInterfaceIds :: Lens.Lens' DescribeLocalGatewayVirtualInterfaces (Core.Maybe [Core.Text])
describeLocalGatewayVirtualInterfaces_localGatewayVirtualInterfaceIds = Lens.lens (\DescribeLocalGatewayVirtualInterfaces' {localGatewayVirtualInterfaceIds} -> localGatewayVirtualInterfaceIds) (\s@DescribeLocalGatewayVirtualInterfaces' {} a -> s {localGatewayVirtualInterfaceIds = a} :: DescribeLocalGatewayVirtualInterfaces) Core.. Lens.mapping Lens._Coerce

-- | The token for the next page of results.
describeLocalGatewayVirtualInterfaces_nextToken :: Lens.Lens' DescribeLocalGatewayVirtualInterfaces (Core.Maybe Core.Text)
describeLocalGatewayVirtualInterfaces_nextToken = Lens.lens (\DescribeLocalGatewayVirtualInterfaces' {nextToken} -> nextToken) (\s@DescribeLocalGatewayVirtualInterfaces' {} a -> s {nextToken = a} :: DescribeLocalGatewayVirtualInterfaces)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeLocalGatewayVirtualInterfaces_dryRun :: Lens.Lens' DescribeLocalGatewayVirtualInterfaces (Core.Maybe Core.Bool)
describeLocalGatewayVirtualInterfaces_dryRun = Lens.lens (\DescribeLocalGatewayVirtualInterfaces' {dryRun} -> dryRun) (\s@DescribeLocalGatewayVirtualInterfaces' {} a -> s {dryRun = a} :: DescribeLocalGatewayVirtualInterfaces)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
describeLocalGatewayVirtualInterfaces_maxResults :: Lens.Lens' DescribeLocalGatewayVirtualInterfaces (Core.Maybe Core.Natural)
describeLocalGatewayVirtualInterfaces_maxResults = Lens.lens (\DescribeLocalGatewayVirtualInterfaces' {maxResults} -> maxResults) (\s@DescribeLocalGatewayVirtualInterfaces' {} a -> s {maxResults = a} :: DescribeLocalGatewayVirtualInterfaces)

-- | One or more filters.
describeLocalGatewayVirtualInterfaces_filters :: Lens.Lens' DescribeLocalGatewayVirtualInterfaces (Core.Maybe [Filter])
describeLocalGatewayVirtualInterfaces_filters = Lens.lens (\DescribeLocalGatewayVirtualInterfaces' {filters} -> filters) (\s@DescribeLocalGatewayVirtualInterfaces' {} a -> s {filters = a} :: DescribeLocalGatewayVirtualInterfaces) Core.. Lens.mapping Lens._Coerce

instance
  Core.AWSPager
    DescribeLocalGatewayVirtualInterfaces
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeLocalGatewayVirtualInterfacesResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeLocalGatewayVirtualInterfacesResponse_localGatewayVirtualInterfaces
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeLocalGatewayVirtualInterfaces_nextToken
          Lens..~ rs
            Lens.^? describeLocalGatewayVirtualInterfacesResponse_nextToken
              Core.. Lens._Just

instance
  Core.AWSRequest
    DescribeLocalGatewayVirtualInterfaces
  where
  type
    AWSResponse
      DescribeLocalGatewayVirtualInterfaces =
      DescribeLocalGatewayVirtualInterfacesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeLocalGatewayVirtualInterfacesResponse'
            Core.<$> (x Core..@? "nextToken")
              Core.<*> ( x Core..@? "localGatewayVirtualInterfaceSet"
                           Core..!@ Core.mempty
                           Core.>>= Core.may (Core.parseXMLList "item")
                       )
              Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    DescribeLocalGatewayVirtualInterfaces

instance
  Core.NFData
    DescribeLocalGatewayVirtualInterfaces

instance
  Core.ToHeaders
    DescribeLocalGatewayVirtualInterfaces
  where
  toHeaders = Core.const Core.mempty

instance
  Core.ToPath
    DescribeLocalGatewayVirtualInterfaces
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    DescribeLocalGatewayVirtualInterfaces
  where
  toQuery DescribeLocalGatewayVirtualInterfaces' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ( "DescribeLocalGatewayVirtualInterfaces" ::
                      Core.ByteString
                  ),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        Core.toQuery
          ( Core.toQueryList "LocalGatewayVirtualInterfaceId"
              Core.<$> localGatewayVirtualInterfaceIds
          ),
        "NextToken" Core.=: nextToken,
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults,
        Core.toQuery
          (Core.toQueryList "Filter" Core.<$> filters)
      ]

-- | /See:/ 'newDescribeLocalGatewayVirtualInterfacesResponse' smart constructor.
data DescribeLocalGatewayVirtualInterfacesResponse = DescribeLocalGatewayVirtualInterfacesResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Core.Maybe Core.Text,
    -- | Information about the virtual interfaces.
    localGatewayVirtualInterfaces :: Core.Maybe [LocalGatewayVirtualInterface],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeLocalGatewayVirtualInterfacesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeLocalGatewayVirtualInterfacesResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'localGatewayVirtualInterfaces', 'describeLocalGatewayVirtualInterfacesResponse_localGatewayVirtualInterfaces' - Information about the virtual interfaces.
--
-- 'httpStatus', 'describeLocalGatewayVirtualInterfacesResponse_httpStatus' - The response's http status code.
newDescribeLocalGatewayVirtualInterfacesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeLocalGatewayVirtualInterfacesResponse
newDescribeLocalGatewayVirtualInterfacesResponse
  pHttpStatus_ =
    DescribeLocalGatewayVirtualInterfacesResponse'
      { nextToken =
          Core.Nothing,
        localGatewayVirtualInterfaces =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeLocalGatewayVirtualInterfacesResponse_nextToken :: Lens.Lens' DescribeLocalGatewayVirtualInterfacesResponse (Core.Maybe Core.Text)
describeLocalGatewayVirtualInterfacesResponse_nextToken = Lens.lens (\DescribeLocalGatewayVirtualInterfacesResponse' {nextToken} -> nextToken) (\s@DescribeLocalGatewayVirtualInterfacesResponse' {} a -> s {nextToken = a} :: DescribeLocalGatewayVirtualInterfacesResponse)

-- | Information about the virtual interfaces.
describeLocalGatewayVirtualInterfacesResponse_localGatewayVirtualInterfaces :: Lens.Lens' DescribeLocalGatewayVirtualInterfacesResponse (Core.Maybe [LocalGatewayVirtualInterface])
describeLocalGatewayVirtualInterfacesResponse_localGatewayVirtualInterfaces = Lens.lens (\DescribeLocalGatewayVirtualInterfacesResponse' {localGatewayVirtualInterfaces} -> localGatewayVirtualInterfaces) (\s@DescribeLocalGatewayVirtualInterfacesResponse' {} a -> s {localGatewayVirtualInterfaces = a} :: DescribeLocalGatewayVirtualInterfacesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeLocalGatewayVirtualInterfacesResponse_httpStatus :: Lens.Lens' DescribeLocalGatewayVirtualInterfacesResponse Core.Int
describeLocalGatewayVirtualInterfacesResponse_httpStatus = Lens.lens (\DescribeLocalGatewayVirtualInterfacesResponse' {httpStatus} -> httpStatus) (\s@DescribeLocalGatewayVirtualInterfacesResponse' {} a -> s {httpStatus = a} :: DescribeLocalGatewayVirtualInterfacesResponse)

instance
  Core.NFData
    DescribeLocalGatewayVirtualInterfacesResponse
