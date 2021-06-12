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
-- Module      : Network.AWS.MediaConvert.Types.QueueTransition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.QueueTransition where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Description of the source and destination queues between which the job
-- has moved, along with the timestamp of the move
--
-- /See:/ 'newQueueTransition' smart constructor.
data QueueTransition = QueueTransition'
  { -- | The queue that the job was on before the transition.
    sourceQueue :: Core.Maybe Core.Text,
    -- | The time, in Unix epoch format, that the job moved from the source queue
    -- to the destination queue.
    timestamp :: Core.Maybe Core.POSIX,
    -- | The queue that the job was on after the transition.
    destinationQueue :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'QueueTransition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceQueue', 'queueTransition_sourceQueue' - The queue that the job was on before the transition.
--
-- 'timestamp', 'queueTransition_timestamp' - The time, in Unix epoch format, that the job moved from the source queue
-- to the destination queue.
--
-- 'destinationQueue', 'queueTransition_destinationQueue' - The queue that the job was on after the transition.
newQueueTransition ::
  QueueTransition
newQueueTransition =
  QueueTransition'
    { sourceQueue = Core.Nothing,
      timestamp = Core.Nothing,
      destinationQueue = Core.Nothing
    }

-- | The queue that the job was on before the transition.
queueTransition_sourceQueue :: Lens.Lens' QueueTransition (Core.Maybe Core.Text)
queueTransition_sourceQueue = Lens.lens (\QueueTransition' {sourceQueue} -> sourceQueue) (\s@QueueTransition' {} a -> s {sourceQueue = a} :: QueueTransition)

-- | The time, in Unix epoch format, that the job moved from the source queue
-- to the destination queue.
queueTransition_timestamp :: Lens.Lens' QueueTransition (Core.Maybe Core.UTCTime)
queueTransition_timestamp = Lens.lens (\QueueTransition' {timestamp} -> timestamp) (\s@QueueTransition' {} a -> s {timestamp = a} :: QueueTransition) Core.. Lens.mapping Core._Time

-- | The queue that the job was on after the transition.
queueTransition_destinationQueue :: Lens.Lens' QueueTransition (Core.Maybe Core.Text)
queueTransition_destinationQueue = Lens.lens (\QueueTransition' {destinationQueue} -> destinationQueue) (\s@QueueTransition' {} a -> s {destinationQueue = a} :: QueueTransition)

instance Core.FromJSON QueueTransition where
  parseJSON =
    Core.withObject
      "QueueTransition"
      ( \x ->
          QueueTransition'
            Core.<$> (x Core..:? "sourceQueue")
            Core.<*> (x Core..:? "timestamp")
            Core.<*> (x Core..:? "destinationQueue")
      )

instance Core.Hashable QueueTransition

instance Core.NFData QueueTransition
