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
-- Module      : Network.AWS.AutoScaling.DescribeLoadBalancers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the load balancers for the specified Auto Scaling group.
--
-- This operation describes only Classic Load Balancers. If you have
-- Application Load Balancers, Network Load Balancers, or Gateway Load
-- Balancers, use the DescribeLoadBalancerTargetGroups API instead.
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeLoadBalancers
  ( -- * Creating a Request
    DescribeLoadBalancers (..),
    newDescribeLoadBalancers,

    -- * Request Lenses
    describeLoadBalancers_nextToken,
    describeLoadBalancers_maxRecords,
    describeLoadBalancers_autoScalingGroupName,

    -- * Destructuring the Response
    DescribeLoadBalancersResponse (..),
    newDescribeLoadBalancersResponse,

    -- * Response Lenses
    describeLoadBalancersResponse_nextToken,
    describeLoadBalancersResponse_loadBalancers,
    describeLoadBalancersResponse_httpStatus,
  )
where

import Network.AWS.AutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeLoadBalancers' smart constructor.
data DescribeLoadBalancers = DescribeLoadBalancers'
  { -- | The token for the next set of items to return. (You received this token
    -- from a previous call.)
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of items to return with this call. The default value
    -- is @100@ and the maximum value is @100@.
    maxRecords :: Core.Maybe Core.Int,
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeLoadBalancers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeLoadBalancers_nextToken' - The token for the next set of items to return. (You received this token
-- from a previous call.)
--
-- 'maxRecords', 'describeLoadBalancers_maxRecords' - The maximum number of items to return with this call. The default value
-- is @100@ and the maximum value is @100@.
--
-- 'autoScalingGroupName', 'describeLoadBalancers_autoScalingGroupName' - The name of the Auto Scaling group.
newDescribeLoadBalancers ::
  -- | 'autoScalingGroupName'
  Core.Text ->
  DescribeLoadBalancers
newDescribeLoadBalancers pAutoScalingGroupName_ =
  DescribeLoadBalancers'
    { nextToken = Core.Nothing,
      maxRecords = Core.Nothing,
      autoScalingGroupName = pAutoScalingGroupName_
    }

-- | The token for the next set of items to return. (You received this token
-- from a previous call.)
describeLoadBalancers_nextToken :: Lens.Lens' DescribeLoadBalancers (Core.Maybe Core.Text)
describeLoadBalancers_nextToken = Lens.lens (\DescribeLoadBalancers' {nextToken} -> nextToken) (\s@DescribeLoadBalancers' {} a -> s {nextToken = a} :: DescribeLoadBalancers)

-- | The maximum number of items to return with this call. The default value
-- is @100@ and the maximum value is @100@.
describeLoadBalancers_maxRecords :: Lens.Lens' DescribeLoadBalancers (Core.Maybe Core.Int)
describeLoadBalancers_maxRecords = Lens.lens (\DescribeLoadBalancers' {maxRecords} -> maxRecords) (\s@DescribeLoadBalancers' {} a -> s {maxRecords = a} :: DescribeLoadBalancers)

-- | The name of the Auto Scaling group.
describeLoadBalancers_autoScalingGroupName :: Lens.Lens' DescribeLoadBalancers Core.Text
describeLoadBalancers_autoScalingGroupName = Lens.lens (\DescribeLoadBalancers' {autoScalingGroupName} -> autoScalingGroupName) (\s@DescribeLoadBalancers' {} a -> s {autoScalingGroupName = a} :: DescribeLoadBalancers)

instance Core.AWSPager DescribeLoadBalancers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeLoadBalancersResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeLoadBalancersResponse_loadBalancers
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeLoadBalancers_nextToken
          Lens..~ rs
          Lens.^? describeLoadBalancersResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest DescribeLoadBalancers where
  type
    AWSResponse DescribeLoadBalancers =
      DescribeLoadBalancersResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeLoadBalancersResult"
      ( \s h x ->
          DescribeLoadBalancersResponse'
            Core.<$> (x Core..@? "NextToken")
            Core.<*> ( x Core..@? "LoadBalancers" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "member")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeLoadBalancers

instance Core.NFData DescribeLoadBalancers

instance Core.ToHeaders DescribeLoadBalancers where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DescribeLoadBalancers where
  toPath = Core.const "/"

instance Core.ToQuery DescribeLoadBalancers where
  toQuery DescribeLoadBalancers' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DescribeLoadBalancers" :: Core.ByteString),
        "Version" Core.=: ("2011-01-01" :: Core.ByteString),
        "NextToken" Core.=: nextToken,
        "MaxRecords" Core.=: maxRecords,
        "AutoScalingGroupName" Core.=: autoScalingGroupName
      ]

-- | /See:/ 'newDescribeLoadBalancersResponse' smart constructor.
data DescribeLoadBalancersResponse = DescribeLoadBalancersResponse'
  { -- | A string that indicates that the response contains more items than can
    -- be returned in a single response. To receive additional items, specify
    -- this string for the @NextToken@ value when requesting the next set of
    -- items. This value is null when there are no more items to return.
    nextToken :: Core.Maybe Core.Text,
    -- | The load balancers.
    loadBalancers :: Core.Maybe [LoadBalancerState],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeLoadBalancersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeLoadBalancersResponse_nextToken' - A string that indicates that the response contains more items than can
-- be returned in a single response. To receive additional items, specify
-- this string for the @NextToken@ value when requesting the next set of
-- items. This value is null when there are no more items to return.
--
-- 'loadBalancers', 'describeLoadBalancersResponse_loadBalancers' - The load balancers.
--
-- 'httpStatus', 'describeLoadBalancersResponse_httpStatus' - The response's http status code.
newDescribeLoadBalancersResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeLoadBalancersResponse
newDescribeLoadBalancersResponse pHttpStatus_ =
  DescribeLoadBalancersResponse'
    { nextToken =
        Core.Nothing,
      loadBalancers = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A string that indicates that the response contains more items than can
-- be returned in a single response. To receive additional items, specify
-- this string for the @NextToken@ value when requesting the next set of
-- items. This value is null when there are no more items to return.
describeLoadBalancersResponse_nextToken :: Lens.Lens' DescribeLoadBalancersResponse (Core.Maybe Core.Text)
describeLoadBalancersResponse_nextToken = Lens.lens (\DescribeLoadBalancersResponse' {nextToken} -> nextToken) (\s@DescribeLoadBalancersResponse' {} a -> s {nextToken = a} :: DescribeLoadBalancersResponse)

-- | The load balancers.
describeLoadBalancersResponse_loadBalancers :: Lens.Lens' DescribeLoadBalancersResponse (Core.Maybe [LoadBalancerState])
describeLoadBalancersResponse_loadBalancers = Lens.lens (\DescribeLoadBalancersResponse' {loadBalancers} -> loadBalancers) (\s@DescribeLoadBalancersResponse' {} a -> s {loadBalancers = a} :: DescribeLoadBalancersResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeLoadBalancersResponse_httpStatus :: Lens.Lens' DescribeLoadBalancersResponse Core.Int
describeLoadBalancersResponse_httpStatus = Lens.lens (\DescribeLoadBalancersResponse' {httpStatus} -> httpStatus) (\s@DescribeLoadBalancersResponse' {} a -> s {httpStatus = a} :: DescribeLoadBalancersResponse)

instance Core.NFData DescribeLoadBalancersResponse
