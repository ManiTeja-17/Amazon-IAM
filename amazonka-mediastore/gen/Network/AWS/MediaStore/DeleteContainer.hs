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
-- Module      : Network.AWS.MediaStore.DeleteContainer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified container. Before you make a @DeleteContainer@
-- request, delete any objects in the container or in any folders in the
-- container. You can delete only empty containers.
module Network.AWS.MediaStore.DeleteContainer
  ( -- * Creating a Request
    DeleteContainer (..),
    newDeleteContainer,

    -- * Request Lenses
    deleteContainer_containerName,

    -- * Destructuring the Response
    DeleteContainerResponse (..),
    newDeleteContainerResponse,

    -- * Response Lenses
    deleteContainerResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaStore.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteContainer' smart constructor.
data DeleteContainer = DeleteContainer'
  { -- | The name of the container to delete.
    containerName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteContainer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerName', 'deleteContainer_containerName' - The name of the container to delete.
newDeleteContainer ::
  -- | 'containerName'
  Core.Text ->
  DeleteContainer
newDeleteContainer pContainerName_ =
  DeleteContainer' {containerName = pContainerName_}

-- | The name of the container to delete.
deleteContainer_containerName :: Lens.Lens' DeleteContainer Core.Text
deleteContainer_containerName = Lens.lens (\DeleteContainer' {containerName} -> containerName) (\s@DeleteContainer' {} a -> s {containerName = a} :: DeleteContainer)

instance Core.AWSRequest DeleteContainer where
  type
    AWSResponse DeleteContainer =
      DeleteContainerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteContainerResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteContainer

instance Core.NFData DeleteContainer

instance Core.ToHeaders DeleteContainer where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "MediaStore_20170901.DeleteContainer" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteContainer where
  toJSON DeleteContainer' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("ContainerName" Core..= containerName)]
      )

instance Core.ToPath DeleteContainer where
  toPath = Core.const "/"

instance Core.ToQuery DeleteContainer where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteContainerResponse' smart constructor.
data DeleteContainerResponse = DeleteContainerResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteContainerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteContainerResponse_httpStatus' - The response's http status code.
newDeleteContainerResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteContainerResponse
newDeleteContainerResponse pHttpStatus_ =
  DeleteContainerResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteContainerResponse_httpStatus :: Lens.Lens' DeleteContainerResponse Core.Int
deleteContainerResponse_httpStatus = Lens.lens (\DeleteContainerResponse' {httpStatus} -> httpStatus) (\s@DeleteContainerResponse' {} a -> s {httpStatus = a} :: DeleteContainerResponse)

instance Core.NFData DeleteContainerResponse
