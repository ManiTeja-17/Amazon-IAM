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
-- Module      : Network.AWS.IoT.Types.AuditMitigationActionsTaskMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditMitigationActionsTaskMetadata where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types.AuditMitigationActionsTaskStatus
import qualified Network.AWS.Lens as Lens

-- | Information about an audit mitigation actions task that is returned by
-- @ListAuditMitigationActionsTasks@.
--
-- /See:/ 'newAuditMitigationActionsTaskMetadata' smart constructor.
data AuditMitigationActionsTaskMetadata = AuditMitigationActionsTaskMetadata'
  { -- | The unique identifier for the task.
    taskId :: Core.Maybe Core.Text,
    -- | The time at which the audit mitigation actions task was started.
    startTime :: Core.Maybe Core.POSIX,
    -- | The current state of the audit mitigation actions task.
    taskStatus :: Core.Maybe AuditMitigationActionsTaskStatus
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AuditMitigationActionsTaskMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'taskId', 'auditMitigationActionsTaskMetadata_taskId' - The unique identifier for the task.
--
-- 'startTime', 'auditMitigationActionsTaskMetadata_startTime' - The time at which the audit mitigation actions task was started.
--
-- 'taskStatus', 'auditMitigationActionsTaskMetadata_taskStatus' - The current state of the audit mitigation actions task.
newAuditMitigationActionsTaskMetadata ::
  AuditMitigationActionsTaskMetadata
newAuditMitigationActionsTaskMetadata =
  AuditMitigationActionsTaskMetadata'
    { taskId =
        Core.Nothing,
      startTime = Core.Nothing,
      taskStatus = Core.Nothing
    }

-- | The unique identifier for the task.
auditMitigationActionsTaskMetadata_taskId :: Lens.Lens' AuditMitigationActionsTaskMetadata (Core.Maybe Core.Text)
auditMitigationActionsTaskMetadata_taskId = Lens.lens (\AuditMitigationActionsTaskMetadata' {taskId} -> taskId) (\s@AuditMitigationActionsTaskMetadata' {} a -> s {taskId = a} :: AuditMitigationActionsTaskMetadata)

-- | The time at which the audit mitigation actions task was started.
auditMitigationActionsTaskMetadata_startTime :: Lens.Lens' AuditMitigationActionsTaskMetadata (Core.Maybe Core.UTCTime)
auditMitigationActionsTaskMetadata_startTime = Lens.lens (\AuditMitigationActionsTaskMetadata' {startTime} -> startTime) (\s@AuditMitigationActionsTaskMetadata' {} a -> s {startTime = a} :: AuditMitigationActionsTaskMetadata) Core.. Lens.mapping Core._Time

-- | The current state of the audit mitigation actions task.
auditMitigationActionsTaskMetadata_taskStatus :: Lens.Lens' AuditMitigationActionsTaskMetadata (Core.Maybe AuditMitigationActionsTaskStatus)
auditMitigationActionsTaskMetadata_taskStatus = Lens.lens (\AuditMitigationActionsTaskMetadata' {taskStatus} -> taskStatus) (\s@AuditMitigationActionsTaskMetadata' {} a -> s {taskStatus = a} :: AuditMitigationActionsTaskMetadata)

instance
  Core.FromJSON
    AuditMitigationActionsTaskMetadata
  where
  parseJSON =
    Core.withObject
      "AuditMitigationActionsTaskMetadata"
      ( \x ->
          AuditMitigationActionsTaskMetadata'
            Core.<$> (x Core..:? "taskId")
            Core.<*> (x Core..:? "startTime")
            Core.<*> (x Core..:? "taskStatus")
      )

instance
  Core.Hashable
    AuditMitigationActionsTaskMetadata

instance
  Core.NFData
    AuditMitigationActionsTaskMetadata
