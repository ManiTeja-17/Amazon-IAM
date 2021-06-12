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
-- Module      : Network.AWS.ELB.DescribeLoadBalancerPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified policies.
--
-- If you specify a load balancer name, the action returns the descriptions
-- of all policies created for the load balancer. If you specify a policy
-- name associated with your load balancer, the action returns the
-- description of that policy. If you don\'t specify a load balancer name,
-- the action returns descriptions of the specified sample policies, or
-- descriptions of all sample policies. The names of the sample policies
-- have the @ELBSample-@ prefix.
module Network.AWS.ELB.DescribeLoadBalancerPolicies
  ( -- * Creating a Request
    DescribeLoadBalancerPolicies (..),
    newDescribeLoadBalancerPolicies,

    -- * Request Lenses
    describeLoadBalancerPolicies_policyNames,
    describeLoadBalancerPolicies_loadBalancerName,

    -- * Destructuring the Response
    DescribeLoadBalancerPoliciesResponse (..),
    newDescribeLoadBalancerPoliciesResponse,

    -- * Response Lenses
    describeLoadBalancerPoliciesResponse_policyDescriptions,
    describeLoadBalancerPoliciesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ELB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DescribeLoadBalancerPolicies.
--
-- /See:/ 'newDescribeLoadBalancerPolicies' smart constructor.
data DescribeLoadBalancerPolicies = DescribeLoadBalancerPolicies'
  { -- | The names of the policies.
    policyNames :: Core.Maybe [Core.Text],
    -- | The name of the load balancer.
    loadBalancerName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeLoadBalancerPolicies' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyNames', 'describeLoadBalancerPolicies_policyNames' - The names of the policies.
--
-- 'loadBalancerName', 'describeLoadBalancerPolicies_loadBalancerName' - The name of the load balancer.
newDescribeLoadBalancerPolicies ::
  DescribeLoadBalancerPolicies
newDescribeLoadBalancerPolicies =
  DescribeLoadBalancerPolicies'
    { policyNames =
        Core.Nothing,
      loadBalancerName = Core.Nothing
    }

-- | The names of the policies.
describeLoadBalancerPolicies_policyNames :: Lens.Lens' DescribeLoadBalancerPolicies (Core.Maybe [Core.Text])
describeLoadBalancerPolicies_policyNames = Lens.lens (\DescribeLoadBalancerPolicies' {policyNames} -> policyNames) (\s@DescribeLoadBalancerPolicies' {} a -> s {policyNames = a} :: DescribeLoadBalancerPolicies) Core.. Lens.mapping Lens._Coerce

-- | The name of the load balancer.
describeLoadBalancerPolicies_loadBalancerName :: Lens.Lens' DescribeLoadBalancerPolicies (Core.Maybe Core.Text)
describeLoadBalancerPolicies_loadBalancerName = Lens.lens (\DescribeLoadBalancerPolicies' {loadBalancerName} -> loadBalancerName) (\s@DescribeLoadBalancerPolicies' {} a -> s {loadBalancerName = a} :: DescribeLoadBalancerPolicies)

instance Core.AWSRequest DescribeLoadBalancerPolicies where
  type
    AWSResponse DescribeLoadBalancerPolicies =
      DescribeLoadBalancerPoliciesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeLoadBalancerPoliciesResult"
      ( \s h x ->
          DescribeLoadBalancerPoliciesResponse'
            Core.<$> ( x Core..@? "PolicyDescriptions" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "member")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeLoadBalancerPolicies

instance Core.NFData DescribeLoadBalancerPolicies

instance Core.ToHeaders DescribeLoadBalancerPolicies where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DescribeLoadBalancerPolicies where
  toPath = Core.const "/"

instance Core.ToQuery DescribeLoadBalancerPolicies where
  toQuery DescribeLoadBalancerPolicies' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DescribeLoadBalancerPolicies" :: Core.ByteString),
        "Version" Core.=: ("2012-06-01" :: Core.ByteString),
        "PolicyNames"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Core.<$> policyNames),
        "LoadBalancerName" Core.=: loadBalancerName
      ]

-- | Contains the output of DescribeLoadBalancerPolicies.
--
-- /See:/ 'newDescribeLoadBalancerPoliciesResponse' smart constructor.
data DescribeLoadBalancerPoliciesResponse = DescribeLoadBalancerPoliciesResponse'
  { -- | Information about the policies.
    policyDescriptions :: Core.Maybe [PolicyDescription],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeLoadBalancerPoliciesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyDescriptions', 'describeLoadBalancerPoliciesResponse_policyDescriptions' - Information about the policies.
--
-- 'httpStatus', 'describeLoadBalancerPoliciesResponse_httpStatus' - The response's http status code.
newDescribeLoadBalancerPoliciesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeLoadBalancerPoliciesResponse
newDescribeLoadBalancerPoliciesResponse pHttpStatus_ =
  DescribeLoadBalancerPoliciesResponse'
    { policyDescriptions =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the policies.
describeLoadBalancerPoliciesResponse_policyDescriptions :: Lens.Lens' DescribeLoadBalancerPoliciesResponse (Core.Maybe [PolicyDescription])
describeLoadBalancerPoliciesResponse_policyDescriptions = Lens.lens (\DescribeLoadBalancerPoliciesResponse' {policyDescriptions} -> policyDescriptions) (\s@DescribeLoadBalancerPoliciesResponse' {} a -> s {policyDescriptions = a} :: DescribeLoadBalancerPoliciesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeLoadBalancerPoliciesResponse_httpStatus :: Lens.Lens' DescribeLoadBalancerPoliciesResponse Core.Int
describeLoadBalancerPoliciesResponse_httpStatus = Lens.lens (\DescribeLoadBalancerPoliciesResponse' {httpStatus} -> httpStatus) (\s@DescribeLoadBalancerPoliciesResponse' {} a -> s {httpStatus = a} :: DescribeLoadBalancerPoliciesResponse)

instance
  Core.NFData
    DescribeLoadBalancerPoliciesResponse
