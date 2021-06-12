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
-- Module      : Network.AWS.EC2.Types.RunInstancesMonitoringEnabled
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RunInstancesMonitoringEnabled where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Describes the monitoring of an instance.
--
-- /See:/ 'newRunInstancesMonitoringEnabled' smart constructor.
data RunInstancesMonitoringEnabled = RunInstancesMonitoringEnabled'
  { -- | Indicates whether detailed monitoring is enabled. Otherwise, basic
    -- monitoring is enabled.
    enabled :: Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RunInstancesMonitoringEnabled' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'runInstancesMonitoringEnabled_enabled' - Indicates whether detailed monitoring is enabled. Otherwise, basic
-- monitoring is enabled.
newRunInstancesMonitoringEnabled ::
  -- | 'enabled'
  Core.Bool ->
  RunInstancesMonitoringEnabled
newRunInstancesMonitoringEnabled pEnabled_ =
  RunInstancesMonitoringEnabled' {enabled = pEnabled_}

-- | Indicates whether detailed monitoring is enabled. Otherwise, basic
-- monitoring is enabled.
runInstancesMonitoringEnabled_enabled :: Lens.Lens' RunInstancesMonitoringEnabled Core.Bool
runInstancesMonitoringEnabled_enabled = Lens.lens (\RunInstancesMonitoringEnabled' {enabled} -> enabled) (\s@RunInstancesMonitoringEnabled' {} a -> s {enabled = a} :: RunInstancesMonitoringEnabled)

instance Core.FromXML RunInstancesMonitoringEnabled where
  parseXML x =
    RunInstancesMonitoringEnabled'
      Core.<$> (x Core..@ "enabled")

instance Core.Hashable RunInstancesMonitoringEnabled

instance Core.NFData RunInstancesMonitoringEnabled

instance Core.ToQuery RunInstancesMonitoringEnabled where
  toQuery RunInstancesMonitoringEnabled' {..} =
    Core.mconcat ["Enabled" Core.=: enabled]
