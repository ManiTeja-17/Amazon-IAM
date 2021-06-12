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
-- Module      : Network.AWS.CloudDirectory.Types.AttributeKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.AttributeKey where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | A unique identifier for an attribute.
--
-- /See:/ 'newAttributeKey' smart constructor.
data AttributeKey = AttributeKey'
  { -- | The Amazon Resource Name (ARN) of the schema that contains the facet and
    -- attribute.
    schemaArn :: Core.Text,
    -- | The name of the facet that the attribute exists within.
    facetName :: Core.Text,
    -- | The name of the attribute.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AttributeKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaArn', 'attributeKey_schemaArn' - The Amazon Resource Name (ARN) of the schema that contains the facet and
-- attribute.
--
-- 'facetName', 'attributeKey_facetName' - The name of the facet that the attribute exists within.
--
-- 'name', 'attributeKey_name' - The name of the attribute.
newAttributeKey ::
  -- | 'schemaArn'
  Core.Text ->
  -- | 'facetName'
  Core.Text ->
  -- | 'name'
  Core.Text ->
  AttributeKey
newAttributeKey pSchemaArn_ pFacetName_ pName_ =
  AttributeKey'
    { schemaArn = pSchemaArn_,
      facetName = pFacetName_,
      name = pName_
    }

-- | The Amazon Resource Name (ARN) of the schema that contains the facet and
-- attribute.
attributeKey_schemaArn :: Lens.Lens' AttributeKey Core.Text
attributeKey_schemaArn = Lens.lens (\AttributeKey' {schemaArn} -> schemaArn) (\s@AttributeKey' {} a -> s {schemaArn = a} :: AttributeKey)

-- | The name of the facet that the attribute exists within.
attributeKey_facetName :: Lens.Lens' AttributeKey Core.Text
attributeKey_facetName = Lens.lens (\AttributeKey' {facetName} -> facetName) (\s@AttributeKey' {} a -> s {facetName = a} :: AttributeKey)

-- | The name of the attribute.
attributeKey_name :: Lens.Lens' AttributeKey Core.Text
attributeKey_name = Lens.lens (\AttributeKey' {name} -> name) (\s@AttributeKey' {} a -> s {name = a} :: AttributeKey)

instance Core.FromJSON AttributeKey where
  parseJSON =
    Core.withObject
      "AttributeKey"
      ( \x ->
          AttributeKey'
            Core.<$> (x Core..: "SchemaArn")
            Core.<*> (x Core..: "FacetName")
            Core.<*> (x Core..: "Name")
      )

instance Core.Hashable AttributeKey

instance Core.NFData AttributeKey

instance Core.ToJSON AttributeKey where
  toJSON AttributeKey' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("SchemaArn" Core..= schemaArn),
            Core.Just ("FacetName" Core..= facetName),
            Core.Just ("Name" Core..= name)
          ]
      )
