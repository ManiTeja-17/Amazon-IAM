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
-- Module      : Network.AWS.CloudFront.CreateStreamingDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is deprecated. Amazon CloudFront is deprecating real-time
-- messaging protocol (RTMP) distributions on December 31, 2020. For more
-- information,
-- <http://forums.aws.amazon.com/ann.jspa?annID=7356 read the announcement>
-- on the Amazon CloudFront discussion forum.
module Network.AWS.CloudFront.CreateStreamingDistribution
  ( -- * Creating a Request
    CreateStreamingDistribution (..),
    newCreateStreamingDistribution,

    -- * Request Lenses
    createStreamingDistribution_streamingDistributionConfig,

    -- * Destructuring the Response
    CreateStreamingDistributionResponse (..),
    newCreateStreamingDistributionResponse,

    -- * Response Lenses
    createStreamingDistributionResponse_eTag,
    createStreamingDistributionResponse_streamingDistribution,
    createStreamingDistributionResponse_location,
    createStreamingDistributionResponse_httpStatus,
  )
where

import Network.AWS.CloudFront.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request to create a new streaming distribution.
--
-- /See:/ 'newCreateStreamingDistribution' smart constructor.
data CreateStreamingDistribution = CreateStreamingDistribution'
  { -- | The streaming distribution\'s configuration information.
    streamingDistributionConfig :: StreamingDistributionConfig
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateStreamingDistribution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamingDistributionConfig', 'createStreamingDistribution_streamingDistributionConfig' - The streaming distribution\'s configuration information.
newCreateStreamingDistribution ::
  -- | 'streamingDistributionConfig'
  StreamingDistributionConfig ->
  CreateStreamingDistribution
newCreateStreamingDistribution
  pStreamingDistributionConfig_ =
    CreateStreamingDistribution'
      { streamingDistributionConfig =
          pStreamingDistributionConfig_
      }

-- | The streaming distribution\'s configuration information.
createStreamingDistribution_streamingDistributionConfig :: Lens.Lens' CreateStreamingDistribution StreamingDistributionConfig
createStreamingDistribution_streamingDistributionConfig = Lens.lens (\CreateStreamingDistribution' {streamingDistributionConfig} -> streamingDistributionConfig) (\s@CreateStreamingDistribution' {} a -> s {streamingDistributionConfig = a} :: CreateStreamingDistribution)

instance Core.AWSRequest CreateStreamingDistribution where
  type
    AWSResponse CreateStreamingDistribution =
      CreateStreamingDistributionResponse
  request = Request.postXML defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CreateStreamingDistributionResponse'
            Core.<$> (h Core..#? "ETag")
            Core.<*> (Core.parseXML x)
            Core.<*> (h Core..#? "Location")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateStreamingDistribution

instance Core.NFData CreateStreamingDistribution

instance Core.ToElement CreateStreamingDistribution where
  toElement CreateStreamingDistribution' {..} =
    Core.mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}StreamingDistributionConfig"
      streamingDistributionConfig

instance Core.ToHeaders CreateStreamingDistribution where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CreateStreamingDistribution where
  toPath =
    Core.const "/2020-05-31/streaming-distribution"

instance Core.ToQuery CreateStreamingDistribution where
  toQuery = Core.const Core.mempty

-- | The returned result of the corresponding request.
--
-- /See:/ 'newCreateStreamingDistributionResponse' smart constructor.
data CreateStreamingDistributionResponse = CreateStreamingDistributionResponse'
  { -- | The current version of the streaming distribution created.
    eTag :: Core.Maybe Core.Text,
    -- | The streaming distribution\'s information.
    streamingDistribution :: Core.Maybe StreamingDistribution,
    -- | The fully qualified URI of the new streaming distribution resource just
    -- created.
    location :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateStreamingDistributionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eTag', 'createStreamingDistributionResponse_eTag' - The current version of the streaming distribution created.
--
-- 'streamingDistribution', 'createStreamingDistributionResponse_streamingDistribution' - The streaming distribution\'s information.
--
-- 'location', 'createStreamingDistributionResponse_location' - The fully qualified URI of the new streaming distribution resource just
-- created.
--
-- 'httpStatus', 'createStreamingDistributionResponse_httpStatus' - The response's http status code.
newCreateStreamingDistributionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateStreamingDistributionResponse
newCreateStreamingDistributionResponse pHttpStatus_ =
  CreateStreamingDistributionResponse'
    { eTag =
        Core.Nothing,
      streamingDistribution = Core.Nothing,
      location = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current version of the streaming distribution created.
createStreamingDistributionResponse_eTag :: Lens.Lens' CreateStreamingDistributionResponse (Core.Maybe Core.Text)
createStreamingDistributionResponse_eTag = Lens.lens (\CreateStreamingDistributionResponse' {eTag} -> eTag) (\s@CreateStreamingDistributionResponse' {} a -> s {eTag = a} :: CreateStreamingDistributionResponse)

-- | The streaming distribution\'s information.
createStreamingDistributionResponse_streamingDistribution :: Lens.Lens' CreateStreamingDistributionResponse (Core.Maybe StreamingDistribution)
createStreamingDistributionResponse_streamingDistribution = Lens.lens (\CreateStreamingDistributionResponse' {streamingDistribution} -> streamingDistribution) (\s@CreateStreamingDistributionResponse' {} a -> s {streamingDistribution = a} :: CreateStreamingDistributionResponse)

-- | The fully qualified URI of the new streaming distribution resource just
-- created.
createStreamingDistributionResponse_location :: Lens.Lens' CreateStreamingDistributionResponse (Core.Maybe Core.Text)
createStreamingDistributionResponse_location = Lens.lens (\CreateStreamingDistributionResponse' {location} -> location) (\s@CreateStreamingDistributionResponse' {} a -> s {location = a} :: CreateStreamingDistributionResponse)

-- | The response's http status code.
createStreamingDistributionResponse_httpStatus :: Lens.Lens' CreateStreamingDistributionResponse Core.Int
createStreamingDistributionResponse_httpStatus = Lens.lens (\CreateStreamingDistributionResponse' {httpStatus} -> httpStatus) (\s@CreateStreamingDistributionResponse' {} a -> s {httpStatus = a} :: CreateStreamingDistributionResponse)

instance
  Core.NFData
    CreateStreamingDistributionResponse
