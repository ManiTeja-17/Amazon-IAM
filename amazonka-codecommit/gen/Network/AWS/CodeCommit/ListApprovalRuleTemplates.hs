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
-- Module      : Network.AWS.CodeCommit.ListApprovalRuleTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all approval rule templates in the specified AWS Region in your
-- AWS account. If an AWS Region is not specified, the AWS Region where you
-- are signed in is used.
module Network.AWS.CodeCommit.ListApprovalRuleTemplates
  ( -- * Creating a Request
    ListApprovalRuleTemplates (..),
    newListApprovalRuleTemplates,

    -- * Request Lenses
    listApprovalRuleTemplates_nextToken,
    listApprovalRuleTemplates_maxResults,

    -- * Destructuring the Response
    ListApprovalRuleTemplatesResponse (..),
    newListApprovalRuleTemplatesResponse,

    -- * Response Lenses
    listApprovalRuleTemplatesResponse_nextToken,
    listApprovalRuleTemplatesResponse_approvalRuleTemplateNames,
    listApprovalRuleTemplatesResponse_httpStatus,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListApprovalRuleTemplates' smart constructor.
data ListApprovalRuleTemplates = ListApprovalRuleTemplates'
  { -- | An enumeration token that, when provided in a request, returns the next
    -- batch of the results.
    nextToken :: Core.Maybe Core.Text,
    -- | A non-zero, non-negative integer used to limit the number of returned
    -- results.
    maxResults :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListApprovalRuleTemplates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApprovalRuleTemplates_nextToken' - An enumeration token that, when provided in a request, returns the next
-- batch of the results.
--
-- 'maxResults', 'listApprovalRuleTemplates_maxResults' - A non-zero, non-negative integer used to limit the number of returned
-- results.
newListApprovalRuleTemplates ::
  ListApprovalRuleTemplates
newListApprovalRuleTemplates =
  ListApprovalRuleTemplates'
    { nextToken =
        Core.Nothing,
      maxResults = Core.Nothing
    }

-- | An enumeration token that, when provided in a request, returns the next
-- batch of the results.
listApprovalRuleTemplates_nextToken :: Lens.Lens' ListApprovalRuleTemplates (Core.Maybe Core.Text)
listApprovalRuleTemplates_nextToken = Lens.lens (\ListApprovalRuleTemplates' {nextToken} -> nextToken) (\s@ListApprovalRuleTemplates' {} a -> s {nextToken = a} :: ListApprovalRuleTemplates)

-- | A non-zero, non-negative integer used to limit the number of returned
-- results.
listApprovalRuleTemplates_maxResults :: Lens.Lens' ListApprovalRuleTemplates (Core.Maybe Core.Int)
listApprovalRuleTemplates_maxResults = Lens.lens (\ListApprovalRuleTemplates' {maxResults} -> maxResults) (\s@ListApprovalRuleTemplates' {} a -> s {maxResults = a} :: ListApprovalRuleTemplates)

instance Core.AWSRequest ListApprovalRuleTemplates where
  type
    AWSResponse ListApprovalRuleTemplates =
      ListApprovalRuleTemplatesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListApprovalRuleTemplatesResponse'
            Core.<$> (x Core..?> "nextToken")
            Core.<*> ( x Core..?> "approvalRuleTemplateNames"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListApprovalRuleTemplates

instance Core.NFData ListApprovalRuleTemplates

instance Core.ToHeaders ListApprovalRuleTemplates where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeCommit_20150413.ListApprovalRuleTemplates" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListApprovalRuleTemplates where
  toJSON ListApprovalRuleTemplates' {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextToken" Core..=) Core.<$> nextToken,
            ("maxResults" Core..=) Core.<$> maxResults
          ]
      )

instance Core.ToPath ListApprovalRuleTemplates where
  toPath = Core.const "/"

instance Core.ToQuery ListApprovalRuleTemplates where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListApprovalRuleTemplatesResponse' smart constructor.
data ListApprovalRuleTemplatesResponse = ListApprovalRuleTemplatesResponse'
  { -- | An enumeration token that allows the operation to batch the next results
    -- of the operation.
    nextToken :: Core.Maybe Core.Text,
    -- | The names of all the approval rule templates found in the AWS Region for
    -- your AWS account.
    approvalRuleTemplateNames :: Core.Maybe [Core.Text],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListApprovalRuleTemplatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApprovalRuleTemplatesResponse_nextToken' - An enumeration token that allows the operation to batch the next results
-- of the operation.
--
-- 'approvalRuleTemplateNames', 'listApprovalRuleTemplatesResponse_approvalRuleTemplateNames' - The names of all the approval rule templates found in the AWS Region for
-- your AWS account.
--
-- 'httpStatus', 'listApprovalRuleTemplatesResponse_httpStatus' - The response's http status code.
newListApprovalRuleTemplatesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListApprovalRuleTemplatesResponse
newListApprovalRuleTemplatesResponse pHttpStatus_ =
  ListApprovalRuleTemplatesResponse'
    { nextToken =
        Core.Nothing,
      approvalRuleTemplateNames = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An enumeration token that allows the operation to batch the next results
-- of the operation.
listApprovalRuleTemplatesResponse_nextToken :: Lens.Lens' ListApprovalRuleTemplatesResponse (Core.Maybe Core.Text)
listApprovalRuleTemplatesResponse_nextToken = Lens.lens (\ListApprovalRuleTemplatesResponse' {nextToken} -> nextToken) (\s@ListApprovalRuleTemplatesResponse' {} a -> s {nextToken = a} :: ListApprovalRuleTemplatesResponse)

-- | The names of all the approval rule templates found in the AWS Region for
-- your AWS account.
listApprovalRuleTemplatesResponse_approvalRuleTemplateNames :: Lens.Lens' ListApprovalRuleTemplatesResponse (Core.Maybe [Core.Text])
listApprovalRuleTemplatesResponse_approvalRuleTemplateNames = Lens.lens (\ListApprovalRuleTemplatesResponse' {approvalRuleTemplateNames} -> approvalRuleTemplateNames) (\s@ListApprovalRuleTemplatesResponse' {} a -> s {approvalRuleTemplateNames = a} :: ListApprovalRuleTemplatesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listApprovalRuleTemplatesResponse_httpStatus :: Lens.Lens' ListApprovalRuleTemplatesResponse Core.Int
listApprovalRuleTemplatesResponse_httpStatus = Lens.lens (\ListApprovalRuleTemplatesResponse' {httpStatus} -> httpStatus) (\s@ListApprovalRuleTemplatesResponse' {} a -> s {httpStatus = a} :: ListApprovalRuleTemplatesResponse)

instance
  Core.NFData
    ListApprovalRuleTemplatesResponse
