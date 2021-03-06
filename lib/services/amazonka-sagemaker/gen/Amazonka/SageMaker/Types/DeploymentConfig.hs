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
-- Module      : Amazonka.SageMaker.Types.DeploymentConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.DeploymentConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMaker.Types.AutoRollbackConfig
import Amazonka.SageMaker.Types.BlueGreenUpdatePolicy

-- | Currently, the @DeploymentConfig@ API is not supported.
--
-- /See:/ 'newDeploymentConfig' smart constructor.
data DeploymentConfig = DeploymentConfig'
  { autoRollbackConfiguration :: Prelude.Maybe AutoRollbackConfig,
    blueGreenUpdatePolicy :: BlueGreenUpdatePolicy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeploymentConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoRollbackConfiguration', 'deploymentConfig_autoRollbackConfiguration' -
--
-- 'blueGreenUpdatePolicy', 'deploymentConfig_blueGreenUpdatePolicy' -
newDeploymentConfig ::
  -- | 'blueGreenUpdatePolicy'
  BlueGreenUpdatePolicy ->
  DeploymentConfig
newDeploymentConfig pBlueGreenUpdatePolicy_ =
  DeploymentConfig'
    { autoRollbackConfiguration =
        Prelude.Nothing,
      blueGreenUpdatePolicy = pBlueGreenUpdatePolicy_
    }

-- |
deploymentConfig_autoRollbackConfiguration :: Lens.Lens' DeploymentConfig (Prelude.Maybe AutoRollbackConfig)
deploymentConfig_autoRollbackConfiguration = Lens.lens (\DeploymentConfig' {autoRollbackConfiguration} -> autoRollbackConfiguration) (\s@DeploymentConfig' {} a -> s {autoRollbackConfiguration = a} :: DeploymentConfig)

-- |
deploymentConfig_blueGreenUpdatePolicy :: Lens.Lens' DeploymentConfig BlueGreenUpdatePolicy
deploymentConfig_blueGreenUpdatePolicy = Lens.lens (\DeploymentConfig' {blueGreenUpdatePolicy} -> blueGreenUpdatePolicy) (\s@DeploymentConfig' {} a -> s {blueGreenUpdatePolicy = a} :: DeploymentConfig)

instance Core.FromJSON DeploymentConfig where
  parseJSON =
    Core.withObject
      "DeploymentConfig"
      ( \x ->
          DeploymentConfig'
            Prelude.<$> (x Core..:? "AutoRollbackConfiguration")
            Prelude.<*> (x Core..: "BlueGreenUpdatePolicy")
      )

instance Prelude.Hashable DeploymentConfig where
  hashWithSalt _salt DeploymentConfig' {..} =
    _salt
      `Prelude.hashWithSalt` autoRollbackConfiguration
      `Prelude.hashWithSalt` blueGreenUpdatePolicy

instance Prelude.NFData DeploymentConfig where
  rnf DeploymentConfig' {..} =
    Prelude.rnf autoRollbackConfiguration
      `Prelude.seq` Prelude.rnf blueGreenUpdatePolicy

instance Core.ToJSON DeploymentConfig where
  toJSON DeploymentConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AutoRollbackConfiguration" Core..=)
              Prelude.<$> autoRollbackConfiguration,
            Prelude.Just
              ( "BlueGreenUpdatePolicy"
                  Core..= blueGreenUpdatePolicy
              )
          ]
      )
