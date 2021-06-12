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
-- Module      : Network.AWS.ElasticSearch.ListTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all tags for the given Elasticsearch domain.
module Network.AWS.ElasticSearch.ListTags
  ( -- * Creating a Request
    ListTags (..),
    newListTags,

    -- * Request Lenses
    listTags_arn,

    -- * Destructuring the Response
    ListTagsResponse (..),
    newListTagsResponse,

    -- * Response Lenses
    listTagsResponse_tagList,
    listTagsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @ListTags@ operation. Specify the
-- @ARN@ for the Elasticsearch domain to which the tags are attached that
-- you want to view are attached.
--
-- /See:/ 'newListTags' smart constructor.
data ListTags = ListTags'
  { -- | Specify the @ARN@ for the Elasticsearch domain to which the tags are
    -- attached that you want to view.
    arn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListTags' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'listTags_arn' - Specify the @ARN@ for the Elasticsearch domain to which the tags are
-- attached that you want to view.
newListTags ::
  -- | 'arn'
  Core.Text ->
  ListTags
newListTags pARN_ = ListTags' {arn = pARN_}

-- | Specify the @ARN@ for the Elasticsearch domain to which the tags are
-- attached that you want to view.
listTags_arn :: Lens.Lens' ListTags Core.Text
listTags_arn = Lens.lens (\ListTags' {arn} -> arn) (\s@ListTags' {} a -> s {arn = a} :: ListTags)

instance Core.AWSRequest ListTags where
  type AWSResponse ListTags = ListTagsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTagsResponse'
            Core.<$> (x Core..?> "TagList" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListTags

instance Core.NFData ListTags

instance Core.ToHeaders ListTags where
  toHeaders = Core.const Core.mempty

instance Core.ToPath ListTags where
  toPath = Core.const "/2015-01-01/tags/"

instance Core.ToQuery ListTags where
  toQuery ListTags' {..} =
    Core.mconcat ["arn" Core.=: arn]

-- | The result of a @ListTags@ operation. Contains tags for all requested
-- Elasticsearch domains.
--
-- /See:/ 'newListTagsResponse' smart constructor.
data ListTagsResponse = ListTagsResponse'
  { -- | List of @Tag@ for the requested Elasticsearch domain.
    tagList :: Core.Maybe [Tag],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagList', 'listTagsResponse_tagList' - List of @Tag@ for the requested Elasticsearch domain.
--
-- 'httpStatus', 'listTagsResponse_httpStatus' - The response's http status code.
newListTagsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListTagsResponse
newListTagsResponse pHttpStatus_ =
  ListTagsResponse'
    { tagList = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of @Tag@ for the requested Elasticsearch domain.
listTagsResponse_tagList :: Lens.Lens' ListTagsResponse (Core.Maybe [Tag])
listTagsResponse_tagList = Lens.lens (\ListTagsResponse' {tagList} -> tagList) (\s@ListTagsResponse' {} a -> s {tagList = a} :: ListTagsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listTagsResponse_httpStatus :: Lens.Lens' ListTagsResponse Core.Int
listTagsResponse_httpStatus = Lens.lens (\ListTagsResponse' {httpStatus} -> httpStatus) (\s@ListTagsResponse' {} a -> s {httpStatus = a} :: ListTagsResponse)

instance Core.NFData ListTagsResponse
