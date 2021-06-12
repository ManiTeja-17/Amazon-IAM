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
-- Module      : Network.AWS.SMS.Types.AppValidationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppValidationConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SMS.Types.AppValidationStrategy
import Network.AWS.SMS.Types.SSMValidationParameters

-- | Configuration for validating an application.
--
-- /See:/ 'newAppValidationConfiguration' smart constructor.
data AppValidationConfiguration = AppValidationConfiguration'
  { -- | The validation parameters.
    ssmValidationParameters :: Core.Maybe SSMValidationParameters,
    -- | The validation strategy.
    appValidationStrategy :: Core.Maybe AppValidationStrategy,
    -- | The ID of the validation.
    validationId :: Core.Maybe Core.Text,
    -- | The name of the configuration.
    name :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AppValidationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ssmValidationParameters', 'appValidationConfiguration_ssmValidationParameters' - The validation parameters.
--
-- 'appValidationStrategy', 'appValidationConfiguration_appValidationStrategy' - The validation strategy.
--
-- 'validationId', 'appValidationConfiguration_validationId' - The ID of the validation.
--
-- 'name', 'appValidationConfiguration_name' - The name of the configuration.
newAppValidationConfiguration ::
  AppValidationConfiguration
newAppValidationConfiguration =
  AppValidationConfiguration'
    { ssmValidationParameters =
        Core.Nothing,
      appValidationStrategy = Core.Nothing,
      validationId = Core.Nothing,
      name = Core.Nothing
    }

-- | The validation parameters.
appValidationConfiguration_ssmValidationParameters :: Lens.Lens' AppValidationConfiguration (Core.Maybe SSMValidationParameters)
appValidationConfiguration_ssmValidationParameters = Lens.lens (\AppValidationConfiguration' {ssmValidationParameters} -> ssmValidationParameters) (\s@AppValidationConfiguration' {} a -> s {ssmValidationParameters = a} :: AppValidationConfiguration)

-- | The validation strategy.
appValidationConfiguration_appValidationStrategy :: Lens.Lens' AppValidationConfiguration (Core.Maybe AppValidationStrategy)
appValidationConfiguration_appValidationStrategy = Lens.lens (\AppValidationConfiguration' {appValidationStrategy} -> appValidationStrategy) (\s@AppValidationConfiguration' {} a -> s {appValidationStrategy = a} :: AppValidationConfiguration)

-- | The ID of the validation.
appValidationConfiguration_validationId :: Lens.Lens' AppValidationConfiguration (Core.Maybe Core.Text)
appValidationConfiguration_validationId = Lens.lens (\AppValidationConfiguration' {validationId} -> validationId) (\s@AppValidationConfiguration' {} a -> s {validationId = a} :: AppValidationConfiguration)

-- | The name of the configuration.
appValidationConfiguration_name :: Lens.Lens' AppValidationConfiguration (Core.Maybe Core.Text)
appValidationConfiguration_name = Lens.lens (\AppValidationConfiguration' {name} -> name) (\s@AppValidationConfiguration' {} a -> s {name = a} :: AppValidationConfiguration)

instance Core.FromJSON AppValidationConfiguration where
  parseJSON =
    Core.withObject
      "AppValidationConfiguration"
      ( \x ->
          AppValidationConfiguration'
            Core.<$> (x Core..:? "ssmValidationParameters")
            Core.<*> (x Core..:? "appValidationStrategy")
            Core.<*> (x Core..:? "validationId")
            Core.<*> (x Core..:? "name")
      )

instance Core.Hashable AppValidationConfiguration

instance Core.NFData AppValidationConfiguration

instance Core.ToJSON AppValidationConfiguration where
  toJSON AppValidationConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("ssmValidationParameters" Core..=)
              Core.<$> ssmValidationParameters,
            ("appValidationStrategy" Core..=)
              Core.<$> appValidationStrategy,
            ("validationId" Core..=) Core.<$> validationId,
            ("name" Core..=) Core.<$> name
          ]
      )
