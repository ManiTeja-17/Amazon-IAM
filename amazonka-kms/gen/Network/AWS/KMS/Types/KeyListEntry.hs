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
-- Module      : Network.AWS.KMS.Types.KeyListEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeyListEntry where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Contains information about each entry in the key list.
--
-- /See:/ 'newKeyListEntry' smart constructor.
data KeyListEntry = KeyListEntry'
  { -- | ARN of the key.
    keyArn :: Core.Maybe Core.Text,
    -- | Unique identifier of the key.
    keyId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'KeyListEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyArn', 'keyListEntry_keyArn' - ARN of the key.
--
-- 'keyId', 'keyListEntry_keyId' - Unique identifier of the key.
newKeyListEntry ::
  KeyListEntry
newKeyListEntry =
  KeyListEntry'
    { keyArn = Core.Nothing,
      keyId = Core.Nothing
    }

-- | ARN of the key.
keyListEntry_keyArn :: Lens.Lens' KeyListEntry (Core.Maybe Core.Text)
keyListEntry_keyArn = Lens.lens (\KeyListEntry' {keyArn} -> keyArn) (\s@KeyListEntry' {} a -> s {keyArn = a} :: KeyListEntry)

-- | Unique identifier of the key.
keyListEntry_keyId :: Lens.Lens' KeyListEntry (Core.Maybe Core.Text)
keyListEntry_keyId = Lens.lens (\KeyListEntry' {keyId} -> keyId) (\s@KeyListEntry' {} a -> s {keyId = a} :: KeyListEntry)

instance Core.FromJSON KeyListEntry where
  parseJSON =
    Core.withObject
      "KeyListEntry"
      ( \x ->
          KeyListEntry'
            Core.<$> (x Core..:? "KeyArn") Core.<*> (x Core..:? "KeyId")
      )

instance Core.Hashable KeyListEntry

instance Core.NFData KeyListEntry
