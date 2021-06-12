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
-- Module      : Network.AWS.IoTAnalytics.DeletePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified pipeline.
module Network.AWS.IoTAnalytics.DeletePipeline
  ( -- * Creating a Request
    DeletePipeline (..),
    newDeletePipeline,

    -- * Request Lenses
    deletePipeline_pipelineName,

    -- * Destructuring the Response
    DeletePipelineResponse (..),
    newDeletePipelineResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeletePipeline' smart constructor.
data DeletePipeline = DeletePipeline'
  { -- | The name of the pipeline to delete.
    pipelineName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeletePipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pipelineName', 'deletePipeline_pipelineName' - The name of the pipeline to delete.
newDeletePipeline ::
  -- | 'pipelineName'
  Core.Text ->
  DeletePipeline
newDeletePipeline pPipelineName_ =
  DeletePipeline' {pipelineName = pPipelineName_}

-- | The name of the pipeline to delete.
deletePipeline_pipelineName :: Lens.Lens' DeletePipeline Core.Text
deletePipeline_pipelineName = Lens.lens (\DeletePipeline' {pipelineName} -> pipelineName) (\s@DeletePipeline' {} a -> s {pipelineName = a} :: DeletePipeline)

instance Core.AWSRequest DeletePipeline where
  type
    AWSResponse DeletePipeline =
      DeletePipelineResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeletePipelineResponse'

instance Core.Hashable DeletePipeline

instance Core.NFData DeletePipeline

instance Core.ToHeaders DeletePipeline where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeletePipeline where
  toPath DeletePipeline' {..} =
    Core.mconcat
      ["/pipelines/", Core.toBS pipelineName]

instance Core.ToQuery DeletePipeline where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeletePipelineResponse' smart constructor.
data DeletePipelineResponse = DeletePipelineResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeletePipelineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeletePipelineResponse ::
  DeletePipelineResponse
newDeletePipelineResponse = DeletePipelineResponse'

instance Core.NFData DeletePipelineResponse
