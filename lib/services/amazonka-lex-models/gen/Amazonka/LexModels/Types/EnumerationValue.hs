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
-- Module      : Amazonka.LexModels.Types.EnumerationValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexModels.Types.EnumerationValue where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Each slot type can have a set of values. Each enumeration value
-- represents a value the slot type can take.
--
-- For example, a pizza ordering bot could have a slot type that specifies
-- the type of crust that the pizza should have. The slot type could
-- include the values
--
-- -   thick
--
-- -   thin
--
-- -   stuffed
--
-- /See:/ 'newEnumerationValue' smart constructor.
data EnumerationValue = EnumerationValue'
  { -- | Additional values related to the slot type value.
    synonyms :: Prelude.Maybe [Prelude.Text],
    -- | The value of the slot type.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EnumerationValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'synonyms', 'enumerationValue_synonyms' - Additional values related to the slot type value.
--
-- 'value', 'enumerationValue_value' - The value of the slot type.
newEnumerationValue ::
  -- | 'value'
  Prelude.Text ->
  EnumerationValue
newEnumerationValue pValue_ =
  EnumerationValue'
    { synonyms = Prelude.Nothing,
      value = pValue_
    }

-- | Additional values related to the slot type value.
enumerationValue_synonyms :: Lens.Lens' EnumerationValue (Prelude.Maybe [Prelude.Text])
enumerationValue_synonyms = Lens.lens (\EnumerationValue' {synonyms} -> synonyms) (\s@EnumerationValue' {} a -> s {synonyms = a} :: EnumerationValue) Prelude.. Lens.mapping Lens.coerced

-- | The value of the slot type.
enumerationValue_value :: Lens.Lens' EnumerationValue Prelude.Text
enumerationValue_value = Lens.lens (\EnumerationValue' {value} -> value) (\s@EnumerationValue' {} a -> s {value = a} :: EnumerationValue)

instance Core.FromJSON EnumerationValue where
  parseJSON =
    Core.withObject
      "EnumerationValue"
      ( \x ->
          EnumerationValue'
            Prelude.<$> (x Core..:? "synonyms" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "value")
      )

instance Prelude.Hashable EnumerationValue

instance Prelude.NFData EnumerationValue

instance Core.ToJSON EnumerationValue where
  toJSON EnumerationValue' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("synonyms" Core..=) Prelude.<$> synonyms,
            Prelude.Just ("value" Core..= value)
          ]
      )