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
-- Module      : Network.AWS.WAF.ListIPSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is __AWS WAF Classic__ documentation. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- Returns an array of IPSetSummary objects in the response.
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListIPSets
  ( -- * Creating a Request
    ListIPSets (..),
    newListIPSets,

    -- * Request Lenses
    listIPSets_nextMarker,
    listIPSets_limit,

    -- * Destructuring the Response
    ListIPSetsResponse (..),
    newListIPSetsResponse,

    -- * Response Lenses
    listIPSetsResponse_nextMarker,
    listIPSetsResponse_iPSets,
    listIPSetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WAF.Types

-- | /See:/ 'newListIPSets' smart constructor.
data ListIPSets = ListIPSets'
  { -- | AWS WAF returns a @NextMarker@ value in the response that allows you to
    -- list another group of @IPSets@. For the second and subsequent
    -- @ListIPSets@ requests, specify the value of @NextMarker@ from the
    -- previous response to get information about another batch of @IPSets@.
    nextMarker :: Core.Maybe Core.Text,
    -- | Specifies the number of @IPSet@ objects that you want AWS WAF to return
    -- for this request. If you have more @IPSet@ objects than the number you
    -- specify for @Limit@, the response includes a @NextMarker@ value that you
    -- can use to get another batch of @IPSet@ objects.
    limit :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListIPSets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextMarker', 'listIPSets_nextMarker' - AWS WAF returns a @NextMarker@ value in the response that allows you to
-- list another group of @IPSets@. For the second and subsequent
-- @ListIPSets@ requests, specify the value of @NextMarker@ from the
-- previous response to get information about another batch of @IPSets@.
--
-- 'limit', 'listIPSets_limit' - Specifies the number of @IPSet@ objects that you want AWS WAF to return
-- for this request. If you have more @IPSet@ objects than the number you
-- specify for @Limit@, the response includes a @NextMarker@ value that you
-- can use to get another batch of @IPSet@ objects.
newListIPSets ::
  ListIPSets
newListIPSets =
  ListIPSets'
    { nextMarker = Core.Nothing,
      limit = Core.Nothing
    }

-- | AWS WAF returns a @NextMarker@ value in the response that allows you to
-- list another group of @IPSets@. For the second and subsequent
-- @ListIPSets@ requests, specify the value of @NextMarker@ from the
-- previous response to get information about another batch of @IPSets@.
listIPSets_nextMarker :: Lens.Lens' ListIPSets (Core.Maybe Core.Text)
listIPSets_nextMarker = Lens.lens (\ListIPSets' {nextMarker} -> nextMarker) (\s@ListIPSets' {} a -> s {nextMarker = a} :: ListIPSets)

-- | Specifies the number of @IPSet@ objects that you want AWS WAF to return
-- for this request. If you have more @IPSet@ objects than the number you
-- specify for @Limit@, the response includes a @NextMarker@ value that you
-- can use to get another batch of @IPSet@ objects.
listIPSets_limit :: Lens.Lens' ListIPSets (Core.Maybe Core.Natural)
listIPSets_limit = Lens.lens (\ListIPSets' {limit} -> limit) (\s@ListIPSets' {} a -> s {limit = a} :: ListIPSets)

instance Core.AWSPager ListIPSets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listIPSetsResponse_nextMarker Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listIPSetsResponse_iPSets Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listIPSets_nextMarker
          Lens..~ rs
          Lens.^? listIPSetsResponse_nextMarker Core.. Lens._Just

instance Core.AWSRequest ListIPSets where
  type AWSResponse ListIPSets = ListIPSetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListIPSetsResponse'
            Core.<$> (x Core..?> "NextMarker")
            Core.<*> (x Core..?> "IPSets" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListIPSets

instance Core.NFData ListIPSets

instance Core.ToHeaders ListIPSets where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSWAF_20150824.ListIPSets" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListIPSets where
  toJSON ListIPSets' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextMarker" Core..=) Core.<$> nextMarker,
            ("Limit" Core..=) Core.<$> limit
          ]
      )

instance Core.ToPath ListIPSets where
  toPath = Core.const "/"

instance Core.ToQuery ListIPSets where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListIPSetsResponse' smart constructor.
data ListIPSetsResponse = ListIPSetsResponse'
  { -- | To list more @IPSet@ objects, submit another @ListIPSets@ request, and
    -- in the next request use the @NextMarker@ response value as the
    -- @NextMarker@ value.
    nextMarker :: Core.Maybe Core.Text,
    -- | An array of IPSetSummary objects.
    iPSets :: Core.Maybe [IPSetSummary],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListIPSetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextMarker', 'listIPSetsResponse_nextMarker' - To list more @IPSet@ objects, submit another @ListIPSets@ request, and
-- in the next request use the @NextMarker@ response value as the
-- @NextMarker@ value.
--
-- 'iPSets', 'listIPSetsResponse_iPSets' - An array of IPSetSummary objects.
--
-- 'httpStatus', 'listIPSetsResponse_httpStatus' - The response's http status code.
newListIPSetsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListIPSetsResponse
newListIPSetsResponse pHttpStatus_ =
  ListIPSetsResponse'
    { nextMarker = Core.Nothing,
      iPSets = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | To list more @IPSet@ objects, submit another @ListIPSets@ request, and
-- in the next request use the @NextMarker@ response value as the
-- @NextMarker@ value.
listIPSetsResponse_nextMarker :: Lens.Lens' ListIPSetsResponse (Core.Maybe Core.Text)
listIPSetsResponse_nextMarker = Lens.lens (\ListIPSetsResponse' {nextMarker} -> nextMarker) (\s@ListIPSetsResponse' {} a -> s {nextMarker = a} :: ListIPSetsResponse)

-- | An array of IPSetSummary objects.
listIPSetsResponse_iPSets :: Lens.Lens' ListIPSetsResponse (Core.Maybe [IPSetSummary])
listIPSetsResponse_iPSets = Lens.lens (\ListIPSetsResponse' {iPSets} -> iPSets) (\s@ListIPSetsResponse' {} a -> s {iPSets = a} :: ListIPSetsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listIPSetsResponse_httpStatus :: Lens.Lens' ListIPSetsResponse Core.Int
listIPSetsResponse_httpStatus = Lens.lens (\ListIPSetsResponse' {httpStatus} -> httpStatus) (\s@ListIPSetsResponse' {} a -> s {httpStatus = a} :: ListIPSetsResponse)

instance Core.NFData ListIPSetsResponse
