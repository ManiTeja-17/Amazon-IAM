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
-- Module      : Network.AWS.CloudWatchEvents.ListPartnerEventSourceAccounts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An SaaS partner can use this operation to display the AWS account ID
-- that a particular partner event source name is associated with. This
-- operation is not used by AWS customers.
module Network.AWS.CloudWatchEvents.ListPartnerEventSourceAccounts
  ( -- * Creating a Request
    ListPartnerEventSourceAccounts (..),
    newListPartnerEventSourceAccounts,

    -- * Request Lenses
    listPartnerEventSourceAccounts_nextToken,
    listPartnerEventSourceAccounts_limit,
    listPartnerEventSourceAccounts_eventSourceName,

    -- * Destructuring the Response
    ListPartnerEventSourceAccountsResponse (..),
    newListPartnerEventSourceAccountsResponse,

    -- * Response Lenses
    listPartnerEventSourceAccountsResponse_nextToken,
    listPartnerEventSourceAccountsResponse_partnerEventSourceAccounts,
    listPartnerEventSourceAccountsResponse_httpStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListPartnerEventSourceAccounts' smart constructor.
data ListPartnerEventSourceAccounts = ListPartnerEventSourceAccounts'
  { -- | The token returned by a previous call to this operation. Specifying this
    -- retrieves the next set of results.
    nextToken :: Core.Maybe Core.Text,
    -- | Specifying this limits the number of results returned by this operation.
    -- The operation also returns a NextToken which you can use in a subsequent
    -- operation to retrieve the next set of results.
    limit :: Core.Maybe Core.Natural,
    -- | The name of the partner event source to display account information
    -- about.
    eventSourceName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListPartnerEventSourceAccounts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPartnerEventSourceAccounts_nextToken' - The token returned by a previous call to this operation. Specifying this
-- retrieves the next set of results.
--
-- 'limit', 'listPartnerEventSourceAccounts_limit' - Specifying this limits the number of results returned by this operation.
-- The operation also returns a NextToken which you can use in a subsequent
-- operation to retrieve the next set of results.
--
-- 'eventSourceName', 'listPartnerEventSourceAccounts_eventSourceName' - The name of the partner event source to display account information
-- about.
newListPartnerEventSourceAccounts ::
  -- | 'eventSourceName'
  Core.Text ->
  ListPartnerEventSourceAccounts
newListPartnerEventSourceAccounts pEventSourceName_ =
  ListPartnerEventSourceAccounts'
    { nextToken =
        Core.Nothing,
      limit = Core.Nothing,
      eventSourceName = pEventSourceName_
    }

-- | The token returned by a previous call to this operation. Specifying this
-- retrieves the next set of results.
listPartnerEventSourceAccounts_nextToken :: Lens.Lens' ListPartnerEventSourceAccounts (Core.Maybe Core.Text)
listPartnerEventSourceAccounts_nextToken = Lens.lens (\ListPartnerEventSourceAccounts' {nextToken} -> nextToken) (\s@ListPartnerEventSourceAccounts' {} a -> s {nextToken = a} :: ListPartnerEventSourceAccounts)

-- | Specifying this limits the number of results returned by this operation.
-- The operation also returns a NextToken which you can use in a subsequent
-- operation to retrieve the next set of results.
listPartnerEventSourceAccounts_limit :: Lens.Lens' ListPartnerEventSourceAccounts (Core.Maybe Core.Natural)
listPartnerEventSourceAccounts_limit = Lens.lens (\ListPartnerEventSourceAccounts' {limit} -> limit) (\s@ListPartnerEventSourceAccounts' {} a -> s {limit = a} :: ListPartnerEventSourceAccounts)

-- | The name of the partner event source to display account information
-- about.
listPartnerEventSourceAccounts_eventSourceName :: Lens.Lens' ListPartnerEventSourceAccounts Core.Text
listPartnerEventSourceAccounts_eventSourceName = Lens.lens (\ListPartnerEventSourceAccounts' {eventSourceName} -> eventSourceName) (\s@ListPartnerEventSourceAccounts' {} a -> s {eventSourceName = a} :: ListPartnerEventSourceAccounts)

instance
  Core.AWSRequest
    ListPartnerEventSourceAccounts
  where
  type
    AWSResponse ListPartnerEventSourceAccounts =
      ListPartnerEventSourceAccountsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPartnerEventSourceAccountsResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> ( x Core..?> "PartnerEventSourceAccounts"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListPartnerEventSourceAccounts

instance Core.NFData ListPartnerEventSourceAccounts

instance
  Core.ToHeaders
    ListPartnerEventSourceAccounts
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSEvents.ListPartnerEventSourceAccounts" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListPartnerEventSourceAccounts where
  toJSON ListPartnerEventSourceAccounts' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("Limit" Core..=) Core.<$> limit,
            Core.Just
              ("EventSourceName" Core..= eventSourceName)
          ]
      )

instance Core.ToPath ListPartnerEventSourceAccounts where
  toPath = Core.const "/"

instance Core.ToQuery ListPartnerEventSourceAccounts where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListPartnerEventSourceAccountsResponse' smart constructor.
data ListPartnerEventSourceAccountsResponse = ListPartnerEventSourceAccountsResponse'
  { -- | A token you can use in a subsequent operation to retrieve the next set
    -- of results.
    nextToken :: Core.Maybe Core.Text,
    -- | The list of partner event sources returned by the operation.
    partnerEventSourceAccounts :: Core.Maybe [PartnerEventSourceAccount],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListPartnerEventSourceAccountsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPartnerEventSourceAccountsResponse_nextToken' - A token you can use in a subsequent operation to retrieve the next set
-- of results.
--
-- 'partnerEventSourceAccounts', 'listPartnerEventSourceAccountsResponse_partnerEventSourceAccounts' - The list of partner event sources returned by the operation.
--
-- 'httpStatus', 'listPartnerEventSourceAccountsResponse_httpStatus' - The response's http status code.
newListPartnerEventSourceAccountsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListPartnerEventSourceAccountsResponse
newListPartnerEventSourceAccountsResponse
  pHttpStatus_ =
    ListPartnerEventSourceAccountsResponse'
      { nextToken =
          Core.Nothing,
        partnerEventSourceAccounts =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A token you can use in a subsequent operation to retrieve the next set
-- of results.
listPartnerEventSourceAccountsResponse_nextToken :: Lens.Lens' ListPartnerEventSourceAccountsResponse (Core.Maybe Core.Text)
listPartnerEventSourceAccountsResponse_nextToken = Lens.lens (\ListPartnerEventSourceAccountsResponse' {nextToken} -> nextToken) (\s@ListPartnerEventSourceAccountsResponse' {} a -> s {nextToken = a} :: ListPartnerEventSourceAccountsResponse)

-- | The list of partner event sources returned by the operation.
listPartnerEventSourceAccountsResponse_partnerEventSourceAccounts :: Lens.Lens' ListPartnerEventSourceAccountsResponse (Core.Maybe [PartnerEventSourceAccount])
listPartnerEventSourceAccountsResponse_partnerEventSourceAccounts = Lens.lens (\ListPartnerEventSourceAccountsResponse' {partnerEventSourceAccounts} -> partnerEventSourceAccounts) (\s@ListPartnerEventSourceAccountsResponse' {} a -> s {partnerEventSourceAccounts = a} :: ListPartnerEventSourceAccountsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listPartnerEventSourceAccountsResponse_httpStatus :: Lens.Lens' ListPartnerEventSourceAccountsResponse Core.Int
listPartnerEventSourceAccountsResponse_httpStatus = Lens.lens (\ListPartnerEventSourceAccountsResponse' {httpStatus} -> httpStatus) (\s@ListPartnerEventSourceAccountsResponse' {} a -> s {httpStatus = a} :: ListPartnerEventSourceAccountsResponse)

instance
  Core.NFData
    ListPartnerEventSourceAccountsResponse
