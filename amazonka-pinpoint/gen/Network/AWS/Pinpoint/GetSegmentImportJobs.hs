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
-- Module      : Network.AWS.Pinpoint.GetSegmentImportJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the import jobs
-- for a segment.
module Network.AWS.Pinpoint.GetSegmentImportJobs
  ( -- * Creating a Request
    GetSegmentImportJobs (..),
    newGetSegmentImportJobs,

    -- * Request Lenses
    getSegmentImportJobs_pageSize,
    getSegmentImportJobs_token,
    getSegmentImportJobs_segmentId,
    getSegmentImportJobs_applicationId,

    -- * Destructuring the Response
    GetSegmentImportJobsResponse (..),
    newGetSegmentImportJobsResponse,

    -- * Response Lenses
    getSegmentImportJobsResponse_httpStatus,
    getSegmentImportJobsResponse_importJobsResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetSegmentImportJobs' smart constructor.
data GetSegmentImportJobs = GetSegmentImportJobs'
  { -- | The maximum number of items to include in each page of a paginated
    -- response. This parameter is not supported for application, campaign, and
    -- journey metrics.
    pageSize :: Core.Maybe Core.Text,
    -- | The NextToken string that specifies which page of results to return in a
    -- paginated response.
    token :: Core.Maybe Core.Text,
    -- | The unique identifier for the segment.
    segmentId :: Core.Text,
    -- | The unique identifier for the application. This identifier is displayed
    -- as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetSegmentImportJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageSize', 'getSegmentImportJobs_pageSize' - The maximum number of items to include in each page of a paginated
-- response. This parameter is not supported for application, campaign, and
-- journey metrics.
--
-- 'token', 'getSegmentImportJobs_token' - The NextToken string that specifies which page of results to return in a
-- paginated response.
--
-- 'segmentId', 'getSegmentImportJobs_segmentId' - The unique identifier for the segment.
--
-- 'applicationId', 'getSegmentImportJobs_applicationId' - The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
newGetSegmentImportJobs ::
  -- | 'segmentId'
  Core.Text ->
  -- | 'applicationId'
  Core.Text ->
  GetSegmentImportJobs
newGetSegmentImportJobs pSegmentId_ pApplicationId_ =
  GetSegmentImportJobs'
    { pageSize = Core.Nothing,
      token = Core.Nothing,
      segmentId = pSegmentId_,
      applicationId = pApplicationId_
    }

-- | The maximum number of items to include in each page of a paginated
-- response. This parameter is not supported for application, campaign, and
-- journey metrics.
getSegmentImportJobs_pageSize :: Lens.Lens' GetSegmentImportJobs (Core.Maybe Core.Text)
getSegmentImportJobs_pageSize = Lens.lens (\GetSegmentImportJobs' {pageSize} -> pageSize) (\s@GetSegmentImportJobs' {} a -> s {pageSize = a} :: GetSegmentImportJobs)

-- | The NextToken string that specifies which page of results to return in a
-- paginated response.
getSegmentImportJobs_token :: Lens.Lens' GetSegmentImportJobs (Core.Maybe Core.Text)
getSegmentImportJobs_token = Lens.lens (\GetSegmentImportJobs' {token} -> token) (\s@GetSegmentImportJobs' {} a -> s {token = a} :: GetSegmentImportJobs)

-- | The unique identifier for the segment.
getSegmentImportJobs_segmentId :: Lens.Lens' GetSegmentImportJobs Core.Text
getSegmentImportJobs_segmentId = Lens.lens (\GetSegmentImportJobs' {segmentId} -> segmentId) (\s@GetSegmentImportJobs' {} a -> s {segmentId = a} :: GetSegmentImportJobs)

-- | The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
getSegmentImportJobs_applicationId :: Lens.Lens' GetSegmentImportJobs Core.Text
getSegmentImportJobs_applicationId = Lens.lens (\GetSegmentImportJobs' {applicationId} -> applicationId) (\s@GetSegmentImportJobs' {} a -> s {applicationId = a} :: GetSegmentImportJobs)

instance Core.AWSRequest GetSegmentImportJobs where
  type
    AWSResponse GetSegmentImportJobs =
      GetSegmentImportJobsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSegmentImportJobsResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (Core.eitherParseJSON x)
      )

instance Core.Hashable GetSegmentImportJobs

instance Core.NFData GetSegmentImportJobs

instance Core.ToHeaders GetSegmentImportJobs where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath GetSegmentImportJobs where
  toPath GetSegmentImportJobs' {..} =
    Core.mconcat
      [ "/v1/apps/",
        Core.toBS applicationId,
        "/segments/",
        Core.toBS segmentId,
        "/jobs/import"
      ]

instance Core.ToQuery GetSegmentImportJobs where
  toQuery GetSegmentImportJobs' {..} =
    Core.mconcat
      ["page-size" Core.=: pageSize, "token" Core.=: token]

-- | /See:/ 'newGetSegmentImportJobsResponse' smart constructor.
data GetSegmentImportJobsResponse = GetSegmentImportJobsResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    importJobsResponse :: ImportJobsResponse
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetSegmentImportJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getSegmentImportJobsResponse_httpStatus' - The response's http status code.
--
-- 'importJobsResponse', 'getSegmentImportJobsResponse_importJobsResponse' - Undocumented member.
newGetSegmentImportJobsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'importJobsResponse'
  ImportJobsResponse ->
  GetSegmentImportJobsResponse
newGetSegmentImportJobsResponse
  pHttpStatus_
  pImportJobsResponse_ =
    GetSegmentImportJobsResponse'
      { httpStatus =
          pHttpStatus_,
        importJobsResponse = pImportJobsResponse_
      }

-- | The response's http status code.
getSegmentImportJobsResponse_httpStatus :: Lens.Lens' GetSegmentImportJobsResponse Core.Int
getSegmentImportJobsResponse_httpStatus = Lens.lens (\GetSegmentImportJobsResponse' {httpStatus} -> httpStatus) (\s@GetSegmentImportJobsResponse' {} a -> s {httpStatus = a} :: GetSegmentImportJobsResponse)

-- | Undocumented member.
getSegmentImportJobsResponse_importJobsResponse :: Lens.Lens' GetSegmentImportJobsResponse ImportJobsResponse
getSegmentImportJobsResponse_importJobsResponse = Lens.lens (\GetSegmentImportJobsResponse' {importJobsResponse} -> importJobsResponse) (\s@GetSegmentImportJobsResponse' {} a -> s {importJobsResponse = a} :: GetSegmentImportJobsResponse)

instance Core.NFData GetSegmentImportJobsResponse
