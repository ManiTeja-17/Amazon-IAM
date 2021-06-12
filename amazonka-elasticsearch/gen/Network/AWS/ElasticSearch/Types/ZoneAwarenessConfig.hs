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
-- Module      : Network.AWS.ElasticSearch.Types.ZoneAwarenessConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ZoneAwarenessConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Specifies the zone awareness configuration for the domain cluster, such
-- as the number of availability zones.
--
-- /See:/ 'newZoneAwarenessConfig' smart constructor.
data ZoneAwarenessConfig = ZoneAwarenessConfig'
  { -- | An integer value to indicate the number of availability zones for a
    -- domain when zone awareness is enabled. This should be equal to number of
    -- subnets if VPC endpoints is enabled
    availabilityZoneCount :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ZoneAwarenessConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'availabilityZoneCount', 'zoneAwarenessConfig_availabilityZoneCount' - An integer value to indicate the number of availability zones for a
-- domain when zone awareness is enabled. This should be equal to number of
-- subnets if VPC endpoints is enabled
newZoneAwarenessConfig ::
  ZoneAwarenessConfig
newZoneAwarenessConfig =
  ZoneAwarenessConfig'
    { availabilityZoneCount =
        Core.Nothing
    }

-- | An integer value to indicate the number of availability zones for a
-- domain when zone awareness is enabled. This should be equal to number of
-- subnets if VPC endpoints is enabled
zoneAwarenessConfig_availabilityZoneCount :: Lens.Lens' ZoneAwarenessConfig (Core.Maybe Core.Int)
zoneAwarenessConfig_availabilityZoneCount = Lens.lens (\ZoneAwarenessConfig' {availabilityZoneCount} -> availabilityZoneCount) (\s@ZoneAwarenessConfig' {} a -> s {availabilityZoneCount = a} :: ZoneAwarenessConfig)

instance Core.FromJSON ZoneAwarenessConfig where
  parseJSON =
    Core.withObject
      "ZoneAwarenessConfig"
      ( \x ->
          ZoneAwarenessConfig'
            Core.<$> (x Core..:? "AvailabilityZoneCount")
      )

instance Core.Hashable ZoneAwarenessConfig

instance Core.NFData ZoneAwarenessConfig

instance Core.ToJSON ZoneAwarenessConfig where
  toJSON ZoneAwarenessConfig' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AvailabilityZoneCount" Core..=)
              Core.<$> availabilityZoneCount
          ]
      )
