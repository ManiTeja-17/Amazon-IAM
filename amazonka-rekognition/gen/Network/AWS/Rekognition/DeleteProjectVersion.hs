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
-- Module      : Network.AWS.Rekognition.DeleteProjectVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon Rekognition Custom Labels model.
--
-- You can\'t delete a model if it is running or if it is training. To
-- check the status of a model, use the @Status@ field returned from
-- DescribeProjectVersions. To stop a running model call
-- StopProjectVersion. If the model is training, wait until it finishes.
--
-- This operation requires permissions to perform the
-- @rekognition:DeleteProjectVersion@ action.
module Network.AWS.Rekognition.DeleteProjectVersion
  ( -- * Creating a Request
    DeleteProjectVersion (..),
    newDeleteProjectVersion,

    -- * Request Lenses
    deleteProjectVersion_projectVersionArn,

    -- * Destructuring the Response
    DeleteProjectVersionResponse (..),
    newDeleteProjectVersionResponse,

    -- * Response Lenses
    deleteProjectVersionResponse_status,
    deleteProjectVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Rekognition.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteProjectVersion' smart constructor.
data DeleteProjectVersion = DeleteProjectVersion'
  { -- | The Amazon Resource Name (ARN) of the model version that you want to
    -- delete.
    projectVersionArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteProjectVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectVersionArn', 'deleteProjectVersion_projectVersionArn' - The Amazon Resource Name (ARN) of the model version that you want to
-- delete.
newDeleteProjectVersion ::
  -- | 'projectVersionArn'
  Core.Text ->
  DeleteProjectVersion
newDeleteProjectVersion pProjectVersionArn_ =
  DeleteProjectVersion'
    { projectVersionArn =
        pProjectVersionArn_
    }

-- | The Amazon Resource Name (ARN) of the model version that you want to
-- delete.
deleteProjectVersion_projectVersionArn :: Lens.Lens' DeleteProjectVersion Core.Text
deleteProjectVersion_projectVersionArn = Lens.lens (\DeleteProjectVersion' {projectVersionArn} -> projectVersionArn) (\s@DeleteProjectVersion' {} a -> s {projectVersionArn = a} :: DeleteProjectVersion)

instance Core.AWSRequest DeleteProjectVersion where
  type
    AWSResponse DeleteProjectVersion =
      DeleteProjectVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteProjectVersionResponse'
            Core.<$> (x Core..?> "Status")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteProjectVersion

instance Core.NFData DeleteProjectVersion

instance Core.ToHeaders DeleteProjectVersion where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RekognitionService.DeleteProjectVersion" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteProjectVersion where
  toJSON DeleteProjectVersion' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("ProjectVersionArn" Core..= projectVersionArn)
          ]
      )

instance Core.ToPath DeleteProjectVersion where
  toPath = Core.const "/"

instance Core.ToQuery DeleteProjectVersion where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteProjectVersionResponse' smart constructor.
data DeleteProjectVersionResponse = DeleteProjectVersionResponse'
  { -- | The status of the deletion operation.
    status :: Core.Maybe ProjectVersionStatus,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteProjectVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'deleteProjectVersionResponse_status' - The status of the deletion operation.
--
-- 'httpStatus', 'deleteProjectVersionResponse_httpStatus' - The response's http status code.
newDeleteProjectVersionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteProjectVersionResponse
newDeleteProjectVersionResponse pHttpStatus_ =
  DeleteProjectVersionResponse'
    { status =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the deletion operation.
deleteProjectVersionResponse_status :: Lens.Lens' DeleteProjectVersionResponse (Core.Maybe ProjectVersionStatus)
deleteProjectVersionResponse_status = Lens.lens (\DeleteProjectVersionResponse' {status} -> status) (\s@DeleteProjectVersionResponse' {} a -> s {status = a} :: DeleteProjectVersionResponse)

-- | The response's http status code.
deleteProjectVersionResponse_httpStatus :: Lens.Lens' DeleteProjectVersionResponse Core.Int
deleteProjectVersionResponse_httpStatus = Lens.lens (\DeleteProjectVersionResponse' {httpStatus} -> httpStatus) (\s@DeleteProjectVersionResponse' {} a -> s {httpStatus = a} :: DeleteProjectVersionResponse)

instance Core.NFData DeleteProjectVersionResponse
