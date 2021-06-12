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
-- Module      : Network.AWS.CloudFront.ListInvalidations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists invalidation batches.
--
-- This operation returns paginated results.
module Network.AWS.CloudFront.ListInvalidations
  ( -- * Creating a Request
    ListInvalidations (..),
    newListInvalidations,

    -- * Request Lenses
    listInvalidations_maxItems,
    listInvalidations_marker,
    listInvalidations_distributionId,

    -- * Destructuring the Response
    ListInvalidationsResponse (..),
    newListInvalidationsResponse,

    -- * Response Lenses
    listInvalidationsResponse_httpStatus,
    listInvalidationsResponse_invalidationList,
  )
where

import Network.AWS.CloudFront.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request to list invalidations.
--
-- /See:/ 'newListInvalidations' smart constructor.
data ListInvalidations = ListInvalidations'
  { -- | The maximum number of invalidation batches that you want in the response
    -- body.
    maxItems :: Core.Maybe Core.Text,
    -- | Use this parameter when paginating results to indicate where to begin in
    -- your list of invalidation batches. Because the results are returned in
    -- decreasing order from most recent to oldest, the most recent results are
    -- on the first page, the second page will contain earlier results, and so
    -- on. To get the next page of results, set @Marker@ to the value of the
    -- @NextMarker@ from the current page\'s response. This value is the same
    -- as the ID of the last invalidation batch on that page.
    marker :: Core.Maybe Core.Text,
    -- | The distribution\'s ID.
    distributionId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListInvalidations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxItems', 'listInvalidations_maxItems' - The maximum number of invalidation batches that you want in the response
-- body.
--
-- 'marker', 'listInvalidations_marker' - Use this parameter when paginating results to indicate where to begin in
-- your list of invalidation batches. Because the results are returned in
-- decreasing order from most recent to oldest, the most recent results are
-- on the first page, the second page will contain earlier results, and so
-- on. To get the next page of results, set @Marker@ to the value of the
-- @NextMarker@ from the current page\'s response. This value is the same
-- as the ID of the last invalidation batch on that page.
--
-- 'distributionId', 'listInvalidations_distributionId' - The distribution\'s ID.
newListInvalidations ::
  -- | 'distributionId'
  Core.Text ->
  ListInvalidations
newListInvalidations pDistributionId_ =
  ListInvalidations'
    { maxItems = Core.Nothing,
      marker = Core.Nothing,
      distributionId = pDistributionId_
    }

-- | The maximum number of invalidation batches that you want in the response
-- body.
listInvalidations_maxItems :: Lens.Lens' ListInvalidations (Core.Maybe Core.Text)
listInvalidations_maxItems = Lens.lens (\ListInvalidations' {maxItems} -> maxItems) (\s@ListInvalidations' {} a -> s {maxItems = a} :: ListInvalidations)

-- | Use this parameter when paginating results to indicate where to begin in
-- your list of invalidation batches. Because the results are returned in
-- decreasing order from most recent to oldest, the most recent results are
-- on the first page, the second page will contain earlier results, and so
-- on. To get the next page of results, set @Marker@ to the value of the
-- @NextMarker@ from the current page\'s response. This value is the same
-- as the ID of the last invalidation batch on that page.
listInvalidations_marker :: Lens.Lens' ListInvalidations (Core.Maybe Core.Text)
listInvalidations_marker = Lens.lens (\ListInvalidations' {marker} -> marker) (\s@ListInvalidations' {} a -> s {marker = a} :: ListInvalidations)

-- | The distribution\'s ID.
listInvalidations_distributionId :: Lens.Lens' ListInvalidations Core.Text
listInvalidations_distributionId = Lens.lens (\ListInvalidations' {distributionId} -> distributionId) (\s@ListInvalidations' {} a -> s {distributionId = a} :: ListInvalidations)

instance Core.AWSPager ListInvalidations where
  page rq rs
    | Core.stop
        ( rs
            Lens.^. listInvalidationsResponse_invalidationList
              Core.. invalidationList_isTruncated
        ) =
      Core.Nothing
    | Core.isNothing
        ( rs
            Lens.^? listInvalidationsResponse_invalidationList
              Core.. invalidationList_nextMarker
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listInvalidations_marker
          Lens..~ rs
          Lens.^? listInvalidationsResponse_invalidationList
            Core.. invalidationList_nextMarker
            Core.. Lens._Just

instance Core.AWSRequest ListInvalidations where
  type
    AWSResponse ListInvalidations =
      ListInvalidationsResponse
  request = Request.get defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          ListInvalidationsResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (Core.parseXML x)
      )

instance Core.Hashable ListInvalidations

instance Core.NFData ListInvalidations

instance Core.ToHeaders ListInvalidations where
  toHeaders = Core.const Core.mempty

instance Core.ToPath ListInvalidations where
  toPath ListInvalidations' {..} =
    Core.mconcat
      [ "/2020-05-31/distribution/",
        Core.toBS distributionId,
        "/invalidation"
      ]

instance Core.ToQuery ListInvalidations where
  toQuery ListInvalidations' {..} =
    Core.mconcat
      [ "MaxItems" Core.=: maxItems,
        "Marker" Core.=: marker
      ]

-- | The returned result of the corresponding request.
--
-- /See:/ 'newListInvalidationsResponse' smart constructor.
data ListInvalidationsResponse = ListInvalidationsResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | Information about invalidation batches.
    invalidationList :: InvalidationList
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListInvalidationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'listInvalidationsResponse_httpStatus' - The response's http status code.
--
-- 'invalidationList', 'listInvalidationsResponse_invalidationList' - Information about invalidation batches.
newListInvalidationsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'invalidationList'
  InvalidationList ->
  ListInvalidationsResponse
newListInvalidationsResponse
  pHttpStatus_
  pInvalidationList_ =
    ListInvalidationsResponse'
      { httpStatus =
          pHttpStatus_,
        invalidationList = pInvalidationList_
      }

-- | The response's http status code.
listInvalidationsResponse_httpStatus :: Lens.Lens' ListInvalidationsResponse Core.Int
listInvalidationsResponse_httpStatus = Lens.lens (\ListInvalidationsResponse' {httpStatus} -> httpStatus) (\s@ListInvalidationsResponse' {} a -> s {httpStatus = a} :: ListInvalidationsResponse)

-- | Information about invalidation batches.
listInvalidationsResponse_invalidationList :: Lens.Lens' ListInvalidationsResponse InvalidationList
listInvalidationsResponse_invalidationList = Lens.lens (\ListInvalidationsResponse' {invalidationList} -> invalidationList) (\s@ListInvalidationsResponse' {} a -> s {invalidationList = a} :: ListInvalidationsResponse)

instance Core.NFData ListInvalidationsResponse
