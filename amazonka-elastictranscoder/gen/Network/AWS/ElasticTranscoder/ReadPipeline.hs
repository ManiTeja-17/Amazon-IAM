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
-- Module      : Network.AWS.ElasticTranscoder.ReadPipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The ReadPipeline operation gets detailed information about a pipeline.
module Network.AWS.ElasticTranscoder.ReadPipeline
  ( -- * Creating a Request
    ReadPipeline (..),
    newReadPipeline,

    -- * Request Lenses
    readPipeline_id,

    -- * Destructuring the Response
    ReadPipelineResponse (..),
    newReadPipelineResponse,

    -- * Response Lenses
    readPipelineResponse_warnings,
    readPipelineResponse_pipeline,
    readPipelineResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticTranscoder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The @ReadPipelineRequest@ structure.
--
-- /See:/ 'newReadPipeline' smart constructor.
data ReadPipeline = ReadPipeline'
  { -- | The identifier of the pipeline to read.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ReadPipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'readPipeline_id' - The identifier of the pipeline to read.
newReadPipeline ::
  -- | 'id'
  Core.Text ->
  ReadPipeline
newReadPipeline pId_ = ReadPipeline' {id = pId_}

-- | The identifier of the pipeline to read.
readPipeline_id :: Lens.Lens' ReadPipeline Core.Text
readPipeline_id = Lens.lens (\ReadPipeline' {id} -> id) (\s@ReadPipeline' {} a -> s {id = a} :: ReadPipeline)

instance Core.AWSRequest ReadPipeline where
  type AWSResponse ReadPipeline = ReadPipelineResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ReadPipelineResponse'
            Core.<$> (x Core..?> "Warnings" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "Pipeline")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ReadPipeline

instance Core.NFData ReadPipeline

instance Core.ToHeaders ReadPipeline where
  toHeaders = Core.const Core.mempty

instance Core.ToPath ReadPipeline where
  toPath ReadPipeline' {..} =
    Core.mconcat
      ["/2012-09-25/pipelines/", Core.toBS id]

instance Core.ToQuery ReadPipeline where
  toQuery = Core.const Core.mempty

-- | The @ReadPipelineResponse@ structure.
--
-- /See:/ 'newReadPipelineResponse' smart constructor.
data ReadPipelineResponse = ReadPipelineResponse'
  { -- | Elastic Transcoder returns a warning if the resources used by your
    -- pipeline are not in the same region as the pipeline.
    --
    -- Using resources in the same region, such as your Amazon S3 buckets,
    -- Amazon SNS notification topics, and AWS KMS key, reduces processing time
    -- and prevents cross-regional charges.
    warnings :: Core.Maybe [Warning],
    -- | A section of the response body that provides information about the
    -- pipeline.
    pipeline :: Core.Maybe Pipeline,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ReadPipelineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'warnings', 'readPipelineResponse_warnings' - Elastic Transcoder returns a warning if the resources used by your
-- pipeline are not in the same region as the pipeline.
--
-- Using resources in the same region, such as your Amazon S3 buckets,
-- Amazon SNS notification topics, and AWS KMS key, reduces processing time
-- and prevents cross-regional charges.
--
-- 'pipeline', 'readPipelineResponse_pipeline' - A section of the response body that provides information about the
-- pipeline.
--
-- 'httpStatus', 'readPipelineResponse_httpStatus' - The response's http status code.
newReadPipelineResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ReadPipelineResponse
newReadPipelineResponse pHttpStatus_ =
  ReadPipelineResponse'
    { warnings = Core.Nothing,
      pipeline = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Elastic Transcoder returns a warning if the resources used by your
-- pipeline are not in the same region as the pipeline.
--
-- Using resources in the same region, such as your Amazon S3 buckets,
-- Amazon SNS notification topics, and AWS KMS key, reduces processing time
-- and prevents cross-regional charges.
readPipelineResponse_warnings :: Lens.Lens' ReadPipelineResponse (Core.Maybe [Warning])
readPipelineResponse_warnings = Lens.lens (\ReadPipelineResponse' {warnings} -> warnings) (\s@ReadPipelineResponse' {} a -> s {warnings = a} :: ReadPipelineResponse) Core.. Lens.mapping Lens._Coerce

-- | A section of the response body that provides information about the
-- pipeline.
readPipelineResponse_pipeline :: Lens.Lens' ReadPipelineResponse (Core.Maybe Pipeline)
readPipelineResponse_pipeline = Lens.lens (\ReadPipelineResponse' {pipeline} -> pipeline) (\s@ReadPipelineResponse' {} a -> s {pipeline = a} :: ReadPipelineResponse)

-- | The response's http status code.
readPipelineResponse_httpStatus :: Lens.Lens' ReadPipelineResponse Core.Int
readPipelineResponse_httpStatus = Lens.lens (\ReadPipelineResponse' {httpStatus} -> httpStatus) (\s@ReadPipelineResponse' {} a -> s {httpStatus = a} :: ReadPipelineResponse)

instance Core.NFData ReadPipelineResponse
