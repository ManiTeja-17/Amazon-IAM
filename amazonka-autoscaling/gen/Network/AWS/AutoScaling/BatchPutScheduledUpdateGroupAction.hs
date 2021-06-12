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
-- Module      : Network.AWS.AutoScaling.BatchPutScheduledUpdateGroupAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates one or more scheduled scaling actions for an Auto
-- Scaling group. If you leave a parameter unspecified when updating a
-- scheduled scaling action, the corresponding value remains unchanged.
module Network.AWS.AutoScaling.BatchPutScheduledUpdateGroupAction
  ( -- * Creating a Request
    BatchPutScheduledUpdateGroupAction (..),
    newBatchPutScheduledUpdateGroupAction,

    -- * Request Lenses
    batchPutScheduledUpdateGroupAction_autoScalingGroupName,
    batchPutScheduledUpdateGroupAction_scheduledUpdateGroupActions,

    -- * Destructuring the Response
    BatchPutScheduledUpdateGroupActionResponse (..),
    newBatchPutScheduledUpdateGroupActionResponse,

    -- * Response Lenses
    batchPutScheduledUpdateGroupActionResponse_failedScheduledUpdateGroupActions,
    batchPutScheduledUpdateGroupActionResponse_httpStatus,
  )
where

import Network.AWS.AutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchPutScheduledUpdateGroupAction' smart constructor.
data BatchPutScheduledUpdateGroupAction = BatchPutScheduledUpdateGroupAction'
  { -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Core.Text,
    -- | One or more scheduled actions. The maximum number allowed is 50.
    scheduledUpdateGroupActions :: [ScheduledUpdateGroupActionRequest]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchPutScheduledUpdateGroupAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoScalingGroupName', 'batchPutScheduledUpdateGroupAction_autoScalingGroupName' - The name of the Auto Scaling group.
--
-- 'scheduledUpdateGroupActions', 'batchPutScheduledUpdateGroupAction_scheduledUpdateGroupActions' - One or more scheduled actions. The maximum number allowed is 50.
newBatchPutScheduledUpdateGroupAction ::
  -- | 'autoScalingGroupName'
  Core.Text ->
  BatchPutScheduledUpdateGroupAction
newBatchPutScheduledUpdateGroupAction
  pAutoScalingGroupName_ =
    BatchPutScheduledUpdateGroupAction'
      { autoScalingGroupName =
          pAutoScalingGroupName_,
        scheduledUpdateGroupActions =
          Core.mempty
      }

-- | The name of the Auto Scaling group.
batchPutScheduledUpdateGroupAction_autoScalingGroupName :: Lens.Lens' BatchPutScheduledUpdateGroupAction Core.Text
batchPutScheduledUpdateGroupAction_autoScalingGroupName = Lens.lens (\BatchPutScheduledUpdateGroupAction' {autoScalingGroupName} -> autoScalingGroupName) (\s@BatchPutScheduledUpdateGroupAction' {} a -> s {autoScalingGroupName = a} :: BatchPutScheduledUpdateGroupAction)

-- | One or more scheduled actions. The maximum number allowed is 50.
batchPutScheduledUpdateGroupAction_scheduledUpdateGroupActions :: Lens.Lens' BatchPutScheduledUpdateGroupAction [ScheduledUpdateGroupActionRequest]
batchPutScheduledUpdateGroupAction_scheduledUpdateGroupActions = Lens.lens (\BatchPutScheduledUpdateGroupAction' {scheduledUpdateGroupActions} -> scheduledUpdateGroupActions) (\s@BatchPutScheduledUpdateGroupAction' {} a -> s {scheduledUpdateGroupActions = a} :: BatchPutScheduledUpdateGroupAction) Core.. Lens._Coerce

instance
  Core.AWSRequest
    BatchPutScheduledUpdateGroupAction
  where
  type
    AWSResponse BatchPutScheduledUpdateGroupAction =
      BatchPutScheduledUpdateGroupActionResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "BatchPutScheduledUpdateGroupActionResult"
      ( \s h x ->
          BatchPutScheduledUpdateGroupActionResponse'
            Core.<$> ( x Core..@? "FailedScheduledUpdateGroupActions"
                         Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "member")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    BatchPutScheduledUpdateGroupAction

instance
  Core.NFData
    BatchPutScheduledUpdateGroupAction

instance
  Core.ToHeaders
    BatchPutScheduledUpdateGroupAction
  where
  toHeaders = Core.const Core.mempty

instance
  Core.ToPath
    BatchPutScheduledUpdateGroupAction
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    BatchPutScheduledUpdateGroupAction
  where
  toQuery BatchPutScheduledUpdateGroupAction' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ( "BatchPutScheduledUpdateGroupAction" ::
                      Core.ByteString
                  ),
        "Version" Core.=: ("2011-01-01" :: Core.ByteString),
        "AutoScalingGroupName" Core.=: autoScalingGroupName,
        "ScheduledUpdateGroupActions"
          Core.=: Core.toQueryList
            "member"
            scheduledUpdateGroupActions
      ]

-- | /See:/ 'newBatchPutScheduledUpdateGroupActionResponse' smart constructor.
data BatchPutScheduledUpdateGroupActionResponse = BatchPutScheduledUpdateGroupActionResponse'
  { -- | The names of the scheduled actions that could not be created or updated,
    -- including an error message.
    failedScheduledUpdateGroupActions :: Core.Maybe [FailedScheduledUpdateGroupActionRequest],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchPutScheduledUpdateGroupActionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failedScheduledUpdateGroupActions', 'batchPutScheduledUpdateGroupActionResponse_failedScheduledUpdateGroupActions' - The names of the scheduled actions that could not be created or updated,
-- including an error message.
--
-- 'httpStatus', 'batchPutScheduledUpdateGroupActionResponse_httpStatus' - The response's http status code.
newBatchPutScheduledUpdateGroupActionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  BatchPutScheduledUpdateGroupActionResponse
newBatchPutScheduledUpdateGroupActionResponse
  pHttpStatus_ =
    BatchPutScheduledUpdateGroupActionResponse'
      { failedScheduledUpdateGroupActions =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The names of the scheduled actions that could not be created or updated,
-- including an error message.
batchPutScheduledUpdateGroupActionResponse_failedScheduledUpdateGroupActions :: Lens.Lens' BatchPutScheduledUpdateGroupActionResponse (Core.Maybe [FailedScheduledUpdateGroupActionRequest])
batchPutScheduledUpdateGroupActionResponse_failedScheduledUpdateGroupActions = Lens.lens (\BatchPutScheduledUpdateGroupActionResponse' {failedScheduledUpdateGroupActions} -> failedScheduledUpdateGroupActions) (\s@BatchPutScheduledUpdateGroupActionResponse' {} a -> s {failedScheduledUpdateGroupActions = a} :: BatchPutScheduledUpdateGroupActionResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
batchPutScheduledUpdateGroupActionResponse_httpStatus :: Lens.Lens' BatchPutScheduledUpdateGroupActionResponse Core.Int
batchPutScheduledUpdateGroupActionResponse_httpStatus = Lens.lens (\BatchPutScheduledUpdateGroupActionResponse' {httpStatus} -> httpStatus) (\s@BatchPutScheduledUpdateGroupActionResponse' {} a -> s {httpStatus = a} :: BatchPutScheduledUpdateGroupActionResponse)

instance
  Core.NFData
    BatchPutScheduledUpdateGroupActionResponse
