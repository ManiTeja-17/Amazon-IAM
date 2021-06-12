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
-- Module      : Network.AWS.MediaLive.StartChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an existing channel
module Network.AWS.MediaLive.StartChannel
  ( -- * Creating a Request
    StartChannel (..),
    newStartChannel,

    -- * Request Lenses
    startChannel_channelId,

    -- * Destructuring the Response
    StartChannelResponse (..),
    newStartChannelResponse,

    -- * Response Lenses
    startChannelResponse_encoderSettings,
    startChannelResponse_roleArn,
    startChannelResponse_inputSpecification,
    startChannelResponse_arn,
    startChannelResponse_id,
    startChannelResponse_pipelinesRunningCount,
    startChannelResponse_channelClass,
    startChannelResponse_logLevel,
    startChannelResponse_destinations,
    startChannelResponse_state,
    startChannelResponse_name,
    startChannelResponse_inputAttachments,
    startChannelResponse_tags,
    startChannelResponse_pipelineDetails,
    startChannelResponse_egressEndpoints,
    startChannelResponse_vpc,
    startChannelResponse_cdiInputSpecification,
    startChannelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Placeholder documentation for StartChannelRequest
--
-- /See:/ 'newStartChannel' smart constructor.
data StartChannel = StartChannel'
  { -- | A request to start a channel
    channelId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StartChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelId', 'startChannel_channelId' - A request to start a channel
newStartChannel ::
  -- | 'channelId'
  Core.Text ->
  StartChannel
newStartChannel pChannelId_ =
  StartChannel' {channelId = pChannelId_}

-- | A request to start a channel
startChannel_channelId :: Lens.Lens' StartChannel Core.Text
startChannel_channelId = Lens.lens (\StartChannel' {channelId} -> channelId) (\s@StartChannel' {} a -> s {channelId = a} :: StartChannel)

instance Core.AWSRequest StartChannel where
  type AWSResponse StartChannel = StartChannelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartChannelResponse'
            Core.<$> (x Core..?> "encoderSettings")
            Core.<*> (x Core..?> "roleArn")
            Core.<*> (x Core..?> "inputSpecification")
            Core.<*> (x Core..?> "arn")
            Core.<*> (x Core..?> "id")
            Core.<*> (x Core..?> "pipelinesRunningCount")
            Core.<*> (x Core..?> "channelClass")
            Core.<*> (x Core..?> "logLevel")
            Core.<*> (x Core..?> "destinations" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "state")
            Core.<*> (x Core..?> "name")
            Core.<*> (x Core..?> "inputAttachments" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "tags" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "pipelineDetails" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "egressEndpoints" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "vpc")
            Core.<*> (x Core..?> "cdiInputSpecification")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable StartChannel

instance Core.NFData StartChannel

instance Core.ToHeaders StartChannel where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON StartChannel where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath StartChannel where
  toPath StartChannel' {..} =
    Core.mconcat
      ["/prod/channels/", Core.toBS channelId, "/start"]

instance Core.ToQuery StartChannel where
  toQuery = Core.const Core.mempty

-- | Placeholder documentation for StartChannelResponse
--
-- /See:/ 'newStartChannelResponse' smart constructor.
data StartChannelResponse = StartChannelResponse'
  { encoderSettings :: Core.Maybe EncoderSettings,
    -- | The Amazon Resource Name (ARN) of the role assumed when running the
    -- Channel.
    roleArn :: Core.Maybe Core.Text,
    -- | Specification of network and file inputs for this channel
    inputSpecification :: Core.Maybe InputSpecification,
    -- | The unique arn of the channel.
    arn :: Core.Maybe Core.Text,
    -- | The unique id of the channel.
    id :: Core.Maybe Core.Text,
    -- | The number of currently healthy pipelines.
    pipelinesRunningCount :: Core.Maybe Core.Int,
    -- | The class for this channel. STANDARD for a channel with two pipelines or
    -- SINGLE_PIPELINE for a channel with one pipeline.
    channelClass :: Core.Maybe ChannelClass,
    -- | The log level being written to CloudWatch Logs.
    logLevel :: Core.Maybe LogLevel,
    -- | A list of destinations of the channel. For UDP outputs, there is one
    -- destination per output. For other types (HLS, for example), there is one
    -- destination per packager.
    destinations :: Core.Maybe [OutputDestination],
    state :: Core.Maybe ChannelState,
    -- | The name of the channel. (user-mutable)
    name :: Core.Maybe Core.Text,
    -- | List of input attachments for channel.
    inputAttachments :: Core.Maybe [InputAttachment],
    -- | A collection of key-value pairs.
    tags :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | Runtime details for the pipelines of a running channel.
    pipelineDetails :: Core.Maybe [PipelineDetail],
    -- | The endpoints where outgoing connections initiate from
    egressEndpoints :: Core.Maybe [ChannelEgressEndpoint],
    -- | Settings for VPC output
    vpc :: Core.Maybe VpcOutputSettings,
    -- | Specification of CDI inputs for this channel
    cdiInputSpecification :: Core.Maybe CdiInputSpecification,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StartChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encoderSettings', 'startChannelResponse_encoderSettings' - Undocumented member.
--
-- 'roleArn', 'startChannelResponse_roleArn' - The Amazon Resource Name (ARN) of the role assumed when running the
-- Channel.
--
-- 'inputSpecification', 'startChannelResponse_inputSpecification' - Specification of network and file inputs for this channel
--
-- 'arn', 'startChannelResponse_arn' - The unique arn of the channel.
--
-- 'id', 'startChannelResponse_id' - The unique id of the channel.
--
-- 'pipelinesRunningCount', 'startChannelResponse_pipelinesRunningCount' - The number of currently healthy pipelines.
--
-- 'channelClass', 'startChannelResponse_channelClass' - The class for this channel. STANDARD for a channel with two pipelines or
-- SINGLE_PIPELINE for a channel with one pipeline.
--
-- 'logLevel', 'startChannelResponse_logLevel' - The log level being written to CloudWatch Logs.
--
-- 'destinations', 'startChannelResponse_destinations' - A list of destinations of the channel. For UDP outputs, there is one
-- destination per output. For other types (HLS, for example), there is one
-- destination per packager.
--
-- 'state', 'startChannelResponse_state' - Undocumented member.
--
-- 'name', 'startChannelResponse_name' - The name of the channel. (user-mutable)
--
-- 'inputAttachments', 'startChannelResponse_inputAttachments' - List of input attachments for channel.
--
-- 'tags', 'startChannelResponse_tags' - A collection of key-value pairs.
--
-- 'pipelineDetails', 'startChannelResponse_pipelineDetails' - Runtime details for the pipelines of a running channel.
--
-- 'egressEndpoints', 'startChannelResponse_egressEndpoints' - The endpoints where outgoing connections initiate from
--
-- 'vpc', 'startChannelResponse_vpc' - Settings for VPC output
--
-- 'cdiInputSpecification', 'startChannelResponse_cdiInputSpecification' - Specification of CDI inputs for this channel
--
-- 'httpStatus', 'startChannelResponse_httpStatus' - The response's http status code.
newStartChannelResponse ::
  -- | 'httpStatus'
  Core.Int ->
  StartChannelResponse
newStartChannelResponse pHttpStatus_ =
  StartChannelResponse'
    { encoderSettings =
        Core.Nothing,
      roleArn = Core.Nothing,
      inputSpecification = Core.Nothing,
      arn = Core.Nothing,
      id = Core.Nothing,
      pipelinesRunningCount = Core.Nothing,
      channelClass = Core.Nothing,
      logLevel = Core.Nothing,
      destinations = Core.Nothing,
      state = Core.Nothing,
      name = Core.Nothing,
      inputAttachments = Core.Nothing,
      tags = Core.Nothing,
      pipelineDetails = Core.Nothing,
      egressEndpoints = Core.Nothing,
      vpc = Core.Nothing,
      cdiInputSpecification = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
startChannelResponse_encoderSettings :: Lens.Lens' StartChannelResponse (Core.Maybe EncoderSettings)
startChannelResponse_encoderSettings = Lens.lens (\StartChannelResponse' {encoderSettings} -> encoderSettings) (\s@StartChannelResponse' {} a -> s {encoderSettings = a} :: StartChannelResponse)

-- | The Amazon Resource Name (ARN) of the role assumed when running the
-- Channel.
startChannelResponse_roleArn :: Lens.Lens' StartChannelResponse (Core.Maybe Core.Text)
startChannelResponse_roleArn = Lens.lens (\StartChannelResponse' {roleArn} -> roleArn) (\s@StartChannelResponse' {} a -> s {roleArn = a} :: StartChannelResponse)

-- | Specification of network and file inputs for this channel
startChannelResponse_inputSpecification :: Lens.Lens' StartChannelResponse (Core.Maybe InputSpecification)
startChannelResponse_inputSpecification = Lens.lens (\StartChannelResponse' {inputSpecification} -> inputSpecification) (\s@StartChannelResponse' {} a -> s {inputSpecification = a} :: StartChannelResponse)

-- | The unique arn of the channel.
startChannelResponse_arn :: Lens.Lens' StartChannelResponse (Core.Maybe Core.Text)
startChannelResponse_arn = Lens.lens (\StartChannelResponse' {arn} -> arn) (\s@StartChannelResponse' {} a -> s {arn = a} :: StartChannelResponse)

-- | The unique id of the channel.
startChannelResponse_id :: Lens.Lens' StartChannelResponse (Core.Maybe Core.Text)
startChannelResponse_id = Lens.lens (\StartChannelResponse' {id} -> id) (\s@StartChannelResponse' {} a -> s {id = a} :: StartChannelResponse)

-- | The number of currently healthy pipelines.
startChannelResponse_pipelinesRunningCount :: Lens.Lens' StartChannelResponse (Core.Maybe Core.Int)
startChannelResponse_pipelinesRunningCount = Lens.lens (\StartChannelResponse' {pipelinesRunningCount} -> pipelinesRunningCount) (\s@StartChannelResponse' {} a -> s {pipelinesRunningCount = a} :: StartChannelResponse)

-- | The class for this channel. STANDARD for a channel with two pipelines or
-- SINGLE_PIPELINE for a channel with one pipeline.
startChannelResponse_channelClass :: Lens.Lens' StartChannelResponse (Core.Maybe ChannelClass)
startChannelResponse_channelClass = Lens.lens (\StartChannelResponse' {channelClass} -> channelClass) (\s@StartChannelResponse' {} a -> s {channelClass = a} :: StartChannelResponse)

-- | The log level being written to CloudWatch Logs.
startChannelResponse_logLevel :: Lens.Lens' StartChannelResponse (Core.Maybe LogLevel)
startChannelResponse_logLevel = Lens.lens (\StartChannelResponse' {logLevel} -> logLevel) (\s@StartChannelResponse' {} a -> s {logLevel = a} :: StartChannelResponse)

-- | A list of destinations of the channel. For UDP outputs, there is one
-- destination per output. For other types (HLS, for example), there is one
-- destination per packager.
startChannelResponse_destinations :: Lens.Lens' StartChannelResponse (Core.Maybe [OutputDestination])
startChannelResponse_destinations = Lens.lens (\StartChannelResponse' {destinations} -> destinations) (\s@StartChannelResponse' {} a -> s {destinations = a} :: StartChannelResponse) Core.. Lens.mapping Lens._Coerce

-- | Undocumented member.
startChannelResponse_state :: Lens.Lens' StartChannelResponse (Core.Maybe ChannelState)
startChannelResponse_state = Lens.lens (\StartChannelResponse' {state} -> state) (\s@StartChannelResponse' {} a -> s {state = a} :: StartChannelResponse)

-- | The name of the channel. (user-mutable)
startChannelResponse_name :: Lens.Lens' StartChannelResponse (Core.Maybe Core.Text)
startChannelResponse_name = Lens.lens (\StartChannelResponse' {name} -> name) (\s@StartChannelResponse' {} a -> s {name = a} :: StartChannelResponse)

-- | List of input attachments for channel.
startChannelResponse_inputAttachments :: Lens.Lens' StartChannelResponse (Core.Maybe [InputAttachment])
startChannelResponse_inputAttachments = Lens.lens (\StartChannelResponse' {inputAttachments} -> inputAttachments) (\s@StartChannelResponse' {} a -> s {inputAttachments = a} :: StartChannelResponse) Core.. Lens.mapping Lens._Coerce

-- | A collection of key-value pairs.
startChannelResponse_tags :: Lens.Lens' StartChannelResponse (Core.Maybe (Core.HashMap Core.Text Core.Text))
startChannelResponse_tags = Lens.lens (\StartChannelResponse' {tags} -> tags) (\s@StartChannelResponse' {} a -> s {tags = a} :: StartChannelResponse) Core.. Lens.mapping Lens._Coerce

-- | Runtime details for the pipelines of a running channel.
startChannelResponse_pipelineDetails :: Lens.Lens' StartChannelResponse (Core.Maybe [PipelineDetail])
startChannelResponse_pipelineDetails = Lens.lens (\StartChannelResponse' {pipelineDetails} -> pipelineDetails) (\s@StartChannelResponse' {} a -> s {pipelineDetails = a} :: StartChannelResponse) Core.. Lens.mapping Lens._Coerce

-- | The endpoints where outgoing connections initiate from
startChannelResponse_egressEndpoints :: Lens.Lens' StartChannelResponse (Core.Maybe [ChannelEgressEndpoint])
startChannelResponse_egressEndpoints = Lens.lens (\StartChannelResponse' {egressEndpoints} -> egressEndpoints) (\s@StartChannelResponse' {} a -> s {egressEndpoints = a} :: StartChannelResponse) Core.. Lens.mapping Lens._Coerce

-- | Settings for VPC output
startChannelResponse_vpc :: Lens.Lens' StartChannelResponse (Core.Maybe VpcOutputSettings)
startChannelResponse_vpc = Lens.lens (\StartChannelResponse' {vpc} -> vpc) (\s@StartChannelResponse' {} a -> s {vpc = a} :: StartChannelResponse)

-- | Specification of CDI inputs for this channel
startChannelResponse_cdiInputSpecification :: Lens.Lens' StartChannelResponse (Core.Maybe CdiInputSpecification)
startChannelResponse_cdiInputSpecification = Lens.lens (\StartChannelResponse' {cdiInputSpecification} -> cdiInputSpecification) (\s@StartChannelResponse' {} a -> s {cdiInputSpecification = a} :: StartChannelResponse)

-- | The response's http status code.
startChannelResponse_httpStatus :: Lens.Lens' StartChannelResponse Core.Int
startChannelResponse_httpStatus = Lens.lens (\StartChannelResponse' {httpStatus} -> httpStatus) (\s@StartChannelResponse' {} a -> s {httpStatus = a} :: StartChannelResponse)

instance Core.NFData StartChannelResponse
