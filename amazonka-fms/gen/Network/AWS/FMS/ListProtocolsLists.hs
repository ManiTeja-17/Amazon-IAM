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
-- Module      : Network.AWS.FMS.ListProtocolsLists
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of @ProtocolsListDataSummary@ objects.
module Network.AWS.FMS.ListProtocolsLists
  ( -- * Creating a Request
    ListProtocolsLists (..),
    newListProtocolsLists,

    -- * Request Lenses
    listProtocolsLists_nextToken,
    listProtocolsLists_defaultLists,
    listProtocolsLists_maxResults,

    -- * Destructuring the Response
    ListProtocolsListsResponse (..),
    newListProtocolsListsResponse,

    -- * Response Lenses
    listProtocolsListsResponse_nextToken,
    listProtocolsListsResponse_protocolsLists,
    listProtocolsListsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListProtocolsLists' smart constructor.
data ListProtocolsLists = ListProtocolsLists'
  { -- | If you specify a value for @MaxResults@ in your list request, and you
    -- have more objects than the maximum, AWS Firewall Manager returns this
    -- token in the response. For all but the first request, you provide the
    -- token returned by the prior request in the request parameters, to
    -- retrieve the next batch of objects.
    nextToken :: Core.Maybe Core.Text,
    -- | Specifies whether the lists to retrieve are default lists owned by AWS
    -- Firewall Manager.
    defaultLists :: Core.Maybe Core.Bool,
    -- | The maximum number of objects that you want AWS Firewall Manager to
    -- return for this request. If more objects are available, in the response,
    -- AWS Firewall Manager provides a @NextToken@ value that you can use in a
    -- subsequent call to get the next batch of objects.
    --
    -- If you don\'t specify this, AWS Firewall Manager returns all available
    -- objects.
    maxResults :: Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListProtocolsLists' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listProtocolsLists_nextToken' - If you specify a value for @MaxResults@ in your list request, and you
-- have more objects than the maximum, AWS Firewall Manager returns this
-- token in the response. For all but the first request, you provide the
-- token returned by the prior request in the request parameters, to
-- retrieve the next batch of objects.
--
-- 'defaultLists', 'listProtocolsLists_defaultLists' - Specifies whether the lists to retrieve are default lists owned by AWS
-- Firewall Manager.
--
-- 'maxResults', 'listProtocolsLists_maxResults' - The maximum number of objects that you want AWS Firewall Manager to
-- return for this request. If more objects are available, in the response,
-- AWS Firewall Manager provides a @NextToken@ value that you can use in a
-- subsequent call to get the next batch of objects.
--
-- If you don\'t specify this, AWS Firewall Manager returns all available
-- objects.
newListProtocolsLists ::
  -- | 'maxResults'
  Core.Natural ->
  ListProtocolsLists
newListProtocolsLists pMaxResults_ =
  ListProtocolsLists'
    { nextToken = Core.Nothing,
      defaultLists = Core.Nothing,
      maxResults = pMaxResults_
    }

-- | If you specify a value for @MaxResults@ in your list request, and you
-- have more objects than the maximum, AWS Firewall Manager returns this
-- token in the response. For all but the first request, you provide the
-- token returned by the prior request in the request parameters, to
-- retrieve the next batch of objects.
listProtocolsLists_nextToken :: Lens.Lens' ListProtocolsLists (Core.Maybe Core.Text)
listProtocolsLists_nextToken = Lens.lens (\ListProtocolsLists' {nextToken} -> nextToken) (\s@ListProtocolsLists' {} a -> s {nextToken = a} :: ListProtocolsLists)

-- | Specifies whether the lists to retrieve are default lists owned by AWS
-- Firewall Manager.
listProtocolsLists_defaultLists :: Lens.Lens' ListProtocolsLists (Core.Maybe Core.Bool)
listProtocolsLists_defaultLists = Lens.lens (\ListProtocolsLists' {defaultLists} -> defaultLists) (\s@ListProtocolsLists' {} a -> s {defaultLists = a} :: ListProtocolsLists)

-- | The maximum number of objects that you want AWS Firewall Manager to
-- return for this request. If more objects are available, in the response,
-- AWS Firewall Manager provides a @NextToken@ value that you can use in a
-- subsequent call to get the next batch of objects.
--
-- If you don\'t specify this, AWS Firewall Manager returns all available
-- objects.
listProtocolsLists_maxResults :: Lens.Lens' ListProtocolsLists Core.Natural
listProtocolsLists_maxResults = Lens.lens (\ListProtocolsLists' {maxResults} -> maxResults) (\s@ListProtocolsLists' {} a -> s {maxResults = a} :: ListProtocolsLists)

instance Core.AWSRequest ListProtocolsLists where
  type
    AWSResponse ListProtocolsLists =
      ListProtocolsListsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListProtocolsListsResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "ProtocolsLists" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListProtocolsLists

instance Core.NFData ListProtocolsLists

instance Core.ToHeaders ListProtocolsLists where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSFMS_20180101.ListProtocolsLists" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListProtocolsLists where
  toJSON ListProtocolsLists' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("DefaultLists" Core..=) Core.<$> defaultLists,
            Core.Just ("MaxResults" Core..= maxResults)
          ]
      )

instance Core.ToPath ListProtocolsLists where
  toPath = Core.const "/"

instance Core.ToQuery ListProtocolsLists where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListProtocolsListsResponse' smart constructor.
data ListProtocolsListsResponse = ListProtocolsListsResponse'
  { -- | If you specify a value for @MaxResults@ in your list request, and you
    -- have more objects than the maximum, AWS Firewall Manager returns this
    -- token in the response. You can use this token in subsequent requests to
    -- retrieve the next batch of objects.
    nextToken :: Core.Maybe Core.Text,
    -- | An array of @ProtocolsListDataSummary@ objects.
    protocolsLists :: Core.Maybe [ProtocolsListDataSummary],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListProtocolsListsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listProtocolsListsResponse_nextToken' - If you specify a value for @MaxResults@ in your list request, and you
-- have more objects than the maximum, AWS Firewall Manager returns this
-- token in the response. You can use this token in subsequent requests to
-- retrieve the next batch of objects.
--
-- 'protocolsLists', 'listProtocolsListsResponse_protocolsLists' - An array of @ProtocolsListDataSummary@ objects.
--
-- 'httpStatus', 'listProtocolsListsResponse_httpStatus' - The response's http status code.
newListProtocolsListsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListProtocolsListsResponse
newListProtocolsListsResponse pHttpStatus_ =
  ListProtocolsListsResponse'
    { nextToken =
        Core.Nothing,
      protocolsLists = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If you specify a value for @MaxResults@ in your list request, and you
-- have more objects than the maximum, AWS Firewall Manager returns this
-- token in the response. You can use this token in subsequent requests to
-- retrieve the next batch of objects.
listProtocolsListsResponse_nextToken :: Lens.Lens' ListProtocolsListsResponse (Core.Maybe Core.Text)
listProtocolsListsResponse_nextToken = Lens.lens (\ListProtocolsListsResponse' {nextToken} -> nextToken) (\s@ListProtocolsListsResponse' {} a -> s {nextToken = a} :: ListProtocolsListsResponse)

-- | An array of @ProtocolsListDataSummary@ objects.
listProtocolsListsResponse_protocolsLists :: Lens.Lens' ListProtocolsListsResponse (Core.Maybe [ProtocolsListDataSummary])
listProtocolsListsResponse_protocolsLists = Lens.lens (\ListProtocolsListsResponse' {protocolsLists} -> protocolsLists) (\s@ListProtocolsListsResponse' {} a -> s {protocolsLists = a} :: ListProtocolsListsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listProtocolsListsResponse_httpStatus :: Lens.Lens' ListProtocolsListsResponse Core.Int
listProtocolsListsResponse_httpStatus = Lens.lens (\ListProtocolsListsResponse' {httpStatus} -> httpStatus) (\s@ListProtocolsListsResponse' {} a -> s {httpStatus = a} :: ListProtocolsListsResponse)

instance Core.NFData ListProtocolsListsResponse
