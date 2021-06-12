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
-- Module      : Network.AWS.APIGateway.UpdateRestApi
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes information about the specified API.
module Network.AWS.APIGateway.UpdateRestApi
  ( -- * Creating a Request
    UpdateRestApi (..),
    newUpdateRestApi,

    -- * Request Lenses
    updateRestApi_patchOperations,
    updateRestApi_restApiId,

    -- * Destructuring the Response
    RestApi (..),
    newRestApi,

    -- * Response Lenses
    restApi_createdDate,
    restApi_warnings,
    restApi_endpointConfiguration,
    restApi_binaryMediaTypes,
    restApi_id,
    restApi_version,
    restApi_name,
    restApi_tags,
    restApi_description,
    restApi_disableExecuteApiEndpoint,
    restApi_policy,
    restApi_minimumCompressionSize,
    restApi_apiKeySource,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Request to update an existing RestApi resource in your collection.
--
-- /See:/ 'newUpdateRestApi' smart constructor.
data UpdateRestApi = UpdateRestApi'
  { -- | A list of update operations to be applied to the specified resource and
    -- in the order specified in this list.
    patchOperations :: Core.Maybe [PatchOperation],
    -- | [Required] The string identifier of the associated RestApi.
    restApiId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateRestApi' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'patchOperations', 'updateRestApi_patchOperations' - A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
--
-- 'restApiId', 'updateRestApi_restApiId' - [Required] The string identifier of the associated RestApi.
newUpdateRestApi ::
  -- | 'restApiId'
  Core.Text ->
  UpdateRestApi
newUpdateRestApi pRestApiId_ =
  UpdateRestApi'
    { patchOperations = Core.Nothing,
      restApiId = pRestApiId_
    }

-- | A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
updateRestApi_patchOperations :: Lens.Lens' UpdateRestApi (Core.Maybe [PatchOperation])
updateRestApi_patchOperations = Lens.lens (\UpdateRestApi' {patchOperations} -> patchOperations) (\s@UpdateRestApi' {} a -> s {patchOperations = a} :: UpdateRestApi) Core.. Lens.mapping Lens._Coerce

-- | [Required] The string identifier of the associated RestApi.
updateRestApi_restApiId :: Lens.Lens' UpdateRestApi Core.Text
updateRestApi_restApiId = Lens.lens (\UpdateRestApi' {restApiId} -> restApiId) (\s@UpdateRestApi' {} a -> s {restApiId = a} :: UpdateRestApi)

instance Core.AWSRequest UpdateRestApi where
  type AWSResponse UpdateRestApi = RestApi
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Core.Hashable UpdateRestApi

instance Core.NFData UpdateRestApi

instance Core.ToHeaders UpdateRestApi where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateRestApi where
  toJSON UpdateRestApi' {..} =
    Core.object
      ( Core.catMaybes
          [ ("patchOperations" Core..=)
              Core.<$> patchOperations
          ]
      )

instance Core.ToPath UpdateRestApi where
  toPath UpdateRestApi' {..} =
    Core.mconcat ["/restapis/", Core.toBS restApiId]

instance Core.ToQuery UpdateRestApi where
  toQuery = Core.const Core.mempty
