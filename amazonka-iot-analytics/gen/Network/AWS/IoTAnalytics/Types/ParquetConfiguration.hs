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
-- Module      : Network.AWS.IoTAnalytics.Types.ParquetConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ParquetConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types.SchemaDefinition
import qualified Network.AWS.Lens as Lens

-- | Contains the configuration information of the Parquet format.
--
-- /See:/ 'newParquetConfiguration' smart constructor.
data ParquetConfiguration = ParquetConfiguration'
  { -- | Information needed to define a schema.
    schemaDefinition :: Core.Maybe SchemaDefinition
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ParquetConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaDefinition', 'parquetConfiguration_schemaDefinition' - Information needed to define a schema.
newParquetConfiguration ::
  ParquetConfiguration
newParquetConfiguration =
  ParquetConfiguration'
    { schemaDefinition =
        Core.Nothing
    }

-- | Information needed to define a schema.
parquetConfiguration_schemaDefinition :: Lens.Lens' ParquetConfiguration (Core.Maybe SchemaDefinition)
parquetConfiguration_schemaDefinition = Lens.lens (\ParquetConfiguration' {schemaDefinition} -> schemaDefinition) (\s@ParquetConfiguration' {} a -> s {schemaDefinition = a} :: ParquetConfiguration)

instance Core.FromJSON ParquetConfiguration where
  parseJSON =
    Core.withObject
      "ParquetConfiguration"
      ( \x ->
          ParquetConfiguration'
            Core.<$> (x Core..:? "schemaDefinition")
      )

instance Core.Hashable ParquetConfiguration

instance Core.NFData ParquetConfiguration

instance Core.ToJSON ParquetConfiguration where
  toJSON ParquetConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("schemaDefinition" Core..=)
              Core.<$> schemaDefinition
          ]
      )
