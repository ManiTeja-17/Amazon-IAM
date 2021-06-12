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
-- Module      : Network.AWS.Lightsail.GetOperationsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets operations for a specific resource (e.g., an instance or a static
-- IP).
module Network.AWS.Lightsail.GetOperationsForResource
  ( -- * Creating a Request
    GetOperationsForResource (..),
    newGetOperationsForResource,

    -- * Request Lenses
    getOperationsForResource_pageToken,
    getOperationsForResource_resourceName,

    -- * Destructuring the Response
    GetOperationsForResourceResponse (..),
    newGetOperationsForResourceResponse,

    -- * Response Lenses
    getOperationsForResourceResponse_operations,
    getOperationsForResourceResponse_nextPageCount,
    getOperationsForResourceResponse_nextPageToken,
    getOperationsForResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetOperationsForResource' smart constructor.
data GetOperationsForResource = GetOperationsForResource'
  { -- | The token to advance to the next page of results from your request.
    --
    -- To get a page token, perform an initial @GetOperationsForResource@
    -- request. If your results are paginated, the response will return a next
    -- page token that you can specify as the page token in a subsequent
    -- request.
    pageToken :: Core.Maybe Core.Text,
    -- | The name of the resource for which you are requesting information.
    resourceName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetOperationsForResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageToken', 'getOperationsForResource_pageToken' - The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetOperationsForResource@
-- request. If your results are paginated, the response will return a next
-- page token that you can specify as the page token in a subsequent
-- request.
--
-- 'resourceName', 'getOperationsForResource_resourceName' - The name of the resource for which you are requesting information.
newGetOperationsForResource ::
  -- | 'resourceName'
  Core.Text ->
  GetOperationsForResource
newGetOperationsForResource pResourceName_ =
  GetOperationsForResource'
    { pageToken = Core.Nothing,
      resourceName = pResourceName_
    }

-- | The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetOperationsForResource@
-- request. If your results are paginated, the response will return a next
-- page token that you can specify as the page token in a subsequent
-- request.
getOperationsForResource_pageToken :: Lens.Lens' GetOperationsForResource (Core.Maybe Core.Text)
getOperationsForResource_pageToken = Lens.lens (\GetOperationsForResource' {pageToken} -> pageToken) (\s@GetOperationsForResource' {} a -> s {pageToken = a} :: GetOperationsForResource)

-- | The name of the resource for which you are requesting information.
getOperationsForResource_resourceName :: Lens.Lens' GetOperationsForResource Core.Text
getOperationsForResource_resourceName = Lens.lens (\GetOperationsForResource' {resourceName} -> resourceName) (\s@GetOperationsForResource' {} a -> s {resourceName = a} :: GetOperationsForResource)

instance Core.AWSRequest GetOperationsForResource where
  type
    AWSResponse GetOperationsForResource =
      GetOperationsForResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetOperationsForResourceResponse'
            Core.<$> (x Core..?> "operations" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "nextPageCount")
            Core.<*> (x Core..?> "nextPageToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetOperationsForResource

instance Core.NFData GetOperationsForResource

instance Core.ToHeaders GetOperationsForResource where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Lightsail_20161128.GetOperationsForResource" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetOperationsForResource where
  toJSON GetOperationsForResource' {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageToken" Core..=) Core.<$> pageToken,
            Core.Just ("resourceName" Core..= resourceName)
          ]
      )

instance Core.ToPath GetOperationsForResource where
  toPath = Core.const "/"

instance Core.ToQuery GetOperationsForResource where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetOperationsForResourceResponse' smart constructor.
data GetOperationsForResourceResponse = GetOperationsForResourceResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operations :: Core.Maybe [Operation],
    -- | (Deprecated) Returns the number of pages of results that remain.
    --
    -- In releases prior to June 12, 2017, this parameter returned @null@ by
    -- the API. It is now deprecated, and the API returns the @next page token@
    -- parameter instead.
    nextPageCount :: Core.Maybe Core.Text,
    -- | The token to advance to the next page of results from your request.
    --
    -- A next page token is not returned if there are no more results to
    -- display.
    --
    -- To get the next page of results, perform another
    -- @GetOperationsForResource@ request and specify the next page token using
    -- the @pageToken@ parameter.
    nextPageToken :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetOperationsForResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operations', 'getOperationsForResourceResponse_operations' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'nextPageCount', 'getOperationsForResourceResponse_nextPageCount' - (Deprecated) Returns the number of pages of results that remain.
--
-- In releases prior to June 12, 2017, this parameter returned @null@ by
-- the API. It is now deprecated, and the API returns the @next page token@
-- parameter instead.
--
-- 'nextPageToken', 'getOperationsForResourceResponse_nextPageToken' - The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to
-- display.
--
-- To get the next page of results, perform another
-- @GetOperationsForResource@ request and specify the next page token using
-- the @pageToken@ parameter.
--
-- 'httpStatus', 'getOperationsForResourceResponse_httpStatus' - The response's http status code.
newGetOperationsForResourceResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetOperationsForResourceResponse
newGetOperationsForResourceResponse pHttpStatus_ =
  GetOperationsForResourceResponse'
    { operations =
        Core.Nothing,
      nextPageCount = Core.Nothing,
      nextPageToken = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
getOperationsForResourceResponse_operations :: Lens.Lens' GetOperationsForResourceResponse (Core.Maybe [Operation])
getOperationsForResourceResponse_operations = Lens.lens (\GetOperationsForResourceResponse' {operations} -> operations) (\s@GetOperationsForResourceResponse' {} a -> s {operations = a} :: GetOperationsForResourceResponse) Core.. Lens.mapping Lens._Coerce

-- | (Deprecated) Returns the number of pages of results that remain.
--
-- In releases prior to June 12, 2017, this parameter returned @null@ by
-- the API. It is now deprecated, and the API returns the @next page token@
-- parameter instead.
getOperationsForResourceResponse_nextPageCount :: Lens.Lens' GetOperationsForResourceResponse (Core.Maybe Core.Text)
getOperationsForResourceResponse_nextPageCount = Lens.lens (\GetOperationsForResourceResponse' {nextPageCount} -> nextPageCount) (\s@GetOperationsForResourceResponse' {} a -> s {nextPageCount = a} :: GetOperationsForResourceResponse)

-- | The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to
-- display.
--
-- To get the next page of results, perform another
-- @GetOperationsForResource@ request and specify the next page token using
-- the @pageToken@ parameter.
getOperationsForResourceResponse_nextPageToken :: Lens.Lens' GetOperationsForResourceResponse (Core.Maybe Core.Text)
getOperationsForResourceResponse_nextPageToken = Lens.lens (\GetOperationsForResourceResponse' {nextPageToken} -> nextPageToken) (\s@GetOperationsForResourceResponse' {} a -> s {nextPageToken = a} :: GetOperationsForResourceResponse)

-- | The response's http status code.
getOperationsForResourceResponse_httpStatus :: Lens.Lens' GetOperationsForResourceResponse Core.Int
getOperationsForResourceResponse_httpStatus = Lens.lens (\GetOperationsForResourceResponse' {httpStatus} -> httpStatus) (\s@GetOperationsForResourceResponse' {} a -> s {httpStatus = a} :: GetOperationsForResourceResponse)

instance Core.NFData GetOperationsForResourceResponse
