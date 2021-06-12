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
-- Module      : Network.AWS.ElasticSearch.GetUpgradeHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the complete history of the last 10 upgrades that were
-- performed on the domain.
--
-- This operation returns paginated results.
module Network.AWS.ElasticSearch.GetUpgradeHistory
  ( -- * Creating a Request
    GetUpgradeHistory (..),
    newGetUpgradeHistory,

    -- * Request Lenses
    getUpgradeHistory_nextToken,
    getUpgradeHistory_maxResults,
    getUpgradeHistory_domainName,

    -- * Destructuring the Response
    GetUpgradeHistoryResponse (..),
    newGetUpgradeHistoryResponse,

    -- * Response Lenses
    getUpgradeHistoryResponse_nextToken,
    getUpgradeHistoryResponse_upgradeHistories,
    getUpgradeHistoryResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for request parameters to @ GetUpgradeHistory @ operation.
--
-- /See:/ 'newGetUpgradeHistory' smart constructor.
data GetUpgradeHistory = GetUpgradeHistory'
  { nextToken :: Core.Maybe Core.Text,
    maxResults :: Core.Maybe Core.Int,
    domainName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetUpgradeHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getUpgradeHistory_nextToken' - Undocumented member.
--
-- 'maxResults', 'getUpgradeHistory_maxResults' - Undocumented member.
--
-- 'domainName', 'getUpgradeHistory_domainName' - Undocumented member.
newGetUpgradeHistory ::
  -- | 'domainName'
  Core.Text ->
  GetUpgradeHistory
newGetUpgradeHistory pDomainName_ =
  GetUpgradeHistory'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      domainName = pDomainName_
    }

-- | Undocumented member.
getUpgradeHistory_nextToken :: Lens.Lens' GetUpgradeHistory (Core.Maybe Core.Text)
getUpgradeHistory_nextToken = Lens.lens (\GetUpgradeHistory' {nextToken} -> nextToken) (\s@GetUpgradeHistory' {} a -> s {nextToken = a} :: GetUpgradeHistory)

-- | Undocumented member.
getUpgradeHistory_maxResults :: Lens.Lens' GetUpgradeHistory (Core.Maybe Core.Int)
getUpgradeHistory_maxResults = Lens.lens (\GetUpgradeHistory' {maxResults} -> maxResults) (\s@GetUpgradeHistory' {} a -> s {maxResults = a} :: GetUpgradeHistory)

-- | Undocumented member.
getUpgradeHistory_domainName :: Lens.Lens' GetUpgradeHistory Core.Text
getUpgradeHistory_domainName = Lens.lens (\GetUpgradeHistory' {domainName} -> domainName) (\s@GetUpgradeHistory' {} a -> s {domainName = a} :: GetUpgradeHistory)

instance Core.AWSPager GetUpgradeHistory where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getUpgradeHistoryResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? getUpgradeHistoryResponse_upgradeHistories
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& getUpgradeHistory_nextToken
          Lens..~ rs
          Lens.^? getUpgradeHistoryResponse_nextToken Core.. Lens._Just

instance Core.AWSRequest GetUpgradeHistory where
  type
    AWSResponse GetUpgradeHistory =
      GetUpgradeHistoryResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetUpgradeHistoryResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "UpgradeHistories" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetUpgradeHistory

instance Core.NFData GetUpgradeHistory

instance Core.ToHeaders GetUpgradeHistory where
  toHeaders = Core.const Core.mempty

instance Core.ToPath GetUpgradeHistory where
  toPath GetUpgradeHistory' {..} =
    Core.mconcat
      [ "/2015-01-01/es/upgradeDomain/",
        Core.toBS domainName,
        "/history"
      ]

instance Core.ToQuery GetUpgradeHistory where
  toQuery GetUpgradeHistory' {..} =
    Core.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | Container for response returned by @ GetUpgradeHistory @ operation.
--
-- /See:/ 'newGetUpgradeHistoryResponse' smart constructor.
data GetUpgradeHistoryResponse = GetUpgradeHistoryResponse'
  { -- | Pagination token that needs to be supplied to the next call to get the
    -- next page of results
    nextToken :: Core.Maybe Core.Text,
    -- | A list of @ UpgradeHistory @ objects corresponding to each Upgrade or
    -- Upgrade Eligibility Check performed on a domain returned as part of
    -- @ GetUpgradeHistoryResponse @ object.
    upgradeHistories :: Core.Maybe [UpgradeHistory],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetUpgradeHistoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getUpgradeHistoryResponse_nextToken' - Pagination token that needs to be supplied to the next call to get the
-- next page of results
--
-- 'upgradeHistories', 'getUpgradeHistoryResponse_upgradeHistories' - A list of @ UpgradeHistory @ objects corresponding to each Upgrade or
-- Upgrade Eligibility Check performed on a domain returned as part of
-- @ GetUpgradeHistoryResponse @ object.
--
-- 'httpStatus', 'getUpgradeHistoryResponse_httpStatus' - The response's http status code.
newGetUpgradeHistoryResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetUpgradeHistoryResponse
newGetUpgradeHistoryResponse pHttpStatus_ =
  GetUpgradeHistoryResponse'
    { nextToken =
        Core.Nothing,
      upgradeHistories = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Pagination token that needs to be supplied to the next call to get the
-- next page of results
getUpgradeHistoryResponse_nextToken :: Lens.Lens' GetUpgradeHistoryResponse (Core.Maybe Core.Text)
getUpgradeHistoryResponse_nextToken = Lens.lens (\GetUpgradeHistoryResponse' {nextToken} -> nextToken) (\s@GetUpgradeHistoryResponse' {} a -> s {nextToken = a} :: GetUpgradeHistoryResponse)

-- | A list of @ UpgradeHistory @ objects corresponding to each Upgrade or
-- Upgrade Eligibility Check performed on a domain returned as part of
-- @ GetUpgradeHistoryResponse @ object.
getUpgradeHistoryResponse_upgradeHistories :: Lens.Lens' GetUpgradeHistoryResponse (Core.Maybe [UpgradeHistory])
getUpgradeHistoryResponse_upgradeHistories = Lens.lens (\GetUpgradeHistoryResponse' {upgradeHistories} -> upgradeHistories) (\s@GetUpgradeHistoryResponse' {} a -> s {upgradeHistories = a} :: GetUpgradeHistoryResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
getUpgradeHistoryResponse_httpStatus :: Lens.Lens' GetUpgradeHistoryResponse Core.Int
getUpgradeHistoryResponse_httpStatus = Lens.lens (\GetUpgradeHistoryResponse' {httpStatus} -> httpStatus) (\s@GetUpgradeHistoryResponse' {} a -> s {httpStatus = a} :: GetUpgradeHistoryResponse)

instance Core.NFData GetUpgradeHistoryResponse
