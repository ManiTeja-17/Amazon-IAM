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
-- Module      : Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsIngress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the description of an ingress (inbound) security group rule. You
-- can replace an existing description, or add a description to a rule that
-- did not have one previously.
--
-- You specify the description as part of the IP permissions structure. You
-- can remove a description for a security group rule by omitting the
-- description parameter in the request.
module Network.AWS.EC2.UpdateSecurityGroupRuleDescriptionsIngress
  ( -- * Creating a Request
    UpdateSecurityGroupRuleDescriptionsIngress (..),
    newUpdateSecurityGroupRuleDescriptionsIngress,

    -- * Request Lenses
    updateSecurityGroupRuleDescriptionsIngress_dryRun,
    updateSecurityGroupRuleDescriptionsIngress_groupName,
    updateSecurityGroupRuleDescriptionsIngress_groupId,
    updateSecurityGroupRuleDescriptionsIngress_ipPermissions,

    -- * Destructuring the Response
    UpdateSecurityGroupRuleDescriptionsIngressResponse (..),
    newUpdateSecurityGroupRuleDescriptionsIngressResponse,

    -- * Response Lenses
    updateSecurityGroupRuleDescriptionsIngressResponse_return,
    updateSecurityGroupRuleDescriptionsIngressResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateSecurityGroupRuleDescriptionsIngress' smart constructor.
data UpdateSecurityGroupRuleDescriptionsIngress = UpdateSecurityGroupRuleDescriptionsIngress'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | [EC2-Classic, default VPC] The name of the security group. You must
    -- specify either the security group ID or the security group name in the
    -- request.
    groupName :: Core.Maybe Core.Text,
    -- | The ID of the security group. You must specify either the security group
    -- ID or the security group name in the request. For security groups in a
    -- nondefault VPC, you must specify the security group ID.
    groupId :: Core.Maybe Core.Text,
    -- | The IP permissions for the security group rule.
    ipPermissions :: [IpPermission]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateSecurityGroupRuleDescriptionsIngress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'updateSecurityGroupRuleDescriptionsIngress_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'groupName', 'updateSecurityGroupRuleDescriptionsIngress_groupName' - [EC2-Classic, default VPC] The name of the security group. You must
-- specify either the security group ID or the security group name in the
-- request.
--
-- 'groupId', 'updateSecurityGroupRuleDescriptionsIngress_groupId' - The ID of the security group. You must specify either the security group
-- ID or the security group name in the request. For security groups in a
-- nondefault VPC, you must specify the security group ID.
--
-- 'ipPermissions', 'updateSecurityGroupRuleDescriptionsIngress_ipPermissions' - The IP permissions for the security group rule.
newUpdateSecurityGroupRuleDescriptionsIngress ::
  UpdateSecurityGroupRuleDescriptionsIngress
newUpdateSecurityGroupRuleDescriptionsIngress =
  UpdateSecurityGroupRuleDescriptionsIngress'
    { dryRun =
        Core.Nothing,
      groupName = Core.Nothing,
      groupId = Core.Nothing,
      ipPermissions = Core.mempty
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
updateSecurityGroupRuleDescriptionsIngress_dryRun :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress (Core.Maybe Core.Bool)
updateSecurityGroupRuleDescriptionsIngress_dryRun = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {dryRun} -> dryRun) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {dryRun = a} :: UpdateSecurityGroupRuleDescriptionsIngress)

-- | [EC2-Classic, default VPC] The name of the security group. You must
-- specify either the security group ID or the security group name in the
-- request.
updateSecurityGroupRuleDescriptionsIngress_groupName :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress (Core.Maybe Core.Text)
updateSecurityGroupRuleDescriptionsIngress_groupName = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {groupName} -> groupName) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {groupName = a} :: UpdateSecurityGroupRuleDescriptionsIngress)

-- | The ID of the security group. You must specify either the security group
-- ID or the security group name in the request. For security groups in a
-- nondefault VPC, you must specify the security group ID.
updateSecurityGroupRuleDescriptionsIngress_groupId :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress (Core.Maybe Core.Text)
updateSecurityGroupRuleDescriptionsIngress_groupId = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {groupId} -> groupId) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {groupId = a} :: UpdateSecurityGroupRuleDescriptionsIngress)

-- | The IP permissions for the security group rule.
updateSecurityGroupRuleDescriptionsIngress_ipPermissions :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngress [IpPermission]
updateSecurityGroupRuleDescriptionsIngress_ipPermissions = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngress' {ipPermissions} -> ipPermissions) (\s@UpdateSecurityGroupRuleDescriptionsIngress' {} a -> s {ipPermissions = a} :: UpdateSecurityGroupRuleDescriptionsIngress) Core.. Lens._Coerce

instance
  Core.AWSRequest
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  type
    AWSResponse
      UpdateSecurityGroupRuleDescriptionsIngress =
      UpdateSecurityGroupRuleDescriptionsIngressResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          UpdateSecurityGroupRuleDescriptionsIngressResponse'
            Core.<$> (x Core..@? "return")
              Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    UpdateSecurityGroupRuleDescriptionsIngress

instance
  Core.NFData
    UpdateSecurityGroupRuleDescriptionsIngress

instance
  Core.ToHeaders
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toHeaders = Core.const Core.mempty

instance
  Core.ToPath
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    UpdateSecurityGroupRuleDescriptionsIngress
  where
  toQuery
    UpdateSecurityGroupRuleDescriptionsIngress' {..} =
      Core.mconcat
        [ "Action"
            Core.=: ( "UpdateSecurityGroupRuleDescriptionsIngress" ::
                        Core.ByteString
                    ),
          "Version" Core.=: ("2016-11-15" :: Core.ByteString),
          "DryRun" Core.=: dryRun,
          "GroupName" Core.=: groupName,
          "GroupId" Core.=: groupId,
          Core.toQueryList "IpPermissions" ipPermissions
        ]

-- | /See:/ 'newUpdateSecurityGroupRuleDescriptionsIngressResponse' smart constructor.
data UpdateSecurityGroupRuleDescriptionsIngressResponse = UpdateSecurityGroupRuleDescriptionsIngressResponse'
  { -- | Returns @true@ if the request succeeds; otherwise, returns an error.
    return' :: Core.Maybe Core.Bool,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateSecurityGroupRuleDescriptionsIngressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'return'', 'updateSecurityGroupRuleDescriptionsIngressResponse_return' - Returns @true@ if the request succeeds; otherwise, returns an error.
--
-- 'httpStatus', 'updateSecurityGroupRuleDescriptionsIngressResponse_httpStatus' - The response's http status code.
newUpdateSecurityGroupRuleDescriptionsIngressResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateSecurityGroupRuleDescriptionsIngressResponse
newUpdateSecurityGroupRuleDescriptionsIngressResponse
  pHttpStatus_ =
    UpdateSecurityGroupRuleDescriptionsIngressResponse'
      { return' =
          Core.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, returns an error.
updateSecurityGroupRuleDescriptionsIngressResponse_return :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngressResponse (Core.Maybe Core.Bool)
updateSecurityGroupRuleDescriptionsIngressResponse_return = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngressResponse' {return'} -> return') (\s@UpdateSecurityGroupRuleDescriptionsIngressResponse' {} a -> s {return' = a} :: UpdateSecurityGroupRuleDescriptionsIngressResponse)

-- | The response's http status code.
updateSecurityGroupRuleDescriptionsIngressResponse_httpStatus :: Lens.Lens' UpdateSecurityGroupRuleDescriptionsIngressResponse Core.Int
updateSecurityGroupRuleDescriptionsIngressResponse_httpStatus = Lens.lens (\UpdateSecurityGroupRuleDescriptionsIngressResponse' {httpStatus} -> httpStatus) (\s@UpdateSecurityGroupRuleDescriptionsIngressResponse' {} a -> s {httpStatus = a} :: UpdateSecurityGroupRuleDescriptionsIngressResponse)

instance
  Core.NFData
    UpdateSecurityGroupRuleDescriptionsIngressResponse
