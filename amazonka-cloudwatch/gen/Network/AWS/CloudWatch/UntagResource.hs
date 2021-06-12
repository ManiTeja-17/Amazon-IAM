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
-- Module      : Network.AWS.CloudWatch.UntagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more tags from the specified resource.
module Network.AWS.CloudWatch.UntagResource
  ( -- * Creating a Request
    UntagResource (..),
    newUntagResource,

    -- * Request Lenses
    untagResource_resourceARN,
    untagResource_tagKeys,

    -- * Destructuring the Response
    UntagResourceResponse (..),
    newUntagResourceResponse,

    -- * Response Lenses
    untagResourceResponse_httpStatus,
  )
where

import Network.AWS.CloudWatch.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUntagResource' smart constructor.
data UntagResource = UntagResource'
  { -- | The ARN of the CloudWatch resource that you\'re removing tags from.
    --
    -- The ARN format of an alarm is
    -- @arn:aws:cloudwatch:Region:account-id:alarm:alarm-name @
    --
    -- The ARN format of a Contributor Insights rule is
    -- @arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name @
    --
    -- For more information about ARN format, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies Resource Types Defined by Amazon CloudWatch>
    -- in the /Amazon Web Services General Reference/.
    resourceARN :: Core.Text,
    -- | The list of tag keys to remove from the resource.
    tagKeys :: [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UntagResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARN', 'untagResource_resourceARN' - The ARN of the CloudWatch resource that you\'re removing tags from.
--
-- The ARN format of an alarm is
-- @arn:aws:cloudwatch:Region:account-id:alarm:alarm-name @
--
-- The ARN format of a Contributor Insights rule is
-- @arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name @
--
-- For more information about ARN format, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies Resource Types Defined by Amazon CloudWatch>
-- in the /Amazon Web Services General Reference/.
--
-- 'tagKeys', 'untagResource_tagKeys' - The list of tag keys to remove from the resource.
newUntagResource ::
  -- | 'resourceARN'
  Core.Text ->
  UntagResource
newUntagResource pResourceARN_ =
  UntagResource'
    { resourceARN = pResourceARN_,
      tagKeys = Core.mempty
    }

-- | The ARN of the CloudWatch resource that you\'re removing tags from.
--
-- The ARN format of an alarm is
-- @arn:aws:cloudwatch:Region:account-id:alarm:alarm-name @
--
-- The ARN format of a Contributor Insights rule is
-- @arn:aws:cloudwatch:Region:account-id:insight-rule:insight-rule-name @
--
-- For more information about ARN format, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies Resource Types Defined by Amazon CloudWatch>
-- in the /Amazon Web Services General Reference/.
untagResource_resourceARN :: Lens.Lens' UntagResource Core.Text
untagResource_resourceARN = Lens.lens (\UntagResource' {resourceARN} -> resourceARN) (\s@UntagResource' {} a -> s {resourceARN = a} :: UntagResource)

-- | The list of tag keys to remove from the resource.
untagResource_tagKeys :: Lens.Lens' UntagResource [Core.Text]
untagResource_tagKeys = Lens.lens (\UntagResource' {tagKeys} -> tagKeys) (\s@UntagResource' {} a -> s {tagKeys = a} :: UntagResource) Core.. Lens._Coerce

instance Core.AWSRequest UntagResource where
  type
    AWSResponse UntagResource =
      UntagResourceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "UntagResourceResult"
      ( \s h x ->
          UntagResourceResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UntagResource

instance Core.NFData UntagResource

instance Core.ToHeaders UntagResource where
  toHeaders = Core.const Core.mempty

instance Core.ToPath UntagResource where
  toPath = Core.const "/"

instance Core.ToQuery UntagResource where
  toQuery UntagResource' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("UntagResource" :: Core.ByteString),
        "Version" Core.=: ("2010-08-01" :: Core.ByteString),
        "ResourceARN" Core.=: resourceARN,
        "TagKeys" Core.=: Core.toQueryList "member" tagKeys
      ]

-- | /See:/ 'newUntagResourceResponse' smart constructor.
data UntagResourceResponse = UntagResourceResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UntagResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'untagResourceResponse_httpStatus' - The response's http status code.
newUntagResourceResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UntagResourceResponse
newUntagResourceResponse pHttpStatus_ =
  UntagResourceResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
untagResourceResponse_httpStatus :: Lens.Lens' UntagResourceResponse Core.Int
untagResourceResponse_httpStatus = Lens.lens (\UntagResourceResponse' {httpStatus} -> httpStatus) (\s@UntagResourceResponse' {} a -> s {httpStatus = a} :: UntagResourceResponse)

instance Core.NFData UntagResourceResponse
