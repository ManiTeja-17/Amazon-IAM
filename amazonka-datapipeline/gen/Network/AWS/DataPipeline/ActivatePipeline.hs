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
-- Module      : Network.AWS.DataPipeline.ActivatePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates the specified pipeline and starts processing pipeline tasks.
-- If the pipeline does not pass validation, activation fails.
--
-- If you need to pause the pipeline to investigate an issue with a
-- component, such as a data source or script, call DeactivatePipeline.
--
-- To activate a finished pipeline, modify the end date for the pipeline
-- and then activate it.
module Network.AWS.DataPipeline.ActivatePipeline
  ( -- * Creating a Request
    ActivatePipeline (..),
    newActivatePipeline,

    -- * Request Lenses
    activatePipeline_parameterValues,
    activatePipeline_startTimestamp,
    activatePipeline_pipelineId,

    -- * Destructuring the Response
    ActivatePipelineResponse (..),
    newActivatePipelineResponse,

    -- * Response Lenses
    activatePipelineResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataPipeline.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for ActivatePipeline.
--
-- /See:/ 'newActivatePipeline' smart constructor.
data ActivatePipeline = ActivatePipeline'
  { -- | A list of parameter values to pass to the pipeline at activation.
    parameterValues :: Core.Maybe [ParameterValue],
    -- | The date and time to resume the pipeline. By default, the pipeline
    -- resumes from the last completed execution.
    startTimestamp :: Core.Maybe Core.POSIX,
    -- | The ID of the pipeline.
    pipelineId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ActivatePipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameterValues', 'activatePipeline_parameterValues' - A list of parameter values to pass to the pipeline at activation.
--
-- 'startTimestamp', 'activatePipeline_startTimestamp' - The date and time to resume the pipeline. By default, the pipeline
-- resumes from the last completed execution.
--
-- 'pipelineId', 'activatePipeline_pipelineId' - The ID of the pipeline.
newActivatePipeline ::
  -- | 'pipelineId'
  Core.Text ->
  ActivatePipeline
newActivatePipeline pPipelineId_ =
  ActivatePipeline'
    { parameterValues = Core.Nothing,
      startTimestamp = Core.Nothing,
      pipelineId = pPipelineId_
    }

-- | A list of parameter values to pass to the pipeline at activation.
activatePipeline_parameterValues :: Lens.Lens' ActivatePipeline (Core.Maybe [ParameterValue])
activatePipeline_parameterValues = Lens.lens (\ActivatePipeline' {parameterValues} -> parameterValues) (\s@ActivatePipeline' {} a -> s {parameterValues = a} :: ActivatePipeline) Core.. Lens.mapping Lens._Coerce

-- | The date and time to resume the pipeline. By default, the pipeline
-- resumes from the last completed execution.
activatePipeline_startTimestamp :: Lens.Lens' ActivatePipeline (Core.Maybe Core.UTCTime)
activatePipeline_startTimestamp = Lens.lens (\ActivatePipeline' {startTimestamp} -> startTimestamp) (\s@ActivatePipeline' {} a -> s {startTimestamp = a} :: ActivatePipeline) Core.. Lens.mapping Core._Time

-- | The ID of the pipeline.
activatePipeline_pipelineId :: Lens.Lens' ActivatePipeline Core.Text
activatePipeline_pipelineId = Lens.lens (\ActivatePipeline' {pipelineId} -> pipelineId) (\s@ActivatePipeline' {} a -> s {pipelineId = a} :: ActivatePipeline)

instance Core.AWSRequest ActivatePipeline where
  type
    AWSResponse ActivatePipeline =
      ActivatePipelineResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          ActivatePipelineResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ActivatePipeline

instance Core.NFData ActivatePipeline

instance Core.ToHeaders ActivatePipeline where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("DataPipeline.ActivatePipeline" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ActivatePipeline where
  toJSON ActivatePipeline' {..} =
    Core.object
      ( Core.catMaybes
          [ ("parameterValues" Core..=)
              Core.<$> parameterValues,
            ("startTimestamp" Core..=) Core.<$> startTimestamp,
            Core.Just ("pipelineId" Core..= pipelineId)
          ]
      )

instance Core.ToPath ActivatePipeline where
  toPath = Core.const "/"

instance Core.ToQuery ActivatePipeline where
  toQuery = Core.const Core.mempty

-- | Contains the output of ActivatePipeline.
--
-- /See:/ 'newActivatePipelineResponse' smart constructor.
data ActivatePipelineResponse = ActivatePipelineResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ActivatePipelineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'activatePipelineResponse_httpStatus' - The response's http status code.
newActivatePipelineResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ActivatePipelineResponse
newActivatePipelineResponse pHttpStatus_ =
  ActivatePipelineResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
activatePipelineResponse_httpStatus :: Lens.Lens' ActivatePipelineResponse Core.Int
activatePipelineResponse_httpStatus = Lens.lens (\ActivatePipelineResponse' {httpStatus} -> httpStatus) (\s@ActivatePipelineResponse' {} a -> s {httpStatus = a} :: ActivatePipelineResponse)

instance Core.NFData ActivatePipelineResponse
