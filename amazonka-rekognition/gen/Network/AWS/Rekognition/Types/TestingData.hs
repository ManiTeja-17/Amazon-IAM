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
-- Module      : Network.AWS.Rekognition.Types.TestingData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.TestingData where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Rekognition.Types.Asset

-- | The dataset used for testing. Optionally, if @AutoCreate@ is set, Amazon
-- Rekognition Custom Labels creates a testing dataset using an 80\/20
-- split of the training dataset.
--
-- /See:/ 'newTestingData' smart constructor.
data TestingData = TestingData'
  { -- | If specified, Amazon Rekognition Custom Labels creates a testing dataset
    -- with an 80\/20 split of the training dataset.
    autoCreate :: Core.Maybe Core.Bool,
    -- | The assets used for testing.
    assets :: Core.Maybe [Asset]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TestingData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoCreate', 'testingData_autoCreate' - If specified, Amazon Rekognition Custom Labels creates a testing dataset
-- with an 80\/20 split of the training dataset.
--
-- 'assets', 'testingData_assets' - The assets used for testing.
newTestingData ::
  TestingData
newTestingData =
  TestingData'
    { autoCreate = Core.Nothing,
      assets = Core.Nothing
    }

-- | If specified, Amazon Rekognition Custom Labels creates a testing dataset
-- with an 80\/20 split of the training dataset.
testingData_autoCreate :: Lens.Lens' TestingData (Core.Maybe Core.Bool)
testingData_autoCreate = Lens.lens (\TestingData' {autoCreate} -> autoCreate) (\s@TestingData' {} a -> s {autoCreate = a} :: TestingData)

-- | The assets used for testing.
testingData_assets :: Lens.Lens' TestingData (Core.Maybe [Asset])
testingData_assets = Lens.lens (\TestingData' {assets} -> assets) (\s@TestingData' {} a -> s {assets = a} :: TestingData) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON TestingData where
  parseJSON =
    Core.withObject
      "TestingData"
      ( \x ->
          TestingData'
            Core.<$> (x Core..:? "AutoCreate")
            Core.<*> (x Core..:? "Assets" Core..!= Core.mempty)
      )

instance Core.Hashable TestingData

instance Core.NFData TestingData

instance Core.ToJSON TestingData where
  toJSON TestingData' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AutoCreate" Core..=) Core.<$> autoCreate,
            ("Assets" Core..=) Core.<$> assets
          ]
      )
