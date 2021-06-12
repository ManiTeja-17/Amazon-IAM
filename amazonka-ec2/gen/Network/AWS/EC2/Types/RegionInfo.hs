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
-- Module      : Network.AWS.EC2.Types.RegionInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RegionInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Describes a Region.
--
-- /See:/ 'newRegionInfo' smart constructor.
data RegionInfo = RegionInfo'
  { -- | The name of the Region.
    regionName :: Core.Maybe Core.Text,
    -- | The Region opt-in status. The possible values are @opt-in-not-required@,
    -- @opted-in@, and @not-opted-in@.
    optInStatus :: Core.Maybe Core.Text,
    -- | The Region service endpoint.
    endpoint :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RegionInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'regionName', 'regionInfo_regionName' - The name of the Region.
--
-- 'optInStatus', 'regionInfo_optInStatus' - The Region opt-in status. The possible values are @opt-in-not-required@,
-- @opted-in@, and @not-opted-in@.
--
-- 'endpoint', 'regionInfo_endpoint' - The Region service endpoint.
newRegionInfo ::
  RegionInfo
newRegionInfo =
  RegionInfo'
    { regionName = Core.Nothing,
      optInStatus = Core.Nothing,
      endpoint = Core.Nothing
    }

-- | The name of the Region.
regionInfo_regionName :: Lens.Lens' RegionInfo (Core.Maybe Core.Text)
regionInfo_regionName = Lens.lens (\RegionInfo' {regionName} -> regionName) (\s@RegionInfo' {} a -> s {regionName = a} :: RegionInfo)

-- | The Region opt-in status. The possible values are @opt-in-not-required@,
-- @opted-in@, and @not-opted-in@.
regionInfo_optInStatus :: Lens.Lens' RegionInfo (Core.Maybe Core.Text)
regionInfo_optInStatus = Lens.lens (\RegionInfo' {optInStatus} -> optInStatus) (\s@RegionInfo' {} a -> s {optInStatus = a} :: RegionInfo)

-- | The Region service endpoint.
regionInfo_endpoint :: Lens.Lens' RegionInfo (Core.Maybe Core.Text)
regionInfo_endpoint = Lens.lens (\RegionInfo' {endpoint} -> endpoint) (\s@RegionInfo' {} a -> s {endpoint = a} :: RegionInfo)

instance Core.FromXML RegionInfo where
  parseXML x =
    RegionInfo'
      Core.<$> (x Core..@? "regionName")
      Core.<*> (x Core..@? "optInStatus")
      Core.<*> (x Core..@? "regionEndpoint")

instance Core.Hashable RegionInfo

instance Core.NFData RegionInfo
