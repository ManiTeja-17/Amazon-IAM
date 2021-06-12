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
-- Module      : Network.AWS.MediaPackage.Types.DashEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.DashEncryption where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaPackage.Types.SpekeKeyProvider

-- | A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
--
-- /See:/ 'newDashEncryption' smart constructor.
data DashEncryption = DashEncryption'
  { -- | Time (in seconds) between each encryption key rotation.
    keyRotationIntervalSeconds :: Core.Maybe Core.Int,
    spekeKeyProvider :: SpekeKeyProvider
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DashEncryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyRotationIntervalSeconds', 'dashEncryption_keyRotationIntervalSeconds' - Time (in seconds) between each encryption key rotation.
--
-- 'spekeKeyProvider', 'dashEncryption_spekeKeyProvider' - Undocumented member.
newDashEncryption ::
  -- | 'spekeKeyProvider'
  SpekeKeyProvider ->
  DashEncryption
newDashEncryption pSpekeKeyProvider_ =
  DashEncryption'
    { keyRotationIntervalSeconds =
        Core.Nothing,
      spekeKeyProvider = pSpekeKeyProvider_
    }

-- | Time (in seconds) between each encryption key rotation.
dashEncryption_keyRotationIntervalSeconds :: Lens.Lens' DashEncryption (Core.Maybe Core.Int)
dashEncryption_keyRotationIntervalSeconds = Lens.lens (\DashEncryption' {keyRotationIntervalSeconds} -> keyRotationIntervalSeconds) (\s@DashEncryption' {} a -> s {keyRotationIntervalSeconds = a} :: DashEncryption)

-- | Undocumented member.
dashEncryption_spekeKeyProvider :: Lens.Lens' DashEncryption SpekeKeyProvider
dashEncryption_spekeKeyProvider = Lens.lens (\DashEncryption' {spekeKeyProvider} -> spekeKeyProvider) (\s@DashEncryption' {} a -> s {spekeKeyProvider = a} :: DashEncryption)

instance Core.FromJSON DashEncryption where
  parseJSON =
    Core.withObject
      "DashEncryption"
      ( \x ->
          DashEncryption'
            Core.<$> (x Core..:? "keyRotationIntervalSeconds")
            Core.<*> (x Core..: "spekeKeyProvider")
      )

instance Core.Hashable DashEncryption

instance Core.NFData DashEncryption

instance Core.ToJSON DashEncryption where
  toJSON DashEncryption' {..} =
    Core.object
      ( Core.catMaybes
          [ ("keyRotationIntervalSeconds" Core..=)
              Core.<$> keyRotationIntervalSeconds,
            Core.Just
              ("spekeKeyProvider" Core..= spekeKeyProvider)
          ]
      )
