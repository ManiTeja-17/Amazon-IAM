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
-- Module      : Network.AWS.EMR.Types.SupportedProductConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.SupportedProductConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The list of supported product configurations that allow user-supplied
-- arguments. EMR accepts these arguments and forwards them to the
-- corresponding installation script as bootstrap action arguments.
--
-- /See:/ 'newSupportedProductConfig' smart constructor.
data SupportedProductConfig = SupportedProductConfig'
  { -- | The list of user-supplied arguments.
    args :: Core.Maybe [Core.Text],
    -- | The name of the product configuration.
    name :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SupportedProductConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'args', 'supportedProductConfig_args' - The list of user-supplied arguments.
--
-- 'name', 'supportedProductConfig_name' - The name of the product configuration.
newSupportedProductConfig ::
  SupportedProductConfig
newSupportedProductConfig =
  SupportedProductConfig'
    { args = Core.Nothing,
      name = Core.Nothing
    }

-- | The list of user-supplied arguments.
supportedProductConfig_args :: Lens.Lens' SupportedProductConfig (Core.Maybe [Core.Text])
supportedProductConfig_args = Lens.lens (\SupportedProductConfig' {args} -> args) (\s@SupportedProductConfig' {} a -> s {args = a} :: SupportedProductConfig) Core.. Lens.mapping Lens._Coerce

-- | The name of the product configuration.
supportedProductConfig_name :: Lens.Lens' SupportedProductConfig (Core.Maybe Core.Text)
supportedProductConfig_name = Lens.lens (\SupportedProductConfig' {name} -> name) (\s@SupportedProductConfig' {} a -> s {name = a} :: SupportedProductConfig)

instance Core.Hashable SupportedProductConfig

instance Core.NFData SupportedProductConfig

instance Core.ToJSON SupportedProductConfig where
  toJSON SupportedProductConfig' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Args" Core..=) Core.<$> args,
            ("Name" Core..=) Core.<$> name
          ]
      )
