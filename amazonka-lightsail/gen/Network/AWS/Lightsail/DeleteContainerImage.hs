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
-- Module      : Network.AWS.Lightsail.DeleteContainerImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a container image that is registered to your Amazon Lightsail
-- container service.
module Network.AWS.Lightsail.DeleteContainerImage
  ( -- * Creating a Request
    DeleteContainerImage (..),
    newDeleteContainerImage,

    -- * Request Lenses
    deleteContainerImage_serviceName,
    deleteContainerImage_image,

    -- * Destructuring the Response
    DeleteContainerImageResponse (..),
    newDeleteContainerImageResponse,

    -- * Response Lenses
    deleteContainerImageResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteContainerImage' smart constructor.
data DeleteContainerImage = DeleteContainerImage'
  { -- | The name of the container service for which to delete a registered
    -- container image.
    serviceName :: Core.Text,
    -- | The name of the container image to delete from the container service.
    --
    -- Use the @GetContainerImages@ action to get the name of the container
    -- images that are registered to a container service.
    --
    -- Container images sourced from your Lightsail container service, that are
    -- registered and stored on your service, start with a colon (@:@). For
    -- example, @:container-service-1.mystaticwebsite.1@. Container images
    -- sourced from a public registry like Docker Hub don\'t start with a
    -- colon. For example, @nginx:latest@ or @nginx@.
    image :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteContainerImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceName', 'deleteContainerImage_serviceName' - The name of the container service for which to delete a registered
-- container image.
--
-- 'image', 'deleteContainerImage_image' - The name of the container image to delete from the container service.
--
-- Use the @GetContainerImages@ action to get the name of the container
-- images that are registered to a container service.
--
-- Container images sourced from your Lightsail container service, that are
-- registered and stored on your service, start with a colon (@:@). For
-- example, @:container-service-1.mystaticwebsite.1@. Container images
-- sourced from a public registry like Docker Hub don\'t start with a
-- colon. For example, @nginx:latest@ or @nginx@.
newDeleteContainerImage ::
  -- | 'serviceName'
  Core.Text ->
  -- | 'image'
  Core.Text ->
  DeleteContainerImage
newDeleteContainerImage pServiceName_ pImage_ =
  DeleteContainerImage'
    { serviceName = pServiceName_,
      image = pImage_
    }

-- | The name of the container service for which to delete a registered
-- container image.
deleteContainerImage_serviceName :: Lens.Lens' DeleteContainerImage Core.Text
deleteContainerImage_serviceName = Lens.lens (\DeleteContainerImage' {serviceName} -> serviceName) (\s@DeleteContainerImage' {} a -> s {serviceName = a} :: DeleteContainerImage)

-- | The name of the container image to delete from the container service.
--
-- Use the @GetContainerImages@ action to get the name of the container
-- images that are registered to a container service.
--
-- Container images sourced from your Lightsail container service, that are
-- registered and stored on your service, start with a colon (@:@). For
-- example, @:container-service-1.mystaticwebsite.1@. Container images
-- sourced from a public registry like Docker Hub don\'t start with a
-- colon. For example, @nginx:latest@ or @nginx@.
deleteContainerImage_image :: Lens.Lens' DeleteContainerImage Core.Text
deleteContainerImage_image = Lens.lens (\DeleteContainerImage' {image} -> image) (\s@DeleteContainerImage' {} a -> s {image = a} :: DeleteContainerImage)

instance Core.AWSRequest DeleteContainerImage where
  type
    AWSResponse DeleteContainerImage =
      DeleteContainerImageResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteContainerImageResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteContainerImage

instance Core.NFData DeleteContainerImage

instance Core.ToHeaders DeleteContainerImage where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Lightsail_20161128.DeleteContainerImage" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteContainerImage where
  toJSON DeleteContainerImage' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("serviceName" Core..= serviceName),
            Core.Just ("image" Core..= image)
          ]
      )

instance Core.ToPath DeleteContainerImage where
  toPath = Core.const "/"

instance Core.ToQuery DeleteContainerImage where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteContainerImageResponse' smart constructor.
data DeleteContainerImageResponse = DeleteContainerImageResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteContainerImageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteContainerImageResponse_httpStatus' - The response's http status code.
newDeleteContainerImageResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteContainerImageResponse
newDeleteContainerImageResponse pHttpStatus_ =
  DeleteContainerImageResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteContainerImageResponse_httpStatus :: Lens.Lens' DeleteContainerImageResponse Core.Int
deleteContainerImageResponse_httpStatus = Lens.lens (\DeleteContainerImageResponse' {httpStatus} -> httpStatus) (\s@DeleteContainerImageResponse' {} a -> s {httpStatus = a} :: DeleteContainerImageResponse)

instance Core.NFData DeleteContainerImageResponse
