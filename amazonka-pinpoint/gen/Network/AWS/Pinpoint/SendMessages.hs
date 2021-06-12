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
-- Module      : Network.AWS.Pinpoint.SendMessages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and sends a direct message.
module Network.AWS.Pinpoint.SendMessages
  ( -- * Creating a Request
    SendMessages (..),
    newSendMessages,

    -- * Request Lenses
    sendMessages_applicationId,
    sendMessages_messageRequest,

    -- * Destructuring the Response
    SendMessagesResponse (..),
    newSendMessagesResponse,

    -- * Response Lenses
    sendMessagesResponse_httpStatus,
    sendMessagesResponse_messageResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSendMessages' smart constructor.
data SendMessages = SendMessages'
  { -- | The unique identifier for the application. This identifier is displayed
    -- as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Core.Text,
    messageRequest :: MessageRequest
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SendMessages' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'sendMessages_applicationId' - The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
--
-- 'messageRequest', 'sendMessages_messageRequest' - Undocumented member.
newSendMessages ::
  -- | 'applicationId'
  Core.Text ->
  -- | 'messageRequest'
  MessageRequest ->
  SendMessages
newSendMessages pApplicationId_ pMessageRequest_ =
  SendMessages'
    { applicationId = pApplicationId_,
      messageRequest = pMessageRequest_
    }

-- | The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
sendMessages_applicationId :: Lens.Lens' SendMessages Core.Text
sendMessages_applicationId = Lens.lens (\SendMessages' {applicationId} -> applicationId) (\s@SendMessages' {} a -> s {applicationId = a} :: SendMessages)

-- | Undocumented member.
sendMessages_messageRequest :: Lens.Lens' SendMessages MessageRequest
sendMessages_messageRequest = Lens.lens (\SendMessages' {messageRequest} -> messageRequest) (\s@SendMessages' {} a -> s {messageRequest = a} :: SendMessages)

instance Core.AWSRequest SendMessages where
  type AWSResponse SendMessages = SendMessagesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SendMessagesResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (Core.eitherParseJSON x)
      )

instance Core.Hashable SendMessages

instance Core.NFData SendMessages

instance Core.ToHeaders SendMessages where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON SendMessages where
  toJSON SendMessages' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("MessageRequest" Core..= messageRequest)
          ]
      )

instance Core.ToPath SendMessages where
  toPath SendMessages' {..} =
    Core.mconcat
      ["/v1/apps/", Core.toBS applicationId, "/messages"]

instance Core.ToQuery SendMessages where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newSendMessagesResponse' smart constructor.
data SendMessagesResponse = SendMessagesResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    messageResponse :: MessageResponse
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SendMessagesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'sendMessagesResponse_httpStatus' - The response's http status code.
--
-- 'messageResponse', 'sendMessagesResponse_messageResponse' - Undocumented member.
newSendMessagesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'messageResponse'
  MessageResponse ->
  SendMessagesResponse
newSendMessagesResponse
  pHttpStatus_
  pMessageResponse_ =
    SendMessagesResponse'
      { httpStatus = pHttpStatus_,
        messageResponse = pMessageResponse_
      }

-- | The response's http status code.
sendMessagesResponse_httpStatus :: Lens.Lens' SendMessagesResponse Core.Int
sendMessagesResponse_httpStatus = Lens.lens (\SendMessagesResponse' {httpStatus} -> httpStatus) (\s@SendMessagesResponse' {} a -> s {httpStatus = a} :: SendMessagesResponse)

-- | Undocumented member.
sendMessagesResponse_messageResponse :: Lens.Lens' SendMessagesResponse MessageResponse
sendMessagesResponse_messageResponse = Lens.lens (\SendMessagesResponse' {messageResponse} -> messageResponse) (\s@SendMessagesResponse' {} a -> s {messageResponse = a} :: SendMessagesResponse)

instance Core.NFData SendMessagesResponse
