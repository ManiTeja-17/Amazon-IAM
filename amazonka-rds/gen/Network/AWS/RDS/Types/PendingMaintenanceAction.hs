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
-- Module      : Network.AWS.RDS.Types.PendingMaintenanceAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.PendingMaintenanceAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Provides information about a pending maintenance action for a resource.
--
-- /See:/ 'newPendingMaintenanceAction' smart constructor.
data PendingMaintenanceAction = PendingMaintenanceAction'
  { -- | The date when the maintenance action is automatically applied.
    --
    -- On this date, the maintenance action is applied to the resource as soon
    -- as possible, regardless of the maintenance window for the resource.
    -- There might be a delay of one or more days from this date before the
    -- maintenance action is applied.
    forcedApplyDate :: Core.Maybe Core.ISO8601,
    -- | Indicates the type of opt-in request that has been received for the
    -- resource.
    optInStatus :: Core.Maybe Core.Text,
    -- | The date of the maintenance window when the action is applied. The
    -- maintenance action is applied to the resource during its first
    -- maintenance window after this date.
    autoAppliedAfterDate :: Core.Maybe Core.ISO8601,
    -- | The effective date when the pending maintenance action is applied to the
    -- resource. This date takes into account opt-in requests received from the
    -- @ApplyPendingMaintenanceAction@ API, the @AutoAppliedAfterDate@, and the
    -- @ForcedApplyDate@. This value is blank if an opt-in request has not been
    -- received and nothing has been specified as @AutoAppliedAfterDate@ or
    -- @ForcedApplyDate@.
    currentApplyDate :: Core.Maybe Core.ISO8601,
    -- | The type of pending maintenance action that is available for the
    -- resource. Valid actions are @system-update@, @db-upgrade@,
    -- @hardware-maintenance@, and @ca-certificate-rotation@.
    action :: Core.Maybe Core.Text,
    -- | A description providing more detail about the maintenance action.
    description :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PendingMaintenanceAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'forcedApplyDate', 'pendingMaintenanceAction_forcedApplyDate' - The date when the maintenance action is automatically applied.
--
-- On this date, the maintenance action is applied to the resource as soon
-- as possible, regardless of the maintenance window for the resource.
-- There might be a delay of one or more days from this date before the
-- maintenance action is applied.
--
-- 'optInStatus', 'pendingMaintenanceAction_optInStatus' - Indicates the type of opt-in request that has been received for the
-- resource.
--
-- 'autoAppliedAfterDate', 'pendingMaintenanceAction_autoAppliedAfterDate' - The date of the maintenance window when the action is applied. The
-- maintenance action is applied to the resource during its first
-- maintenance window after this date.
--
-- 'currentApplyDate', 'pendingMaintenanceAction_currentApplyDate' - The effective date when the pending maintenance action is applied to the
-- resource. This date takes into account opt-in requests received from the
-- @ApplyPendingMaintenanceAction@ API, the @AutoAppliedAfterDate@, and the
-- @ForcedApplyDate@. This value is blank if an opt-in request has not been
-- received and nothing has been specified as @AutoAppliedAfterDate@ or
-- @ForcedApplyDate@.
--
-- 'action', 'pendingMaintenanceAction_action' - The type of pending maintenance action that is available for the
-- resource. Valid actions are @system-update@, @db-upgrade@,
-- @hardware-maintenance@, and @ca-certificate-rotation@.
--
-- 'description', 'pendingMaintenanceAction_description' - A description providing more detail about the maintenance action.
newPendingMaintenanceAction ::
  PendingMaintenanceAction
newPendingMaintenanceAction =
  PendingMaintenanceAction'
    { forcedApplyDate =
        Core.Nothing,
      optInStatus = Core.Nothing,
      autoAppliedAfterDate = Core.Nothing,
      currentApplyDate = Core.Nothing,
      action = Core.Nothing,
      description = Core.Nothing
    }

-- | The date when the maintenance action is automatically applied.
--
-- On this date, the maintenance action is applied to the resource as soon
-- as possible, regardless of the maintenance window for the resource.
-- There might be a delay of one or more days from this date before the
-- maintenance action is applied.
pendingMaintenanceAction_forcedApplyDate :: Lens.Lens' PendingMaintenanceAction (Core.Maybe Core.UTCTime)
pendingMaintenanceAction_forcedApplyDate = Lens.lens (\PendingMaintenanceAction' {forcedApplyDate} -> forcedApplyDate) (\s@PendingMaintenanceAction' {} a -> s {forcedApplyDate = a} :: PendingMaintenanceAction) Core.. Lens.mapping Core._Time

-- | Indicates the type of opt-in request that has been received for the
-- resource.
pendingMaintenanceAction_optInStatus :: Lens.Lens' PendingMaintenanceAction (Core.Maybe Core.Text)
pendingMaintenanceAction_optInStatus = Lens.lens (\PendingMaintenanceAction' {optInStatus} -> optInStatus) (\s@PendingMaintenanceAction' {} a -> s {optInStatus = a} :: PendingMaintenanceAction)

-- | The date of the maintenance window when the action is applied. The
-- maintenance action is applied to the resource during its first
-- maintenance window after this date.
pendingMaintenanceAction_autoAppliedAfterDate :: Lens.Lens' PendingMaintenanceAction (Core.Maybe Core.UTCTime)
pendingMaintenanceAction_autoAppliedAfterDate = Lens.lens (\PendingMaintenanceAction' {autoAppliedAfterDate} -> autoAppliedAfterDate) (\s@PendingMaintenanceAction' {} a -> s {autoAppliedAfterDate = a} :: PendingMaintenanceAction) Core.. Lens.mapping Core._Time

-- | The effective date when the pending maintenance action is applied to the
-- resource. This date takes into account opt-in requests received from the
-- @ApplyPendingMaintenanceAction@ API, the @AutoAppliedAfterDate@, and the
-- @ForcedApplyDate@. This value is blank if an opt-in request has not been
-- received and nothing has been specified as @AutoAppliedAfterDate@ or
-- @ForcedApplyDate@.
pendingMaintenanceAction_currentApplyDate :: Lens.Lens' PendingMaintenanceAction (Core.Maybe Core.UTCTime)
pendingMaintenanceAction_currentApplyDate = Lens.lens (\PendingMaintenanceAction' {currentApplyDate} -> currentApplyDate) (\s@PendingMaintenanceAction' {} a -> s {currentApplyDate = a} :: PendingMaintenanceAction) Core.. Lens.mapping Core._Time

-- | The type of pending maintenance action that is available for the
-- resource. Valid actions are @system-update@, @db-upgrade@,
-- @hardware-maintenance@, and @ca-certificate-rotation@.
pendingMaintenanceAction_action :: Lens.Lens' PendingMaintenanceAction (Core.Maybe Core.Text)
pendingMaintenanceAction_action = Lens.lens (\PendingMaintenanceAction' {action} -> action) (\s@PendingMaintenanceAction' {} a -> s {action = a} :: PendingMaintenanceAction)

-- | A description providing more detail about the maintenance action.
pendingMaintenanceAction_description :: Lens.Lens' PendingMaintenanceAction (Core.Maybe Core.Text)
pendingMaintenanceAction_description = Lens.lens (\PendingMaintenanceAction' {description} -> description) (\s@PendingMaintenanceAction' {} a -> s {description = a} :: PendingMaintenanceAction)

instance Core.FromXML PendingMaintenanceAction where
  parseXML x =
    PendingMaintenanceAction'
      Core.<$> (x Core..@? "ForcedApplyDate")
      Core.<*> (x Core..@? "OptInStatus")
      Core.<*> (x Core..@? "AutoAppliedAfterDate")
      Core.<*> (x Core..@? "CurrentApplyDate")
      Core.<*> (x Core..@? "Action")
      Core.<*> (x Core..@? "Description")

instance Core.Hashable PendingMaintenanceAction

instance Core.NFData PendingMaintenanceAction
