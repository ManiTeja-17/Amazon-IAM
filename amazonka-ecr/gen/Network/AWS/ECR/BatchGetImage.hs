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
-- Module      : Network.AWS.ECR.BatchGetImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets detailed information for an image. Images are specified with either
-- an @imageTag@ or @imageDigest@.
--
-- When an image is pulled, the BatchGetImage API is called once to
-- retrieve the image manifest.
module Network.AWS.ECR.BatchGetImage
  ( -- * Creating a Request
    BatchGetImage (..),
    newBatchGetImage,

    -- * Request Lenses
    batchGetImage_acceptedMediaTypes,
    batchGetImage_registryId,
    batchGetImage_repositoryName,
    batchGetImage_imageIds,

    -- * Destructuring the Response
    BatchGetImageResponse (..),
    newBatchGetImageResponse,

    -- * Response Lenses
    batchGetImageResponse_images,
    batchGetImageResponse_failures,
    batchGetImageResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ECR.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchGetImage' smart constructor.
data BatchGetImage = BatchGetImage'
  { -- | The accepted media types for the request.
    --
    -- Valid values: @application\/vnd.docker.distribution.manifest.v1+json@ |
    -- @application\/vnd.docker.distribution.manifest.v2+json@ |
    -- @application\/vnd.oci.image.manifest.v1+json@
    acceptedMediaTypes :: Core.Maybe (Core.NonEmpty Core.Text),
    -- | The AWS account ID associated with the registry that contains the images
    -- to describe. If you do not specify a registry, the default registry is
    -- assumed.
    registryId :: Core.Maybe Core.Text,
    -- | The repository that contains the images to describe.
    repositoryName :: Core.Text,
    -- | A list of image ID references that correspond to images to describe. The
    -- format of the @imageIds@ reference is @imageTag=tag@ or
    -- @imageDigest=digest@.
    imageIds :: [ImageIdentifier]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchGetImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceptedMediaTypes', 'batchGetImage_acceptedMediaTypes' - The accepted media types for the request.
--
-- Valid values: @application\/vnd.docker.distribution.manifest.v1+json@ |
-- @application\/vnd.docker.distribution.manifest.v2+json@ |
-- @application\/vnd.oci.image.manifest.v1+json@
--
-- 'registryId', 'batchGetImage_registryId' - The AWS account ID associated with the registry that contains the images
-- to describe. If you do not specify a registry, the default registry is
-- assumed.
--
-- 'repositoryName', 'batchGetImage_repositoryName' - The repository that contains the images to describe.
--
-- 'imageIds', 'batchGetImage_imageIds' - A list of image ID references that correspond to images to describe. The
-- format of the @imageIds@ reference is @imageTag=tag@ or
-- @imageDigest=digest@.
newBatchGetImage ::
  -- | 'repositoryName'
  Core.Text ->
  BatchGetImage
newBatchGetImage pRepositoryName_ =
  BatchGetImage'
    { acceptedMediaTypes = Core.Nothing,
      registryId = Core.Nothing,
      repositoryName = pRepositoryName_,
      imageIds = Core.mempty
    }

-- | The accepted media types for the request.
--
-- Valid values: @application\/vnd.docker.distribution.manifest.v1+json@ |
-- @application\/vnd.docker.distribution.manifest.v2+json@ |
-- @application\/vnd.oci.image.manifest.v1+json@
batchGetImage_acceptedMediaTypes :: Lens.Lens' BatchGetImage (Core.Maybe (Core.NonEmpty Core.Text))
batchGetImage_acceptedMediaTypes = Lens.lens (\BatchGetImage' {acceptedMediaTypes} -> acceptedMediaTypes) (\s@BatchGetImage' {} a -> s {acceptedMediaTypes = a} :: BatchGetImage) Core.. Lens.mapping Lens._Coerce

-- | The AWS account ID associated with the registry that contains the images
-- to describe. If you do not specify a registry, the default registry is
-- assumed.
batchGetImage_registryId :: Lens.Lens' BatchGetImage (Core.Maybe Core.Text)
batchGetImage_registryId = Lens.lens (\BatchGetImage' {registryId} -> registryId) (\s@BatchGetImage' {} a -> s {registryId = a} :: BatchGetImage)

-- | The repository that contains the images to describe.
batchGetImage_repositoryName :: Lens.Lens' BatchGetImage Core.Text
batchGetImage_repositoryName = Lens.lens (\BatchGetImage' {repositoryName} -> repositoryName) (\s@BatchGetImage' {} a -> s {repositoryName = a} :: BatchGetImage)

-- | A list of image ID references that correspond to images to describe. The
-- format of the @imageIds@ reference is @imageTag=tag@ or
-- @imageDigest=digest@.
batchGetImage_imageIds :: Lens.Lens' BatchGetImage [ImageIdentifier]
batchGetImage_imageIds = Lens.lens (\BatchGetImage' {imageIds} -> imageIds) (\s@BatchGetImage' {} a -> s {imageIds = a} :: BatchGetImage) Core.. Lens._Coerce

instance Core.AWSRequest BatchGetImage where
  type
    AWSResponse BatchGetImage =
      BatchGetImageResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchGetImageResponse'
            Core.<$> (x Core..?> "images" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "failures" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable BatchGetImage

instance Core.NFData BatchGetImage

instance Core.ToHeaders BatchGetImage where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonEC2ContainerRegistry_V20150921.BatchGetImage" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON BatchGetImage where
  toJSON BatchGetImage' {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceptedMediaTypes" Core..=)
              Core.<$> acceptedMediaTypes,
            ("registryId" Core..=) Core.<$> registryId,
            Core.Just ("repositoryName" Core..= repositoryName),
            Core.Just ("imageIds" Core..= imageIds)
          ]
      )

instance Core.ToPath BatchGetImage where
  toPath = Core.const "/"

instance Core.ToQuery BatchGetImage where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newBatchGetImageResponse' smart constructor.
data BatchGetImageResponse = BatchGetImageResponse'
  { -- | A list of image objects corresponding to the image references in the
    -- request.
    images :: Core.Maybe [Image],
    -- | Any failures associated with the call.
    failures :: Core.Maybe [ImageFailure],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchGetImageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'images', 'batchGetImageResponse_images' - A list of image objects corresponding to the image references in the
-- request.
--
-- 'failures', 'batchGetImageResponse_failures' - Any failures associated with the call.
--
-- 'httpStatus', 'batchGetImageResponse_httpStatus' - The response's http status code.
newBatchGetImageResponse ::
  -- | 'httpStatus'
  Core.Int ->
  BatchGetImageResponse
newBatchGetImageResponse pHttpStatus_ =
  BatchGetImageResponse'
    { images = Core.Nothing,
      failures = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of image objects corresponding to the image references in the
-- request.
batchGetImageResponse_images :: Lens.Lens' BatchGetImageResponse (Core.Maybe [Image])
batchGetImageResponse_images = Lens.lens (\BatchGetImageResponse' {images} -> images) (\s@BatchGetImageResponse' {} a -> s {images = a} :: BatchGetImageResponse) Core.. Lens.mapping Lens._Coerce

-- | Any failures associated with the call.
batchGetImageResponse_failures :: Lens.Lens' BatchGetImageResponse (Core.Maybe [ImageFailure])
batchGetImageResponse_failures = Lens.lens (\BatchGetImageResponse' {failures} -> failures) (\s@BatchGetImageResponse' {} a -> s {failures = a} :: BatchGetImageResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
batchGetImageResponse_httpStatus :: Lens.Lens' BatchGetImageResponse Core.Int
batchGetImageResponse_httpStatus = Lens.lens (\BatchGetImageResponse' {httpStatus} -> httpStatus) (\s@BatchGetImageResponse' {} a -> s {httpStatus = a} :: BatchGetImageResponse)

instance Core.NFData BatchGetImageResponse
