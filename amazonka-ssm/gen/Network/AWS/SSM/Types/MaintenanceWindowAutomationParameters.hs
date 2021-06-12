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
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowAutomationParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MaintenanceWindowAutomationParameters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The parameters for an AUTOMATION task type.
--
-- /See:/ 'newMaintenanceWindowAutomationParameters' smart constructor.
data MaintenanceWindowAutomationParameters = MaintenanceWindowAutomationParameters'
  { -- | The version of an Automation document to use during task execution.
    documentVersion :: Core.Maybe Core.Text,
    -- | The parameters for the AUTOMATION task.
    --
    -- For information about specifying and updating task parameters, see
    -- RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
    --
    -- @LoggingInfo@ has been deprecated. To specify an S3 bucket to contain
    -- logs, instead use the @OutputS3BucketName@ and @OutputS3KeyPrefix@
    -- options in the @TaskInvocationParameters@ structure. For information
    -- about how Systems Manager handles these options for the supported
    -- maintenance window task types, see
    -- MaintenanceWindowTaskInvocationParameters.
    --
    -- @TaskParameters@ has been deprecated. To specify parameters to pass to a
    -- task when it runs, instead use the @Parameters@ option in the
    -- @TaskInvocationParameters@ structure. For information about how Systems
    -- Manager handles these options for the supported maintenance window task
    -- types, see MaintenanceWindowTaskInvocationParameters.
    --
    -- For AUTOMATION task types, Systems Manager ignores any values specified
    -- for these parameters.
    parameters :: Core.Maybe (Core.HashMap Core.Text [Core.Text])
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'MaintenanceWindowAutomationParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentVersion', 'maintenanceWindowAutomationParameters_documentVersion' - The version of an Automation document to use during task execution.
--
-- 'parameters', 'maintenanceWindowAutomationParameters_parameters' - The parameters for the AUTOMATION task.
--
-- For information about specifying and updating task parameters, see
-- RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
--
-- @LoggingInfo@ has been deprecated. To specify an S3 bucket to contain
-- logs, instead use the @OutputS3BucketName@ and @OutputS3KeyPrefix@
-- options in the @TaskInvocationParameters@ structure. For information
-- about how Systems Manager handles these options for the supported
-- maintenance window task types, see
-- MaintenanceWindowTaskInvocationParameters.
--
-- @TaskParameters@ has been deprecated. To specify parameters to pass to a
-- task when it runs, instead use the @Parameters@ option in the
-- @TaskInvocationParameters@ structure. For information about how Systems
-- Manager handles these options for the supported maintenance window task
-- types, see MaintenanceWindowTaskInvocationParameters.
--
-- For AUTOMATION task types, Systems Manager ignores any values specified
-- for these parameters.
newMaintenanceWindowAutomationParameters ::
  MaintenanceWindowAutomationParameters
newMaintenanceWindowAutomationParameters =
  MaintenanceWindowAutomationParameters'
    { documentVersion =
        Core.Nothing,
      parameters = Core.Nothing
    }

-- | The version of an Automation document to use during task execution.
maintenanceWindowAutomationParameters_documentVersion :: Lens.Lens' MaintenanceWindowAutomationParameters (Core.Maybe Core.Text)
maintenanceWindowAutomationParameters_documentVersion = Lens.lens (\MaintenanceWindowAutomationParameters' {documentVersion} -> documentVersion) (\s@MaintenanceWindowAutomationParameters' {} a -> s {documentVersion = a} :: MaintenanceWindowAutomationParameters)

-- | The parameters for the AUTOMATION task.
--
-- For information about specifying and updating task parameters, see
-- RegisterTaskWithMaintenanceWindow and UpdateMaintenanceWindowTask.
--
-- @LoggingInfo@ has been deprecated. To specify an S3 bucket to contain
-- logs, instead use the @OutputS3BucketName@ and @OutputS3KeyPrefix@
-- options in the @TaskInvocationParameters@ structure. For information
-- about how Systems Manager handles these options for the supported
-- maintenance window task types, see
-- MaintenanceWindowTaskInvocationParameters.
--
-- @TaskParameters@ has been deprecated. To specify parameters to pass to a
-- task when it runs, instead use the @Parameters@ option in the
-- @TaskInvocationParameters@ structure. For information about how Systems
-- Manager handles these options for the supported maintenance window task
-- types, see MaintenanceWindowTaskInvocationParameters.
--
-- For AUTOMATION task types, Systems Manager ignores any values specified
-- for these parameters.
maintenanceWindowAutomationParameters_parameters :: Lens.Lens' MaintenanceWindowAutomationParameters (Core.Maybe (Core.HashMap Core.Text [Core.Text]))
maintenanceWindowAutomationParameters_parameters = Lens.lens (\MaintenanceWindowAutomationParameters' {parameters} -> parameters) (\s@MaintenanceWindowAutomationParameters' {} a -> s {parameters = a} :: MaintenanceWindowAutomationParameters) Core.. Lens.mapping Lens._Coerce

instance
  Core.FromJSON
    MaintenanceWindowAutomationParameters
  where
  parseJSON =
    Core.withObject
      "MaintenanceWindowAutomationParameters"
      ( \x ->
          MaintenanceWindowAutomationParameters'
            Core.<$> (x Core..:? "DocumentVersion")
            Core.<*> (x Core..:? "Parameters" Core..!= Core.mempty)
      )

instance
  Core.Hashable
    MaintenanceWindowAutomationParameters

instance
  Core.NFData
    MaintenanceWindowAutomationParameters

instance
  Core.ToJSON
    MaintenanceWindowAutomationParameters
  where
  toJSON MaintenanceWindowAutomationParameters' {..} =
    Core.object
      ( Core.catMaybes
          [ ("DocumentVersion" Core..=)
              Core.<$> documentVersion,
            ("Parameters" Core..=) Core.<$> parameters
          ]
      )
