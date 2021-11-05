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
-- Module      : Network.AWS.LookoutVision.DeleteModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon Lookout for Vision model. You can\'t delete a running
-- model. To stop a running model, use the StopModel operation.
--
-- It might take a few seconds to delete a model. To determine if a model
-- has been deleted, call ListProjects and check if the version of the
-- model (@ModelVersion@) is in the @Models@ array.
--
-- This operation requires permissions to perform the
-- @lookoutvision:DeleteModel@ operation.
module Network.AWS.LookoutVision.DeleteModel
  ( -- * Creating a Request
    DeleteModel (..),
    newDeleteModel,

    -- * Request Lenses
    deleteModel_clientToken,
    deleteModel_projectName,
    deleteModel_modelVersion,

    -- * Destructuring the Response
    DeleteModelResponse (..),
    newDeleteModelResponse,

    -- * Response Lenses
    deleteModelResponse_modelArn,
    deleteModelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutVision.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteModel' smart constructor.
data DeleteModel = DeleteModel'
  { -- | ClientToken is an idempotency token that ensures a call to @DeleteModel@
    -- completes only once. You choose the value to pass. For example, An
    -- issue, such as an network outage, might prevent you from getting a
    -- response from @DeleteModel@. In this case, safely retry your call to
    -- @DeleteModel@ by using the same @ClientToken@ parameter value. An error
    -- occurs if the other input parameters are not the same as in the first
    -- request. Using a different value for @ClientToken@ is considered a new
    -- call to @DeleteModel@. An idempotency token is active for 8 hours.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the project that contains the model that you want to delete.
    projectName :: Prelude.Text,
    -- | The version of the model that you want to delete.
    modelVersion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'deleteModel_clientToken' - ClientToken is an idempotency token that ensures a call to @DeleteModel@
-- completes only once. You choose the value to pass. For example, An
-- issue, such as an network outage, might prevent you from getting a
-- response from @DeleteModel@. In this case, safely retry your call to
-- @DeleteModel@ by using the same @ClientToken@ parameter value. An error
-- occurs if the other input parameters are not the same as in the first
-- request. Using a different value for @ClientToken@ is considered a new
-- call to @DeleteModel@. An idempotency token is active for 8 hours.
--
-- 'projectName', 'deleteModel_projectName' - The name of the project that contains the model that you want to delete.
--
-- 'modelVersion', 'deleteModel_modelVersion' - The version of the model that you want to delete.
newDeleteModel ::
  -- | 'projectName'
  Prelude.Text ->
  -- | 'modelVersion'
  Prelude.Text ->
  DeleteModel
newDeleteModel pProjectName_ pModelVersion_ =
  DeleteModel'
    { clientToken = Prelude.Nothing,
      projectName = pProjectName_,
      modelVersion = pModelVersion_
    }

-- | ClientToken is an idempotency token that ensures a call to @DeleteModel@
-- completes only once. You choose the value to pass. For example, An
-- issue, such as an network outage, might prevent you from getting a
-- response from @DeleteModel@. In this case, safely retry your call to
-- @DeleteModel@ by using the same @ClientToken@ parameter value. An error
-- occurs if the other input parameters are not the same as in the first
-- request. Using a different value for @ClientToken@ is considered a new
-- call to @DeleteModel@. An idempotency token is active for 8 hours.
deleteModel_clientToken :: Lens.Lens' DeleteModel (Prelude.Maybe Prelude.Text)
deleteModel_clientToken = Lens.lens (\DeleteModel' {clientToken} -> clientToken) (\s@DeleteModel' {} a -> s {clientToken = a} :: DeleteModel)

-- | The name of the project that contains the model that you want to delete.
deleteModel_projectName :: Lens.Lens' DeleteModel Prelude.Text
deleteModel_projectName = Lens.lens (\DeleteModel' {projectName} -> projectName) (\s@DeleteModel' {} a -> s {projectName = a} :: DeleteModel)

-- | The version of the model that you want to delete.
deleteModel_modelVersion :: Lens.Lens' DeleteModel Prelude.Text
deleteModel_modelVersion = Lens.lens (\DeleteModel' {modelVersion} -> modelVersion) (\s@DeleteModel' {} a -> s {modelVersion = a} :: DeleteModel)

instance Core.AWSRequest DeleteModel where
  type AWSResponse DeleteModel = DeleteModelResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteModelResponse'
            Prelude.<$> (x Core..?> "ModelArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteModel

instance Prelude.NFData DeleteModel

instance Core.ToHeaders DeleteModel where
  toHeaders DeleteModel' {..} =
    Prelude.mconcat
      [ "X-Amzn-Client-Token" Core.=# clientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToPath DeleteModel where
  toPath DeleteModel' {..} =
    Prelude.mconcat
      [ "/2020-11-20/projects/",
        Core.toBS projectName,
        "/models/",
        Core.toBS modelVersion
      ]

instance Core.ToQuery DeleteModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteModelResponse' smart constructor.
data DeleteModelResponse = DeleteModelResponse'
  { -- | The Amazon Resource Name (ARN) of the model that was deleted.
    modelArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelArn', 'deleteModelResponse_modelArn' - The Amazon Resource Name (ARN) of the model that was deleted.
--
-- 'httpStatus', 'deleteModelResponse_httpStatus' - The response's http status code.
newDeleteModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteModelResponse
newDeleteModelResponse pHttpStatus_ =
  DeleteModelResponse'
    { modelArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the model that was deleted.
deleteModelResponse_modelArn :: Lens.Lens' DeleteModelResponse (Prelude.Maybe Prelude.Text)
deleteModelResponse_modelArn = Lens.lens (\DeleteModelResponse' {modelArn} -> modelArn) (\s@DeleteModelResponse' {} a -> s {modelArn = a} :: DeleteModelResponse)

-- | The response's http status code.
deleteModelResponse_httpStatus :: Lens.Lens' DeleteModelResponse Prelude.Int
deleteModelResponse_httpStatus = Lens.lens (\DeleteModelResponse' {httpStatus} -> httpStatus) (\s@DeleteModelResponse' {} a -> s {httpStatus = a} :: DeleteModelResponse)

instance Prelude.NFData DeleteModelResponse