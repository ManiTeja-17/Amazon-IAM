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
-- Module      : Network.AWS.MigrationHub.NotifyMigrationTaskState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies Migration Hub of the current status, progress, or other detail
-- regarding a migration task. This API has the following traits:
--
-- -   Migration tools will call the @NotifyMigrationTaskState@ API to
--     share the latest progress and status.
--
-- -   @MigrationTaskName@ is used for addressing updates to the correct
--     target.
--
-- -   @ProgressUpdateStream@ is used for access control and to provide a
--     namespace for each migration tool.
module Network.AWS.MigrationHub.NotifyMigrationTaskState
  ( -- * Creating a Request
    NotifyMigrationTaskState (..),
    newNotifyMigrationTaskState,

    -- * Request Lenses
    notifyMigrationTaskState_dryRun,
    notifyMigrationTaskState_progressUpdateStream,
    notifyMigrationTaskState_migrationTaskName,
    notifyMigrationTaskState_task,
    notifyMigrationTaskState_updateDateTime,
    notifyMigrationTaskState_nextUpdateSeconds,

    -- * Destructuring the Response
    NotifyMigrationTaskStateResponse (..),
    newNotifyMigrationTaskStateResponse,

    -- * Response Lenses
    notifyMigrationTaskStateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MigrationHub.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newNotifyMigrationTaskState' smart constructor.
data NotifyMigrationTaskState = NotifyMigrationTaskState'
  { -- | Optional boolean flag to indicate whether any effect should take place.
    -- Used to test if the caller has permission to make the call.
    dryRun :: Core.Maybe Core.Bool,
    -- | The name of the ProgressUpdateStream.
    progressUpdateStream :: Core.Text,
    -- | Unique identifier that references the migration task. /Do not store
    -- personal data in this field./
    migrationTaskName :: Core.Text,
    -- | Information about the task\'s progress and status.
    task :: Task,
    -- | The timestamp when the task was gathered.
    updateDateTime :: Core.POSIX,
    -- | Number of seconds after the UpdateDateTime within which the Migration
    -- Hub can expect an update. If Migration Hub does not receive an update
    -- within the specified interval, then the migration task will be
    -- considered stale.
    nextUpdateSeconds :: Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'NotifyMigrationTaskState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'notifyMigrationTaskState_dryRun' - Optional boolean flag to indicate whether any effect should take place.
-- Used to test if the caller has permission to make the call.
--
-- 'progressUpdateStream', 'notifyMigrationTaskState_progressUpdateStream' - The name of the ProgressUpdateStream.
--
-- 'migrationTaskName', 'notifyMigrationTaskState_migrationTaskName' - Unique identifier that references the migration task. /Do not store
-- personal data in this field./
--
-- 'task', 'notifyMigrationTaskState_task' - Information about the task\'s progress and status.
--
-- 'updateDateTime', 'notifyMigrationTaskState_updateDateTime' - The timestamp when the task was gathered.
--
-- 'nextUpdateSeconds', 'notifyMigrationTaskState_nextUpdateSeconds' - Number of seconds after the UpdateDateTime within which the Migration
-- Hub can expect an update. If Migration Hub does not receive an update
-- within the specified interval, then the migration task will be
-- considered stale.
newNotifyMigrationTaskState ::
  -- | 'progressUpdateStream'
  Core.Text ->
  -- | 'migrationTaskName'
  Core.Text ->
  -- | 'task'
  Task ->
  -- | 'updateDateTime'
  Core.UTCTime ->
  -- | 'nextUpdateSeconds'
  Core.Natural ->
  NotifyMigrationTaskState
newNotifyMigrationTaskState
  pProgressUpdateStream_
  pMigrationTaskName_
  pTask_
  pUpdateDateTime_
  pNextUpdateSeconds_ =
    NotifyMigrationTaskState'
      { dryRun = Core.Nothing,
        progressUpdateStream = pProgressUpdateStream_,
        migrationTaskName = pMigrationTaskName_,
        task = pTask_,
        updateDateTime =
          Core._Time Lens.# pUpdateDateTime_,
        nextUpdateSeconds = pNextUpdateSeconds_
      }

-- | Optional boolean flag to indicate whether any effect should take place.
-- Used to test if the caller has permission to make the call.
notifyMigrationTaskState_dryRun :: Lens.Lens' NotifyMigrationTaskState (Core.Maybe Core.Bool)
notifyMigrationTaskState_dryRun = Lens.lens (\NotifyMigrationTaskState' {dryRun} -> dryRun) (\s@NotifyMigrationTaskState' {} a -> s {dryRun = a} :: NotifyMigrationTaskState)

-- | The name of the ProgressUpdateStream.
notifyMigrationTaskState_progressUpdateStream :: Lens.Lens' NotifyMigrationTaskState Core.Text
notifyMigrationTaskState_progressUpdateStream = Lens.lens (\NotifyMigrationTaskState' {progressUpdateStream} -> progressUpdateStream) (\s@NotifyMigrationTaskState' {} a -> s {progressUpdateStream = a} :: NotifyMigrationTaskState)

-- | Unique identifier that references the migration task. /Do not store
-- personal data in this field./
notifyMigrationTaskState_migrationTaskName :: Lens.Lens' NotifyMigrationTaskState Core.Text
notifyMigrationTaskState_migrationTaskName = Lens.lens (\NotifyMigrationTaskState' {migrationTaskName} -> migrationTaskName) (\s@NotifyMigrationTaskState' {} a -> s {migrationTaskName = a} :: NotifyMigrationTaskState)

-- | Information about the task\'s progress and status.
notifyMigrationTaskState_task :: Lens.Lens' NotifyMigrationTaskState Task
notifyMigrationTaskState_task = Lens.lens (\NotifyMigrationTaskState' {task} -> task) (\s@NotifyMigrationTaskState' {} a -> s {task = a} :: NotifyMigrationTaskState)

-- | The timestamp when the task was gathered.
notifyMigrationTaskState_updateDateTime :: Lens.Lens' NotifyMigrationTaskState Core.UTCTime
notifyMigrationTaskState_updateDateTime = Lens.lens (\NotifyMigrationTaskState' {updateDateTime} -> updateDateTime) (\s@NotifyMigrationTaskState' {} a -> s {updateDateTime = a} :: NotifyMigrationTaskState) Core.. Core._Time

-- | Number of seconds after the UpdateDateTime within which the Migration
-- Hub can expect an update. If Migration Hub does not receive an update
-- within the specified interval, then the migration task will be
-- considered stale.
notifyMigrationTaskState_nextUpdateSeconds :: Lens.Lens' NotifyMigrationTaskState Core.Natural
notifyMigrationTaskState_nextUpdateSeconds = Lens.lens (\NotifyMigrationTaskState' {nextUpdateSeconds} -> nextUpdateSeconds) (\s@NotifyMigrationTaskState' {} a -> s {nextUpdateSeconds = a} :: NotifyMigrationTaskState)

instance Core.AWSRequest NotifyMigrationTaskState where
  type
    AWSResponse NotifyMigrationTaskState =
      NotifyMigrationTaskStateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          NotifyMigrationTaskStateResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable NotifyMigrationTaskState

instance Core.NFData NotifyMigrationTaskState

instance Core.ToHeaders NotifyMigrationTaskState where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSMigrationHub.NotifyMigrationTaskState" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON NotifyMigrationTaskState where
  toJSON NotifyMigrationTaskState' {..} =
    Core.object
      ( Core.catMaybes
          [ ("DryRun" Core..=) Core.<$> dryRun,
            Core.Just
              ( "ProgressUpdateStream"
                  Core..= progressUpdateStream
              ),
            Core.Just
              ("MigrationTaskName" Core..= migrationTaskName),
            Core.Just ("Task" Core..= task),
            Core.Just ("UpdateDateTime" Core..= updateDateTime),
            Core.Just
              ("NextUpdateSeconds" Core..= nextUpdateSeconds)
          ]
      )

instance Core.ToPath NotifyMigrationTaskState where
  toPath = Core.const "/"

instance Core.ToQuery NotifyMigrationTaskState where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newNotifyMigrationTaskStateResponse' smart constructor.
data NotifyMigrationTaskStateResponse = NotifyMigrationTaskStateResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'NotifyMigrationTaskStateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'notifyMigrationTaskStateResponse_httpStatus' - The response's http status code.
newNotifyMigrationTaskStateResponse ::
  -- | 'httpStatus'
  Core.Int ->
  NotifyMigrationTaskStateResponse
newNotifyMigrationTaskStateResponse pHttpStatus_ =
  NotifyMigrationTaskStateResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
notifyMigrationTaskStateResponse_httpStatus :: Lens.Lens' NotifyMigrationTaskStateResponse Core.Int
notifyMigrationTaskStateResponse_httpStatus = Lens.lens (\NotifyMigrationTaskStateResponse' {httpStatus} -> httpStatus) (\s@NotifyMigrationTaskStateResponse' {} a -> s {httpStatus = a} :: NotifyMigrationTaskStateResponse)

instance Core.NFData NotifyMigrationTaskStateResponse
