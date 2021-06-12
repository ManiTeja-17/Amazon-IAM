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
-- Module      : Network.AWS.Glue.ResumeWorkflowRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restarts selected nodes of a previous partially completed workflow run
-- and resumes the workflow run. The selected nodes and all nodes that are
-- downstream from the selected nodes are run.
module Network.AWS.Glue.ResumeWorkflowRun
  ( -- * Creating a Request
    ResumeWorkflowRun (..),
    newResumeWorkflowRun,

    -- * Request Lenses
    resumeWorkflowRun_name,
    resumeWorkflowRun_runId,
    resumeWorkflowRun_nodeIds,

    -- * Destructuring the Response
    ResumeWorkflowRunResponse (..),
    newResumeWorkflowRunResponse,

    -- * Response Lenses
    resumeWorkflowRunResponse_runId,
    resumeWorkflowRunResponse_nodeIds,
    resumeWorkflowRunResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newResumeWorkflowRun' smart constructor.
data ResumeWorkflowRun = ResumeWorkflowRun'
  { -- | The name of the workflow to resume.
    name :: Core.Text,
    -- | The ID of the workflow run to resume.
    runId :: Core.Text,
    -- | A list of the node IDs for the nodes you want to restart. The nodes that
    -- are to be restarted must have a run attempt in the original run.
    nodeIds :: [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResumeWorkflowRun' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'resumeWorkflowRun_name' - The name of the workflow to resume.
--
-- 'runId', 'resumeWorkflowRun_runId' - The ID of the workflow run to resume.
--
-- 'nodeIds', 'resumeWorkflowRun_nodeIds' - A list of the node IDs for the nodes you want to restart. The nodes that
-- are to be restarted must have a run attempt in the original run.
newResumeWorkflowRun ::
  -- | 'name'
  Core.Text ->
  -- | 'runId'
  Core.Text ->
  ResumeWorkflowRun
newResumeWorkflowRun pName_ pRunId_ =
  ResumeWorkflowRun'
    { name = pName_,
      runId = pRunId_,
      nodeIds = Core.mempty
    }

-- | The name of the workflow to resume.
resumeWorkflowRun_name :: Lens.Lens' ResumeWorkflowRun Core.Text
resumeWorkflowRun_name = Lens.lens (\ResumeWorkflowRun' {name} -> name) (\s@ResumeWorkflowRun' {} a -> s {name = a} :: ResumeWorkflowRun)

-- | The ID of the workflow run to resume.
resumeWorkflowRun_runId :: Lens.Lens' ResumeWorkflowRun Core.Text
resumeWorkflowRun_runId = Lens.lens (\ResumeWorkflowRun' {runId} -> runId) (\s@ResumeWorkflowRun' {} a -> s {runId = a} :: ResumeWorkflowRun)

-- | A list of the node IDs for the nodes you want to restart. The nodes that
-- are to be restarted must have a run attempt in the original run.
resumeWorkflowRun_nodeIds :: Lens.Lens' ResumeWorkflowRun [Core.Text]
resumeWorkflowRun_nodeIds = Lens.lens (\ResumeWorkflowRun' {nodeIds} -> nodeIds) (\s@ResumeWorkflowRun' {} a -> s {nodeIds = a} :: ResumeWorkflowRun) Core.. Lens._Coerce

instance Core.AWSRequest ResumeWorkflowRun where
  type
    AWSResponse ResumeWorkflowRun =
      ResumeWorkflowRunResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ResumeWorkflowRunResponse'
            Core.<$> (x Core..?> "RunId")
            Core.<*> (x Core..?> "NodeIds" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ResumeWorkflowRun

instance Core.NFData ResumeWorkflowRun

instance Core.ToHeaders ResumeWorkflowRun where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.ResumeWorkflowRun" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ResumeWorkflowRun where
  toJSON ResumeWorkflowRun' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Name" Core..= name),
            Core.Just ("RunId" Core..= runId),
            Core.Just ("NodeIds" Core..= nodeIds)
          ]
      )

instance Core.ToPath ResumeWorkflowRun where
  toPath = Core.const "/"

instance Core.ToQuery ResumeWorkflowRun where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newResumeWorkflowRunResponse' smart constructor.
data ResumeWorkflowRunResponse = ResumeWorkflowRunResponse'
  { -- | The new ID assigned to the resumed workflow run. Each resume of a
    -- workflow run will have a new run ID.
    runId :: Core.Maybe Core.Text,
    -- | A list of the node IDs for the nodes that were actually restarted.
    nodeIds :: Core.Maybe [Core.Text],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResumeWorkflowRunResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'runId', 'resumeWorkflowRunResponse_runId' - The new ID assigned to the resumed workflow run. Each resume of a
-- workflow run will have a new run ID.
--
-- 'nodeIds', 'resumeWorkflowRunResponse_nodeIds' - A list of the node IDs for the nodes that were actually restarted.
--
-- 'httpStatus', 'resumeWorkflowRunResponse_httpStatus' - The response's http status code.
newResumeWorkflowRunResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ResumeWorkflowRunResponse
newResumeWorkflowRunResponse pHttpStatus_ =
  ResumeWorkflowRunResponse'
    { runId = Core.Nothing,
      nodeIds = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The new ID assigned to the resumed workflow run. Each resume of a
-- workflow run will have a new run ID.
resumeWorkflowRunResponse_runId :: Lens.Lens' ResumeWorkflowRunResponse (Core.Maybe Core.Text)
resumeWorkflowRunResponse_runId = Lens.lens (\ResumeWorkflowRunResponse' {runId} -> runId) (\s@ResumeWorkflowRunResponse' {} a -> s {runId = a} :: ResumeWorkflowRunResponse)

-- | A list of the node IDs for the nodes that were actually restarted.
resumeWorkflowRunResponse_nodeIds :: Lens.Lens' ResumeWorkflowRunResponse (Core.Maybe [Core.Text])
resumeWorkflowRunResponse_nodeIds = Lens.lens (\ResumeWorkflowRunResponse' {nodeIds} -> nodeIds) (\s@ResumeWorkflowRunResponse' {} a -> s {nodeIds = a} :: ResumeWorkflowRunResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
resumeWorkflowRunResponse_httpStatus :: Lens.Lens' ResumeWorkflowRunResponse Core.Int
resumeWorkflowRunResponse_httpStatus = Lens.lens (\ResumeWorkflowRunResponse' {httpStatus} -> httpStatus) (\s@ResumeWorkflowRunResponse' {} a -> s {httpStatus = a} :: ResumeWorkflowRunResponse)

instance Core.NFData ResumeWorkflowRunResponse
