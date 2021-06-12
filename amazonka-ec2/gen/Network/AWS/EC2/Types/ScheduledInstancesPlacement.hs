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
-- Module      : Network.AWS.EC2.Types.ScheduledInstancesPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ScheduledInstancesPlacement where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Describes the placement for a Scheduled Instance.
--
-- /See:/ 'newScheduledInstancesPlacement' smart constructor.
data ScheduledInstancesPlacement = ScheduledInstancesPlacement'
  { -- | The name of the placement group.
    groupName :: Core.Maybe Core.Text,
    -- | The Availability Zone.
    availabilityZone :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ScheduledInstancesPlacement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupName', 'scheduledInstancesPlacement_groupName' - The name of the placement group.
--
-- 'availabilityZone', 'scheduledInstancesPlacement_availabilityZone' - The Availability Zone.
newScheduledInstancesPlacement ::
  ScheduledInstancesPlacement
newScheduledInstancesPlacement =
  ScheduledInstancesPlacement'
    { groupName =
        Core.Nothing,
      availabilityZone = Core.Nothing
    }

-- | The name of the placement group.
scheduledInstancesPlacement_groupName :: Lens.Lens' ScheduledInstancesPlacement (Core.Maybe Core.Text)
scheduledInstancesPlacement_groupName = Lens.lens (\ScheduledInstancesPlacement' {groupName} -> groupName) (\s@ScheduledInstancesPlacement' {} a -> s {groupName = a} :: ScheduledInstancesPlacement)

-- | The Availability Zone.
scheduledInstancesPlacement_availabilityZone :: Lens.Lens' ScheduledInstancesPlacement (Core.Maybe Core.Text)
scheduledInstancesPlacement_availabilityZone = Lens.lens (\ScheduledInstancesPlacement' {availabilityZone} -> availabilityZone) (\s@ScheduledInstancesPlacement' {} a -> s {availabilityZone = a} :: ScheduledInstancesPlacement)

instance Core.Hashable ScheduledInstancesPlacement

instance Core.NFData ScheduledInstancesPlacement

instance Core.ToQuery ScheduledInstancesPlacement where
  toQuery ScheduledInstancesPlacement' {..} =
    Core.mconcat
      [ "GroupName" Core.=: groupName,
        "AvailabilityZone" Core.=: availabilityZone
      ]
