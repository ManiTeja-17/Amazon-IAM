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
-- Module      : Network.AWS.IoT.Types.JobProcessDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobProcessDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The job process details.
--
-- /See:/ 'newJobProcessDetails' smart constructor.
data JobProcessDetails = JobProcessDetails'
  { -- | The target devices to which the job execution is being rolled out. This
    -- value will be null after the job execution has finished rolling out to
    -- all the target devices.
    processingTargets :: Core.Maybe [Core.Text],
    -- | The number of things which successfully completed the job.
    numberOfSucceededThings :: Core.Maybe Core.Int,
    -- | The number of things that are awaiting execution of the job.
    numberOfQueuedThings :: Core.Maybe Core.Int,
    -- | The number of things that are no longer scheduled to execute the job
    -- because they have been deleted or have been removed from the group that
    -- was a target of the job.
    numberOfRemovedThings :: Core.Maybe Core.Int,
    -- | The number of things currently executing the job.
    numberOfInProgressThings :: Core.Maybe Core.Int,
    -- | The number of things that failed executing the job.
    numberOfFailedThings :: Core.Maybe Core.Int,
    -- | The number of things that rejected the job.
    numberOfRejectedThings :: Core.Maybe Core.Int,
    -- | The number of things that cancelled the job.
    numberOfCanceledThings :: Core.Maybe Core.Int,
    -- | The number of things whose job execution status is @TIMED_OUT@.
    numberOfTimedOutThings :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'JobProcessDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'processingTargets', 'jobProcessDetails_processingTargets' - The target devices to which the job execution is being rolled out. This
-- value will be null after the job execution has finished rolling out to
-- all the target devices.
--
-- 'numberOfSucceededThings', 'jobProcessDetails_numberOfSucceededThings' - The number of things which successfully completed the job.
--
-- 'numberOfQueuedThings', 'jobProcessDetails_numberOfQueuedThings' - The number of things that are awaiting execution of the job.
--
-- 'numberOfRemovedThings', 'jobProcessDetails_numberOfRemovedThings' - The number of things that are no longer scheduled to execute the job
-- because they have been deleted or have been removed from the group that
-- was a target of the job.
--
-- 'numberOfInProgressThings', 'jobProcessDetails_numberOfInProgressThings' - The number of things currently executing the job.
--
-- 'numberOfFailedThings', 'jobProcessDetails_numberOfFailedThings' - The number of things that failed executing the job.
--
-- 'numberOfRejectedThings', 'jobProcessDetails_numberOfRejectedThings' - The number of things that rejected the job.
--
-- 'numberOfCanceledThings', 'jobProcessDetails_numberOfCanceledThings' - The number of things that cancelled the job.
--
-- 'numberOfTimedOutThings', 'jobProcessDetails_numberOfTimedOutThings' - The number of things whose job execution status is @TIMED_OUT@.
newJobProcessDetails ::
  JobProcessDetails
newJobProcessDetails =
  JobProcessDetails'
    { processingTargets =
        Core.Nothing,
      numberOfSucceededThings = Core.Nothing,
      numberOfQueuedThings = Core.Nothing,
      numberOfRemovedThings = Core.Nothing,
      numberOfInProgressThings = Core.Nothing,
      numberOfFailedThings = Core.Nothing,
      numberOfRejectedThings = Core.Nothing,
      numberOfCanceledThings = Core.Nothing,
      numberOfTimedOutThings = Core.Nothing
    }

-- | The target devices to which the job execution is being rolled out. This
-- value will be null after the job execution has finished rolling out to
-- all the target devices.
jobProcessDetails_processingTargets :: Lens.Lens' JobProcessDetails (Core.Maybe [Core.Text])
jobProcessDetails_processingTargets = Lens.lens (\JobProcessDetails' {processingTargets} -> processingTargets) (\s@JobProcessDetails' {} a -> s {processingTargets = a} :: JobProcessDetails) Core.. Lens.mapping Lens._Coerce

-- | The number of things which successfully completed the job.
jobProcessDetails_numberOfSucceededThings :: Lens.Lens' JobProcessDetails (Core.Maybe Core.Int)
jobProcessDetails_numberOfSucceededThings = Lens.lens (\JobProcessDetails' {numberOfSucceededThings} -> numberOfSucceededThings) (\s@JobProcessDetails' {} a -> s {numberOfSucceededThings = a} :: JobProcessDetails)

-- | The number of things that are awaiting execution of the job.
jobProcessDetails_numberOfQueuedThings :: Lens.Lens' JobProcessDetails (Core.Maybe Core.Int)
jobProcessDetails_numberOfQueuedThings = Lens.lens (\JobProcessDetails' {numberOfQueuedThings} -> numberOfQueuedThings) (\s@JobProcessDetails' {} a -> s {numberOfQueuedThings = a} :: JobProcessDetails)

-- | The number of things that are no longer scheduled to execute the job
-- because they have been deleted or have been removed from the group that
-- was a target of the job.
jobProcessDetails_numberOfRemovedThings :: Lens.Lens' JobProcessDetails (Core.Maybe Core.Int)
jobProcessDetails_numberOfRemovedThings = Lens.lens (\JobProcessDetails' {numberOfRemovedThings} -> numberOfRemovedThings) (\s@JobProcessDetails' {} a -> s {numberOfRemovedThings = a} :: JobProcessDetails)

-- | The number of things currently executing the job.
jobProcessDetails_numberOfInProgressThings :: Lens.Lens' JobProcessDetails (Core.Maybe Core.Int)
jobProcessDetails_numberOfInProgressThings = Lens.lens (\JobProcessDetails' {numberOfInProgressThings} -> numberOfInProgressThings) (\s@JobProcessDetails' {} a -> s {numberOfInProgressThings = a} :: JobProcessDetails)

-- | The number of things that failed executing the job.
jobProcessDetails_numberOfFailedThings :: Lens.Lens' JobProcessDetails (Core.Maybe Core.Int)
jobProcessDetails_numberOfFailedThings = Lens.lens (\JobProcessDetails' {numberOfFailedThings} -> numberOfFailedThings) (\s@JobProcessDetails' {} a -> s {numberOfFailedThings = a} :: JobProcessDetails)

-- | The number of things that rejected the job.
jobProcessDetails_numberOfRejectedThings :: Lens.Lens' JobProcessDetails (Core.Maybe Core.Int)
jobProcessDetails_numberOfRejectedThings = Lens.lens (\JobProcessDetails' {numberOfRejectedThings} -> numberOfRejectedThings) (\s@JobProcessDetails' {} a -> s {numberOfRejectedThings = a} :: JobProcessDetails)

-- | The number of things that cancelled the job.
jobProcessDetails_numberOfCanceledThings :: Lens.Lens' JobProcessDetails (Core.Maybe Core.Int)
jobProcessDetails_numberOfCanceledThings = Lens.lens (\JobProcessDetails' {numberOfCanceledThings} -> numberOfCanceledThings) (\s@JobProcessDetails' {} a -> s {numberOfCanceledThings = a} :: JobProcessDetails)

-- | The number of things whose job execution status is @TIMED_OUT@.
jobProcessDetails_numberOfTimedOutThings :: Lens.Lens' JobProcessDetails (Core.Maybe Core.Int)
jobProcessDetails_numberOfTimedOutThings = Lens.lens (\JobProcessDetails' {numberOfTimedOutThings} -> numberOfTimedOutThings) (\s@JobProcessDetails' {} a -> s {numberOfTimedOutThings = a} :: JobProcessDetails)

instance Core.FromJSON JobProcessDetails where
  parseJSON =
    Core.withObject
      "JobProcessDetails"
      ( \x ->
          JobProcessDetails'
            Core.<$> (x Core..:? "processingTargets" Core..!= Core.mempty)
            Core.<*> (x Core..:? "numberOfSucceededThings")
            Core.<*> (x Core..:? "numberOfQueuedThings")
            Core.<*> (x Core..:? "numberOfRemovedThings")
            Core.<*> (x Core..:? "numberOfInProgressThings")
            Core.<*> (x Core..:? "numberOfFailedThings")
            Core.<*> (x Core..:? "numberOfRejectedThings")
            Core.<*> (x Core..:? "numberOfCanceledThings")
            Core.<*> (x Core..:? "numberOfTimedOutThings")
      )

instance Core.Hashable JobProcessDetails

instance Core.NFData JobProcessDetails
