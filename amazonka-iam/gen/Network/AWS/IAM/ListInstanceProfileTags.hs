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
-- Module      : Network.AWS.IAM.ListInstanceProfileTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified IAM instance profile.
-- The returned list of tags is sorted by tag key. For more information
-- about tagging, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources>
-- in the /IAM User Guide/.
module Network.AWS.IAM.ListInstanceProfileTags
  ( -- * Creating a Request
    ListInstanceProfileTags (..),
    newListInstanceProfileTags,

    -- * Request Lenses
    listInstanceProfileTags_maxItems,
    listInstanceProfileTags_marker,
    listInstanceProfileTags_instanceProfileName,

    -- * Destructuring the Response
    ListInstanceProfileTagsResponse (..),
    newListInstanceProfileTagsResponse,

    -- * Response Lenses
    listInstanceProfileTagsResponse_isTruncated,
    listInstanceProfileTagsResponse_marker,
    listInstanceProfileTagsResponse_httpStatus,
    listInstanceProfileTagsResponse_tags,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IAM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListInstanceProfileTags' smart constructor.
data ListInstanceProfileTags = ListInstanceProfileTags'
  { -- | (Optional) Use this only when paginating results to indicate the maximum
    -- number of items that you want in the response. If additional items exist
    -- beyond the maximum that you specify, the @IsTruncated@ response element
    -- is @true@.
    --
    -- If you do not include this parameter, it defaults to 100. Note that IAM
    -- might return fewer results, even when more results are available. In
    -- that case, the @IsTruncated@ response element returns @true@, and
    -- @Marker@ contains a value to include in the subsequent call that tells
    -- the service where to continue from.
    maxItems :: Core.Maybe Core.Natural,
    -- | Use this parameter only when paginating results and only after you
    -- receive a response indicating that the results are truncated. Set it to
    -- the value of the @Marker@ element in the response that you received to
    -- indicate where the next call should start.
    marker :: Core.Maybe Core.Text,
    -- | The name of the IAM instance profile whose tags you want to see.
    --
    -- This parameter accepts (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- that consist of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: =,.\@-
    instanceProfileName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListInstanceProfileTags' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxItems', 'listInstanceProfileTags_maxItems' - (Optional) Use this only when paginating results to indicate the maximum
-- number of items that you want in the response. If additional items exist
-- beyond the maximum that you specify, the @IsTruncated@ response element
-- is @true@.
--
-- If you do not include this parameter, it defaults to 100. Note that IAM
-- might return fewer results, even when more results are available. In
-- that case, the @IsTruncated@ response element returns @true@, and
-- @Marker@ contains a value to include in the subsequent call that tells
-- the service where to continue from.
--
-- 'marker', 'listInstanceProfileTags_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
--
-- 'instanceProfileName', 'listInstanceProfileTags_instanceProfileName' - The name of the IAM instance profile whose tags you want to see.
--
-- This parameter accepts (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- that consist of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: =,.\@-
newListInstanceProfileTags ::
  -- | 'instanceProfileName'
  Core.Text ->
  ListInstanceProfileTags
newListInstanceProfileTags pInstanceProfileName_ =
  ListInstanceProfileTags'
    { maxItems = Core.Nothing,
      marker = Core.Nothing,
      instanceProfileName = pInstanceProfileName_
    }

-- | (Optional) Use this only when paginating results to indicate the maximum
-- number of items that you want in the response. If additional items exist
-- beyond the maximum that you specify, the @IsTruncated@ response element
-- is @true@.
--
-- If you do not include this parameter, it defaults to 100. Note that IAM
-- might return fewer results, even when more results are available. In
-- that case, the @IsTruncated@ response element returns @true@, and
-- @Marker@ contains a value to include in the subsequent call that tells
-- the service where to continue from.
listInstanceProfileTags_maxItems :: Lens.Lens' ListInstanceProfileTags (Core.Maybe Core.Natural)
listInstanceProfileTags_maxItems = Lens.lens (\ListInstanceProfileTags' {maxItems} -> maxItems) (\s@ListInstanceProfileTags' {} a -> s {maxItems = a} :: ListInstanceProfileTags)

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
listInstanceProfileTags_marker :: Lens.Lens' ListInstanceProfileTags (Core.Maybe Core.Text)
listInstanceProfileTags_marker = Lens.lens (\ListInstanceProfileTags' {marker} -> marker) (\s@ListInstanceProfileTags' {} a -> s {marker = a} :: ListInstanceProfileTags)

-- | The name of the IAM instance profile whose tags you want to see.
--
-- This parameter accepts (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- that consist of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: =,.\@-
listInstanceProfileTags_instanceProfileName :: Lens.Lens' ListInstanceProfileTags Core.Text
listInstanceProfileTags_instanceProfileName = Lens.lens (\ListInstanceProfileTags' {instanceProfileName} -> instanceProfileName) (\s@ListInstanceProfileTags' {} a -> s {instanceProfileName = a} :: ListInstanceProfileTags)

instance Core.AWSRequest ListInstanceProfileTags where
  type
    AWSResponse ListInstanceProfileTags =
      ListInstanceProfileTagsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListInstanceProfileTagsResult"
      ( \s h x ->
          ListInstanceProfileTagsResponse'
            Core.<$> (x Core..@? "IsTruncated")
            Core.<*> (x Core..@? "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
            Core.<*> ( x Core..@? "Tags" Core..!@ Core.mempty
                         Core.>>= Core.parseXMLList "member"
                     )
      )

instance Core.Hashable ListInstanceProfileTags

instance Core.NFData ListInstanceProfileTags

instance Core.ToHeaders ListInstanceProfileTags where
  toHeaders = Core.const Core.mempty

instance Core.ToPath ListInstanceProfileTags where
  toPath = Core.const "/"

instance Core.ToQuery ListInstanceProfileTags where
  toQuery ListInstanceProfileTags' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("ListInstanceProfileTags" :: Core.ByteString),
        "Version" Core.=: ("2010-05-08" :: Core.ByteString),
        "MaxItems" Core.=: maxItems,
        "Marker" Core.=: marker,
        "InstanceProfileName" Core.=: instanceProfileName
      ]

-- | /See:/ 'newListInstanceProfileTagsResponse' smart constructor.
data ListInstanceProfileTagsResponse = ListInstanceProfileTagsResponse'
  { -- | A flag that indicates whether there are more items to return. If your
    -- results were truncated, you can use the @Marker@ request parameter to
    -- make a subsequent pagination request that retrieves more items. Note
    -- that IAM might return fewer than the @MaxItems@ number of results even
    -- when more results are available. Check @IsTruncated@ after every call to
    -- ensure that you receive all of your results.
    isTruncated :: Core.Maybe Core.Bool,
    -- | When @IsTruncated@ is @true@, this element is present and contains the
    -- value to use for the @Marker@ parameter in a subsequent pagination
    -- request.
    marker :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | The list of tags that are currently attached to the IAM instance
    -- profile. Each tag consists of a key name and an associated value. If no
    -- tags are attached to the specified resource, the response contains an
    -- empty list.
    tags :: [Tag]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListInstanceProfileTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isTruncated', 'listInstanceProfileTagsResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can use the @Marker@ request parameter to
-- make a subsequent pagination request that retrieves more items. Note
-- that IAM might return fewer than the @MaxItems@ number of results even
-- when more results are available. Check @IsTruncated@ after every call to
-- ensure that you receive all of your results.
--
-- 'marker', 'listInstanceProfileTagsResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'httpStatus', 'listInstanceProfileTagsResponse_httpStatus' - The response's http status code.
--
-- 'tags', 'listInstanceProfileTagsResponse_tags' - The list of tags that are currently attached to the IAM instance
-- profile. Each tag consists of a key name and an associated value. If no
-- tags are attached to the specified resource, the response contains an
-- empty list.
newListInstanceProfileTagsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListInstanceProfileTagsResponse
newListInstanceProfileTagsResponse pHttpStatus_ =
  ListInstanceProfileTagsResponse'
    { isTruncated =
        Core.Nothing,
      marker = Core.Nothing,
      httpStatus = pHttpStatus_,
      tags = Core.mempty
    }

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can use the @Marker@ request parameter to
-- make a subsequent pagination request that retrieves more items. Note
-- that IAM might return fewer than the @MaxItems@ number of results even
-- when more results are available. Check @IsTruncated@ after every call to
-- ensure that you receive all of your results.
listInstanceProfileTagsResponse_isTruncated :: Lens.Lens' ListInstanceProfileTagsResponse (Core.Maybe Core.Bool)
listInstanceProfileTagsResponse_isTruncated = Lens.lens (\ListInstanceProfileTagsResponse' {isTruncated} -> isTruncated) (\s@ListInstanceProfileTagsResponse' {} a -> s {isTruncated = a} :: ListInstanceProfileTagsResponse)

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
listInstanceProfileTagsResponse_marker :: Lens.Lens' ListInstanceProfileTagsResponse (Core.Maybe Core.Text)
listInstanceProfileTagsResponse_marker = Lens.lens (\ListInstanceProfileTagsResponse' {marker} -> marker) (\s@ListInstanceProfileTagsResponse' {} a -> s {marker = a} :: ListInstanceProfileTagsResponse)

-- | The response's http status code.
listInstanceProfileTagsResponse_httpStatus :: Lens.Lens' ListInstanceProfileTagsResponse Core.Int
listInstanceProfileTagsResponse_httpStatus = Lens.lens (\ListInstanceProfileTagsResponse' {httpStatus} -> httpStatus) (\s@ListInstanceProfileTagsResponse' {} a -> s {httpStatus = a} :: ListInstanceProfileTagsResponse)

-- | The list of tags that are currently attached to the IAM instance
-- profile. Each tag consists of a key name and an associated value. If no
-- tags are attached to the specified resource, the response contains an
-- empty list.
listInstanceProfileTagsResponse_tags :: Lens.Lens' ListInstanceProfileTagsResponse [Tag]
listInstanceProfileTagsResponse_tags = Lens.lens (\ListInstanceProfileTagsResponse' {tags} -> tags) (\s@ListInstanceProfileTagsResponse' {} a -> s {tags = a} :: ListInstanceProfileTagsResponse) Core.. Lens._Coerce

instance Core.NFData ListInstanceProfileTagsResponse
