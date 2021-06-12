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
-- Module      : Network.AWS.SageMaker.Types.AutoRollbackConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoRollbackConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SageMaker.Types.Alarm

-- | Currently, the @AutoRollbackConfig@ API is not supported.
--
-- /See:/ 'newAutoRollbackConfig' smart constructor.
data AutoRollbackConfig = AutoRollbackConfig'
  { alarms :: Core.Maybe (Core.NonEmpty Alarm)
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AutoRollbackConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alarms', 'autoRollbackConfig_alarms' -
newAutoRollbackConfig ::
  AutoRollbackConfig
newAutoRollbackConfig =
  AutoRollbackConfig' {alarms = Core.Nothing}

-- |
autoRollbackConfig_alarms :: Lens.Lens' AutoRollbackConfig (Core.Maybe (Core.NonEmpty Alarm))
autoRollbackConfig_alarms = Lens.lens (\AutoRollbackConfig' {alarms} -> alarms) (\s@AutoRollbackConfig' {} a -> s {alarms = a} :: AutoRollbackConfig) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON AutoRollbackConfig where
  parseJSON =
    Core.withObject
      "AutoRollbackConfig"
      ( \x ->
          AutoRollbackConfig' Core.<$> (x Core..:? "Alarms")
      )

instance Core.Hashable AutoRollbackConfig

instance Core.NFData AutoRollbackConfig

instance Core.ToJSON AutoRollbackConfig where
  toJSON AutoRollbackConfig' {..} =
    Core.object
      (Core.catMaybes [("Alarms" Core..=) Core.<$> alarms])
