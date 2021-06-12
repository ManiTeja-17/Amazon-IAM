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
-- Module      : Network.AWS.SageMaker.ListHumanTaskUis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the human task user interfaces in your
-- account.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListHumanTaskUis
  ( -- * Creating a Request
    ListHumanTaskUis (..),
    newListHumanTaskUis,

    -- * Request Lenses
    listHumanTaskUis_sortOrder,
    listHumanTaskUis_nextToken,
    listHumanTaskUis_maxResults,
    listHumanTaskUis_creationTimeBefore,
    listHumanTaskUis_creationTimeAfter,

    -- * Destructuring the Response
    ListHumanTaskUisResponse (..),
    newListHumanTaskUisResponse,

    -- * Response Lenses
    listHumanTaskUisResponse_nextToken,
    listHumanTaskUisResponse_httpStatus,
    listHumanTaskUisResponse_humanTaskUiSummaries,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newListHumanTaskUis' smart constructor.
data ListHumanTaskUis = ListHumanTaskUis'
  { -- | An optional value that specifies whether you want the results sorted in
    -- @Ascending@ or @Descending@ order.
    sortOrder :: Core.Maybe SortOrder,
    -- | A token to resume pagination.
    nextToken :: Core.Maybe Core.Text,
    -- | The total number of items to return. If the total number of available
    -- items is more than the value specified in @MaxResults@, then a
    -- @NextToken@ will be provided in the output that you can use to resume
    -- pagination.
    maxResults :: Core.Maybe Core.Natural,
    -- | A filter that returns only human task user interfaces that were created
    -- before the specified timestamp.
    creationTimeBefore :: Core.Maybe Core.POSIX,
    -- | A filter that returns only human task user interfaces with a creation
    -- time greater than or equal to the specified timestamp.
    creationTimeAfter :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListHumanTaskUis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listHumanTaskUis_sortOrder' - An optional value that specifies whether you want the results sorted in
-- @Ascending@ or @Descending@ order.
--
-- 'nextToken', 'listHumanTaskUis_nextToken' - A token to resume pagination.
--
-- 'maxResults', 'listHumanTaskUis_maxResults' - The total number of items to return. If the total number of available
-- items is more than the value specified in @MaxResults@, then a
-- @NextToken@ will be provided in the output that you can use to resume
-- pagination.
--
-- 'creationTimeBefore', 'listHumanTaskUis_creationTimeBefore' - A filter that returns only human task user interfaces that were created
-- before the specified timestamp.
--
-- 'creationTimeAfter', 'listHumanTaskUis_creationTimeAfter' - A filter that returns only human task user interfaces with a creation
-- time greater than or equal to the specified timestamp.
newListHumanTaskUis ::
  ListHumanTaskUis
newListHumanTaskUis =
  ListHumanTaskUis'
    { sortOrder = Core.Nothing,
      nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      creationTimeBefore = Core.Nothing,
      creationTimeAfter = Core.Nothing
    }

-- | An optional value that specifies whether you want the results sorted in
-- @Ascending@ or @Descending@ order.
listHumanTaskUis_sortOrder :: Lens.Lens' ListHumanTaskUis (Core.Maybe SortOrder)
listHumanTaskUis_sortOrder = Lens.lens (\ListHumanTaskUis' {sortOrder} -> sortOrder) (\s@ListHumanTaskUis' {} a -> s {sortOrder = a} :: ListHumanTaskUis)

-- | A token to resume pagination.
listHumanTaskUis_nextToken :: Lens.Lens' ListHumanTaskUis (Core.Maybe Core.Text)
listHumanTaskUis_nextToken = Lens.lens (\ListHumanTaskUis' {nextToken} -> nextToken) (\s@ListHumanTaskUis' {} a -> s {nextToken = a} :: ListHumanTaskUis)

-- | The total number of items to return. If the total number of available
-- items is more than the value specified in @MaxResults@, then a
-- @NextToken@ will be provided in the output that you can use to resume
-- pagination.
listHumanTaskUis_maxResults :: Lens.Lens' ListHumanTaskUis (Core.Maybe Core.Natural)
listHumanTaskUis_maxResults = Lens.lens (\ListHumanTaskUis' {maxResults} -> maxResults) (\s@ListHumanTaskUis' {} a -> s {maxResults = a} :: ListHumanTaskUis)

-- | A filter that returns only human task user interfaces that were created
-- before the specified timestamp.
listHumanTaskUis_creationTimeBefore :: Lens.Lens' ListHumanTaskUis (Core.Maybe Core.UTCTime)
listHumanTaskUis_creationTimeBefore = Lens.lens (\ListHumanTaskUis' {creationTimeBefore} -> creationTimeBefore) (\s@ListHumanTaskUis' {} a -> s {creationTimeBefore = a} :: ListHumanTaskUis) Core.. Lens.mapping Core._Time

-- | A filter that returns only human task user interfaces with a creation
-- time greater than or equal to the specified timestamp.
listHumanTaskUis_creationTimeAfter :: Lens.Lens' ListHumanTaskUis (Core.Maybe Core.UTCTime)
listHumanTaskUis_creationTimeAfter = Lens.lens (\ListHumanTaskUis' {creationTimeAfter} -> creationTimeAfter) (\s@ListHumanTaskUis' {} a -> s {creationTimeAfter = a} :: ListHumanTaskUis) Core.. Lens.mapping Core._Time

instance Core.AWSPager ListHumanTaskUis where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listHumanTaskUisResponse_nextToken Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^. listHumanTaskUisResponse_humanTaskUiSummaries
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listHumanTaskUis_nextToken
          Lens..~ rs
          Lens.^? listHumanTaskUisResponse_nextToken Core.. Lens._Just

instance Core.AWSRequest ListHumanTaskUis where
  type
    AWSResponse ListHumanTaskUis =
      ListHumanTaskUisResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListHumanTaskUisResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
            Core.<*> ( x Core..?> "HumanTaskUiSummaries"
                         Core..!@ Core.mempty
                     )
      )

instance Core.Hashable ListHumanTaskUis

instance Core.NFData ListHumanTaskUis

instance Core.ToHeaders ListHumanTaskUis where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.ListHumanTaskUis" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListHumanTaskUis where
  toJSON ListHumanTaskUis' {..} =
    Core.object
      ( Core.catMaybes
          [ ("SortOrder" Core..=) Core.<$> sortOrder,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("CreationTimeBefore" Core..=)
              Core.<$> creationTimeBefore,
            ("CreationTimeAfter" Core..=)
              Core.<$> creationTimeAfter
          ]
      )

instance Core.ToPath ListHumanTaskUis where
  toPath = Core.const "/"

instance Core.ToQuery ListHumanTaskUis where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListHumanTaskUisResponse' smart constructor.
data ListHumanTaskUisResponse = ListHumanTaskUisResponse'
  { -- | A token to resume pagination.
    nextToken :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | An array of objects describing the human task user interfaces.
    humanTaskUiSummaries :: [HumanTaskUiSummary]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListHumanTaskUisResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listHumanTaskUisResponse_nextToken' - A token to resume pagination.
--
-- 'httpStatus', 'listHumanTaskUisResponse_httpStatus' - The response's http status code.
--
-- 'humanTaskUiSummaries', 'listHumanTaskUisResponse_humanTaskUiSummaries' - An array of objects describing the human task user interfaces.
newListHumanTaskUisResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListHumanTaskUisResponse
newListHumanTaskUisResponse pHttpStatus_ =
  ListHumanTaskUisResponse'
    { nextToken = Core.Nothing,
      httpStatus = pHttpStatus_,
      humanTaskUiSummaries = Core.mempty
    }

-- | A token to resume pagination.
listHumanTaskUisResponse_nextToken :: Lens.Lens' ListHumanTaskUisResponse (Core.Maybe Core.Text)
listHumanTaskUisResponse_nextToken = Lens.lens (\ListHumanTaskUisResponse' {nextToken} -> nextToken) (\s@ListHumanTaskUisResponse' {} a -> s {nextToken = a} :: ListHumanTaskUisResponse)

-- | The response's http status code.
listHumanTaskUisResponse_httpStatus :: Lens.Lens' ListHumanTaskUisResponse Core.Int
listHumanTaskUisResponse_httpStatus = Lens.lens (\ListHumanTaskUisResponse' {httpStatus} -> httpStatus) (\s@ListHumanTaskUisResponse' {} a -> s {httpStatus = a} :: ListHumanTaskUisResponse)

-- | An array of objects describing the human task user interfaces.
listHumanTaskUisResponse_humanTaskUiSummaries :: Lens.Lens' ListHumanTaskUisResponse [HumanTaskUiSummary]
listHumanTaskUisResponse_humanTaskUiSummaries = Lens.lens (\ListHumanTaskUisResponse' {humanTaskUiSummaries} -> humanTaskUiSummaries) (\s@ListHumanTaskUisResponse' {} a -> s {humanTaskUiSummaries = a} :: ListHumanTaskUisResponse) Core.. Lens._Coerce

instance Core.NFData ListHumanTaskUisResponse
