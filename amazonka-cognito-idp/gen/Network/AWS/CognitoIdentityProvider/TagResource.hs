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
-- Module      : Network.AWS.CognitoIdentityProvider.TagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assigns a set of tags to an Amazon Cognito user pool. A tag is a label
-- that you can use to categorize and manage user pools in different ways,
-- such as by purpose, owner, environment, or other criteria.
--
-- Each tag consists of a key and value, both of which you define. A key is
-- a general category for more specific values. For example, if you have
-- two versions of a user pool, one for testing and another for production,
-- you might assign an @Environment@ tag key to both user pools. The value
-- of this key might be @Test@ for one user pool and @Production@ for the
-- other.
--
-- Tags are useful for cost tracking and access control. You can activate
-- your tags so that they appear on the Billing and Cost Management
-- console, where you can track the costs associated with your user pools.
-- In an IAM policy, you can constrain permissions for user pools based on
-- specific tags or tag values.
--
-- You can use this action up to 5 times per second, per account. A user
-- pool can have as many as 50 tags.
module Network.AWS.CognitoIdentityProvider.TagResource
  ( -- * Creating a Request
    TagResource (..),
    newTagResource,

    -- * Request Lenses
    tagResource_resourceArn,
    tagResource_tags,

    -- * Destructuring the Response
    TagResourceResponse (..),
    newTagResourceResponse,

    -- * Response Lenses
    tagResourceResponse_httpStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTagResource' smart constructor.
data TagResource = TagResource'
  { -- | The Amazon Resource Name (ARN) of the user pool to assign the tags to.
    resourceArn :: Core.Text,
    -- | The tags to assign to the user pool.
    tags :: Core.HashMap Core.Text Core.Text
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
-- 'resourceArn', 'tagResource_resourceArn' - The Amazon Resource Name (ARN) of the user pool to assign the tags to.
--
-- 'tags', 'tagResource_tags' - The tags to assign to the user pool.
newTagResource ::
  -- | 'resourceArn'
  Core.Text ->
  TagResource
newTagResource pResourceArn_ =
  TagResource'
    { resourceArn = pResourceArn_,
      tags = Core.mempty
    }

-- | The Amazon Resource Name (ARN) of the user pool to assign the tags to.
tagResource_resourceArn :: Lens.Lens' TagResource Core.Text
tagResource_resourceArn = Lens.lens (\TagResource' {resourceArn} -> resourceArn) (\s@TagResource' {} a -> s {resourceArn = a} :: TagResource)

-- | The tags to assign to the user pool.
tagResource_tags :: Lens.Lens' TagResource (Core.HashMap Core.Text Core.Text)
tagResource_tags = Lens.lens (\TagResource' {tags} -> tags) (\s@TagResource' {} a -> s {tags = a} :: TagResource) Core.. Lens._Coerce

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
              Core.=# ( "AWSCognitoIdentityProviderService.TagResource" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON TagResource where
  toJSON TagResource' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ResourceArn" Core..= resourceArn),
            Core.Just ("Tags" Core..= tags)
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
