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
-- Module      : Network.AWS.EMR.Types.InstanceFleetTimeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetTimeline where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Provides historical timestamps for the instance fleet, including the
-- time of creation, the time it became ready to run jobs, and the time of
-- termination.
--
-- The instance fleet configuration is available only in Amazon EMR
-- versions 4.8.0 and later, excluding 5.0.x versions.
--
-- /See:/ 'newInstanceFleetTimeline' smart constructor.
data InstanceFleetTimeline = InstanceFleetTimeline'
  { -- | The time and date the instance fleet terminated.
    endDateTime :: Core.Maybe Core.POSIX,
    -- | The time and date the instance fleet was created.
    creationDateTime :: Core.Maybe Core.POSIX,
    -- | The time and date the instance fleet was ready to run jobs.
    readyDateTime :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'InstanceFleetTimeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endDateTime', 'instanceFleetTimeline_endDateTime' - The time and date the instance fleet terminated.
--
-- 'creationDateTime', 'instanceFleetTimeline_creationDateTime' - The time and date the instance fleet was created.
--
-- 'readyDateTime', 'instanceFleetTimeline_readyDateTime' - The time and date the instance fleet was ready to run jobs.
newInstanceFleetTimeline ::
  InstanceFleetTimeline
newInstanceFleetTimeline =
  InstanceFleetTimeline'
    { endDateTime = Core.Nothing,
      creationDateTime = Core.Nothing,
      readyDateTime = Core.Nothing
    }

-- | The time and date the instance fleet terminated.
instanceFleetTimeline_endDateTime :: Lens.Lens' InstanceFleetTimeline (Core.Maybe Core.UTCTime)
instanceFleetTimeline_endDateTime = Lens.lens (\InstanceFleetTimeline' {endDateTime} -> endDateTime) (\s@InstanceFleetTimeline' {} a -> s {endDateTime = a} :: InstanceFleetTimeline) Core.. Lens.mapping Core._Time

-- | The time and date the instance fleet was created.
instanceFleetTimeline_creationDateTime :: Lens.Lens' InstanceFleetTimeline (Core.Maybe Core.UTCTime)
instanceFleetTimeline_creationDateTime = Lens.lens (\InstanceFleetTimeline' {creationDateTime} -> creationDateTime) (\s@InstanceFleetTimeline' {} a -> s {creationDateTime = a} :: InstanceFleetTimeline) Core.. Lens.mapping Core._Time

-- | The time and date the instance fleet was ready to run jobs.
instanceFleetTimeline_readyDateTime :: Lens.Lens' InstanceFleetTimeline (Core.Maybe Core.UTCTime)
instanceFleetTimeline_readyDateTime = Lens.lens (\InstanceFleetTimeline' {readyDateTime} -> readyDateTime) (\s@InstanceFleetTimeline' {} a -> s {readyDateTime = a} :: InstanceFleetTimeline) Core.. Lens.mapping Core._Time

instance Core.FromJSON InstanceFleetTimeline where
  parseJSON =
    Core.withObject
      "InstanceFleetTimeline"
      ( \x ->
          InstanceFleetTimeline'
            Core.<$> (x Core..:? "EndDateTime")
            Core.<*> (x Core..:? "CreationDateTime")
            Core.<*> (x Core..:? "ReadyDateTime")
      )

instance Core.Hashable InstanceFleetTimeline

instance Core.NFData InstanceFleetTimeline
