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
-- Module      : Network.AWS.MediaLive.Types.NielsenConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.NielsenConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.NielsenPcmToId3TaggingState

-- | Nielsen Configuration
--
-- /See:/ 'newNielsenConfiguration' smart constructor.
data NielsenConfiguration = NielsenConfiguration'
  { -- | Enables Nielsen PCM to ID3 tagging
    nielsenPcmToId3Tagging :: Core.Maybe NielsenPcmToId3TaggingState,
    -- | Enter the Distributor ID assigned to your organization by Nielsen.
    distributorId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'NielsenConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nielsenPcmToId3Tagging', 'nielsenConfiguration_nielsenPcmToId3Tagging' - Enables Nielsen PCM to ID3 tagging
--
-- 'distributorId', 'nielsenConfiguration_distributorId' - Enter the Distributor ID assigned to your organization by Nielsen.
newNielsenConfiguration ::
  NielsenConfiguration
newNielsenConfiguration =
  NielsenConfiguration'
    { nielsenPcmToId3Tagging =
        Core.Nothing,
      distributorId = Core.Nothing
    }

-- | Enables Nielsen PCM to ID3 tagging
nielsenConfiguration_nielsenPcmToId3Tagging :: Lens.Lens' NielsenConfiguration (Core.Maybe NielsenPcmToId3TaggingState)
nielsenConfiguration_nielsenPcmToId3Tagging = Lens.lens (\NielsenConfiguration' {nielsenPcmToId3Tagging} -> nielsenPcmToId3Tagging) (\s@NielsenConfiguration' {} a -> s {nielsenPcmToId3Tagging = a} :: NielsenConfiguration)

-- | Enter the Distributor ID assigned to your organization by Nielsen.
nielsenConfiguration_distributorId :: Lens.Lens' NielsenConfiguration (Core.Maybe Core.Text)
nielsenConfiguration_distributorId = Lens.lens (\NielsenConfiguration' {distributorId} -> distributorId) (\s@NielsenConfiguration' {} a -> s {distributorId = a} :: NielsenConfiguration)

instance Core.FromJSON NielsenConfiguration where
  parseJSON =
    Core.withObject
      "NielsenConfiguration"
      ( \x ->
          NielsenConfiguration'
            Core.<$> (x Core..:? "nielsenPcmToId3Tagging")
            Core.<*> (x Core..:? "distributorId")
      )

instance Core.Hashable NielsenConfiguration

instance Core.NFData NielsenConfiguration

instance Core.ToJSON NielsenConfiguration where
  toJSON NielsenConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("nielsenPcmToId3Tagging" Core..=)
              Core.<$> nielsenPcmToId3Tagging,
            ("distributorId" Core..=) Core.<$> distributorId
          ]
      )
