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
-- Module      : Network.AWS.Pinpoint.Types.JourneyPushMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneyPushMessage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Specifies the message configuration for a push notification that\'s sent
-- to participants in a journey.
--
-- /See:/ 'newJourneyPushMessage' smart constructor.
data JourneyPushMessage = JourneyPushMessage'
  { -- | The number of seconds that the push notification service should keep the
    -- message, if the service is unable to deliver the notification the first
    -- time. This value is converted to an expiration value when it\'s sent to
    -- a push-notification service. If this value is 0, the service treats the
    -- notification as if it expires immediately and the service doesn\'t store
    -- or try to deliver the notification again.
    --
    -- This value doesn\'t apply to messages that are sent through the Amazon
    -- Device Messaging (ADM) service.
    timeToLive :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'JourneyPushMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeToLive', 'journeyPushMessage_timeToLive' - The number of seconds that the push notification service should keep the
-- message, if the service is unable to deliver the notification the first
-- time. This value is converted to an expiration value when it\'s sent to
-- a push-notification service. If this value is 0, the service treats the
-- notification as if it expires immediately and the service doesn\'t store
-- or try to deliver the notification again.
--
-- This value doesn\'t apply to messages that are sent through the Amazon
-- Device Messaging (ADM) service.
newJourneyPushMessage ::
  JourneyPushMessage
newJourneyPushMessage =
  JourneyPushMessage' {timeToLive = Core.Nothing}

-- | The number of seconds that the push notification service should keep the
-- message, if the service is unable to deliver the notification the first
-- time. This value is converted to an expiration value when it\'s sent to
-- a push-notification service. If this value is 0, the service treats the
-- notification as if it expires immediately and the service doesn\'t store
-- or try to deliver the notification again.
--
-- This value doesn\'t apply to messages that are sent through the Amazon
-- Device Messaging (ADM) service.
journeyPushMessage_timeToLive :: Lens.Lens' JourneyPushMessage (Core.Maybe Core.Text)
journeyPushMessage_timeToLive = Lens.lens (\JourneyPushMessage' {timeToLive} -> timeToLive) (\s@JourneyPushMessage' {} a -> s {timeToLive = a} :: JourneyPushMessage)

instance Core.FromJSON JourneyPushMessage where
  parseJSON =
    Core.withObject
      "JourneyPushMessage"
      ( \x ->
          JourneyPushMessage'
            Core.<$> (x Core..:? "TimeToLive")
      )

instance Core.Hashable JourneyPushMessage

instance Core.NFData JourneyPushMessage

instance Core.ToJSON JourneyPushMessage where
  toJSON JourneyPushMessage' {..} =
    Core.object
      ( Core.catMaybes
          [("TimeToLive" Core..=) Core.<$> timeToLive]
      )
