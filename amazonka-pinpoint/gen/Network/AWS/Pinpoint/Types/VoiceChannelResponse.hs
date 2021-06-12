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
-- Module      : Network.AWS.Pinpoint.Types.VoiceChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.VoiceChannelResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Provides information about the status and settings of the voice channel
-- for an application.
--
-- /See:/ 'newVoiceChannelResponse' smart constructor.
data VoiceChannelResponse = VoiceChannelResponse'
  { -- | The date and time, in ISO 8601 format, when the voice channel was last
    -- modified.
    lastModifiedDate :: Core.Maybe Core.Text,
    -- | The unique identifier for the application that the voice channel applies
    -- to.
    applicationId :: Core.Maybe Core.Text,
    -- | (Not used) This property is retained only for backward compatibility.
    hasCredential :: Core.Maybe Core.Bool,
    -- | (Deprecated) An identifier for the voice channel. This property is
    -- retained only for backward compatibility.
    id :: Core.Maybe Core.Text,
    -- | The date and time, in ISO 8601 format, when the voice channel was
    -- enabled.
    creationDate :: Core.Maybe Core.Text,
    -- | Specifies whether the voice channel is enabled for the application.
    enabled :: Core.Maybe Core.Bool,
    -- | The current version of the voice channel.
    version :: Core.Maybe Core.Int,
    -- | Specifies whether the voice channel is archived.
    isArchived :: Core.Maybe Core.Bool,
    -- | The user who last modified the voice channel.
    lastModifiedBy :: Core.Maybe Core.Text,
    -- | The type of messaging or notification platform for the channel. For the
    -- voice channel, this value is VOICE.
    platform :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'VoiceChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedDate', 'voiceChannelResponse_lastModifiedDate' - The date and time, in ISO 8601 format, when the voice channel was last
-- modified.
--
-- 'applicationId', 'voiceChannelResponse_applicationId' - The unique identifier for the application that the voice channel applies
-- to.
--
-- 'hasCredential', 'voiceChannelResponse_hasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- 'id', 'voiceChannelResponse_id' - (Deprecated) An identifier for the voice channel. This property is
-- retained only for backward compatibility.
--
-- 'creationDate', 'voiceChannelResponse_creationDate' - The date and time, in ISO 8601 format, when the voice channel was
-- enabled.
--
-- 'enabled', 'voiceChannelResponse_enabled' - Specifies whether the voice channel is enabled for the application.
--
-- 'version', 'voiceChannelResponse_version' - The current version of the voice channel.
--
-- 'isArchived', 'voiceChannelResponse_isArchived' - Specifies whether the voice channel is archived.
--
-- 'lastModifiedBy', 'voiceChannelResponse_lastModifiedBy' - The user who last modified the voice channel.
--
-- 'platform', 'voiceChannelResponse_platform' - The type of messaging or notification platform for the channel. For the
-- voice channel, this value is VOICE.
newVoiceChannelResponse ::
  -- | 'platform'
  Core.Text ->
  VoiceChannelResponse
newVoiceChannelResponse pPlatform_ =
  VoiceChannelResponse'
    { lastModifiedDate =
        Core.Nothing,
      applicationId = Core.Nothing,
      hasCredential = Core.Nothing,
      id = Core.Nothing,
      creationDate = Core.Nothing,
      enabled = Core.Nothing,
      version = Core.Nothing,
      isArchived = Core.Nothing,
      lastModifiedBy = Core.Nothing,
      platform = pPlatform_
    }

-- | The date and time, in ISO 8601 format, when the voice channel was last
-- modified.
voiceChannelResponse_lastModifiedDate :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Text)
voiceChannelResponse_lastModifiedDate = Lens.lens (\VoiceChannelResponse' {lastModifiedDate} -> lastModifiedDate) (\s@VoiceChannelResponse' {} a -> s {lastModifiedDate = a} :: VoiceChannelResponse)

-- | The unique identifier for the application that the voice channel applies
-- to.
voiceChannelResponse_applicationId :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Text)
voiceChannelResponse_applicationId = Lens.lens (\VoiceChannelResponse' {applicationId} -> applicationId) (\s@VoiceChannelResponse' {} a -> s {applicationId = a} :: VoiceChannelResponse)

-- | (Not used) This property is retained only for backward compatibility.
voiceChannelResponse_hasCredential :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Bool)
voiceChannelResponse_hasCredential = Lens.lens (\VoiceChannelResponse' {hasCredential} -> hasCredential) (\s@VoiceChannelResponse' {} a -> s {hasCredential = a} :: VoiceChannelResponse)

-- | (Deprecated) An identifier for the voice channel. This property is
-- retained only for backward compatibility.
voiceChannelResponse_id :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Text)
voiceChannelResponse_id = Lens.lens (\VoiceChannelResponse' {id} -> id) (\s@VoiceChannelResponse' {} a -> s {id = a} :: VoiceChannelResponse)

-- | The date and time, in ISO 8601 format, when the voice channel was
-- enabled.
voiceChannelResponse_creationDate :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Text)
voiceChannelResponse_creationDate = Lens.lens (\VoiceChannelResponse' {creationDate} -> creationDate) (\s@VoiceChannelResponse' {} a -> s {creationDate = a} :: VoiceChannelResponse)

-- | Specifies whether the voice channel is enabled for the application.
voiceChannelResponse_enabled :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Bool)
voiceChannelResponse_enabled = Lens.lens (\VoiceChannelResponse' {enabled} -> enabled) (\s@VoiceChannelResponse' {} a -> s {enabled = a} :: VoiceChannelResponse)

-- | The current version of the voice channel.
voiceChannelResponse_version :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Int)
voiceChannelResponse_version = Lens.lens (\VoiceChannelResponse' {version} -> version) (\s@VoiceChannelResponse' {} a -> s {version = a} :: VoiceChannelResponse)

-- | Specifies whether the voice channel is archived.
voiceChannelResponse_isArchived :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Bool)
voiceChannelResponse_isArchived = Lens.lens (\VoiceChannelResponse' {isArchived} -> isArchived) (\s@VoiceChannelResponse' {} a -> s {isArchived = a} :: VoiceChannelResponse)

-- | The user who last modified the voice channel.
voiceChannelResponse_lastModifiedBy :: Lens.Lens' VoiceChannelResponse (Core.Maybe Core.Text)
voiceChannelResponse_lastModifiedBy = Lens.lens (\VoiceChannelResponse' {lastModifiedBy} -> lastModifiedBy) (\s@VoiceChannelResponse' {} a -> s {lastModifiedBy = a} :: VoiceChannelResponse)

-- | The type of messaging or notification platform for the channel. For the
-- voice channel, this value is VOICE.
voiceChannelResponse_platform :: Lens.Lens' VoiceChannelResponse Core.Text
voiceChannelResponse_platform = Lens.lens (\VoiceChannelResponse' {platform} -> platform) (\s@VoiceChannelResponse' {} a -> s {platform = a} :: VoiceChannelResponse)

instance Core.FromJSON VoiceChannelResponse where
  parseJSON =
    Core.withObject
      "VoiceChannelResponse"
      ( \x ->
          VoiceChannelResponse'
            Core.<$> (x Core..:? "LastModifiedDate")
            Core.<*> (x Core..:? "ApplicationId")
            Core.<*> (x Core..:? "HasCredential")
            Core.<*> (x Core..:? "Id")
            Core.<*> (x Core..:? "CreationDate")
            Core.<*> (x Core..:? "Enabled")
            Core.<*> (x Core..:? "Version")
            Core.<*> (x Core..:? "IsArchived")
            Core.<*> (x Core..:? "LastModifiedBy")
            Core.<*> (x Core..: "Platform")
      )

instance Core.Hashable VoiceChannelResponse

instance Core.NFData VoiceChannelResponse
