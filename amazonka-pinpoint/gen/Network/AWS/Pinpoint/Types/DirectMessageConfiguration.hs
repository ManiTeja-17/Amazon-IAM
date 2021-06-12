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
-- Module      : Network.AWS.Pinpoint.Types.DirectMessageConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.DirectMessageConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.ADMMessage
import Network.AWS.Pinpoint.Types.APNSMessage
import Network.AWS.Pinpoint.Types.BaiduMessage
import Network.AWS.Pinpoint.Types.DefaultMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage
import Network.AWS.Pinpoint.Types.EmailMessage
import Network.AWS.Pinpoint.Types.GCMMessage
import Network.AWS.Pinpoint.Types.SMSMessage
import Network.AWS.Pinpoint.Types.VoiceMessage

-- | Specifies the settings and content for the default message and any
-- default messages that you tailored for specific channels.
--
-- /See:/ 'newDirectMessageConfiguration' smart constructor.
data DirectMessageConfiguration = DirectMessageConfiguration'
  { -- | The default push notification message for the ADM (Amazon Device
    -- Messaging) channel. This message overrides the default push notification
    -- message (DefaultPushNotificationMessage).
    aDMMessage :: Core.Maybe ADMMessage,
    -- | The default message for all channels.
    defaultMessage :: Core.Maybe DefaultMessage,
    -- | The default message for the voice channel. This message overrides the
    -- default message (DefaultMessage).
    voiceMessage :: Core.Maybe VoiceMessage,
    -- | The default push notification message for the GCM channel, which is used
    -- to send notifications through the Firebase Cloud Messaging (FCM),
    -- formerly Google Cloud Messaging (GCM), service. This message overrides
    -- the default push notification message (DefaultPushNotificationMessage).
    gCMMessage :: Core.Maybe GCMMessage,
    -- | The default push notification message for the APNs (Apple Push
    -- Notification service) channel. This message overrides the default push
    -- notification message (DefaultPushNotificationMessage).
    aPNSMessage :: Core.Maybe APNSMessage,
    -- | The default message for the email channel. This message overrides the
    -- default message (DefaultMessage).
    emailMessage :: Core.Maybe EmailMessage,
    -- | The default message for the SMS channel. This message overrides the
    -- default message (DefaultMessage).
    sMSMessage :: Core.Maybe SMSMessage,
    -- | The default push notification message for all push notification
    -- channels.
    defaultPushNotificationMessage :: Core.Maybe DefaultPushNotificationMessage,
    -- | The default push notification message for the Baidu (Baidu Cloud Push)
    -- channel. This message overrides the default push notification message
    -- (DefaultPushNotificationMessage).
    baiduMessage :: Core.Maybe BaiduMessage
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DirectMessageConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aDMMessage', 'directMessageConfiguration_aDMMessage' - The default push notification message for the ADM (Amazon Device
-- Messaging) channel. This message overrides the default push notification
-- message (DefaultPushNotificationMessage).
--
-- 'defaultMessage', 'directMessageConfiguration_defaultMessage' - The default message for all channels.
--
-- 'voiceMessage', 'directMessageConfiguration_voiceMessage' - The default message for the voice channel. This message overrides the
-- default message (DefaultMessage).
--
-- 'gCMMessage', 'directMessageConfiguration_gCMMessage' - The default push notification message for the GCM channel, which is used
-- to send notifications through the Firebase Cloud Messaging (FCM),
-- formerly Google Cloud Messaging (GCM), service. This message overrides
-- the default push notification message (DefaultPushNotificationMessage).
--
-- 'aPNSMessage', 'directMessageConfiguration_aPNSMessage' - The default push notification message for the APNs (Apple Push
-- Notification service) channel. This message overrides the default push
-- notification message (DefaultPushNotificationMessage).
--
-- 'emailMessage', 'directMessageConfiguration_emailMessage' - The default message for the email channel. This message overrides the
-- default message (DefaultMessage).
--
-- 'sMSMessage', 'directMessageConfiguration_sMSMessage' - The default message for the SMS channel. This message overrides the
-- default message (DefaultMessage).
--
-- 'defaultPushNotificationMessage', 'directMessageConfiguration_defaultPushNotificationMessage' - The default push notification message for all push notification
-- channels.
--
-- 'baiduMessage', 'directMessageConfiguration_baiduMessage' - The default push notification message for the Baidu (Baidu Cloud Push)
-- channel. This message overrides the default push notification message
-- (DefaultPushNotificationMessage).
newDirectMessageConfiguration ::
  DirectMessageConfiguration
newDirectMessageConfiguration =
  DirectMessageConfiguration'
    { aDMMessage =
        Core.Nothing,
      defaultMessage = Core.Nothing,
      voiceMessage = Core.Nothing,
      gCMMessage = Core.Nothing,
      aPNSMessage = Core.Nothing,
      emailMessage = Core.Nothing,
      sMSMessage = Core.Nothing,
      defaultPushNotificationMessage = Core.Nothing,
      baiduMessage = Core.Nothing
    }

-- | The default push notification message for the ADM (Amazon Device
-- Messaging) channel. This message overrides the default push notification
-- message (DefaultPushNotificationMessage).
directMessageConfiguration_aDMMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe ADMMessage)
directMessageConfiguration_aDMMessage = Lens.lens (\DirectMessageConfiguration' {aDMMessage} -> aDMMessage) (\s@DirectMessageConfiguration' {} a -> s {aDMMessage = a} :: DirectMessageConfiguration)

-- | The default message for all channels.
directMessageConfiguration_defaultMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe DefaultMessage)
directMessageConfiguration_defaultMessage = Lens.lens (\DirectMessageConfiguration' {defaultMessage} -> defaultMessage) (\s@DirectMessageConfiguration' {} a -> s {defaultMessage = a} :: DirectMessageConfiguration)

-- | The default message for the voice channel. This message overrides the
-- default message (DefaultMessage).
directMessageConfiguration_voiceMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe VoiceMessage)
directMessageConfiguration_voiceMessage = Lens.lens (\DirectMessageConfiguration' {voiceMessage} -> voiceMessage) (\s@DirectMessageConfiguration' {} a -> s {voiceMessage = a} :: DirectMessageConfiguration)

-- | The default push notification message for the GCM channel, which is used
-- to send notifications through the Firebase Cloud Messaging (FCM),
-- formerly Google Cloud Messaging (GCM), service. This message overrides
-- the default push notification message (DefaultPushNotificationMessage).
directMessageConfiguration_gCMMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe GCMMessage)
directMessageConfiguration_gCMMessage = Lens.lens (\DirectMessageConfiguration' {gCMMessage} -> gCMMessage) (\s@DirectMessageConfiguration' {} a -> s {gCMMessage = a} :: DirectMessageConfiguration)

-- | The default push notification message for the APNs (Apple Push
-- Notification service) channel. This message overrides the default push
-- notification message (DefaultPushNotificationMessage).
directMessageConfiguration_aPNSMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe APNSMessage)
directMessageConfiguration_aPNSMessage = Lens.lens (\DirectMessageConfiguration' {aPNSMessage} -> aPNSMessage) (\s@DirectMessageConfiguration' {} a -> s {aPNSMessage = a} :: DirectMessageConfiguration)

-- | The default message for the email channel. This message overrides the
-- default message (DefaultMessage).
directMessageConfiguration_emailMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe EmailMessage)
directMessageConfiguration_emailMessage = Lens.lens (\DirectMessageConfiguration' {emailMessage} -> emailMessage) (\s@DirectMessageConfiguration' {} a -> s {emailMessage = a} :: DirectMessageConfiguration)

-- | The default message for the SMS channel. This message overrides the
-- default message (DefaultMessage).
directMessageConfiguration_sMSMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe SMSMessage)
directMessageConfiguration_sMSMessage = Lens.lens (\DirectMessageConfiguration' {sMSMessage} -> sMSMessage) (\s@DirectMessageConfiguration' {} a -> s {sMSMessage = a} :: DirectMessageConfiguration)

-- | The default push notification message for all push notification
-- channels.
directMessageConfiguration_defaultPushNotificationMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe DefaultPushNotificationMessage)
directMessageConfiguration_defaultPushNotificationMessage = Lens.lens (\DirectMessageConfiguration' {defaultPushNotificationMessage} -> defaultPushNotificationMessage) (\s@DirectMessageConfiguration' {} a -> s {defaultPushNotificationMessage = a} :: DirectMessageConfiguration)

-- | The default push notification message for the Baidu (Baidu Cloud Push)
-- channel. This message overrides the default push notification message
-- (DefaultPushNotificationMessage).
directMessageConfiguration_baiduMessage :: Lens.Lens' DirectMessageConfiguration (Core.Maybe BaiduMessage)
directMessageConfiguration_baiduMessage = Lens.lens (\DirectMessageConfiguration' {baiduMessage} -> baiduMessage) (\s@DirectMessageConfiguration' {} a -> s {baiduMessage = a} :: DirectMessageConfiguration)

instance Core.Hashable DirectMessageConfiguration

instance Core.NFData DirectMessageConfiguration

instance Core.ToJSON DirectMessageConfiguration where
  toJSON DirectMessageConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("ADMMessage" Core..=) Core.<$> aDMMessage,
            ("DefaultMessage" Core..=) Core.<$> defaultMessage,
            ("VoiceMessage" Core..=) Core.<$> voiceMessage,
            ("GCMMessage" Core..=) Core.<$> gCMMessage,
            ("APNSMessage" Core..=) Core.<$> aPNSMessage,
            ("EmailMessage" Core..=) Core.<$> emailMessage,
            ("SMSMessage" Core..=) Core.<$> sMSMessage,
            ("DefaultPushNotificationMessage" Core..=)
              Core.<$> defaultPushNotificationMessage,
            ("BaiduMessage" Core..=) Core.<$> baiduMessage
          ]
      )
