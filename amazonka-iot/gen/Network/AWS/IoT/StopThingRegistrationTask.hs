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
-- Module      : Network.AWS.IoT.StopThingRegistrationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a bulk thing provisioning task.
module Network.AWS.IoT.StopThingRegistrationTask
  ( -- * Creating a Request
    StopThingRegistrationTask (..),
    newStopThingRegistrationTask,

    -- * Request Lenses
    stopThingRegistrationTask_taskId,

    -- * Destructuring the Response
    StopThingRegistrationTaskResponse (..),
    newStopThingRegistrationTaskResponse,

    -- * Response Lenses
    stopThingRegistrationTaskResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStopThingRegistrationTask' smart constructor.
data StopThingRegistrationTask = StopThingRegistrationTask'
  { -- | The bulk thing provisioning task ID.
    taskId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StopThingRegistrationTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'taskId', 'stopThingRegistrationTask_taskId' - The bulk thing provisioning task ID.
newStopThingRegistrationTask ::
  -- | 'taskId'
  Core.Text ->
  StopThingRegistrationTask
newStopThingRegistrationTask pTaskId_ =
  StopThingRegistrationTask' {taskId = pTaskId_}

-- | The bulk thing provisioning task ID.
stopThingRegistrationTask_taskId :: Lens.Lens' StopThingRegistrationTask Core.Text
stopThingRegistrationTask_taskId = Lens.lens (\StopThingRegistrationTask' {taskId} -> taskId) (\s@StopThingRegistrationTask' {} a -> s {taskId = a} :: StopThingRegistrationTask)

instance Core.AWSRequest StopThingRegistrationTask where
  type
    AWSResponse StopThingRegistrationTask =
      StopThingRegistrationTaskResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          StopThingRegistrationTaskResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable StopThingRegistrationTask

instance Core.NFData StopThingRegistrationTask

instance Core.ToHeaders StopThingRegistrationTask where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON StopThingRegistrationTask where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath StopThingRegistrationTask where
  toPath StopThingRegistrationTask' {..} =
    Core.mconcat
      [ "/thing-registration-tasks/",
        Core.toBS taskId,
        "/cancel"
      ]

instance Core.ToQuery StopThingRegistrationTask where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newStopThingRegistrationTaskResponse' smart constructor.
data StopThingRegistrationTaskResponse = StopThingRegistrationTaskResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StopThingRegistrationTaskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'stopThingRegistrationTaskResponse_httpStatus' - The response's http status code.
newStopThingRegistrationTaskResponse ::
  -- | 'httpStatus'
  Core.Int ->
  StopThingRegistrationTaskResponse
newStopThingRegistrationTaskResponse pHttpStatus_ =
  StopThingRegistrationTaskResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
stopThingRegistrationTaskResponse_httpStatus :: Lens.Lens' StopThingRegistrationTaskResponse Core.Int
stopThingRegistrationTaskResponse_httpStatus = Lens.lens (\StopThingRegistrationTaskResponse' {httpStatus} -> httpStatus) (\s@StopThingRegistrationTaskResponse' {} a -> s {httpStatus = a} :: StopThingRegistrationTaskResponse)

instance
  Core.NFData
    StopThingRegistrationTaskResponse
