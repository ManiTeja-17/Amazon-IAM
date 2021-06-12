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
-- Module      : Network.AWS.APIGateway.UpdateModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes information about a model.
module Network.AWS.APIGateway.UpdateModel
  ( -- * Creating a Request
    UpdateModel (..),
    newUpdateModel,

    -- * Request Lenses
    updateModel_patchOperations,
    updateModel_restApiId,
    updateModel_modelName,

    -- * Destructuring the Response
    Model (..),
    newModel,

    -- * Response Lenses
    model_contentType,
    model_schema,
    model_id,
    model_name,
    model_description,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Request to update an existing model in an existing RestApi resource.
--
-- /See:/ 'newUpdateModel' smart constructor.
data UpdateModel = UpdateModel'
  { -- | A list of update operations to be applied to the specified resource and
    -- in the order specified in this list.
    patchOperations :: Core.Maybe [PatchOperation],
    -- | [Required] The string identifier of the associated RestApi.
    restApiId :: Core.Text,
    -- | [Required] The name of the model to update.
    modelName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'patchOperations', 'updateModel_patchOperations' - A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
--
-- 'restApiId', 'updateModel_restApiId' - [Required] The string identifier of the associated RestApi.
--
-- 'modelName', 'updateModel_modelName' - [Required] The name of the model to update.
newUpdateModel ::
  -- | 'restApiId'
  Core.Text ->
  -- | 'modelName'
  Core.Text ->
  UpdateModel
newUpdateModel pRestApiId_ pModelName_ =
  UpdateModel'
    { patchOperations = Core.Nothing,
      restApiId = pRestApiId_,
      modelName = pModelName_
    }

-- | A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
updateModel_patchOperations :: Lens.Lens' UpdateModel (Core.Maybe [PatchOperation])
updateModel_patchOperations = Lens.lens (\UpdateModel' {patchOperations} -> patchOperations) (\s@UpdateModel' {} a -> s {patchOperations = a} :: UpdateModel) Core.. Lens.mapping Lens._Coerce

-- | [Required] The string identifier of the associated RestApi.
updateModel_restApiId :: Lens.Lens' UpdateModel Core.Text
updateModel_restApiId = Lens.lens (\UpdateModel' {restApiId} -> restApiId) (\s@UpdateModel' {} a -> s {restApiId = a} :: UpdateModel)

-- | [Required] The name of the model to update.
updateModel_modelName :: Lens.Lens' UpdateModel Core.Text
updateModel_modelName = Lens.lens (\UpdateModel' {modelName} -> modelName) (\s@UpdateModel' {} a -> s {modelName = a} :: UpdateModel)

instance Core.AWSRequest UpdateModel where
  type AWSResponse UpdateModel = Model
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Core.Hashable UpdateModel

instance Core.NFData UpdateModel

instance Core.ToHeaders UpdateModel where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateModel where
  toJSON UpdateModel' {..} =
    Core.object
      ( Core.catMaybes
          [ ("patchOperations" Core..=)
              Core.<$> patchOperations
          ]
      )

instance Core.ToPath UpdateModel where
  toPath UpdateModel' {..} =
    Core.mconcat
      [ "/restapis/",
        Core.toBS restApiId,
        "/models/",
        Core.toBS modelName
      ]

instance Core.ToQuery UpdateModel where
  toQuery = Core.const Core.mempty
