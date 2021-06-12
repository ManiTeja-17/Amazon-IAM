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
-- Module      : Network.AWS.Rekognition.GetContentModeration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the unsafe content analysis results for a Amazon Rekognition Video
-- analysis started by StartContentModeration.
--
-- Unsafe content analysis of a video is an asynchronous operation. You
-- start analysis by calling StartContentModeration which returns a job
-- identifier (@JobId@). When analysis finishes, Amazon Rekognition Video
-- publishes a completion status to the Amazon Simple Notification Service
-- topic registered in the initial call to @StartContentModeration@. To get
-- the results of the unsafe content analysis, first check that the status
-- value published to the Amazon SNS topic is @SUCCEEDED@. If so, call
-- @GetContentModeration@ and pass the job identifier (@JobId@) from the
-- initial call to @StartContentModeration@.
--
-- For more information, see Working with Stored Videos in the Amazon
-- Rekognition Devlopers Guide.
--
-- @GetContentModeration@ returns detected unsafe content labels, and the
-- time they are detected, in an array, @ModerationLabels@, of
-- ContentModerationDetection objects.
--
-- By default, the moderated labels are returned sorted by time, in
-- milliseconds from the start of the video. You can also sort them by
-- moderated label by specifying @NAME@ for the @SortBy@ input parameter.
--
-- Since video analysis can return a large number of results, use the
-- @MaxResults@ parameter to limit the number of labels returned in a
-- single call to @GetContentModeration@. If there are more results than
-- specified in @MaxResults@, the value of @NextToken@ in the operation
-- response contains a pagination token for getting the next set of
-- results. To get the next page of results, call @GetContentModeration@
-- and populate the @NextToken@ request parameter with the value of
-- @NextToken@ returned from the previous call to @GetContentModeration@.
--
-- For more information, see Detecting Unsafe Content in the Amazon
-- Rekognition Developer Guide.
module Network.AWS.Rekognition.GetContentModeration
  ( -- * Creating a Request
    GetContentModeration (..),
    newGetContentModeration,

    -- * Request Lenses
    getContentModeration_nextToken,
    getContentModeration_maxResults,
    getContentModeration_sortBy,
    getContentModeration_jobId,

    -- * Destructuring the Response
    GetContentModerationResponse (..),
    newGetContentModerationResponse,

    -- * Response Lenses
    getContentModerationResponse_statusMessage,
    getContentModerationResponse_videoMetadata,
    getContentModerationResponse_nextToken,
    getContentModerationResponse_jobStatus,
    getContentModerationResponse_moderationLabels,
    getContentModerationResponse_moderationModelVersion,
    getContentModerationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Rekognition.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetContentModeration' smart constructor.
data GetContentModeration = GetContentModeration'
  { -- | If the previous response was incomplete (because there is more data to
    -- retrieve), Amazon Rekognition returns a pagination token in the
    -- response. You can use this pagination token to retrieve the next set of
    -- unsafe content labels.
    nextToken :: Core.Maybe Core.Text,
    -- | Maximum number of results to return per paginated call. The largest
    -- value you can specify is 1000. If you specify a value greater than 1000,
    -- a maximum of 1000 results is returned. The default value is 1000.
    maxResults :: Core.Maybe Core.Natural,
    -- | Sort to use for elements in the @ModerationLabelDetections@ array. Use
    -- @TIMESTAMP@ to sort array elements by the time labels are detected. Use
    -- @NAME@ to alphabetically group elements for a label together. Within
    -- each label group, the array element are sorted by detection confidence.
    -- The default sort is by @TIMESTAMP@.
    sortBy :: Core.Maybe ContentModerationSortBy,
    -- | The identifier for the unsafe content job. Use @JobId@ to identify the
    -- job in a subsequent call to @GetContentModeration@.
    jobId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetContentModeration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getContentModeration_nextToken' - If the previous response was incomplete (because there is more data to
-- retrieve), Amazon Rekognition returns a pagination token in the
-- response. You can use this pagination token to retrieve the next set of
-- unsafe content labels.
--
-- 'maxResults', 'getContentModeration_maxResults' - Maximum number of results to return per paginated call. The largest
-- value you can specify is 1000. If you specify a value greater than 1000,
-- a maximum of 1000 results is returned. The default value is 1000.
--
-- 'sortBy', 'getContentModeration_sortBy' - Sort to use for elements in the @ModerationLabelDetections@ array. Use
-- @TIMESTAMP@ to sort array elements by the time labels are detected. Use
-- @NAME@ to alphabetically group elements for a label together. Within
-- each label group, the array element are sorted by detection confidence.
-- The default sort is by @TIMESTAMP@.
--
-- 'jobId', 'getContentModeration_jobId' - The identifier for the unsafe content job. Use @JobId@ to identify the
-- job in a subsequent call to @GetContentModeration@.
newGetContentModeration ::
  -- | 'jobId'
  Core.Text ->
  GetContentModeration
newGetContentModeration pJobId_ =
  GetContentModeration'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      sortBy = Core.Nothing,
      jobId = pJobId_
    }

-- | If the previous response was incomplete (because there is more data to
-- retrieve), Amazon Rekognition returns a pagination token in the
-- response. You can use this pagination token to retrieve the next set of
-- unsafe content labels.
getContentModeration_nextToken :: Lens.Lens' GetContentModeration (Core.Maybe Core.Text)
getContentModeration_nextToken = Lens.lens (\GetContentModeration' {nextToken} -> nextToken) (\s@GetContentModeration' {} a -> s {nextToken = a} :: GetContentModeration)

-- | Maximum number of results to return per paginated call. The largest
-- value you can specify is 1000. If you specify a value greater than 1000,
-- a maximum of 1000 results is returned. The default value is 1000.
getContentModeration_maxResults :: Lens.Lens' GetContentModeration (Core.Maybe Core.Natural)
getContentModeration_maxResults = Lens.lens (\GetContentModeration' {maxResults} -> maxResults) (\s@GetContentModeration' {} a -> s {maxResults = a} :: GetContentModeration)

-- | Sort to use for elements in the @ModerationLabelDetections@ array. Use
-- @TIMESTAMP@ to sort array elements by the time labels are detected. Use
-- @NAME@ to alphabetically group elements for a label together. Within
-- each label group, the array element are sorted by detection confidence.
-- The default sort is by @TIMESTAMP@.
getContentModeration_sortBy :: Lens.Lens' GetContentModeration (Core.Maybe ContentModerationSortBy)
getContentModeration_sortBy = Lens.lens (\GetContentModeration' {sortBy} -> sortBy) (\s@GetContentModeration' {} a -> s {sortBy = a} :: GetContentModeration)

-- | The identifier for the unsafe content job. Use @JobId@ to identify the
-- job in a subsequent call to @GetContentModeration@.
getContentModeration_jobId :: Lens.Lens' GetContentModeration Core.Text
getContentModeration_jobId = Lens.lens (\GetContentModeration' {jobId} -> jobId) (\s@GetContentModeration' {} a -> s {jobId = a} :: GetContentModeration)

instance Core.AWSRequest GetContentModeration where
  type
    AWSResponse GetContentModeration =
      GetContentModerationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetContentModerationResponse'
            Core.<$> (x Core..?> "StatusMessage")
            Core.<*> (x Core..?> "VideoMetadata")
            Core.<*> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "JobStatus")
            Core.<*> (x Core..?> "ModerationLabels" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "ModerationModelVersion")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetContentModeration

instance Core.NFData GetContentModeration

instance Core.ToHeaders GetContentModeration where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RekognitionService.GetContentModeration" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetContentModeration where
  toJSON GetContentModeration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("SortBy" Core..=) Core.<$> sortBy,
            Core.Just ("JobId" Core..= jobId)
          ]
      )

instance Core.ToPath GetContentModeration where
  toPath = Core.const "/"

instance Core.ToQuery GetContentModeration where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetContentModerationResponse' smart constructor.
data GetContentModerationResponse = GetContentModerationResponse'
  { -- | If the job fails, @StatusMessage@ provides a descriptive error message.
    statusMessage :: Core.Maybe Core.Text,
    -- | Information about a video that Amazon Rekognition analyzed.
    -- @Videometadata@ is returned in every page of paginated responses from
    -- @GetContentModeration@.
    videoMetadata :: Core.Maybe VideoMetadata,
    -- | If the response is truncated, Amazon Rekognition Video returns this
    -- token that you can use in the subsequent request to retrieve the next
    -- set of unsafe content labels.
    nextToken :: Core.Maybe Core.Text,
    -- | The current status of the unsafe content analysis job.
    jobStatus :: Core.Maybe VideoJobStatus,
    -- | The detected unsafe content labels and the time(s) they were detected.
    moderationLabels :: Core.Maybe [ContentModerationDetection],
    -- | Version number of the moderation detection model that was used to detect
    -- unsafe content.
    moderationModelVersion :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetContentModerationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusMessage', 'getContentModerationResponse_statusMessage' - If the job fails, @StatusMessage@ provides a descriptive error message.
--
-- 'videoMetadata', 'getContentModerationResponse_videoMetadata' - Information about a video that Amazon Rekognition analyzed.
-- @Videometadata@ is returned in every page of paginated responses from
-- @GetContentModeration@.
--
-- 'nextToken', 'getContentModerationResponse_nextToken' - If the response is truncated, Amazon Rekognition Video returns this
-- token that you can use in the subsequent request to retrieve the next
-- set of unsafe content labels.
--
-- 'jobStatus', 'getContentModerationResponse_jobStatus' - The current status of the unsafe content analysis job.
--
-- 'moderationLabels', 'getContentModerationResponse_moderationLabels' - The detected unsafe content labels and the time(s) they were detected.
--
-- 'moderationModelVersion', 'getContentModerationResponse_moderationModelVersion' - Version number of the moderation detection model that was used to detect
-- unsafe content.
--
-- 'httpStatus', 'getContentModerationResponse_httpStatus' - The response's http status code.
newGetContentModerationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetContentModerationResponse
newGetContentModerationResponse pHttpStatus_ =
  GetContentModerationResponse'
    { statusMessage =
        Core.Nothing,
      videoMetadata = Core.Nothing,
      nextToken = Core.Nothing,
      jobStatus = Core.Nothing,
      moderationLabels = Core.Nothing,
      moderationModelVersion = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the job fails, @StatusMessage@ provides a descriptive error message.
getContentModerationResponse_statusMessage :: Lens.Lens' GetContentModerationResponse (Core.Maybe Core.Text)
getContentModerationResponse_statusMessage = Lens.lens (\GetContentModerationResponse' {statusMessage} -> statusMessage) (\s@GetContentModerationResponse' {} a -> s {statusMessage = a} :: GetContentModerationResponse)

-- | Information about a video that Amazon Rekognition analyzed.
-- @Videometadata@ is returned in every page of paginated responses from
-- @GetContentModeration@.
getContentModerationResponse_videoMetadata :: Lens.Lens' GetContentModerationResponse (Core.Maybe VideoMetadata)
getContentModerationResponse_videoMetadata = Lens.lens (\GetContentModerationResponse' {videoMetadata} -> videoMetadata) (\s@GetContentModerationResponse' {} a -> s {videoMetadata = a} :: GetContentModerationResponse)

-- | If the response is truncated, Amazon Rekognition Video returns this
-- token that you can use in the subsequent request to retrieve the next
-- set of unsafe content labels.
getContentModerationResponse_nextToken :: Lens.Lens' GetContentModerationResponse (Core.Maybe Core.Text)
getContentModerationResponse_nextToken = Lens.lens (\GetContentModerationResponse' {nextToken} -> nextToken) (\s@GetContentModerationResponse' {} a -> s {nextToken = a} :: GetContentModerationResponse)

-- | The current status of the unsafe content analysis job.
getContentModerationResponse_jobStatus :: Lens.Lens' GetContentModerationResponse (Core.Maybe VideoJobStatus)
getContentModerationResponse_jobStatus = Lens.lens (\GetContentModerationResponse' {jobStatus} -> jobStatus) (\s@GetContentModerationResponse' {} a -> s {jobStatus = a} :: GetContentModerationResponse)

-- | The detected unsafe content labels and the time(s) they were detected.
getContentModerationResponse_moderationLabels :: Lens.Lens' GetContentModerationResponse (Core.Maybe [ContentModerationDetection])
getContentModerationResponse_moderationLabels = Lens.lens (\GetContentModerationResponse' {moderationLabels} -> moderationLabels) (\s@GetContentModerationResponse' {} a -> s {moderationLabels = a} :: GetContentModerationResponse) Core.. Lens.mapping Lens._Coerce

-- | Version number of the moderation detection model that was used to detect
-- unsafe content.
getContentModerationResponse_moderationModelVersion :: Lens.Lens' GetContentModerationResponse (Core.Maybe Core.Text)
getContentModerationResponse_moderationModelVersion = Lens.lens (\GetContentModerationResponse' {moderationModelVersion} -> moderationModelVersion) (\s@GetContentModerationResponse' {} a -> s {moderationModelVersion = a} :: GetContentModerationResponse)

-- | The response's http status code.
getContentModerationResponse_httpStatus :: Lens.Lens' GetContentModerationResponse Core.Int
getContentModerationResponse_httpStatus = Lens.lens (\GetContentModerationResponse' {httpStatus} -> httpStatus) (\s@GetContentModerationResponse' {} a -> s {httpStatus = a} :: GetContentModerationResponse)

instance Core.NFData GetContentModerationResponse
