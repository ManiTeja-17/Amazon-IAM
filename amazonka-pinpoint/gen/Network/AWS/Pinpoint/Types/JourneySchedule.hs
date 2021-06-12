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
-- Module      : Network.AWS.Pinpoint.Types.JourneySchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneySchedule where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Specifies the schedule settings for a journey.
--
-- /See:/ 'newJourneySchedule' smart constructor.
data JourneySchedule = JourneySchedule'
  { -- | The scheduled time, in ISO 8601 format, when the journey began or will
    -- begin.
    startTime :: Core.Maybe Core.POSIX,
    -- | The scheduled time, in ISO 8601 format, when the journey ended or will
    -- end.
    endTime :: Core.Maybe Core.POSIX,
    -- | The starting UTC offset for the journey schedule, if the value of the
    -- journey\'s LocalTime property is true. Valid values are: UTC, UTC+01,
    -- UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30,
    -- UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+08:45, UTC+09,
    -- UTC+09:30, UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+12:45, UTC+13,
    -- UTC+13:45, UTC-02, UTC-02:30, UTC-03, UTC-03:30, UTC-04, UTC-05, UTC-06,
    -- UTC-07, UTC-08, UTC-09, UTC-09:30, UTC-10, and UTC-11.
    timezone :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'JourneySchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'startTime', 'journeySchedule_startTime' - The scheduled time, in ISO 8601 format, when the journey began or will
-- begin.
--
-- 'endTime', 'journeySchedule_endTime' - The scheduled time, in ISO 8601 format, when the journey ended or will
-- end.
--
-- 'timezone', 'journeySchedule_timezone' - The starting UTC offset for the journey schedule, if the value of the
-- journey\'s LocalTime property is true. Valid values are: UTC, UTC+01,
-- UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30,
-- UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+08:45, UTC+09,
-- UTC+09:30, UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+12:45, UTC+13,
-- UTC+13:45, UTC-02, UTC-02:30, UTC-03, UTC-03:30, UTC-04, UTC-05, UTC-06,
-- UTC-07, UTC-08, UTC-09, UTC-09:30, UTC-10, and UTC-11.
newJourneySchedule ::
  JourneySchedule
newJourneySchedule =
  JourneySchedule'
    { startTime = Core.Nothing,
      endTime = Core.Nothing,
      timezone = Core.Nothing
    }

-- | The scheduled time, in ISO 8601 format, when the journey began or will
-- begin.
journeySchedule_startTime :: Lens.Lens' JourneySchedule (Core.Maybe Core.UTCTime)
journeySchedule_startTime = Lens.lens (\JourneySchedule' {startTime} -> startTime) (\s@JourneySchedule' {} a -> s {startTime = a} :: JourneySchedule) Core.. Lens.mapping Core._Time

-- | The scheduled time, in ISO 8601 format, when the journey ended or will
-- end.
journeySchedule_endTime :: Lens.Lens' JourneySchedule (Core.Maybe Core.UTCTime)
journeySchedule_endTime = Lens.lens (\JourneySchedule' {endTime} -> endTime) (\s@JourneySchedule' {} a -> s {endTime = a} :: JourneySchedule) Core.. Lens.mapping Core._Time

-- | The starting UTC offset for the journey schedule, if the value of the
-- journey\'s LocalTime property is true. Valid values are: UTC, UTC+01,
-- UTC+02, UTC+03, UTC+03:30, UTC+04, UTC+04:30, UTC+05, UTC+05:30,
-- UTC+05:45, UTC+06, UTC+06:30, UTC+07, UTC+08, UTC+08:45, UTC+09,
-- UTC+09:30, UTC+10, UTC+10:30, UTC+11, UTC+12, UTC+12:45, UTC+13,
-- UTC+13:45, UTC-02, UTC-02:30, UTC-03, UTC-03:30, UTC-04, UTC-05, UTC-06,
-- UTC-07, UTC-08, UTC-09, UTC-09:30, UTC-10, and UTC-11.
journeySchedule_timezone :: Lens.Lens' JourneySchedule (Core.Maybe Core.Text)
journeySchedule_timezone = Lens.lens (\JourneySchedule' {timezone} -> timezone) (\s@JourneySchedule' {} a -> s {timezone = a} :: JourneySchedule)

instance Core.FromJSON JourneySchedule where
  parseJSON =
    Core.withObject
      "JourneySchedule"
      ( \x ->
          JourneySchedule'
            Core.<$> (x Core..:? "StartTime")
            Core.<*> (x Core..:? "EndTime")
            Core.<*> (x Core..:? "Timezone")
      )

instance Core.Hashable JourneySchedule

instance Core.NFData JourneySchedule

instance Core.ToJSON JourneySchedule where
  toJSON JourneySchedule' {..} =
    Core.object
      ( Core.catMaybes
          [ ("StartTime" Core..=) Core.<$> startTime,
            ("EndTime" Core..=) Core.<$> endTime,
            ("Timezone" Core..=) Core.<$> timezone
          ]
      )
