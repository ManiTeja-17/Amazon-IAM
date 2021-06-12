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
-- Module      : Network.AWS.IoTJobsData.UpdateJobExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the status of a job execution.
module Network.AWS.IoTJobsData.UpdateJobExecution
  ( -- * Creating a Request
    UpdateJobExecution (..),
    newUpdateJobExecution,

    -- * Request Lenses
    updateJobExecution_expectedVersion,
    updateJobExecution_includeJobDocument,
    updateJobExecution_includeJobExecutionState,
    updateJobExecution_statusDetails,
    updateJobExecution_stepTimeoutInMinutes,
    updateJobExecution_executionNumber,
    updateJobExecution_jobId,
    updateJobExecution_thingName,
    updateJobExecution_status,

    -- * Destructuring the Response
    UpdateJobExecutionResponse (..),
    newUpdateJobExecutionResponse,

    -- * Response Lenses
    updateJobExecutionResponse_executionState,
    updateJobExecutionResponse_jobDocument,
    updateJobExecutionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTJobsData.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateJobExecution' smart constructor.
data UpdateJobExecution = UpdateJobExecution'
  { -- | Optional. The expected current version of the job execution. Each time
    -- you update the job execution, its version is incremented. If the version
    -- of the job execution stored in Jobs does not match, the update is
    -- rejected with a VersionMismatch error, and an ErrorResponse that
    -- contains the current job execution status data is returned. (This makes
    -- it unnecessary to perform a separate DescribeJobExecution request in
    -- order to obtain the job execution status data.)
    expectedVersion :: Core.Maybe Core.Integer,
    -- | Optional. When set to true, the response contains the job document. The
    -- default is false.
    includeJobDocument :: Core.Maybe Core.Bool,
    -- | Optional. When included and set to true, the response contains the
    -- JobExecutionState data. The default is false.
    includeJobExecutionState :: Core.Maybe Core.Bool,
    -- | Optional. A collection of name\/value pairs that describe the status of
    -- the job execution. If not specified, the statusDetails are unchanged.
    statusDetails :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | Specifies the amount of time this device has to finish execution of this
    -- job. If the job execution status is not set to a terminal state before
    -- this timer expires, or before the timer is reset (by again calling
    -- @UpdateJobExecution@, setting the status to @IN_PROGRESS@ and specifying
    -- a new timeout value in this field) the job execution status will be
    -- automatically set to @TIMED_OUT@. Note that setting or resetting this
    -- timeout has no effect on that job execution timeout which may have been
    -- specified when the job was created (@CreateJob@ using field
    -- @timeoutConfig@).
    stepTimeoutInMinutes :: Core.Maybe Core.Integer,
    -- | Optional. A number that identifies a particular job execution on a
    -- particular device.
    executionNumber :: Core.Maybe Core.Integer,
    -- | The unique identifier assigned to this job when it was created.
    jobId :: Core.Text,
    -- | The name of the thing associated with the device.
    thingName :: Core.Text,
    -- | The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or
    -- REJECTED). This must be specified on every update.
    status :: JobExecutionStatus
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateJobExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expectedVersion', 'updateJobExecution_expectedVersion' - Optional. The expected current version of the job execution. Each time
-- you update the job execution, its version is incremented. If the version
-- of the job execution stored in Jobs does not match, the update is
-- rejected with a VersionMismatch error, and an ErrorResponse that
-- contains the current job execution status data is returned. (This makes
-- it unnecessary to perform a separate DescribeJobExecution request in
-- order to obtain the job execution status data.)
--
-- 'includeJobDocument', 'updateJobExecution_includeJobDocument' - Optional. When set to true, the response contains the job document. The
-- default is false.
--
-- 'includeJobExecutionState', 'updateJobExecution_includeJobExecutionState' - Optional. When included and set to true, the response contains the
-- JobExecutionState data. The default is false.
--
-- 'statusDetails', 'updateJobExecution_statusDetails' - Optional. A collection of name\/value pairs that describe the status of
-- the job execution. If not specified, the statusDetails are unchanged.
--
-- 'stepTimeoutInMinutes', 'updateJobExecution_stepTimeoutInMinutes' - Specifies the amount of time this device has to finish execution of this
-- job. If the job execution status is not set to a terminal state before
-- this timer expires, or before the timer is reset (by again calling
-- @UpdateJobExecution@, setting the status to @IN_PROGRESS@ and specifying
-- a new timeout value in this field) the job execution status will be
-- automatically set to @TIMED_OUT@. Note that setting or resetting this
-- timeout has no effect on that job execution timeout which may have been
-- specified when the job was created (@CreateJob@ using field
-- @timeoutConfig@).
--
-- 'executionNumber', 'updateJobExecution_executionNumber' - Optional. A number that identifies a particular job execution on a
-- particular device.
--
-- 'jobId', 'updateJobExecution_jobId' - The unique identifier assigned to this job when it was created.
--
-- 'thingName', 'updateJobExecution_thingName' - The name of the thing associated with the device.
--
-- 'status', 'updateJobExecution_status' - The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or
-- REJECTED). This must be specified on every update.
newUpdateJobExecution ::
  -- | 'jobId'
  Core.Text ->
  -- | 'thingName'
  Core.Text ->
  -- | 'status'
  JobExecutionStatus ->
  UpdateJobExecution
newUpdateJobExecution pJobId_ pThingName_ pStatus_ =
  UpdateJobExecution'
    { expectedVersion = Core.Nothing,
      includeJobDocument = Core.Nothing,
      includeJobExecutionState = Core.Nothing,
      statusDetails = Core.Nothing,
      stepTimeoutInMinutes = Core.Nothing,
      executionNumber = Core.Nothing,
      jobId = pJobId_,
      thingName = pThingName_,
      status = pStatus_
    }

-- | Optional. The expected current version of the job execution. Each time
-- you update the job execution, its version is incremented. If the version
-- of the job execution stored in Jobs does not match, the update is
-- rejected with a VersionMismatch error, and an ErrorResponse that
-- contains the current job execution status data is returned. (This makes
-- it unnecessary to perform a separate DescribeJobExecution request in
-- order to obtain the job execution status data.)
updateJobExecution_expectedVersion :: Lens.Lens' UpdateJobExecution (Core.Maybe Core.Integer)
updateJobExecution_expectedVersion = Lens.lens (\UpdateJobExecution' {expectedVersion} -> expectedVersion) (\s@UpdateJobExecution' {} a -> s {expectedVersion = a} :: UpdateJobExecution)

-- | Optional. When set to true, the response contains the job document. The
-- default is false.
updateJobExecution_includeJobDocument :: Lens.Lens' UpdateJobExecution (Core.Maybe Core.Bool)
updateJobExecution_includeJobDocument = Lens.lens (\UpdateJobExecution' {includeJobDocument} -> includeJobDocument) (\s@UpdateJobExecution' {} a -> s {includeJobDocument = a} :: UpdateJobExecution)

-- | Optional. When included and set to true, the response contains the
-- JobExecutionState data. The default is false.
updateJobExecution_includeJobExecutionState :: Lens.Lens' UpdateJobExecution (Core.Maybe Core.Bool)
updateJobExecution_includeJobExecutionState = Lens.lens (\UpdateJobExecution' {includeJobExecutionState} -> includeJobExecutionState) (\s@UpdateJobExecution' {} a -> s {includeJobExecutionState = a} :: UpdateJobExecution)

-- | Optional. A collection of name\/value pairs that describe the status of
-- the job execution. If not specified, the statusDetails are unchanged.
updateJobExecution_statusDetails :: Lens.Lens' UpdateJobExecution (Core.Maybe (Core.HashMap Core.Text Core.Text))
updateJobExecution_statusDetails = Lens.lens (\UpdateJobExecution' {statusDetails} -> statusDetails) (\s@UpdateJobExecution' {} a -> s {statusDetails = a} :: UpdateJobExecution) Core.. Lens.mapping Lens._Coerce

-- | Specifies the amount of time this device has to finish execution of this
-- job. If the job execution status is not set to a terminal state before
-- this timer expires, or before the timer is reset (by again calling
-- @UpdateJobExecution@, setting the status to @IN_PROGRESS@ and specifying
-- a new timeout value in this field) the job execution status will be
-- automatically set to @TIMED_OUT@. Note that setting or resetting this
-- timeout has no effect on that job execution timeout which may have been
-- specified when the job was created (@CreateJob@ using field
-- @timeoutConfig@).
updateJobExecution_stepTimeoutInMinutes :: Lens.Lens' UpdateJobExecution (Core.Maybe Core.Integer)
updateJobExecution_stepTimeoutInMinutes = Lens.lens (\UpdateJobExecution' {stepTimeoutInMinutes} -> stepTimeoutInMinutes) (\s@UpdateJobExecution' {} a -> s {stepTimeoutInMinutes = a} :: UpdateJobExecution)

-- | Optional. A number that identifies a particular job execution on a
-- particular device.
updateJobExecution_executionNumber :: Lens.Lens' UpdateJobExecution (Core.Maybe Core.Integer)
updateJobExecution_executionNumber = Lens.lens (\UpdateJobExecution' {executionNumber} -> executionNumber) (\s@UpdateJobExecution' {} a -> s {executionNumber = a} :: UpdateJobExecution)

-- | The unique identifier assigned to this job when it was created.
updateJobExecution_jobId :: Lens.Lens' UpdateJobExecution Core.Text
updateJobExecution_jobId = Lens.lens (\UpdateJobExecution' {jobId} -> jobId) (\s@UpdateJobExecution' {} a -> s {jobId = a} :: UpdateJobExecution)

-- | The name of the thing associated with the device.
updateJobExecution_thingName :: Lens.Lens' UpdateJobExecution Core.Text
updateJobExecution_thingName = Lens.lens (\UpdateJobExecution' {thingName} -> thingName) (\s@UpdateJobExecution' {} a -> s {thingName = a} :: UpdateJobExecution)

-- | The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or
-- REJECTED). This must be specified on every update.
updateJobExecution_status :: Lens.Lens' UpdateJobExecution JobExecutionStatus
updateJobExecution_status = Lens.lens (\UpdateJobExecution' {status} -> status) (\s@UpdateJobExecution' {} a -> s {status = a} :: UpdateJobExecution)

instance Core.AWSRequest UpdateJobExecution where
  type
    AWSResponse UpdateJobExecution =
      UpdateJobExecutionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateJobExecutionResponse'
            Core.<$> (x Core..?> "executionState")
            Core.<*> (x Core..?> "jobDocument")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateJobExecution

instance Core.NFData UpdateJobExecution

instance Core.ToHeaders UpdateJobExecution where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON UpdateJobExecution where
  toJSON UpdateJobExecution' {..} =
    Core.object
      ( Core.catMaybes
          [ ("expectedVersion" Core..=)
              Core.<$> expectedVersion,
            ("includeJobDocument" Core..=)
              Core.<$> includeJobDocument,
            ("includeJobExecutionState" Core..=)
              Core.<$> includeJobExecutionState,
            ("statusDetails" Core..=) Core.<$> statusDetails,
            ("stepTimeoutInMinutes" Core..=)
              Core.<$> stepTimeoutInMinutes,
            ("executionNumber" Core..=) Core.<$> executionNumber,
            Core.Just ("status" Core..= status)
          ]
      )

instance Core.ToPath UpdateJobExecution where
  toPath UpdateJobExecution' {..} =
    Core.mconcat
      [ "/things/",
        Core.toBS thingName,
        "/jobs/",
        Core.toBS jobId
      ]

instance Core.ToQuery UpdateJobExecution where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateJobExecutionResponse' smart constructor.
data UpdateJobExecutionResponse = UpdateJobExecutionResponse'
  { -- | A JobExecutionState object.
    executionState :: Core.Maybe JobExecutionState,
    -- | The contents of the Job Documents.
    jobDocument :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateJobExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executionState', 'updateJobExecutionResponse_executionState' - A JobExecutionState object.
--
-- 'jobDocument', 'updateJobExecutionResponse_jobDocument' - The contents of the Job Documents.
--
-- 'httpStatus', 'updateJobExecutionResponse_httpStatus' - The response's http status code.
newUpdateJobExecutionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateJobExecutionResponse
newUpdateJobExecutionResponse pHttpStatus_ =
  UpdateJobExecutionResponse'
    { executionState =
        Core.Nothing,
      jobDocument = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A JobExecutionState object.
updateJobExecutionResponse_executionState :: Lens.Lens' UpdateJobExecutionResponse (Core.Maybe JobExecutionState)
updateJobExecutionResponse_executionState = Lens.lens (\UpdateJobExecutionResponse' {executionState} -> executionState) (\s@UpdateJobExecutionResponse' {} a -> s {executionState = a} :: UpdateJobExecutionResponse)

-- | The contents of the Job Documents.
updateJobExecutionResponse_jobDocument :: Lens.Lens' UpdateJobExecutionResponse (Core.Maybe Core.Text)
updateJobExecutionResponse_jobDocument = Lens.lens (\UpdateJobExecutionResponse' {jobDocument} -> jobDocument) (\s@UpdateJobExecutionResponse' {} a -> s {jobDocument = a} :: UpdateJobExecutionResponse)

-- | The response's http status code.
updateJobExecutionResponse_httpStatus :: Lens.Lens' UpdateJobExecutionResponse Core.Int
updateJobExecutionResponse_httpStatus = Lens.lens (\UpdateJobExecutionResponse' {httpStatus} -> httpStatus) (\s@UpdateJobExecutionResponse' {} a -> s {httpStatus = a} :: UpdateJobExecutionResponse)

instance Core.NFData UpdateJobExecutionResponse
