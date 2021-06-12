{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.MessageResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.MessageResult where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.DeliveryStatus

-- | Provides information about the results of sending a message directly to
-- an endpoint address.
--
-- /See:/ 'newMessageResult' smart constructor.
data MessageResult = MessageResult'
  { -- | The status message for delivering the message.
    statusMessage :: Core.Maybe Core.Text,
    -- | For push notifications that are sent through the GCM channel, specifies
    -- whether the endpoint\'s device registration token was updated as part of
    -- delivering the message.
    updatedToken :: Core.Maybe Core.Text,
    -- | The unique identifier for the message that was sent.
    messageId :: Core.Maybe Core.Text,
    -- | The delivery status of the message. Possible values are:
    --
    -- -   DUPLICATE - The endpoint address is a duplicate of another endpoint
    --     address. Amazon Pinpoint won\'t attempt to send the message again.
    --
    -- -   OPT_OUT - The user who\'s associated with the endpoint address has
    --     opted out of receiving messages from you. Amazon Pinpoint won\'t
    --     attempt to send the message again.
    --
    -- -   PERMANENT_FAILURE - An error occurred when delivering the message to
    --     the endpoint address. Amazon Pinpoint won\'t attempt to send the
    --     message again.
    --
    -- -   SUCCESSFUL - The message was successfully delivered to the endpoint
    --     address.
    --
    -- -   TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint
    --     won\'t attempt to send the message again.
    --
    -- -   THROTTLED - Amazon Pinpoint throttled the operation to send the
    --     message to the endpoint address.
    --
    -- -   TIMEOUT - The message couldn\'t be sent within the timeout period.
    --
    -- -   UNKNOWN_FAILURE - An unknown error occurred.
    deliveryStatus :: DeliveryStatus,
    -- | The downstream service status code for delivering the message.
    statusCode :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'MessageResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusMessage', 'messageResult_statusMessage' - The status message for delivering the message.
--
-- 'updatedToken', 'messageResult_updatedToken' - For push notifications that are sent through the GCM channel, specifies
-- whether the endpoint\'s device registration token was updated as part of
-- delivering the message.
--
-- 'messageId', 'messageResult_messageId' - The unique identifier for the message that was sent.
--
-- 'deliveryStatus', 'messageResult_deliveryStatus' - The delivery status of the message. Possible values are:
--
-- -   DUPLICATE - The endpoint address is a duplicate of another endpoint
--     address. Amazon Pinpoint won\'t attempt to send the message again.
--
-- -   OPT_OUT - The user who\'s associated with the endpoint address has
--     opted out of receiving messages from you. Amazon Pinpoint won\'t
--     attempt to send the message again.
--
-- -   PERMANENT_FAILURE - An error occurred when delivering the message to
--     the endpoint address. Amazon Pinpoint won\'t attempt to send the
--     message again.
--
-- -   SUCCESSFUL - The message was successfully delivered to the endpoint
--     address.
--
-- -   TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint
--     won\'t attempt to send the message again.
--
-- -   THROTTLED - Amazon Pinpoint throttled the operation to send the
--     message to the endpoint address.
--
-- -   TIMEOUT - The message couldn\'t be sent within the timeout period.
--
-- -   UNKNOWN_FAILURE - An unknown error occurred.
--
-- 'statusCode', 'messageResult_statusCode' - The downstream service status code for delivering the message.
newMessageResult ::
  -- | 'deliveryStatus'
  DeliveryStatus ->
  -- | 'statusCode'
  Core.Int ->
  MessageResult
newMessageResult pDeliveryStatus_ pStatusCode_ =
  MessageResult'
    { statusMessage = Core.Nothing,
      updatedToken = Core.Nothing,
      messageId = Core.Nothing,
      deliveryStatus = pDeliveryStatus_,
      statusCode = pStatusCode_
    }

-- | The status message for delivering the message.
messageResult_statusMessage :: Lens.Lens' MessageResult (Core.Maybe Core.Text)
messageResult_statusMessage = Lens.lens (\MessageResult' {statusMessage} -> statusMessage) (\s@MessageResult' {} a -> s {statusMessage = a} :: MessageResult)

-- | For push notifications that are sent through the GCM channel, specifies
-- whether the endpoint\'s device registration token was updated as part of
-- delivering the message.
messageResult_updatedToken :: Lens.Lens' MessageResult (Core.Maybe Core.Text)
messageResult_updatedToken = Lens.lens (\MessageResult' {updatedToken} -> updatedToken) (\s@MessageResult' {} a -> s {updatedToken = a} :: MessageResult)

-- | The unique identifier for the message that was sent.
messageResult_messageId :: Lens.Lens' MessageResult (Core.Maybe Core.Text)
messageResult_messageId = Lens.lens (\MessageResult' {messageId} -> messageId) (\s@MessageResult' {} a -> s {messageId = a} :: MessageResult)

-- | The delivery status of the message. Possible values are:
--
-- -   DUPLICATE - The endpoint address is a duplicate of another endpoint
--     address. Amazon Pinpoint won\'t attempt to send the message again.
--
-- -   OPT_OUT - The user who\'s associated with the endpoint address has
--     opted out of receiving messages from you. Amazon Pinpoint won\'t
--     attempt to send the message again.
--
-- -   PERMANENT_FAILURE - An error occurred when delivering the message to
--     the endpoint address. Amazon Pinpoint won\'t attempt to send the
--     message again.
--
-- -   SUCCESSFUL - The message was successfully delivered to the endpoint
--     address.
--
-- -   TEMPORARY_FAILURE - A temporary error occurred. Amazon Pinpoint
--     won\'t attempt to send the message again.
--
-- -   THROTTLED - Amazon Pinpoint throttled the operation to send the
--     message to the endpoint address.
--
-- -   TIMEOUT - The message couldn\'t be sent within the timeout period.
--
-- -   UNKNOWN_FAILURE - An unknown error occurred.
messageResult_deliveryStatus :: Lens.Lens' MessageResult DeliveryStatus
messageResult_deliveryStatus = Lens.lens (\MessageResult' {deliveryStatus} -> deliveryStatus) (\s@MessageResult' {} a -> s {deliveryStatus = a} :: MessageResult)

-- | The downstream service status code for delivering the message.
messageResult_statusCode :: Lens.Lens' MessageResult Core.Int
messageResult_statusCode = Lens.lens (\MessageResult' {statusCode} -> statusCode) (\s@MessageResult' {} a -> s {statusCode = a} :: MessageResult)

instance Core.FromJSON MessageResult where
  parseJSON =
    Core.withObject
      "MessageResult"
      ( \x ->
          MessageResult'
            Core.<$> (x Core..:? "StatusMessage")
            Core.<*> (x Core..:? "UpdatedToken")
            Core.<*> (x Core..:? "MessageId")
            Core.<*> (x Core..: "DeliveryStatus")
            Core.<*> (x Core..: "StatusCode")
      )

instance Core.Hashable MessageResult

instance Core.NFData MessageResult
