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
-- Module      : Network.AWS.DynamoDB.Types.PointInTimeRecoveryDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.PointInTimeRecoveryDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.DynamoDB.Types.PointInTimeRecoveryStatus
import qualified Network.AWS.Lens as Lens

-- | The description of the point in time settings applied to the table.
--
-- /See:/ 'newPointInTimeRecoveryDescription' smart constructor.
data PointInTimeRecoveryDescription = PointInTimeRecoveryDescription'
  { -- | @LatestRestorableDateTime@ is typically 5 minutes before the current
    -- time.
    latestRestorableDateTime :: Core.Maybe Core.POSIX,
    -- | Specifies the earliest point in time you can restore your table to. You
    -- can restore your table to any point in time during the last 35 days.
    earliestRestorableDateTime :: Core.Maybe Core.POSIX,
    -- | The current state of point in time recovery:
    --
    -- -   @ENABLING@ - Point in time recovery is being enabled.
    --
    -- -   @ENABLED@ - Point in time recovery is enabled.
    --
    -- -   @DISABLED@ - Point in time recovery is disabled.
    pointInTimeRecoveryStatus :: Core.Maybe PointInTimeRecoveryStatus
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PointInTimeRecoveryDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'latestRestorableDateTime', 'pointInTimeRecoveryDescription_latestRestorableDateTime' - @LatestRestorableDateTime@ is typically 5 minutes before the current
-- time.
--
-- 'earliestRestorableDateTime', 'pointInTimeRecoveryDescription_earliestRestorableDateTime' - Specifies the earliest point in time you can restore your table to. You
-- can restore your table to any point in time during the last 35 days.
--
-- 'pointInTimeRecoveryStatus', 'pointInTimeRecoveryDescription_pointInTimeRecoveryStatus' - The current state of point in time recovery:
--
-- -   @ENABLING@ - Point in time recovery is being enabled.
--
-- -   @ENABLED@ - Point in time recovery is enabled.
--
-- -   @DISABLED@ - Point in time recovery is disabled.
newPointInTimeRecoveryDescription ::
  PointInTimeRecoveryDescription
newPointInTimeRecoveryDescription =
  PointInTimeRecoveryDescription'
    { latestRestorableDateTime =
        Core.Nothing,
      earliestRestorableDateTime = Core.Nothing,
      pointInTimeRecoveryStatus = Core.Nothing
    }

-- | @LatestRestorableDateTime@ is typically 5 minutes before the current
-- time.
pointInTimeRecoveryDescription_latestRestorableDateTime :: Lens.Lens' PointInTimeRecoveryDescription (Core.Maybe Core.UTCTime)
pointInTimeRecoveryDescription_latestRestorableDateTime = Lens.lens (\PointInTimeRecoveryDescription' {latestRestorableDateTime} -> latestRestorableDateTime) (\s@PointInTimeRecoveryDescription' {} a -> s {latestRestorableDateTime = a} :: PointInTimeRecoveryDescription) Core.. Lens.mapping Core._Time

-- | Specifies the earliest point in time you can restore your table to. You
-- can restore your table to any point in time during the last 35 days.
pointInTimeRecoveryDescription_earliestRestorableDateTime :: Lens.Lens' PointInTimeRecoveryDescription (Core.Maybe Core.UTCTime)
pointInTimeRecoveryDescription_earliestRestorableDateTime = Lens.lens (\PointInTimeRecoveryDescription' {earliestRestorableDateTime} -> earliestRestorableDateTime) (\s@PointInTimeRecoveryDescription' {} a -> s {earliestRestorableDateTime = a} :: PointInTimeRecoveryDescription) Core.. Lens.mapping Core._Time

-- | The current state of point in time recovery:
--
-- -   @ENABLING@ - Point in time recovery is being enabled.
--
-- -   @ENABLED@ - Point in time recovery is enabled.
--
-- -   @DISABLED@ - Point in time recovery is disabled.
pointInTimeRecoveryDescription_pointInTimeRecoveryStatus :: Lens.Lens' PointInTimeRecoveryDescription (Core.Maybe PointInTimeRecoveryStatus)
pointInTimeRecoveryDescription_pointInTimeRecoveryStatus = Lens.lens (\PointInTimeRecoveryDescription' {pointInTimeRecoveryStatus} -> pointInTimeRecoveryStatus) (\s@PointInTimeRecoveryDescription' {} a -> s {pointInTimeRecoveryStatus = a} :: PointInTimeRecoveryDescription)

instance Core.FromJSON PointInTimeRecoveryDescription where
  parseJSON =
    Core.withObject
      "PointInTimeRecoveryDescription"
      ( \x ->
          PointInTimeRecoveryDescription'
            Core.<$> (x Core..:? "LatestRestorableDateTime")
            Core.<*> (x Core..:? "EarliestRestorableDateTime")
            Core.<*> (x Core..:? "PointInTimeRecoveryStatus")
      )

instance Core.Hashable PointInTimeRecoveryDescription

instance Core.NFData PointInTimeRecoveryDescription
