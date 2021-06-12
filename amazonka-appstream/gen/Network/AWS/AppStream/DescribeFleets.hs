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
-- Module      : Network.AWS.AppStream.DescribeFleets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified fleets, if the
-- fleet names are provided. Otherwise, all fleets in the account are
-- described.
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeFleets
  ( -- * Creating a Request
    DescribeFleets (..),
    newDescribeFleets,

    -- * Request Lenses
    describeFleets_names,
    describeFleets_nextToken,

    -- * Destructuring the Response
    DescribeFleetsResponse (..),
    newDescribeFleetsResponse,

    -- * Response Lenses
    describeFleetsResponse_nextToken,
    describeFleetsResponse_fleets,
    describeFleetsResponse_httpStatus,
  )
where

import Network.AWS.AppStream.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeFleets' smart constructor.
data DescribeFleets = DescribeFleets'
  { -- | The names of the fleets to describe.
    names :: Core.Maybe [Core.Text],
    -- | The pagination token to use to retrieve the next page of results for
    -- this operation. If this value is null, it retrieves the first page.
    nextToken :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeFleets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'names', 'describeFleets_names' - The names of the fleets to describe.
--
-- 'nextToken', 'describeFleets_nextToken' - The pagination token to use to retrieve the next page of results for
-- this operation. If this value is null, it retrieves the first page.
newDescribeFleets ::
  DescribeFleets
newDescribeFleets =
  DescribeFleets'
    { names = Core.Nothing,
      nextToken = Core.Nothing
    }

-- | The names of the fleets to describe.
describeFleets_names :: Lens.Lens' DescribeFleets (Core.Maybe [Core.Text])
describeFleets_names = Lens.lens (\DescribeFleets' {names} -> names) (\s@DescribeFleets' {} a -> s {names = a} :: DescribeFleets) Core.. Lens.mapping Lens._Coerce

-- | The pagination token to use to retrieve the next page of results for
-- this operation. If this value is null, it retrieves the first page.
describeFleets_nextToken :: Lens.Lens' DescribeFleets (Core.Maybe Core.Text)
describeFleets_nextToken = Lens.lens (\DescribeFleets' {nextToken} -> nextToken) (\s@DescribeFleets' {} a -> s {nextToken = a} :: DescribeFleets)

instance Core.AWSPager DescribeFleets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeFleetsResponse_nextToken Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeFleetsResponse_fleets Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeFleets_nextToken
          Lens..~ rs
          Lens.^? describeFleetsResponse_nextToken Core.. Lens._Just

instance Core.AWSRequest DescribeFleets where
  type
    AWSResponse DescribeFleets =
      DescribeFleetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFleetsResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "Fleets" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeFleets

instance Core.NFData DescribeFleets

instance Core.ToHeaders DescribeFleets where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PhotonAdminProxyService.DescribeFleets" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeFleets where
  toJSON DescribeFleets' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Names" Core..=) Core.<$> names,
            ("NextToken" Core..=) Core.<$> nextToken
          ]
      )

instance Core.ToPath DescribeFleets where
  toPath = Core.const "/"

instance Core.ToQuery DescribeFleets where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeFleetsResponse' smart constructor.
data DescribeFleetsResponse = DescribeFleetsResponse'
  { -- | The pagination token to use to retrieve the next page of results for
    -- this operation. If there are no more pages, this value is null.
    nextToken :: Core.Maybe Core.Text,
    -- | Information about the fleets.
    fleets :: Core.Maybe [Fleet],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeFleetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFleetsResponse_nextToken' - The pagination token to use to retrieve the next page of results for
-- this operation. If there are no more pages, this value is null.
--
-- 'fleets', 'describeFleetsResponse_fleets' - Information about the fleets.
--
-- 'httpStatus', 'describeFleetsResponse_httpStatus' - The response's http status code.
newDescribeFleetsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeFleetsResponse
newDescribeFleetsResponse pHttpStatus_ =
  DescribeFleetsResponse'
    { nextToken = Core.Nothing,
      fleets = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token to use to retrieve the next page of results for
-- this operation. If there are no more pages, this value is null.
describeFleetsResponse_nextToken :: Lens.Lens' DescribeFleetsResponse (Core.Maybe Core.Text)
describeFleetsResponse_nextToken = Lens.lens (\DescribeFleetsResponse' {nextToken} -> nextToken) (\s@DescribeFleetsResponse' {} a -> s {nextToken = a} :: DescribeFleetsResponse)

-- | Information about the fleets.
describeFleetsResponse_fleets :: Lens.Lens' DescribeFleetsResponse (Core.Maybe [Fleet])
describeFleetsResponse_fleets = Lens.lens (\DescribeFleetsResponse' {fleets} -> fleets) (\s@DescribeFleetsResponse' {} a -> s {fleets = a} :: DescribeFleetsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeFleetsResponse_httpStatus :: Lens.Lens' DescribeFleetsResponse Core.Int
describeFleetsResponse_httpStatus = Lens.lens (\DescribeFleetsResponse' {httpStatus} -> httpStatus) (\s@DescribeFleetsResponse' {} a -> s {httpStatus = a} :: DescribeFleetsResponse)

instance Core.NFData DescribeFleetsResponse
