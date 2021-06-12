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
-- Module      : Network.AWS.MediaLive.Types.KeyProviderSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.KeyProviderSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.StaticKeySettings

-- | Key Provider Settings
--
-- /See:/ 'newKeyProviderSettings' smart constructor.
data KeyProviderSettings = KeyProviderSettings'
  { staticKeySettings :: Core.Maybe StaticKeySettings
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'KeyProviderSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'staticKeySettings', 'keyProviderSettings_staticKeySettings' - Undocumented member.
newKeyProviderSettings ::
  KeyProviderSettings
newKeyProviderSettings =
  KeyProviderSettings'
    { staticKeySettings =
        Core.Nothing
    }

-- | Undocumented member.
keyProviderSettings_staticKeySettings :: Lens.Lens' KeyProviderSettings (Core.Maybe StaticKeySettings)
keyProviderSettings_staticKeySettings = Lens.lens (\KeyProviderSettings' {staticKeySettings} -> staticKeySettings) (\s@KeyProviderSettings' {} a -> s {staticKeySettings = a} :: KeyProviderSettings)

instance Core.FromJSON KeyProviderSettings where
  parseJSON =
    Core.withObject
      "KeyProviderSettings"
      ( \x ->
          KeyProviderSettings'
            Core.<$> (x Core..:? "staticKeySettings")
      )

instance Core.Hashable KeyProviderSettings

instance Core.NFData KeyProviderSettings

instance Core.ToJSON KeyProviderSettings where
  toJSON KeyProviderSettings' {..} =
    Core.object
      ( Core.catMaybes
          [ ("staticKeySettings" Core..=)
              Core.<$> staticKeySettings
          ]
      )
