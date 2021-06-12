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
-- Module      : Network.AWS.Rekognition.Types.Asset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Asset where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Rekognition.Types.GroundTruthManifest

-- | Assets are the images that you use to train and evaluate a model
-- version. Assets can also contain validation information that you use to
-- debug a failed model training.
--
-- /See:/ 'newAsset' smart constructor.
data Asset = Asset'
  { groundTruthManifest :: Core.Maybe GroundTruthManifest
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Asset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groundTruthManifest', 'asset_groundTruthManifest' - Undocumented member.
newAsset ::
  Asset
newAsset = Asset' {groundTruthManifest = Core.Nothing}

-- | Undocumented member.
asset_groundTruthManifest :: Lens.Lens' Asset (Core.Maybe GroundTruthManifest)
asset_groundTruthManifest = Lens.lens (\Asset' {groundTruthManifest} -> groundTruthManifest) (\s@Asset' {} a -> s {groundTruthManifest = a} :: Asset)

instance Core.FromJSON Asset where
  parseJSON =
    Core.withObject
      "Asset"
      ( \x ->
          Asset' Core.<$> (x Core..:? "GroundTruthManifest")
      )

instance Core.Hashable Asset

instance Core.NFData Asset

instance Core.ToJSON Asset where
  toJSON Asset' {..} =
    Core.object
      ( Core.catMaybes
          [ ("GroundTruthManifest" Core..=)
              Core.<$> groundTruthManifest
          ]
      )
