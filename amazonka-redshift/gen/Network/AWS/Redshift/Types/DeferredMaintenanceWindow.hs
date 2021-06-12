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
-- Module      : Network.AWS.Redshift.Types.DeferredMaintenanceWindow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.DeferredMaintenanceWindow where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Internal

-- | Describes a deferred maintenance window
--
-- /See:/ 'newDeferredMaintenanceWindow' smart constructor.
data DeferredMaintenanceWindow = DeferredMaintenanceWindow'
  { -- | A unique identifier for the maintenance window.
    deferMaintenanceIdentifier :: Core.Maybe Core.Text,
    -- | A timestamp for the beginning of the time period when we defer
    -- maintenance.
    deferMaintenanceStartTime :: Core.Maybe Core.ISO8601,
    -- | A timestamp for the end of the time period when we defer maintenance.
    deferMaintenanceEndTime :: Core.Maybe Core.ISO8601
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeferredMaintenanceWindow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deferMaintenanceIdentifier', 'deferredMaintenanceWindow_deferMaintenanceIdentifier' - A unique identifier for the maintenance window.
--
-- 'deferMaintenanceStartTime', 'deferredMaintenanceWindow_deferMaintenanceStartTime' - A timestamp for the beginning of the time period when we defer
-- maintenance.
--
-- 'deferMaintenanceEndTime', 'deferredMaintenanceWindow_deferMaintenanceEndTime' - A timestamp for the end of the time period when we defer maintenance.
newDeferredMaintenanceWindow ::
  DeferredMaintenanceWindow
newDeferredMaintenanceWindow =
  DeferredMaintenanceWindow'
    { deferMaintenanceIdentifier =
        Core.Nothing,
      deferMaintenanceStartTime = Core.Nothing,
      deferMaintenanceEndTime = Core.Nothing
    }

-- | A unique identifier for the maintenance window.
deferredMaintenanceWindow_deferMaintenanceIdentifier :: Lens.Lens' DeferredMaintenanceWindow (Core.Maybe Core.Text)
deferredMaintenanceWindow_deferMaintenanceIdentifier = Lens.lens (\DeferredMaintenanceWindow' {deferMaintenanceIdentifier} -> deferMaintenanceIdentifier) (\s@DeferredMaintenanceWindow' {} a -> s {deferMaintenanceIdentifier = a} :: DeferredMaintenanceWindow)

-- | A timestamp for the beginning of the time period when we defer
-- maintenance.
deferredMaintenanceWindow_deferMaintenanceStartTime :: Lens.Lens' DeferredMaintenanceWindow (Core.Maybe Core.UTCTime)
deferredMaintenanceWindow_deferMaintenanceStartTime = Lens.lens (\DeferredMaintenanceWindow' {deferMaintenanceStartTime} -> deferMaintenanceStartTime) (\s@DeferredMaintenanceWindow' {} a -> s {deferMaintenanceStartTime = a} :: DeferredMaintenanceWindow) Core.. Lens.mapping Core._Time

-- | A timestamp for the end of the time period when we defer maintenance.
deferredMaintenanceWindow_deferMaintenanceEndTime :: Lens.Lens' DeferredMaintenanceWindow (Core.Maybe Core.UTCTime)
deferredMaintenanceWindow_deferMaintenanceEndTime = Lens.lens (\DeferredMaintenanceWindow' {deferMaintenanceEndTime} -> deferMaintenanceEndTime) (\s@DeferredMaintenanceWindow' {} a -> s {deferMaintenanceEndTime = a} :: DeferredMaintenanceWindow) Core.. Lens.mapping Core._Time

instance Core.FromXML DeferredMaintenanceWindow where
  parseXML x =
    DeferredMaintenanceWindow'
      Core.<$> (x Core..@? "DeferMaintenanceIdentifier")
      Core.<*> (x Core..@? "DeferMaintenanceStartTime")
      Core.<*> (x Core..@? "DeferMaintenanceEndTime")

instance Core.Hashable DeferredMaintenanceWindow

instance Core.NFData DeferredMaintenanceWindow
