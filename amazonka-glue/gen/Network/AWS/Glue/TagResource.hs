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
-- Module      : Network.AWS.Glue.TagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds tags to a resource. A tag is a label you can assign to an AWS
-- resource. In AWS Glue, you can tag only certain resources. For
-- information about what resources you can tag, see
-- <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue>.
module Network.AWS.Glue.TagResource
  ( -- * Creating a Request
    TagResource (..),
    newTagResource,

    -- * Request Lenses
    tagResource_resourceArn,
    tagResource_tagsToAdd,

    -- * Destructuring the Response
    TagResourceResponse (..),
    newTagResourceResponse,

    -- * Response Lenses
    tagResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTagResource' smart constructor.
data TagResource = TagResource'
  { -- | The ARN of the AWS Glue resource to which to add the tags. For more
    -- information about AWS Glue resource ARNs, see the
    -- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id AWS Glue ARN string pattern>.
    resourceArn :: Core.Text,
    -- | Tags to add to this resource.
    tagsToAdd :: Core.HashMap Core.Text Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TagResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'tagResource_resourceArn' - The ARN of the AWS Glue resource to which to add the tags. For more
-- information about AWS Glue resource ARNs, see the
-- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id AWS Glue ARN string pattern>.
--
-- 'tagsToAdd', 'tagResource_tagsToAdd' - Tags to add to this resource.
newTagResource ::
  -- | 'resourceArn'
  Core.Text ->
  TagResource
newTagResource pResourceArn_ =
  TagResource'
    { resourceArn = pResourceArn_,
      tagsToAdd = Core.mempty
    }

-- | The ARN of the AWS Glue resource to which to add the tags. For more
-- information about AWS Glue resource ARNs, see the
-- <https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id AWS Glue ARN string pattern>.
tagResource_resourceArn :: Lens.Lens' TagResource Core.Text
tagResource_resourceArn = Lens.lens (\TagResource' {resourceArn} -> resourceArn) (\s@TagResource' {} a -> s {resourceArn = a} :: TagResource)

-- | Tags to add to this resource.
tagResource_tagsToAdd :: Lens.Lens' TagResource (Core.HashMap Core.Text Core.Text)
tagResource_tagsToAdd = Lens.lens (\TagResource' {tagsToAdd} -> tagsToAdd) (\s@TagResource' {} a -> s {tagsToAdd = a} :: TagResource) Core.. Lens._Coerce

instance Core.AWSRequest TagResource where
  type AWSResponse TagResource = TagResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          TagResourceResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable TagResource

instance Core.NFData TagResource

instance Core.ToHeaders TagResource where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.TagResource" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON TagResource where
  toJSON TagResource' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ResourceArn" Core..= resourceArn),
            Core.Just ("TagsToAdd" Core..= tagsToAdd)
          ]
      )

instance Core.ToPath TagResource where
  toPath = Core.const "/"

instance Core.ToQuery TagResource where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newTagResourceResponse' smart constructor.
data TagResourceResponse = TagResourceResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TagResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'tagResourceResponse_httpStatus' - The response's http status code.
newTagResourceResponse ::
  -- | 'httpStatus'
  Core.Int ->
  TagResourceResponse
newTagResourceResponse pHttpStatus_ =
  TagResourceResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
tagResourceResponse_httpStatus :: Lens.Lens' TagResourceResponse Core.Int
tagResourceResponse_httpStatus = Lens.lens (\TagResourceResponse' {httpStatus} -> httpStatus) (\s@TagResourceResponse' {} a -> s {httpStatus = a} :: TagResourceResponse)

instance Core.NFData TagResourceResponse
