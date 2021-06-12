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
-- Module      : Network.AWS.Discovery.CreateTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more tags for configuration items. Tags are metadata that
-- help you categorize IT assets. This API accepts a list of multiple
-- configuration items.
module Network.AWS.Discovery.CreateTags
  ( -- * Creating a Request
    CreateTags (..),
    newCreateTags,

    -- * Request Lenses
    createTags_configurationIds,
    createTags_tags,

    -- * Destructuring the Response
    CreateTagsResponse (..),
    newCreateTagsResponse,

    -- * Response Lenses
    createTagsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Discovery.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateTags' smart constructor.
data CreateTags = CreateTags'
  { -- | A list of configuration items that you want to tag.
    configurationIds :: [Core.Text],
    -- | Tags that you want to associate with one or more configuration items.
    -- Specify the tags that you want to create in a /key/-/value/ format. For
    -- example:
    --
    -- @{\"key\": \"serverType\", \"value\": \"webServer\"}@
    tags :: [Tag]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateTags' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationIds', 'createTags_configurationIds' - A list of configuration items that you want to tag.
--
-- 'tags', 'createTags_tags' - Tags that you want to associate with one or more configuration items.
-- Specify the tags that you want to create in a /key/-/value/ format. For
-- example:
--
-- @{\"key\": \"serverType\", \"value\": \"webServer\"}@
newCreateTags ::
  CreateTags
newCreateTags =
  CreateTags'
    { configurationIds = Core.mempty,
      tags = Core.mempty
    }

-- | A list of configuration items that you want to tag.
createTags_configurationIds :: Lens.Lens' CreateTags [Core.Text]
createTags_configurationIds = Lens.lens (\CreateTags' {configurationIds} -> configurationIds) (\s@CreateTags' {} a -> s {configurationIds = a} :: CreateTags) Core.. Lens._Coerce

-- | Tags that you want to associate with one or more configuration items.
-- Specify the tags that you want to create in a /key/-/value/ format. For
-- example:
--
-- @{\"key\": \"serverType\", \"value\": \"webServer\"}@
createTags_tags :: Lens.Lens' CreateTags [Tag]
createTags_tags = Lens.lens (\CreateTags' {tags} -> tags) (\s@CreateTags' {} a -> s {tags = a} :: CreateTags) Core.. Lens._Coerce

instance Core.AWSRequest CreateTags where
  type AWSResponse CreateTags = CreateTagsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateTagsResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateTags

instance Core.NFData CreateTags

instance Core.ToHeaders CreateTags where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSPoseidonService_V2015_11_01.CreateTags" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateTags where
  toJSON CreateTags' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("configurationIds" Core..= configurationIds),
            Core.Just ("tags" Core..= tags)
          ]
      )

instance Core.ToPath CreateTags where
  toPath = Core.const "/"

instance Core.ToQuery CreateTags where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateTagsResponse' smart constructor.
data CreateTagsResponse = CreateTagsResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createTagsResponse_httpStatus' - The response's http status code.
newCreateTagsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateTagsResponse
newCreateTagsResponse pHttpStatus_ =
  CreateTagsResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
createTagsResponse_httpStatus :: Lens.Lens' CreateTagsResponse Core.Int
createTagsResponse_httpStatus = Lens.lens (\CreateTagsResponse' {httpStatus} -> httpStatus) (\s@CreateTagsResponse' {} a -> s {httpStatus = a} :: CreateTagsResponse)

instance Core.NFData CreateTagsResponse
