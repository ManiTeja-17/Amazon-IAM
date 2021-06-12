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
-- Module      : Network.AWS.Pinpoint.Types.SegmentLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SegmentLocation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.GPSPointDimension
import Network.AWS.Pinpoint.Types.SetDimension

-- | Specifies geographical dimension settings for a segment.
--
-- /See:/ 'newSegmentLocation' smart constructor.
data SegmentLocation = SegmentLocation'
  { -- | The GPS location and range for the segment.
    gPSPoint :: Core.Maybe GPSPointDimension,
    -- | The country or region code, in ISO 3166-1 alpha-2 format, for the
    -- segment.
    country :: Core.Maybe SetDimension
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SegmentLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gPSPoint', 'segmentLocation_gPSPoint' - The GPS location and range for the segment.
--
-- 'country', 'segmentLocation_country' - The country or region code, in ISO 3166-1 alpha-2 format, for the
-- segment.
newSegmentLocation ::
  SegmentLocation
newSegmentLocation =
  SegmentLocation'
    { gPSPoint = Core.Nothing,
      country = Core.Nothing
    }

-- | The GPS location and range for the segment.
segmentLocation_gPSPoint :: Lens.Lens' SegmentLocation (Core.Maybe GPSPointDimension)
segmentLocation_gPSPoint = Lens.lens (\SegmentLocation' {gPSPoint} -> gPSPoint) (\s@SegmentLocation' {} a -> s {gPSPoint = a} :: SegmentLocation)

-- | The country or region code, in ISO 3166-1 alpha-2 format, for the
-- segment.
segmentLocation_country :: Lens.Lens' SegmentLocation (Core.Maybe SetDimension)
segmentLocation_country = Lens.lens (\SegmentLocation' {country} -> country) (\s@SegmentLocation' {} a -> s {country = a} :: SegmentLocation)

instance Core.FromJSON SegmentLocation where
  parseJSON =
    Core.withObject
      "SegmentLocation"
      ( \x ->
          SegmentLocation'
            Core.<$> (x Core..:? "GPSPoint")
            Core.<*> (x Core..:? "Country")
      )

instance Core.Hashable SegmentLocation

instance Core.NFData SegmentLocation

instance Core.ToJSON SegmentLocation where
  toJSON SegmentLocation' {..} =
    Core.object
      ( Core.catMaybes
          [ ("GPSPoint" Core..=) Core.<$> gPSPoint,
            ("Country" Core..=) Core.<$> country
          ]
      )
