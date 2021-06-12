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
-- Module      : Network.AWS.APIGateway.UpdateResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes information about a Resource resource.
module Network.AWS.APIGateway.UpdateResource
  ( -- * Creating a Request
    UpdateResource (..),
    newUpdateResource,

    -- * Request Lenses
    updateResource_patchOperations,
    updateResource_restApiId,
    updateResource_resourceId,

    -- * Destructuring the Response
    Resource (..),
    newResource,

    -- * Response Lenses
    resource_id,
    resource_pathPart,
    resource_parentId,
    resource_resourceMethods,
    resource_path,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Request to change information about a Resource resource.
--
-- /See:/ 'newUpdateResource' smart constructor.
data UpdateResource = UpdateResource'
  { -- | A list of update operations to be applied to the specified resource and
    -- in the order specified in this list.
    patchOperations :: Core.Maybe [PatchOperation],
    -- | [Required] The string identifier of the associated RestApi.
    restApiId :: Core.Text,
    -- | [Required] The identifier of the Resource resource.
    resourceId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'patchOperations', 'updateResource_patchOperations' - A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
--
-- 'restApiId', 'updateResource_restApiId' - [Required] The string identifier of the associated RestApi.
--
-- 'resourceId', 'updateResource_resourceId' - [Required] The identifier of the Resource resource.
newUpdateResource ::
  -- | 'restApiId'
  Core.Text ->
  -- | 'resourceId'
  Core.Text ->
  UpdateResource
newUpdateResource pRestApiId_ pResourceId_ =
  UpdateResource'
    { patchOperations = Core.Nothing,
      restApiId = pRestApiId_,
      resourceId = pResourceId_
    }

-- | A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
updateResource_patchOperations :: Lens.Lens' UpdateResource (Core.Maybe [PatchOperation])
updateResource_patchOperations = Lens.lens (\UpdateResource' {patchOperations} -> patchOperations) (\s@UpdateResource' {} a -> s {patchOperations = a} :: UpdateResource) Core.. Lens.mapping Lens._Coerce

-- | [Required] The string identifier of the associated RestApi.
updateResource_restApiId :: Lens.Lens' UpdateResource Core.Text
updateResource_restApiId = Lens.lens (\UpdateResource' {restApiId} -> restApiId) (\s@UpdateResource' {} a -> s {restApiId = a} :: UpdateResource)

-- | [Required] The identifier of the Resource resource.
updateResource_resourceId :: Lens.Lens' UpdateResource Core.Text
updateResource_resourceId = Lens.lens (\UpdateResource' {resourceId} -> resourceId) (\s@UpdateResource' {} a -> s {resourceId = a} :: UpdateResource)

instance Core.AWSRequest UpdateResource where
  type AWSResponse UpdateResource = Resource
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Core.Hashable UpdateResource

instance Core.NFData UpdateResource

instance Core.ToHeaders UpdateResource where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateResource where
  toJSON UpdateResource' {..} =
    Core.object
      ( Core.catMaybes
          [ ("patchOperations" Core..=)
              Core.<$> patchOperations
          ]
      )

instance Core.ToPath UpdateResource where
  toPath UpdateResource' {..} =
    Core.mconcat
      [ "/restapis/",
        Core.toBS restApiId,
        "/resources/",
        Core.toBS resourceId
      ]

instance Core.ToQuery UpdateResource where
  toQuery = Core.const Core.mempty
