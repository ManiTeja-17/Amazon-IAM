{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.VpcSecurityGroupMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.VpcSecurityGroupMembership where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | This data type is used as a response element for queries on VPC security
-- group membership.
--
-- /See:/ 'newVpcSecurityGroupMembership' smart constructor.
data VpcSecurityGroupMembership = VpcSecurityGroupMembership'
  { -- | The status of the VPC security group.
    status :: Core.Maybe Core.Text,
    -- | The name of the VPC security group.
    vpcSecurityGroupId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'VpcSecurityGroupMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'vpcSecurityGroupMembership_status' - The status of the VPC security group.
--
-- 'vpcSecurityGroupId', 'vpcSecurityGroupMembership_vpcSecurityGroupId' - The name of the VPC security group.
newVpcSecurityGroupMembership ::
  VpcSecurityGroupMembership
newVpcSecurityGroupMembership =
  VpcSecurityGroupMembership'
    { status = Core.Nothing,
      vpcSecurityGroupId = Core.Nothing
    }

-- | The status of the VPC security group.
vpcSecurityGroupMembership_status :: Lens.Lens' VpcSecurityGroupMembership (Core.Maybe Core.Text)
vpcSecurityGroupMembership_status = Lens.lens (\VpcSecurityGroupMembership' {status} -> status) (\s@VpcSecurityGroupMembership' {} a -> s {status = a} :: VpcSecurityGroupMembership)

-- | The name of the VPC security group.
vpcSecurityGroupMembership_vpcSecurityGroupId :: Lens.Lens' VpcSecurityGroupMembership (Core.Maybe Core.Text)
vpcSecurityGroupMembership_vpcSecurityGroupId = Lens.lens (\VpcSecurityGroupMembership' {vpcSecurityGroupId} -> vpcSecurityGroupId) (\s@VpcSecurityGroupMembership' {} a -> s {vpcSecurityGroupId = a} :: VpcSecurityGroupMembership)

instance Core.FromXML VpcSecurityGroupMembership where
  parseXML x =
    VpcSecurityGroupMembership'
      Core.<$> (x Core..@? "Status")
      Core.<*> (x Core..@? "VpcSecurityGroupId")

instance Core.Hashable VpcSecurityGroupMembership

instance Core.NFData VpcSecurityGroupMembership
