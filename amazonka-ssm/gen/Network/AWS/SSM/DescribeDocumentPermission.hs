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
-- Module      : Network.AWS.SSM.DescribeDocumentPermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the permissions for a Systems Manager document. If you created
-- the document, you are the owner. If a document is shared, it can either
-- be shared privately (by specifying a user\'s AWS account ID) or publicly
-- (/All/).
module Network.AWS.SSM.DescribeDocumentPermission
  ( -- * Creating a Request
    DescribeDocumentPermission (..),
    newDescribeDocumentPermission,

    -- * Request Lenses
    describeDocumentPermission_nextToken,
    describeDocumentPermission_maxResults,
    describeDocumentPermission_name,
    describeDocumentPermission_permissionType,

    -- * Destructuring the Response
    DescribeDocumentPermissionResponse (..),
    newDescribeDocumentPermissionResponse,

    -- * Response Lenses
    describeDocumentPermissionResponse_accountIds,
    describeDocumentPermissionResponse_nextToken,
    describeDocumentPermissionResponse_accountSharingInfoList,
    describeDocumentPermissionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types

-- | /See:/ 'newDescribeDocumentPermission' smart constructor.
data DescribeDocumentPermission = DescribeDocumentPermission'
  { -- | The token for the next set of items to return. (You received this token
    -- from a previous call.)
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of items to return for this call. The call also
    -- returns a token that you can specify in a subsequent call to get the
    -- next set of results.
    maxResults :: Core.Maybe Core.Natural,
    -- | The name of the document for which you are the owner.
    name :: Core.Text,
    -- | The permission type for the document. The permission type can be
    -- /Share/.
    permissionType :: DocumentPermissionType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeDocumentPermission' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeDocumentPermission_nextToken' - The token for the next set of items to return. (You received this token
-- from a previous call.)
--
-- 'maxResults', 'describeDocumentPermission_maxResults' - The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
--
-- 'name', 'describeDocumentPermission_name' - The name of the document for which you are the owner.
--
-- 'permissionType', 'describeDocumentPermission_permissionType' - The permission type for the document. The permission type can be
-- /Share/.
newDescribeDocumentPermission ::
  -- | 'name'
  Core.Text ->
  -- | 'permissionType'
  DocumentPermissionType ->
  DescribeDocumentPermission
newDescribeDocumentPermission pName_ pPermissionType_ =
  DescribeDocumentPermission'
    { nextToken =
        Core.Nothing,
      maxResults = Core.Nothing,
      name = pName_,
      permissionType = pPermissionType_
    }

-- | The token for the next set of items to return. (You received this token
-- from a previous call.)
describeDocumentPermission_nextToken :: Lens.Lens' DescribeDocumentPermission (Core.Maybe Core.Text)
describeDocumentPermission_nextToken = Lens.lens (\DescribeDocumentPermission' {nextToken} -> nextToken) (\s@DescribeDocumentPermission' {} a -> s {nextToken = a} :: DescribeDocumentPermission)

-- | The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
describeDocumentPermission_maxResults :: Lens.Lens' DescribeDocumentPermission (Core.Maybe Core.Natural)
describeDocumentPermission_maxResults = Lens.lens (\DescribeDocumentPermission' {maxResults} -> maxResults) (\s@DescribeDocumentPermission' {} a -> s {maxResults = a} :: DescribeDocumentPermission)

-- | The name of the document for which you are the owner.
describeDocumentPermission_name :: Lens.Lens' DescribeDocumentPermission Core.Text
describeDocumentPermission_name = Lens.lens (\DescribeDocumentPermission' {name} -> name) (\s@DescribeDocumentPermission' {} a -> s {name = a} :: DescribeDocumentPermission)

-- | The permission type for the document. The permission type can be
-- /Share/.
describeDocumentPermission_permissionType :: Lens.Lens' DescribeDocumentPermission DocumentPermissionType
describeDocumentPermission_permissionType = Lens.lens (\DescribeDocumentPermission' {permissionType} -> permissionType) (\s@DescribeDocumentPermission' {} a -> s {permissionType = a} :: DescribeDocumentPermission)

instance Core.AWSRequest DescribeDocumentPermission where
  type
    AWSResponse DescribeDocumentPermission =
      DescribeDocumentPermissionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDocumentPermissionResponse'
            Core.<$> (x Core..?> "AccountIds" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "NextToken")
            Core.<*> ( x Core..?> "AccountSharingInfoList"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeDocumentPermission

instance Core.NFData DescribeDocumentPermission

instance Core.ToHeaders DescribeDocumentPermission where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonSSM.DescribeDocumentPermission" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeDocumentPermission where
  toJSON DescribeDocumentPermission' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            Core.Just ("Name" Core..= name),
            Core.Just ("PermissionType" Core..= permissionType)
          ]
      )

instance Core.ToPath DescribeDocumentPermission where
  toPath = Core.const "/"

instance Core.ToQuery DescribeDocumentPermission where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeDocumentPermissionResponse' smart constructor.
data DescribeDocumentPermissionResponse = DescribeDocumentPermissionResponse'
  { -- | The account IDs that have permission to use this document. The ID can be
    -- either an AWS account or /All/.
    accountIds :: Core.Maybe [Core.Text],
    -- | The token for the next set of items to return. Use this token to get the
    -- next set of results.
    nextToken :: Core.Maybe Core.Text,
    -- | A list of AWS accounts where the current document is shared and the
    -- version shared with each account.
    accountSharingInfoList :: Core.Maybe [AccountSharingInfo],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeDocumentPermissionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'describeDocumentPermissionResponse_accountIds' - The account IDs that have permission to use this document. The ID can be
-- either an AWS account or /All/.
--
-- 'nextToken', 'describeDocumentPermissionResponse_nextToken' - The token for the next set of items to return. Use this token to get the
-- next set of results.
--
-- 'accountSharingInfoList', 'describeDocumentPermissionResponse_accountSharingInfoList' - A list of AWS accounts where the current document is shared and the
-- version shared with each account.
--
-- 'httpStatus', 'describeDocumentPermissionResponse_httpStatus' - The response's http status code.
newDescribeDocumentPermissionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeDocumentPermissionResponse
newDescribeDocumentPermissionResponse pHttpStatus_ =
  DescribeDocumentPermissionResponse'
    { accountIds =
        Core.Nothing,
      nextToken = Core.Nothing,
      accountSharingInfoList = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The account IDs that have permission to use this document. The ID can be
-- either an AWS account or /All/.
describeDocumentPermissionResponse_accountIds :: Lens.Lens' DescribeDocumentPermissionResponse (Core.Maybe [Core.Text])
describeDocumentPermissionResponse_accountIds = Lens.lens (\DescribeDocumentPermissionResponse' {accountIds} -> accountIds) (\s@DescribeDocumentPermissionResponse' {} a -> s {accountIds = a} :: DescribeDocumentPermissionResponse) Core.. Lens.mapping Lens._Coerce

-- | The token for the next set of items to return. Use this token to get the
-- next set of results.
describeDocumentPermissionResponse_nextToken :: Lens.Lens' DescribeDocumentPermissionResponse (Core.Maybe Core.Text)
describeDocumentPermissionResponse_nextToken = Lens.lens (\DescribeDocumentPermissionResponse' {nextToken} -> nextToken) (\s@DescribeDocumentPermissionResponse' {} a -> s {nextToken = a} :: DescribeDocumentPermissionResponse)

-- | A list of AWS accounts where the current document is shared and the
-- version shared with each account.
describeDocumentPermissionResponse_accountSharingInfoList :: Lens.Lens' DescribeDocumentPermissionResponse (Core.Maybe [AccountSharingInfo])
describeDocumentPermissionResponse_accountSharingInfoList = Lens.lens (\DescribeDocumentPermissionResponse' {accountSharingInfoList} -> accountSharingInfoList) (\s@DescribeDocumentPermissionResponse' {} a -> s {accountSharingInfoList = a} :: DescribeDocumentPermissionResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeDocumentPermissionResponse_httpStatus :: Lens.Lens' DescribeDocumentPermissionResponse Core.Int
describeDocumentPermissionResponse_httpStatus = Lens.lens (\DescribeDocumentPermissionResponse' {httpStatus} -> httpStatus) (\s@DescribeDocumentPermissionResponse' {} a -> s {httpStatus = a} :: DescribeDocumentPermissionResponse)

instance
  Core.NFData
    DescribeDocumentPermissionResponse
