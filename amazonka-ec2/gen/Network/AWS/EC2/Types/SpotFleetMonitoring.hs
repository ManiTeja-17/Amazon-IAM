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
-- Module      : Network.AWS.EC2.Types.SpotFleetMonitoring
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SpotFleetMonitoring where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Describes whether monitoring is enabled.
--
-- /See:/ 'newSpotFleetMonitoring' smart constructor.
data SpotFleetMonitoring = SpotFleetMonitoring'
  { -- | Enables monitoring for the instance.
    --
    -- Default: @false@
    enabled :: Core.Maybe Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SpotFleetMonitoring' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'spotFleetMonitoring_enabled' - Enables monitoring for the instance.
--
-- Default: @false@
newSpotFleetMonitoring ::
  SpotFleetMonitoring
newSpotFleetMonitoring =
  SpotFleetMonitoring' {enabled = Core.Nothing}

-- | Enables monitoring for the instance.
--
-- Default: @false@
spotFleetMonitoring_enabled :: Lens.Lens' SpotFleetMonitoring (Core.Maybe Core.Bool)
spotFleetMonitoring_enabled = Lens.lens (\SpotFleetMonitoring' {enabled} -> enabled) (\s@SpotFleetMonitoring' {} a -> s {enabled = a} :: SpotFleetMonitoring)

instance Core.FromXML SpotFleetMonitoring where
  parseXML x =
    SpotFleetMonitoring'
      Core.<$> (x Core..@? "enabled")

instance Core.Hashable SpotFleetMonitoring

instance Core.NFData SpotFleetMonitoring

instance Core.ToQuery SpotFleetMonitoring where
  toQuery SpotFleetMonitoring' {..} =
    Core.mconcat ["Enabled" Core.=: enabled]
