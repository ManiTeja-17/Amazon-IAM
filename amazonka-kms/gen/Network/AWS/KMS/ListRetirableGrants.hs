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
-- Module      : Network.AWS.KMS.ListRetirableGrants
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all grants in which the specified principal is the
-- @RetiringPrincipal@ in the grant.
--
-- You can specify any principal in your AWS account. The grants that are
-- returned include grants for CMKs in your AWS account and other AWS
-- accounts.
--
-- You might use this operation to determine which grants you may retire.
-- To retire a grant, use the RetireGrant operation.
--
-- __Cross-account use__: You must specify a principal in your AWS account.
-- However, this operation can return grants in any AWS account. You do not
-- need @kms:ListRetirableGrants@ permission (or any other additional
-- permission) in any AWS account other than your own.
--
-- __Required permissions__:
-- <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ListRetirableGrants>
-- (IAM policy) in your AWS account.
--
-- __Related operations:__
--
-- -   CreateGrant
--
-- -   ListGrants
--
-- -   RetireGrant
--
-- -   RevokeGrant
module Network.AWS.KMS.ListRetirableGrants
  ( -- * Creating a Request
    ListRetirableGrants (..),
    newListRetirableGrants,

    -- * Request Lenses
    listRetirableGrants_limit,
    listRetirableGrants_marker,
    listRetirableGrants_retiringPrincipal,

    -- * Destructuring the Response
    ListGrantsResponse (..),
    newListGrantsResponse,

    -- * Response Lenses
    listGrantsResponse_nextMarker,
    listGrantsResponse_grants,
    listGrantsResponse_truncated,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListRetirableGrants' smart constructor.
data ListRetirableGrants = ListRetirableGrants'
  { -- | Use this parameter to specify the maximum number of items to return.
    -- When this value is present, AWS KMS does not return more than the
    -- specified number of items, but it might return fewer.
    --
    -- This value is optional. If you include a value, it must be between 1 and
    -- 100, inclusive. If you do not include a value, it defaults to 50.
    limit :: Core.Maybe Core.Natural,
    -- | Use this parameter in a subsequent request after you receive a response
    -- with truncated results. Set it to the value of @NextMarker@ from the
    -- truncated response you just received.
    marker :: Core.Maybe Core.Text,
    -- | The retiring principal for which to list grants. Enter a principal in
    -- your AWS account.
    --
    -- To specify the retiring principal, use the
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)>
    -- of an AWS principal. Valid AWS principals include AWS accounts (root),
    -- IAM users, federated users, and assumed role users. For examples of the
    -- ARN syntax for specifying a principal, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)>
    -- in the Example ARNs section of the /Amazon Web Services General
    -- Reference/.
    retiringPrincipal :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListRetirableGrants' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'limit', 'listRetirableGrants_limit' - Use this parameter to specify the maximum number of items to return.
-- When this value is present, AWS KMS does not return more than the
-- specified number of items, but it might return fewer.
--
-- This value is optional. If you include a value, it must be between 1 and
-- 100, inclusive. If you do not include a value, it defaults to 50.
--
-- 'marker', 'listRetirableGrants_marker' - Use this parameter in a subsequent request after you receive a response
-- with truncated results. Set it to the value of @NextMarker@ from the
-- truncated response you just received.
--
-- 'retiringPrincipal', 'listRetirableGrants_retiringPrincipal' - The retiring principal for which to list grants. Enter a principal in
-- your AWS account.
--
-- To specify the retiring principal, use the
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)>
-- of an AWS principal. Valid AWS principals include AWS accounts (root),
-- IAM users, federated users, and assumed role users. For examples of the
-- ARN syntax for specifying a principal, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)>
-- in the Example ARNs section of the /Amazon Web Services General
-- Reference/.
newListRetirableGrants ::
  -- | 'retiringPrincipal'
  Core.Text ->
  ListRetirableGrants
newListRetirableGrants pRetiringPrincipal_ =
  ListRetirableGrants'
    { limit = Core.Nothing,
      marker = Core.Nothing,
      retiringPrincipal = pRetiringPrincipal_
    }

-- | Use this parameter to specify the maximum number of items to return.
-- When this value is present, AWS KMS does not return more than the
-- specified number of items, but it might return fewer.
--
-- This value is optional. If you include a value, it must be between 1 and
-- 100, inclusive. If you do not include a value, it defaults to 50.
listRetirableGrants_limit :: Lens.Lens' ListRetirableGrants (Core.Maybe Core.Natural)
listRetirableGrants_limit = Lens.lens (\ListRetirableGrants' {limit} -> limit) (\s@ListRetirableGrants' {} a -> s {limit = a} :: ListRetirableGrants)

-- | Use this parameter in a subsequent request after you receive a response
-- with truncated results. Set it to the value of @NextMarker@ from the
-- truncated response you just received.
listRetirableGrants_marker :: Lens.Lens' ListRetirableGrants (Core.Maybe Core.Text)
listRetirableGrants_marker = Lens.lens (\ListRetirableGrants' {marker} -> marker) (\s@ListRetirableGrants' {} a -> s {marker = a} :: ListRetirableGrants)

-- | The retiring principal for which to list grants. Enter a principal in
-- your AWS account.
--
-- To specify the retiring principal, use the
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)>
-- of an AWS principal. Valid AWS principals include AWS accounts (root),
-- IAM users, federated users, and assumed role users. For examples of the
-- ARN syntax for specifying a principal, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)>
-- in the Example ARNs section of the /Amazon Web Services General
-- Reference/.
listRetirableGrants_retiringPrincipal :: Lens.Lens' ListRetirableGrants Core.Text
listRetirableGrants_retiringPrincipal = Lens.lens (\ListRetirableGrants' {retiringPrincipal} -> retiringPrincipal) (\s@ListRetirableGrants' {} a -> s {retiringPrincipal = a} :: ListRetirableGrants)

instance Core.AWSRequest ListRetirableGrants where
  type
    AWSResponse ListRetirableGrants =
      ListGrantsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Core.Hashable ListRetirableGrants

instance Core.NFData ListRetirableGrants

instance Core.ToHeaders ListRetirableGrants where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TrentService.ListRetirableGrants" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListRetirableGrants where
  toJSON ListRetirableGrants' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Limit" Core..=) Core.<$> limit,
            ("Marker" Core..=) Core.<$> marker,
            Core.Just
              ("RetiringPrincipal" Core..= retiringPrincipal)
          ]
      )

instance Core.ToPath ListRetirableGrants where
  toPath = Core.const "/"

instance Core.ToQuery ListRetirableGrants where
  toQuery = Core.const Core.mempty
