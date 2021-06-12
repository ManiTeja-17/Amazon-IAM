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
-- Module      : Network.AWS.OpsWorks.Types.Command
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.Command where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Describes a command.
--
-- /See:/ 'newCommand' smart constructor.
data Command = Command'
  { -- | The URL of the command log.
    logUrl :: Core.Maybe Core.Text,
    -- | The command status:
    --
    -- -   failed
    --
    -- -   successful
    --
    -- -   skipped
    --
    -- -   pending
    status :: Core.Maybe Core.Text,
    -- | The command deployment ID.
    deploymentId :: Core.Maybe Core.Text,
    -- | The ID of the instance where the command was executed.
    instanceId :: Core.Maybe Core.Text,
    -- | Date when the command completed.
    completedAt :: Core.Maybe Core.Text,
    -- | Date and time when the command was run.
    createdAt :: Core.Maybe Core.Text,
    -- | The command exit code.
    exitCode :: Core.Maybe Core.Int,
    -- | The command ID.
    commandId :: Core.Maybe Core.Text,
    -- | Date and time when the command was acknowledged.
    acknowledgedAt :: Core.Maybe Core.Text,
    -- | The command type:
    --
    -- -   @configure@
    --
    -- -   @deploy@
    --
    -- -   @execute_recipes@
    --
    -- -   @install_dependencies@
    --
    -- -   @restart@
    --
    -- -   @rollback@
    --
    -- -   @setup@
    --
    -- -   @start@
    --
    -- -   @stop@
    --
    -- -   @undeploy@
    --
    -- -   @update_custom_cookbooks@
    --
    -- -   @update_dependencies@
    type' :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Command' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logUrl', 'command_logUrl' - The URL of the command log.
--
-- 'status', 'command_status' - The command status:
--
-- -   failed
--
-- -   successful
--
-- -   skipped
--
-- -   pending
--
-- 'deploymentId', 'command_deploymentId' - The command deployment ID.
--
-- 'instanceId', 'command_instanceId' - The ID of the instance where the command was executed.
--
-- 'completedAt', 'command_completedAt' - Date when the command completed.
--
-- 'createdAt', 'command_createdAt' - Date and time when the command was run.
--
-- 'exitCode', 'command_exitCode' - The command exit code.
--
-- 'commandId', 'command_commandId' - The command ID.
--
-- 'acknowledgedAt', 'command_acknowledgedAt' - Date and time when the command was acknowledged.
--
-- 'type'', 'command_type' - The command type:
--
-- -   @configure@
--
-- -   @deploy@
--
-- -   @execute_recipes@
--
-- -   @install_dependencies@
--
-- -   @restart@
--
-- -   @rollback@
--
-- -   @setup@
--
-- -   @start@
--
-- -   @stop@
--
-- -   @undeploy@
--
-- -   @update_custom_cookbooks@
--
-- -   @update_dependencies@
newCommand ::
  Command
newCommand =
  Command'
    { logUrl = Core.Nothing,
      status = Core.Nothing,
      deploymentId = Core.Nothing,
      instanceId = Core.Nothing,
      completedAt = Core.Nothing,
      createdAt = Core.Nothing,
      exitCode = Core.Nothing,
      commandId = Core.Nothing,
      acknowledgedAt = Core.Nothing,
      type' = Core.Nothing
    }

-- | The URL of the command log.
command_logUrl :: Lens.Lens' Command (Core.Maybe Core.Text)
command_logUrl = Lens.lens (\Command' {logUrl} -> logUrl) (\s@Command' {} a -> s {logUrl = a} :: Command)

-- | The command status:
--
-- -   failed
--
-- -   successful
--
-- -   skipped
--
-- -   pending
command_status :: Lens.Lens' Command (Core.Maybe Core.Text)
command_status = Lens.lens (\Command' {status} -> status) (\s@Command' {} a -> s {status = a} :: Command)

-- | The command deployment ID.
command_deploymentId :: Lens.Lens' Command (Core.Maybe Core.Text)
command_deploymentId = Lens.lens (\Command' {deploymentId} -> deploymentId) (\s@Command' {} a -> s {deploymentId = a} :: Command)

-- | The ID of the instance where the command was executed.
command_instanceId :: Lens.Lens' Command (Core.Maybe Core.Text)
command_instanceId = Lens.lens (\Command' {instanceId} -> instanceId) (\s@Command' {} a -> s {instanceId = a} :: Command)

-- | Date when the command completed.
command_completedAt :: Lens.Lens' Command (Core.Maybe Core.Text)
command_completedAt = Lens.lens (\Command' {completedAt} -> completedAt) (\s@Command' {} a -> s {completedAt = a} :: Command)

-- | Date and time when the command was run.
command_createdAt :: Lens.Lens' Command (Core.Maybe Core.Text)
command_createdAt = Lens.lens (\Command' {createdAt} -> createdAt) (\s@Command' {} a -> s {createdAt = a} :: Command)

-- | The command exit code.
command_exitCode :: Lens.Lens' Command (Core.Maybe Core.Int)
command_exitCode = Lens.lens (\Command' {exitCode} -> exitCode) (\s@Command' {} a -> s {exitCode = a} :: Command)

-- | The command ID.
command_commandId :: Lens.Lens' Command (Core.Maybe Core.Text)
command_commandId = Lens.lens (\Command' {commandId} -> commandId) (\s@Command' {} a -> s {commandId = a} :: Command)

-- | Date and time when the command was acknowledged.
command_acknowledgedAt :: Lens.Lens' Command (Core.Maybe Core.Text)
command_acknowledgedAt = Lens.lens (\Command' {acknowledgedAt} -> acknowledgedAt) (\s@Command' {} a -> s {acknowledgedAt = a} :: Command)

-- | The command type:
--
-- -   @configure@
--
-- -   @deploy@
--
-- -   @execute_recipes@
--
-- -   @install_dependencies@
--
-- -   @restart@
--
-- -   @rollback@
--
-- -   @setup@
--
-- -   @start@
--
-- -   @stop@
--
-- -   @undeploy@
--
-- -   @update_custom_cookbooks@
--
-- -   @update_dependencies@
command_type :: Lens.Lens' Command (Core.Maybe Core.Text)
command_type = Lens.lens (\Command' {type'} -> type') (\s@Command' {} a -> s {type' = a} :: Command)

instance Core.FromJSON Command where
  parseJSON =
    Core.withObject
      "Command"
      ( \x ->
          Command'
            Core.<$> (x Core..:? "LogUrl")
            Core.<*> (x Core..:? "Status")
            Core.<*> (x Core..:? "DeploymentId")
            Core.<*> (x Core..:? "InstanceId")
            Core.<*> (x Core..:? "CompletedAt")
            Core.<*> (x Core..:? "CreatedAt")
            Core.<*> (x Core..:? "ExitCode")
            Core.<*> (x Core..:? "CommandId")
            Core.<*> (x Core..:? "AcknowledgedAt")
            Core.<*> (x Core..:? "Type")
      )

instance Core.Hashable Command

instance Core.NFData Command
