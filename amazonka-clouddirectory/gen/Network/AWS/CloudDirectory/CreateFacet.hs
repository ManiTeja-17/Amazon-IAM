{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.CreateFacet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Facet in a schema. Facet creation is allowed only in
-- development or applied schemas.
module Network.AWS.CloudDirectory.CreateFacet
  ( -- * Creating a Request
    CreateFacet (..),
    newCreateFacet,

    -- * Request Lenses
    createFacet_facetStyle,
    createFacet_attributes,
    createFacet_objectType,
    createFacet_schemaArn,
    createFacet_name,

    -- * Destructuring the Response
    CreateFacetResponse (..),
    newCreateFacetResponse,

    -- * Response Lenses
    createFacetResponse_httpStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateFacet' smart constructor.
data CreateFacet = CreateFacet'
  { -- | There are two different styles that you can define on any given facet,
    -- @Static@ and @Dynamic@. For static facets, all attributes must be
    -- defined in the schema. For dynamic facets, attributes can be defined
    -- during data plane operations.
    facetStyle :: Core.Maybe FacetStyle,
    -- | The attributes that are associated with the Facet.
    attributes :: Core.Maybe [FacetAttribute],
    -- | Specifies whether a given object created from this facet is of type
    -- node, leaf node, policy or index.
    --
    -- -   Node: Can have multiple children but one parent.
    --
    -- -   Leaf node: Cannot have children but can have multiple parents.
    --
    -- -   Policy: Allows you to store a policy document and policy type. For
    --     more information, see
    --     <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies>.
    --
    -- -   Index: Can be created with the Index API.
    objectType :: Core.Maybe ObjectType,
    -- | The schema ARN in which the new Facet will be created. For more
    -- information, see arns.
    schemaArn :: Core.Text,
    -- | The name of the Facet, which is unique for a given schema.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateFacet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'facetStyle', 'createFacet_facetStyle' - There are two different styles that you can define on any given facet,
-- @Static@ and @Dynamic@. For static facets, all attributes must be
-- defined in the schema. For dynamic facets, attributes can be defined
-- during data plane operations.
--
-- 'attributes', 'createFacet_attributes' - The attributes that are associated with the Facet.
--
-- 'objectType', 'createFacet_objectType' - Specifies whether a given object created from this facet is of type
-- node, leaf node, policy or index.
--
-- -   Node: Can have multiple children but one parent.
--
-- -   Leaf node: Cannot have children but can have multiple parents.
--
-- -   Policy: Allows you to store a policy document and policy type. For
--     more information, see
--     <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies>.
--
-- -   Index: Can be created with the Index API.
--
-- 'schemaArn', 'createFacet_schemaArn' - The schema ARN in which the new Facet will be created. For more
-- information, see arns.
--
-- 'name', 'createFacet_name' - The name of the Facet, which is unique for a given schema.
newCreateFacet ::
  -- | 'schemaArn'
  Core.Text ->
  -- | 'name'
  Core.Text ->
  CreateFacet
newCreateFacet pSchemaArn_ pName_ =
  CreateFacet'
    { facetStyle = Core.Nothing,
      attributes = Core.Nothing,
      objectType = Core.Nothing,
      schemaArn = pSchemaArn_,
      name = pName_
    }

-- | There are two different styles that you can define on any given facet,
-- @Static@ and @Dynamic@. For static facets, all attributes must be
-- defined in the schema. For dynamic facets, attributes can be defined
-- during data plane operations.
createFacet_facetStyle :: Lens.Lens' CreateFacet (Core.Maybe FacetStyle)
createFacet_facetStyle = Lens.lens (\CreateFacet' {facetStyle} -> facetStyle) (\s@CreateFacet' {} a -> s {facetStyle = a} :: CreateFacet)

-- | The attributes that are associated with the Facet.
createFacet_attributes :: Lens.Lens' CreateFacet (Core.Maybe [FacetAttribute])
createFacet_attributes = Lens.lens (\CreateFacet' {attributes} -> attributes) (\s@CreateFacet' {} a -> s {attributes = a} :: CreateFacet) Core.. Lens.mapping Lens._Coerce

-- | Specifies whether a given object created from this facet is of type
-- node, leaf node, policy or index.
--
-- -   Node: Can have multiple children but one parent.
--
-- -   Leaf node: Cannot have children but can have multiple parents.
--
-- -   Policy: Allows you to store a policy document and policy type. For
--     more information, see
--     <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies>.
--
-- -   Index: Can be created with the Index API.
createFacet_objectType :: Lens.Lens' CreateFacet (Core.Maybe ObjectType)
createFacet_objectType = Lens.lens (\CreateFacet' {objectType} -> objectType) (\s@CreateFacet' {} a -> s {objectType = a} :: CreateFacet)

-- | The schema ARN in which the new Facet will be created. For more
-- information, see arns.
createFacet_schemaArn :: Lens.Lens' CreateFacet Core.Text
createFacet_schemaArn = Lens.lens (\CreateFacet' {schemaArn} -> schemaArn) (\s@CreateFacet' {} a -> s {schemaArn = a} :: CreateFacet)

-- | The name of the Facet, which is unique for a given schema.
createFacet_name :: Lens.Lens' CreateFacet Core.Text
createFacet_name = Lens.lens (\CreateFacet' {name} -> name) (\s@CreateFacet' {} a -> s {name = a} :: CreateFacet)

instance Core.AWSRequest CreateFacet where
  type AWSResponse CreateFacet = CreateFacetResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateFacetResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateFacet

instance Core.NFData CreateFacet

instance Core.ToHeaders CreateFacet where
  toHeaders CreateFacet' {..} =
    Core.mconcat
      ["x-amz-data-partition" Core.=# schemaArn]

instance Core.ToJSON CreateFacet where
  toJSON CreateFacet' {..} =
    Core.object
      ( Core.catMaybes
          [ ("FacetStyle" Core..=) Core.<$> facetStyle,
            ("Attributes" Core..=) Core.<$> attributes,
            ("ObjectType" Core..=) Core.<$> objectType,
            Core.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateFacet where
  toPath =
    Core.const
      "/amazonclouddirectory/2017-01-11/facet/create"

instance Core.ToQuery CreateFacet where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateFacetResponse' smart constructor.
data CreateFacetResponse = CreateFacetResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateFacetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createFacetResponse_httpStatus' - The response's http status code.
newCreateFacetResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateFacetResponse
newCreateFacetResponse pHttpStatus_ =
  CreateFacetResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
createFacetResponse_httpStatus :: Lens.Lens' CreateFacetResponse Core.Int
createFacetResponse_httpStatus = Lens.lens (\CreateFacetResponse' {httpStatus} -> httpStatus) (\s@CreateFacetResponse' {} a -> s {httpStatus = a} :: CreateFacetResponse)

instance Core.NFData CreateFacetResponse
