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
-- Module      : Network.AWS.DMS.Types.ReplicationPendingModifiedValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReplicationPendingModifiedValues where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Provides information about the values of pending modifications to a
-- replication instance. This data type is an object of the
-- <https://docs.aws.amazon.com/dms/latest/APIReference/API_ReplicationInstance.html ReplicationInstance>
-- user-defined data type.
--
-- /See:/ 'newReplicationPendingModifiedValues' smart constructor.
data ReplicationPendingModifiedValues = ReplicationPendingModifiedValues'
  { -- | Specifies whether the replication instance is a Multi-AZ deployment. You
    -- can\'t set the @AvailabilityZone@ parameter if the Multi-AZ parameter is
    -- set to @true@.
    multiAZ :: Core.Maybe Core.Bool,
    -- | The engine version number of the replication instance.
    engineVersion :: Core.Maybe Core.Text,
    -- | The compute and memory capacity of the replication instance as defined
    -- for the specified replication instance class.
    --
    -- For more information on the settings and capacities for the available
    -- replication instance classes, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration>.
    replicationInstanceClass :: Core.Maybe Core.Text,
    -- | The amount of storage (in gigabytes) that is allocated for the
    -- replication instance.
    allocatedStorage :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ReplicationPendingModifiedValues' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'multiAZ', 'replicationPendingModifiedValues_multiAZ' - Specifies whether the replication instance is a Multi-AZ deployment. You
-- can\'t set the @AvailabilityZone@ parameter if the Multi-AZ parameter is
-- set to @true@.
--
-- 'engineVersion', 'replicationPendingModifiedValues_engineVersion' - The engine version number of the replication instance.
--
-- 'replicationInstanceClass', 'replicationPendingModifiedValues_replicationInstanceClass' - The compute and memory capacity of the replication instance as defined
-- for the specified replication instance class.
--
-- For more information on the settings and capacities for the available
-- replication instance classes, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration>.
--
-- 'allocatedStorage', 'replicationPendingModifiedValues_allocatedStorage' - The amount of storage (in gigabytes) that is allocated for the
-- replication instance.
newReplicationPendingModifiedValues ::
  ReplicationPendingModifiedValues
newReplicationPendingModifiedValues =
  ReplicationPendingModifiedValues'
    { multiAZ =
        Core.Nothing,
      engineVersion = Core.Nothing,
      replicationInstanceClass = Core.Nothing,
      allocatedStorage = Core.Nothing
    }

-- | Specifies whether the replication instance is a Multi-AZ deployment. You
-- can\'t set the @AvailabilityZone@ parameter if the Multi-AZ parameter is
-- set to @true@.
replicationPendingModifiedValues_multiAZ :: Lens.Lens' ReplicationPendingModifiedValues (Core.Maybe Core.Bool)
replicationPendingModifiedValues_multiAZ = Lens.lens (\ReplicationPendingModifiedValues' {multiAZ} -> multiAZ) (\s@ReplicationPendingModifiedValues' {} a -> s {multiAZ = a} :: ReplicationPendingModifiedValues)

-- | The engine version number of the replication instance.
replicationPendingModifiedValues_engineVersion :: Lens.Lens' ReplicationPendingModifiedValues (Core.Maybe Core.Text)
replicationPendingModifiedValues_engineVersion = Lens.lens (\ReplicationPendingModifiedValues' {engineVersion} -> engineVersion) (\s@ReplicationPendingModifiedValues' {} a -> s {engineVersion = a} :: ReplicationPendingModifiedValues)

-- | The compute and memory capacity of the replication instance as defined
-- for the specified replication instance class.
--
-- For more information on the settings and capacities for the available
-- replication instance classes, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration>.
replicationPendingModifiedValues_replicationInstanceClass :: Lens.Lens' ReplicationPendingModifiedValues (Core.Maybe Core.Text)
replicationPendingModifiedValues_replicationInstanceClass = Lens.lens (\ReplicationPendingModifiedValues' {replicationInstanceClass} -> replicationInstanceClass) (\s@ReplicationPendingModifiedValues' {} a -> s {replicationInstanceClass = a} :: ReplicationPendingModifiedValues)

-- | The amount of storage (in gigabytes) that is allocated for the
-- replication instance.
replicationPendingModifiedValues_allocatedStorage :: Lens.Lens' ReplicationPendingModifiedValues (Core.Maybe Core.Int)
replicationPendingModifiedValues_allocatedStorage = Lens.lens (\ReplicationPendingModifiedValues' {allocatedStorage} -> allocatedStorage) (\s@ReplicationPendingModifiedValues' {} a -> s {allocatedStorage = a} :: ReplicationPendingModifiedValues)

instance
  Core.FromJSON
    ReplicationPendingModifiedValues
  where
  parseJSON =
    Core.withObject
      "ReplicationPendingModifiedValues"
      ( \x ->
          ReplicationPendingModifiedValues'
            Core.<$> (x Core..:? "MultiAZ")
            Core.<*> (x Core..:? "EngineVersion")
            Core.<*> (x Core..:? "ReplicationInstanceClass")
            Core.<*> (x Core..:? "AllocatedStorage")
      )

instance
  Core.Hashable
    ReplicationPendingModifiedValues

instance Core.NFData ReplicationPendingModifiedValues
