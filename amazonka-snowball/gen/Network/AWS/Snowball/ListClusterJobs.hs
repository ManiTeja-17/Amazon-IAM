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
-- Module      : Network.AWS.Snowball.ListClusterJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of @JobListEntry@ objects of the specified length. Each
-- @JobListEntry@ object is for a job in the specified cluster and contains
-- a job\'s state, a job\'s ID, and other information.
--
-- This operation returns paginated results.
module Network.AWS.Snowball.ListClusterJobs
  ( -- * Creating a Request
    ListClusterJobs (..),
    newListClusterJobs,

    -- * Request Lenses
    listClusterJobs_nextToken,
    listClusterJobs_maxResults,
    listClusterJobs_clusterId,

    -- * Destructuring the Response
    ListClusterJobsResponse (..),
    newListClusterJobsResponse,

    -- * Response Lenses
    listClusterJobsResponse_jobListEntries,
    listClusterJobsResponse_nextToken,
    listClusterJobsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Snowball.Types

-- | /See:/ 'newListClusterJobs' smart constructor.
data ListClusterJobs = ListClusterJobs'
  { -- | HTTP requests are stateless. To identify what object comes \"next\" in
    -- the list of @JobListEntry@ objects, you have the option of specifying
    -- @NextToken@ as the starting point for your returned list.
    nextToken :: Core.Maybe Core.Text,
    -- | The number of @JobListEntry@ objects to return.
    maxResults :: Core.Maybe Core.Natural,
    -- | The 39-character ID for the cluster that you want to list, for example
    -- @CID123e4567-e89b-12d3-a456-426655440000@.
    clusterId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListClusterJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listClusterJobs_nextToken' - HTTP requests are stateless. To identify what object comes \"next\" in
-- the list of @JobListEntry@ objects, you have the option of specifying
-- @NextToken@ as the starting point for your returned list.
--
-- 'maxResults', 'listClusterJobs_maxResults' - The number of @JobListEntry@ objects to return.
--
-- 'clusterId', 'listClusterJobs_clusterId' - The 39-character ID for the cluster that you want to list, for example
-- @CID123e4567-e89b-12d3-a456-426655440000@.
newListClusterJobs ::
  -- | 'clusterId'
  Core.Text ->
  ListClusterJobs
newListClusterJobs pClusterId_ =
  ListClusterJobs'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      clusterId = pClusterId_
    }

-- | HTTP requests are stateless. To identify what object comes \"next\" in
-- the list of @JobListEntry@ objects, you have the option of specifying
-- @NextToken@ as the starting point for your returned list.
listClusterJobs_nextToken :: Lens.Lens' ListClusterJobs (Core.Maybe Core.Text)
listClusterJobs_nextToken = Lens.lens (\ListClusterJobs' {nextToken} -> nextToken) (\s@ListClusterJobs' {} a -> s {nextToken = a} :: ListClusterJobs)

-- | The number of @JobListEntry@ objects to return.
listClusterJobs_maxResults :: Lens.Lens' ListClusterJobs (Core.Maybe Core.Natural)
listClusterJobs_maxResults = Lens.lens (\ListClusterJobs' {maxResults} -> maxResults) (\s@ListClusterJobs' {} a -> s {maxResults = a} :: ListClusterJobs)

-- | The 39-character ID for the cluster that you want to list, for example
-- @CID123e4567-e89b-12d3-a456-426655440000@.
listClusterJobs_clusterId :: Lens.Lens' ListClusterJobs Core.Text
listClusterJobs_clusterId = Lens.lens (\ListClusterJobs' {clusterId} -> clusterId) (\s@ListClusterJobs' {} a -> s {clusterId = a} :: ListClusterJobs)

instance Core.AWSPager ListClusterJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listClusterJobsResponse_nextToken Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listClusterJobsResponse_jobListEntries
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listClusterJobs_nextToken
          Lens..~ rs
          Lens.^? listClusterJobsResponse_nextToken Core.. Lens._Just

instance Core.AWSRequest ListClusterJobs where
  type
    AWSResponse ListClusterJobs =
      ListClusterJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListClusterJobsResponse'
            Core.<$> (x Core..?> "JobListEntries" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListClusterJobs

instance Core.NFData ListClusterJobs

instance Core.ToHeaders ListClusterJobs where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSIESnowballJobManagementService.ListClusterJobs" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListClusterJobs where
  toJSON ListClusterJobs' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            Core.Just ("ClusterId" Core..= clusterId)
          ]
      )

instance Core.ToPath ListClusterJobs where
  toPath = Core.const "/"

instance Core.ToQuery ListClusterJobs where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListClusterJobsResponse' smart constructor.
data ListClusterJobsResponse = ListClusterJobsResponse'
  { -- | Each @JobListEntry@ object contains a job\'s state, a job\'s ID, and a
    -- value that indicates whether the job is a job part, in the case of
    -- export jobs.
    jobListEntries :: Core.Maybe [JobListEntry],
    -- | HTTP requests are stateless. If you use the automatically generated
    -- @NextToken@ value in your next @ListClusterJobsResult@ call, your list
    -- of returned jobs will start from this point in the array.
    nextToken :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListClusterJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobListEntries', 'listClusterJobsResponse_jobListEntries' - Each @JobListEntry@ object contains a job\'s state, a job\'s ID, and a
-- value that indicates whether the job is a job part, in the case of
-- export jobs.
--
-- 'nextToken', 'listClusterJobsResponse_nextToken' - HTTP requests are stateless. If you use the automatically generated
-- @NextToken@ value in your next @ListClusterJobsResult@ call, your list
-- of returned jobs will start from this point in the array.
--
-- 'httpStatus', 'listClusterJobsResponse_httpStatus' - The response's http status code.
newListClusterJobsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListClusterJobsResponse
newListClusterJobsResponse pHttpStatus_ =
  ListClusterJobsResponse'
    { jobListEntries =
        Core.Nothing,
      nextToken = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Each @JobListEntry@ object contains a job\'s state, a job\'s ID, and a
-- value that indicates whether the job is a job part, in the case of
-- export jobs.
listClusterJobsResponse_jobListEntries :: Lens.Lens' ListClusterJobsResponse (Core.Maybe [JobListEntry])
listClusterJobsResponse_jobListEntries = Lens.lens (\ListClusterJobsResponse' {jobListEntries} -> jobListEntries) (\s@ListClusterJobsResponse' {} a -> s {jobListEntries = a} :: ListClusterJobsResponse) Core.. Lens.mapping Lens._Coerce

-- | HTTP requests are stateless. If you use the automatically generated
-- @NextToken@ value in your next @ListClusterJobsResult@ call, your list
-- of returned jobs will start from this point in the array.
listClusterJobsResponse_nextToken :: Lens.Lens' ListClusterJobsResponse (Core.Maybe Core.Text)
listClusterJobsResponse_nextToken = Lens.lens (\ListClusterJobsResponse' {nextToken} -> nextToken) (\s@ListClusterJobsResponse' {} a -> s {nextToken = a} :: ListClusterJobsResponse)

-- | The response's http status code.
listClusterJobsResponse_httpStatus :: Lens.Lens' ListClusterJobsResponse Core.Int
listClusterJobsResponse_httpStatus = Lens.lens (\ListClusterJobsResponse' {httpStatus} -> httpStatus) (\s@ListClusterJobsResponse' {} a -> s {httpStatus = a} :: ListClusterJobsResponse)

instance Core.NFData ListClusterJobsResponse
