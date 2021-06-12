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
-- Module      : Network.AWS.MediaStore.DeleteMetricPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the metric policy that is associated with the specified
-- container. If there is no metric policy associated with the container,
-- MediaStore doesn\'t send metrics to CloudWatch.
module Network.AWS.MediaStore.DeleteMetricPolicy
  ( -- * Creating a Request
    DeleteMetricPolicy (..),
    newDeleteMetricPolicy,

    -- * Request Lenses
    deleteMetricPolicy_containerName,

    -- * Destructuring the Response
    DeleteMetricPolicyResponse (..),
    newDeleteMetricPolicyResponse,

    -- * Response Lenses
    deleteMetricPolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaStore.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteMetricPolicy' smart constructor.
data DeleteMetricPolicy = DeleteMetricPolicy'
  { -- | The name of the container that is associated with the metric policy that
    -- you want to delete.
    containerName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteMetricPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerName', 'deleteMetricPolicy_containerName' - The name of the container that is associated with the metric policy that
-- you want to delete.
newDeleteMetricPolicy ::
  -- | 'containerName'
  Core.Text ->
  DeleteMetricPolicy
newDeleteMetricPolicy pContainerName_ =
  DeleteMetricPolicy'
    { containerName =
        pContainerName_
    }

-- | The name of the container that is associated with the metric policy that
-- you want to delete.
deleteMetricPolicy_containerName :: Lens.Lens' DeleteMetricPolicy Core.Text
deleteMetricPolicy_containerName = Lens.lens (\DeleteMetricPolicy' {containerName} -> containerName) (\s@DeleteMetricPolicy' {} a -> s {containerName = a} :: DeleteMetricPolicy)

instance Core.AWSRequest DeleteMetricPolicy where
  type
    AWSResponse DeleteMetricPolicy =
      DeleteMetricPolicyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteMetricPolicyResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteMetricPolicy

instance Core.NFData DeleteMetricPolicy

instance Core.ToHeaders DeleteMetricPolicy where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "MediaStore_20170901.DeleteMetricPolicy" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteMetricPolicy where
  toJSON DeleteMetricPolicy' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("ContainerName" Core..= containerName)]
      )

instance Core.ToPath DeleteMetricPolicy where
  toPath = Core.const "/"

instance Core.ToQuery DeleteMetricPolicy where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteMetricPolicyResponse' smart constructor.
data DeleteMetricPolicyResponse = DeleteMetricPolicyResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteMetricPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteMetricPolicyResponse_httpStatus' - The response's http status code.
newDeleteMetricPolicyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteMetricPolicyResponse
newDeleteMetricPolicyResponse pHttpStatus_ =
  DeleteMetricPolicyResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteMetricPolicyResponse_httpStatus :: Lens.Lens' DeleteMetricPolicyResponse Core.Int
deleteMetricPolicyResponse_httpStatus = Lens.lens (\DeleteMetricPolicyResponse' {httpStatus} -> httpStatus) (\s@DeleteMetricPolicyResponse' {} a -> s {httpStatus = a} :: DeleteMetricPolicyResponse)

instance Core.NFData DeleteMetricPolicyResponse
