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
-- Module      : Network.AWS.StorageGateway.RemoveTagsFromResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more tags from the specified resource. This operation is
-- supported in storage gateways of all types.
module Network.AWS.StorageGateway.RemoveTagsFromResource
  ( -- * Creating a Request
    RemoveTagsFromResource (..),
    newRemoveTagsFromResource,

    -- * Request Lenses
    removeTagsFromResource_resourceARN,
    removeTagsFromResource_tagKeys,

    -- * Destructuring the Response
    RemoveTagsFromResourceResponse (..),
    newRemoveTagsFromResourceResponse,

    -- * Response Lenses
    removeTagsFromResourceResponse_resourceARN,
    removeTagsFromResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.StorageGateway.Types

-- | RemoveTagsFromResourceInput
--
-- /See:/ 'newRemoveTagsFromResource' smart constructor.
data RemoveTagsFromResource = RemoveTagsFromResource'
  { -- | The Amazon Resource Name (ARN) of the resource you want to remove the
    -- tags from.
    resourceARN :: Core.Text,
    -- | The keys of the tags you want to remove from the specified resource. A
    -- tag is composed of a key-value pair.
    tagKeys :: [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RemoveTagsFromResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARN', 'removeTagsFromResource_resourceARN' - The Amazon Resource Name (ARN) of the resource you want to remove the
-- tags from.
--
-- 'tagKeys', 'removeTagsFromResource_tagKeys' - The keys of the tags you want to remove from the specified resource. A
-- tag is composed of a key-value pair.
newRemoveTagsFromResource ::
  -- | 'resourceARN'
  Core.Text ->
  RemoveTagsFromResource
newRemoveTagsFromResource pResourceARN_ =
  RemoveTagsFromResource'
    { resourceARN =
        pResourceARN_,
      tagKeys = Core.mempty
    }

-- | The Amazon Resource Name (ARN) of the resource you want to remove the
-- tags from.
removeTagsFromResource_resourceARN :: Lens.Lens' RemoveTagsFromResource Core.Text
removeTagsFromResource_resourceARN = Lens.lens (\RemoveTagsFromResource' {resourceARN} -> resourceARN) (\s@RemoveTagsFromResource' {} a -> s {resourceARN = a} :: RemoveTagsFromResource)

-- | The keys of the tags you want to remove from the specified resource. A
-- tag is composed of a key-value pair.
removeTagsFromResource_tagKeys :: Lens.Lens' RemoveTagsFromResource [Core.Text]
removeTagsFromResource_tagKeys = Lens.lens (\RemoveTagsFromResource' {tagKeys} -> tagKeys) (\s@RemoveTagsFromResource' {} a -> s {tagKeys = a} :: RemoveTagsFromResource) Core.. Lens._Coerce

instance Core.AWSRequest RemoveTagsFromResource where
  type
    AWSResponse RemoveTagsFromResource =
      RemoveTagsFromResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RemoveTagsFromResourceResponse'
            Core.<$> (x Core..?> "ResourceARN")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable RemoveTagsFromResource

instance Core.NFData RemoveTagsFromResource

instance Core.ToHeaders RemoveTagsFromResource where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.RemoveTagsFromResource" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON RemoveTagsFromResource where
  toJSON RemoveTagsFromResource' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ResourceARN" Core..= resourceARN),
            Core.Just ("TagKeys" Core..= tagKeys)
          ]
      )

instance Core.ToPath RemoveTagsFromResource where
  toPath = Core.const "/"

instance Core.ToQuery RemoveTagsFromResource where
  toQuery = Core.const Core.mempty

-- | RemoveTagsFromResourceOutput
--
-- /See:/ 'newRemoveTagsFromResourceResponse' smart constructor.
data RemoveTagsFromResourceResponse = RemoveTagsFromResourceResponse'
  { -- | The Amazon Resource Name (ARN) of the resource that the tags were
    -- removed from.
    resourceARN :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RemoveTagsFromResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARN', 'removeTagsFromResourceResponse_resourceARN' - The Amazon Resource Name (ARN) of the resource that the tags were
-- removed from.
--
-- 'httpStatus', 'removeTagsFromResourceResponse_httpStatus' - The response's http status code.
newRemoveTagsFromResourceResponse ::
  -- | 'httpStatus'
  Core.Int ->
  RemoveTagsFromResourceResponse
newRemoveTagsFromResourceResponse pHttpStatus_ =
  RemoveTagsFromResourceResponse'
    { resourceARN =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the resource that the tags were
-- removed from.
removeTagsFromResourceResponse_resourceARN :: Lens.Lens' RemoveTagsFromResourceResponse (Core.Maybe Core.Text)
removeTagsFromResourceResponse_resourceARN = Lens.lens (\RemoveTagsFromResourceResponse' {resourceARN} -> resourceARN) (\s@RemoveTagsFromResourceResponse' {} a -> s {resourceARN = a} :: RemoveTagsFromResourceResponse)

-- | The response's http status code.
removeTagsFromResourceResponse_httpStatus :: Lens.Lens' RemoveTagsFromResourceResponse Core.Int
removeTagsFromResourceResponse_httpStatus = Lens.lens (\RemoveTagsFromResourceResponse' {httpStatus} -> httpStatus) (\s@RemoveTagsFromResourceResponse' {} a -> s {httpStatus = a} :: RemoveTagsFromResourceResponse)

instance Core.NFData RemoveTagsFromResourceResponse
