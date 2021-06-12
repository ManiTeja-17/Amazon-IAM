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
-- Module      : Network.AWS.GuardDuty.Types.SecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.SecurityGroup where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Contains information about the security groups associated with the EC2
-- instance.
--
-- /See:/ 'newSecurityGroup' smart constructor.
data SecurityGroup = SecurityGroup'
  { -- | The security group name of the EC2 instance.
    groupName :: Core.Maybe Core.Text,
    -- | The security group ID of the EC2 instance.
    groupId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupName', 'securityGroup_groupName' - The security group name of the EC2 instance.
--
-- 'groupId', 'securityGroup_groupId' - The security group ID of the EC2 instance.
newSecurityGroup ::
  SecurityGroup
newSecurityGroup =
  SecurityGroup'
    { groupName = Core.Nothing,
      groupId = Core.Nothing
    }

-- | The security group name of the EC2 instance.
securityGroup_groupName :: Lens.Lens' SecurityGroup (Core.Maybe Core.Text)
securityGroup_groupName = Lens.lens (\SecurityGroup' {groupName} -> groupName) (\s@SecurityGroup' {} a -> s {groupName = a} :: SecurityGroup)

-- | The security group ID of the EC2 instance.
securityGroup_groupId :: Lens.Lens' SecurityGroup (Core.Maybe Core.Text)
securityGroup_groupId = Lens.lens (\SecurityGroup' {groupId} -> groupId) (\s@SecurityGroup' {} a -> s {groupId = a} :: SecurityGroup)

instance Core.FromJSON SecurityGroup where
  parseJSON =
    Core.withObject
      "SecurityGroup"
      ( \x ->
          SecurityGroup'
            Core.<$> (x Core..:? "groupName")
            Core.<*> (x Core..:? "groupId")
      )

instance Core.Hashable SecurityGroup

instance Core.NFData SecurityGroup
