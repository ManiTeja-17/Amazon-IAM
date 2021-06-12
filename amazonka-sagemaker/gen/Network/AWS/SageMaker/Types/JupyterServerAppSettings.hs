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
-- Module      : Network.AWS.SageMaker.Types.JupyterServerAppSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.JupyterServerAppSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SageMaker.Types.ResourceSpec

-- | The JupyterServer app settings.
--
-- /See:/ 'newJupyterServerAppSettings' smart constructor.
data JupyterServerAppSettings = JupyterServerAppSettings'
  { -- | The default instance type and the Amazon Resource Name (ARN) of the
    -- default SageMaker image used by the JupyterServer app.
    defaultResourceSpec :: Core.Maybe ResourceSpec
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'JupyterServerAppSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultResourceSpec', 'jupyterServerAppSettings_defaultResourceSpec' - The default instance type and the Amazon Resource Name (ARN) of the
-- default SageMaker image used by the JupyterServer app.
newJupyterServerAppSettings ::
  JupyterServerAppSettings
newJupyterServerAppSettings =
  JupyterServerAppSettings'
    { defaultResourceSpec =
        Core.Nothing
    }

-- | The default instance type and the Amazon Resource Name (ARN) of the
-- default SageMaker image used by the JupyterServer app.
jupyterServerAppSettings_defaultResourceSpec :: Lens.Lens' JupyterServerAppSettings (Core.Maybe ResourceSpec)
jupyterServerAppSettings_defaultResourceSpec = Lens.lens (\JupyterServerAppSettings' {defaultResourceSpec} -> defaultResourceSpec) (\s@JupyterServerAppSettings' {} a -> s {defaultResourceSpec = a} :: JupyterServerAppSettings)

instance Core.FromJSON JupyterServerAppSettings where
  parseJSON =
    Core.withObject
      "JupyterServerAppSettings"
      ( \x ->
          JupyterServerAppSettings'
            Core.<$> (x Core..:? "DefaultResourceSpec")
      )

instance Core.Hashable JupyterServerAppSettings

instance Core.NFData JupyterServerAppSettings

instance Core.ToJSON JupyterServerAppSettings where
  toJSON JupyterServerAppSettings' {..} =
    Core.object
      ( Core.catMaybes
          [ ("DefaultResourceSpec" Core..=)
              Core.<$> defaultResourceSpec
          ]
      )
