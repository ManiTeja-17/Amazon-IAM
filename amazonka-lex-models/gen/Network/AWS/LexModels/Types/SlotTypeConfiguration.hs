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
-- Module      : Network.AWS.LexModels.Types.SlotTypeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.SlotTypeConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LexModels.Types.SlotTypeRegexConfiguration

-- | Provides configuration information for a slot type.
--
-- /See:/ 'newSlotTypeConfiguration' smart constructor.
data SlotTypeConfiguration = SlotTypeConfiguration'
  { -- | A regular expression used to validate the value of a slot.
    regexConfiguration :: Core.Maybe SlotTypeRegexConfiguration
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SlotTypeConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'regexConfiguration', 'slotTypeConfiguration_regexConfiguration' - A regular expression used to validate the value of a slot.
newSlotTypeConfiguration ::
  SlotTypeConfiguration
newSlotTypeConfiguration =
  SlotTypeConfiguration'
    { regexConfiguration =
        Core.Nothing
    }

-- | A regular expression used to validate the value of a slot.
slotTypeConfiguration_regexConfiguration :: Lens.Lens' SlotTypeConfiguration (Core.Maybe SlotTypeRegexConfiguration)
slotTypeConfiguration_regexConfiguration = Lens.lens (\SlotTypeConfiguration' {regexConfiguration} -> regexConfiguration) (\s@SlotTypeConfiguration' {} a -> s {regexConfiguration = a} :: SlotTypeConfiguration)

instance Core.FromJSON SlotTypeConfiguration where
  parseJSON =
    Core.withObject
      "SlotTypeConfiguration"
      ( \x ->
          SlotTypeConfiguration'
            Core.<$> (x Core..:? "regexConfiguration")
      )

instance Core.Hashable SlotTypeConfiguration

instance Core.NFData SlotTypeConfiguration

instance Core.ToJSON SlotTypeConfiguration where
  toJSON SlotTypeConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("regexConfiguration" Core..=)
              Core.<$> regexConfiguration
          ]
      )
