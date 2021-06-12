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
-- Module      : Network.AWS.LexModels.Types.Intent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.Intent where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Identifies the specific version of an intent.
--
-- /See:/ 'newIntent' smart constructor.
data Intent = Intent'
  { -- | The name of the intent.
    intentName :: Core.Text,
    -- | The version of the intent.
    intentVersion :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Intent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'intentName', 'intent_intentName' - The name of the intent.
--
-- 'intentVersion', 'intent_intentVersion' - The version of the intent.
newIntent ::
  -- | 'intentName'
  Core.Text ->
  -- | 'intentVersion'
  Core.Text ->
  Intent
newIntent pIntentName_ pIntentVersion_ =
  Intent'
    { intentName = pIntentName_,
      intentVersion = pIntentVersion_
    }

-- | The name of the intent.
intent_intentName :: Lens.Lens' Intent Core.Text
intent_intentName = Lens.lens (\Intent' {intentName} -> intentName) (\s@Intent' {} a -> s {intentName = a} :: Intent)

-- | The version of the intent.
intent_intentVersion :: Lens.Lens' Intent Core.Text
intent_intentVersion = Lens.lens (\Intent' {intentVersion} -> intentVersion) (\s@Intent' {} a -> s {intentVersion = a} :: Intent)

instance Core.FromJSON Intent where
  parseJSON =
    Core.withObject
      "Intent"
      ( \x ->
          Intent'
            Core.<$> (x Core..: "intentName")
            Core.<*> (x Core..: "intentVersion")
      )

instance Core.Hashable Intent

instance Core.NFData Intent

instance Core.ToJSON Intent where
  toJSON Intent' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("intentName" Core..= intentName),
            Core.Just ("intentVersion" Core..= intentVersion)
          ]
      )
