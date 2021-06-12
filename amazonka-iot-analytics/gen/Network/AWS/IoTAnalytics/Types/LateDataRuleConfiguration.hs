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
-- Module      : Network.AWS.IoTAnalytics.Types.LateDataRuleConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.LateDataRuleConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types.DeltaTimeSessionWindowConfiguration
import qualified Network.AWS.Lens as Lens

-- | The information needed to configure a delta time session window.
--
-- /See:/ 'newLateDataRuleConfiguration' smart constructor.
data LateDataRuleConfiguration = LateDataRuleConfiguration'
  { -- | The information needed to configure a delta time session window.
    deltaTimeSessionWindowConfiguration :: Core.Maybe DeltaTimeSessionWindowConfiguration
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LateDataRuleConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deltaTimeSessionWindowConfiguration', 'lateDataRuleConfiguration_deltaTimeSessionWindowConfiguration' - The information needed to configure a delta time session window.
newLateDataRuleConfiguration ::
  LateDataRuleConfiguration
newLateDataRuleConfiguration =
  LateDataRuleConfiguration'
    { deltaTimeSessionWindowConfiguration =
        Core.Nothing
    }

-- | The information needed to configure a delta time session window.
lateDataRuleConfiguration_deltaTimeSessionWindowConfiguration :: Lens.Lens' LateDataRuleConfiguration (Core.Maybe DeltaTimeSessionWindowConfiguration)
lateDataRuleConfiguration_deltaTimeSessionWindowConfiguration = Lens.lens (\LateDataRuleConfiguration' {deltaTimeSessionWindowConfiguration} -> deltaTimeSessionWindowConfiguration) (\s@LateDataRuleConfiguration' {} a -> s {deltaTimeSessionWindowConfiguration = a} :: LateDataRuleConfiguration)

instance Core.FromJSON LateDataRuleConfiguration where
  parseJSON =
    Core.withObject
      "LateDataRuleConfiguration"
      ( \x ->
          LateDataRuleConfiguration'
            Core.<$> (x Core..:? "deltaTimeSessionWindowConfiguration")
      )

instance Core.Hashable LateDataRuleConfiguration

instance Core.NFData LateDataRuleConfiguration

instance Core.ToJSON LateDataRuleConfiguration where
  toJSON LateDataRuleConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("deltaTimeSessionWindowConfiguration" Core..=)
              Core.<$> deltaTimeSessionWindowConfiguration
          ]
      )
