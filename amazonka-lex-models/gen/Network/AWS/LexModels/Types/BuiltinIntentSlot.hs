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
-- Module      : Network.AWS.LexModels.Types.BuiltinIntentSlot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.BuiltinIntentSlot where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Provides information about a slot used in a built-in intent.
--
-- /See:/ 'newBuiltinIntentSlot' smart constructor.
data BuiltinIntentSlot = BuiltinIntentSlot'
  { -- | A list of the slots defined for the intent.
    name :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BuiltinIntentSlot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'builtinIntentSlot_name' - A list of the slots defined for the intent.
newBuiltinIntentSlot ::
  BuiltinIntentSlot
newBuiltinIntentSlot =
  BuiltinIntentSlot' {name = Core.Nothing}

-- | A list of the slots defined for the intent.
builtinIntentSlot_name :: Lens.Lens' BuiltinIntentSlot (Core.Maybe Core.Text)
builtinIntentSlot_name = Lens.lens (\BuiltinIntentSlot' {name} -> name) (\s@BuiltinIntentSlot' {} a -> s {name = a} :: BuiltinIntentSlot)

instance Core.FromJSON BuiltinIntentSlot where
  parseJSON =
    Core.withObject
      "BuiltinIntentSlot"
      ( \x ->
          BuiltinIntentSlot' Core.<$> (x Core..:? "name")
      )

instance Core.Hashable BuiltinIntentSlot

instance Core.NFData BuiltinIntentSlot
