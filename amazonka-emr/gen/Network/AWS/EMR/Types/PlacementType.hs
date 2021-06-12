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
-- Module      : Network.AWS.EMR.Types.PlacementType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.PlacementType where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The Amazon EC2 Availability Zone configuration of the cluster (job
-- flow).
--
-- /See:/ 'newPlacementType' smart constructor.
data PlacementType = PlacementType'
  { -- | When multiple Availability Zones are specified, Amazon EMR evaluates
    -- them and launches instances in the optimal Availability Zone.
    -- @AvailabilityZones@ is used for instance fleets, while
    -- @AvailabilityZone@ (singular) is used for uniform instance groups.
    --
    -- The instance fleet configuration is available only in Amazon EMR
    -- versions 4.8.0 and later, excluding 5.0.x versions.
    availabilityZones :: Core.Maybe [Core.Text],
    -- | The Amazon EC2 Availability Zone for the cluster. @AvailabilityZone@ is
    -- used for uniform instance groups, while @AvailabilityZones@ (plural) is
    -- used for instance fleets.
    availabilityZone :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PlacementType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'availabilityZones', 'placementType_availabilityZones' - When multiple Availability Zones are specified, Amazon EMR evaluates
-- them and launches instances in the optimal Availability Zone.
-- @AvailabilityZones@ is used for instance fleets, while
-- @AvailabilityZone@ (singular) is used for uniform instance groups.
--
-- The instance fleet configuration is available only in Amazon EMR
-- versions 4.8.0 and later, excluding 5.0.x versions.
--
-- 'availabilityZone', 'placementType_availabilityZone' - The Amazon EC2 Availability Zone for the cluster. @AvailabilityZone@ is
-- used for uniform instance groups, while @AvailabilityZones@ (plural) is
-- used for instance fleets.
newPlacementType ::
  PlacementType
newPlacementType =
  PlacementType'
    { availabilityZones = Core.Nothing,
      availabilityZone = Core.Nothing
    }

-- | When multiple Availability Zones are specified, Amazon EMR evaluates
-- them and launches instances in the optimal Availability Zone.
-- @AvailabilityZones@ is used for instance fleets, while
-- @AvailabilityZone@ (singular) is used for uniform instance groups.
--
-- The instance fleet configuration is available only in Amazon EMR
-- versions 4.8.0 and later, excluding 5.0.x versions.
placementType_availabilityZones :: Lens.Lens' PlacementType (Core.Maybe [Core.Text])
placementType_availabilityZones = Lens.lens (\PlacementType' {availabilityZones} -> availabilityZones) (\s@PlacementType' {} a -> s {availabilityZones = a} :: PlacementType) Core.. Lens.mapping Lens._Coerce

-- | The Amazon EC2 Availability Zone for the cluster. @AvailabilityZone@ is
-- used for uniform instance groups, while @AvailabilityZones@ (plural) is
-- used for instance fleets.
placementType_availabilityZone :: Lens.Lens' PlacementType (Core.Maybe Core.Text)
placementType_availabilityZone = Lens.lens (\PlacementType' {availabilityZone} -> availabilityZone) (\s@PlacementType' {} a -> s {availabilityZone = a} :: PlacementType)

instance Core.Hashable PlacementType

instance Core.NFData PlacementType

instance Core.ToJSON PlacementType where
  toJSON PlacementType' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AvailabilityZones" Core..=)
              Core.<$> availabilityZones,
            ("AvailabilityZone" Core..=)
              Core.<$> availabilityZone
          ]
      )
