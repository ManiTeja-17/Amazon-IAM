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
-- Module      : Network.AWS.Translate.StopTextTranslationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an asynchronous batch translation job that is in progress.
--
-- If the job\'s state is @IN_PROGRESS@, the job will be marked for
-- termination and put into the @STOP_REQUESTED@ state. If the job
-- completes before it can be stopped, it is put into the @COMPLETED@
-- state. Otherwise, the job is put into the @STOPPED@ state.
--
-- Asynchronous batch translation jobs are started with the
-- StartTextTranslationJob operation. You can use the
-- DescribeTextTranslationJob or ListTextTranslationJobs operations to get
-- a batch translation job\'s @JobId@.
module Network.AWS.Translate.StopTextTranslationJob
  ( -- * Creating a Request
    StopTextTranslationJob (..),
    newStopTextTranslationJob,

    -- * Request Lenses
    stopTextTranslationJob_jobId,

    -- * Destructuring the Response
    StopTextTranslationJobResponse (..),
    newStopTextTranslationJobResponse,

    -- * Response Lenses
    stopTextTranslationJobResponse_jobStatus,
    stopTextTranslationJobResponse_jobId,
    stopTextTranslationJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Translate.Types

-- | /See:/ 'newStopTextTranslationJob' smart constructor.
data StopTextTranslationJob = StopTextTranslationJob'
  { -- | The job ID of the job to be stopped.
    jobId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StopTextTranslationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'stopTextTranslationJob_jobId' - The job ID of the job to be stopped.
newStopTextTranslationJob ::
  -- | 'jobId'
  Core.Text ->
  StopTextTranslationJob
newStopTextTranslationJob pJobId_ =
  StopTextTranslationJob' {jobId = pJobId_}

-- | The job ID of the job to be stopped.
stopTextTranslationJob_jobId :: Lens.Lens' StopTextTranslationJob Core.Text
stopTextTranslationJob_jobId = Lens.lens (\StopTextTranslationJob' {jobId} -> jobId) (\s@StopTextTranslationJob' {} a -> s {jobId = a} :: StopTextTranslationJob)

instance Core.AWSRequest StopTextTranslationJob where
  type
    AWSResponse StopTextTranslationJob =
      StopTextTranslationJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StopTextTranslationJobResponse'
            Core.<$> (x Core..?> "JobStatus")
            Core.<*> (x Core..?> "JobId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable StopTextTranslationJob

instance Core.NFData StopTextTranslationJob

instance Core.ToHeaders StopTextTranslationJob where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSShineFrontendService_20170701.StopTextTranslationJob" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON StopTextTranslationJob where
  toJSON StopTextTranslationJob' {..} =
    Core.object
      (Core.catMaybes [Core.Just ("JobId" Core..= jobId)])

instance Core.ToPath StopTextTranslationJob where
  toPath = Core.const "/"

instance Core.ToQuery StopTextTranslationJob where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newStopTextTranslationJobResponse' smart constructor.
data StopTextTranslationJobResponse = StopTextTranslationJobResponse'
  { -- | The status of the designated job. Upon successful completion, the job\'s
    -- status will be @STOPPED@.
    jobStatus :: Core.Maybe JobStatus,
    -- | The job ID of the stopped batch translation job.
    jobId :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StopTextTranslationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobStatus', 'stopTextTranslationJobResponse_jobStatus' - The status of the designated job. Upon successful completion, the job\'s
-- status will be @STOPPED@.
--
-- 'jobId', 'stopTextTranslationJobResponse_jobId' - The job ID of the stopped batch translation job.
--
-- 'httpStatus', 'stopTextTranslationJobResponse_httpStatus' - The response's http status code.
newStopTextTranslationJobResponse ::
  -- | 'httpStatus'
  Core.Int ->
  StopTextTranslationJobResponse
newStopTextTranslationJobResponse pHttpStatus_ =
  StopTextTranslationJobResponse'
    { jobStatus =
        Core.Nothing,
      jobId = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the designated job. Upon successful completion, the job\'s
-- status will be @STOPPED@.
stopTextTranslationJobResponse_jobStatus :: Lens.Lens' StopTextTranslationJobResponse (Core.Maybe JobStatus)
stopTextTranslationJobResponse_jobStatus = Lens.lens (\StopTextTranslationJobResponse' {jobStatus} -> jobStatus) (\s@StopTextTranslationJobResponse' {} a -> s {jobStatus = a} :: StopTextTranslationJobResponse)

-- | The job ID of the stopped batch translation job.
stopTextTranslationJobResponse_jobId :: Lens.Lens' StopTextTranslationJobResponse (Core.Maybe Core.Text)
stopTextTranslationJobResponse_jobId = Lens.lens (\StopTextTranslationJobResponse' {jobId} -> jobId) (\s@StopTextTranslationJobResponse' {} a -> s {jobId = a} :: StopTextTranslationJobResponse)

-- | The response's http status code.
stopTextTranslationJobResponse_httpStatus :: Lens.Lens' StopTextTranslationJobResponse Core.Int
stopTextTranslationJobResponse_httpStatus = Lens.lens (\StopTextTranslationJobResponse' {httpStatus} -> httpStatus) (\s@StopTextTranslationJobResponse' {} a -> s {httpStatus = a} :: StopTextTranslationJobResponse)

instance Core.NFData StopTextTranslationJobResponse
