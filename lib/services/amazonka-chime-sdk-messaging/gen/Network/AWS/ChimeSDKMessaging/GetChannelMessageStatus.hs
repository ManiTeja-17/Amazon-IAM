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
-- Module      : Network.AWS.ChimeSDKMessaging.GetChannelMessageStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets message status for a specified @messageId@. Use this API to
-- determine the intermediate status of messages going through channel flow
-- processing. The API provides an alternative to retrieving message status
-- if the event was not received because a client wasn\'t connected to a
-- websocket.
--
-- Messages can have any one of these statuses.
--
-- [SENT]
--     Message processed successfully
--
-- [PENDING]
--     Ongoing processing
--
-- [FAILED]
--     Processing failed
--
-- [DENIED]
--     Messasge denied by the processor
--
-- -   This API does not return statuses for denied messages, because we
--     don\'t store them once the processor denies them.
--
-- -   Only the message sender can invoke this API.
--
-- -   The @x-amz-chime-bearer@ request header is mandatory. Use the
--     @AppInstanceUserArn@ of the user that makes the API call as the
--     value in the header
module Network.AWS.ChimeSDKMessaging.GetChannelMessageStatus
  ( -- * Creating a Request
    GetChannelMessageStatus (..),
    newGetChannelMessageStatus,

    -- * Request Lenses
    getChannelMessageStatus_channelArn,
    getChannelMessageStatus_messageId,
    getChannelMessageStatus_chimeBearer,

    -- * Destructuring the Response
    GetChannelMessageStatusResponse (..),
    newGetChannelMessageStatusResponse,

    -- * Response Lenses
    getChannelMessageStatusResponse_status,
    getChannelMessageStatusResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKMessaging.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetChannelMessageStatus' smart constructor.
data GetChannelMessageStatus = GetChannelMessageStatus'
  { -- | The ARN of the channel
    channelArn :: Prelude.Text,
    -- | The ID of the message.
    messageId :: Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user making the API call.
    chimeBearer :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetChannelMessageStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelArn', 'getChannelMessageStatus_channelArn' - The ARN of the channel
--
-- 'messageId', 'getChannelMessageStatus_messageId' - The ID of the message.
--
-- 'chimeBearer', 'getChannelMessageStatus_chimeBearer' - The @AppInstanceUserArn@ of the user making the API call.
newGetChannelMessageStatus ::
  -- | 'channelArn'
  Prelude.Text ->
  -- | 'messageId'
  Prelude.Text ->
  -- | 'chimeBearer'
  Prelude.Text ->
  GetChannelMessageStatus
newGetChannelMessageStatus
  pChannelArn_
  pMessageId_
  pChimeBearer_ =
    GetChannelMessageStatus'
      { channelArn = pChannelArn_,
        messageId = pMessageId_,
        chimeBearer = pChimeBearer_
      }

-- | The ARN of the channel
getChannelMessageStatus_channelArn :: Lens.Lens' GetChannelMessageStatus Prelude.Text
getChannelMessageStatus_channelArn = Lens.lens (\GetChannelMessageStatus' {channelArn} -> channelArn) (\s@GetChannelMessageStatus' {} a -> s {channelArn = a} :: GetChannelMessageStatus)

-- | The ID of the message.
getChannelMessageStatus_messageId :: Lens.Lens' GetChannelMessageStatus Prelude.Text
getChannelMessageStatus_messageId = Lens.lens (\GetChannelMessageStatus' {messageId} -> messageId) (\s@GetChannelMessageStatus' {} a -> s {messageId = a} :: GetChannelMessageStatus)

-- | The @AppInstanceUserArn@ of the user making the API call.
getChannelMessageStatus_chimeBearer :: Lens.Lens' GetChannelMessageStatus Prelude.Text
getChannelMessageStatus_chimeBearer = Lens.lens (\GetChannelMessageStatus' {chimeBearer} -> chimeBearer) (\s@GetChannelMessageStatus' {} a -> s {chimeBearer = a} :: GetChannelMessageStatus)

instance Core.AWSRequest GetChannelMessageStatus where
  type
    AWSResponse GetChannelMessageStatus =
      GetChannelMessageStatusResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetChannelMessageStatusResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetChannelMessageStatus

instance Prelude.NFData GetChannelMessageStatus

instance Core.ToHeaders GetChannelMessageStatus where
  toHeaders GetChannelMessageStatus' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance Core.ToPath GetChannelMessageStatus where
  toPath GetChannelMessageStatus' {..} =
    Prelude.mconcat
      [ "/channels/",
        Core.toBS channelArn,
        "/messages/",
        Core.toBS messageId
      ]

instance Core.ToQuery GetChannelMessageStatus where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["scope=message-status"])

-- | /See:/ 'newGetChannelMessageStatusResponse' smart constructor.
data GetChannelMessageStatusResponse = GetChannelMessageStatusResponse'
  { -- | The message status and details.
    status :: Prelude.Maybe ChannelMessageStatusStructure,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetChannelMessageStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'getChannelMessageStatusResponse_status' - The message status and details.
--
-- 'httpStatus', 'getChannelMessageStatusResponse_httpStatus' - The response's http status code.
newGetChannelMessageStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetChannelMessageStatusResponse
newGetChannelMessageStatusResponse pHttpStatus_ =
  GetChannelMessageStatusResponse'
    { status =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The message status and details.
getChannelMessageStatusResponse_status :: Lens.Lens' GetChannelMessageStatusResponse (Prelude.Maybe ChannelMessageStatusStructure)
getChannelMessageStatusResponse_status = Lens.lens (\GetChannelMessageStatusResponse' {status} -> status) (\s@GetChannelMessageStatusResponse' {} a -> s {status = a} :: GetChannelMessageStatusResponse)

-- | The response's http status code.
getChannelMessageStatusResponse_httpStatus :: Lens.Lens' GetChannelMessageStatusResponse Prelude.Int
getChannelMessageStatusResponse_httpStatus = Lens.lens (\GetChannelMessageStatusResponse' {httpStatus} -> httpStatus) (\s@GetChannelMessageStatusResponse' {} a -> s {httpStatus = a} :: GetChannelMessageStatusResponse)

instance
  Prelude.NFData
    GetChannelMessageStatusResponse