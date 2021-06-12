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
-- Module      : Network.AWS.MediaPackage.Types.HlsPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.HlsPackage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaPackage.Types.AdMarkers
import Network.AWS.MediaPackage.Types.AdTriggersElement
import Network.AWS.MediaPackage.Types.AdsOnDeliveryRestrictions
import Network.AWS.MediaPackage.Types.HlsEncryption
import Network.AWS.MediaPackage.Types.PlaylistType
import Network.AWS.MediaPackage.Types.StreamSelection

-- | An HTTP Live Streaming (HLS) packaging configuration.
--
-- /See:/ 'newHlsPackage' smart constructor.
data HlsPackage = HlsPackage'
  { -- | This setting controls how ad markers are included in the packaged
    -- OriginEndpoint. \"NONE\" will omit all SCTE-35 ad markers from the
    -- output. \"PASSTHROUGH\" causes the manifest to contain a copy of the
    -- SCTE-35 ad markers (comments) taken directly from the input HTTP Live
    -- Streaming (HLS) manifest. \"SCTE35_ENHANCED\" generates ad markers and
    -- blackout tags based on SCTE-35 messages in the input source.
    -- \"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program
    -- transition events in HLS and CMAF manifests. For this option, you must
    -- set a programDateTimeIntervalSeconds value that is greater than 0.
    adMarkers :: Core.Maybe AdMarkers,
    streamSelection :: Core.Maybe StreamSelection,
    -- | The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    -- inserted into manifests. Additionally, when an interval is specified
    -- ID3Timed Metadata messages will be generated every 5 seconds using the
    -- ingest time of the content. If the interval is not specified, or set to
    -- 0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests
    -- and no ID3Timed Metadata messages will be generated. Note that
    -- irrespective of this parameter, if any ID3 Timed Metadata is found in
    -- HTTP Live Streaming (HLS) input, it will be passed through to HLS
    -- output.
    programDateTimeIntervalSeconds :: Core.Maybe Core.Int,
    -- | Time window (in seconds) contained in each parent manifest.
    playlistWindowSeconds :: Core.Maybe Core.Int,
    adTriggers :: Core.Maybe [AdTriggersElement],
    -- | When enabled, an I-Frame only stream will be included in the output.
    includeIframeOnlyStream :: Core.Maybe Core.Bool,
    -- | When enabled, audio streams will be placed in rendition groups in the
    -- output.
    useAudioRenditionGroup :: Core.Maybe Core.Bool,
    encryption :: Core.Maybe HlsEncryption,
    adsOnDeliveryRestrictions :: Core.Maybe AdsOnDeliveryRestrictions,
    -- | Duration (in seconds) of each fragment. Actual fragments will be rounded
    -- to the nearest multiple of the source fragment duration.
    segmentDurationSeconds :: Core.Maybe Core.Int,
    -- | The HTTP Live Streaming (HLS) playlist type. When either \"EVENT\" or
    -- \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry will be
    -- included in the media playlist.
    playlistType :: Core.Maybe PlaylistType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'HlsPackage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'adMarkers', 'hlsPackage_adMarkers' - This setting controls how ad markers are included in the packaged
-- OriginEndpoint. \"NONE\" will omit all SCTE-35 ad markers from the
-- output. \"PASSTHROUGH\" causes the manifest to contain a copy of the
-- SCTE-35 ad markers (comments) taken directly from the input HTTP Live
-- Streaming (HLS) manifest. \"SCTE35_ENHANCED\" generates ad markers and
-- blackout tags based on SCTE-35 messages in the input source.
-- \"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program
-- transition events in HLS and CMAF manifests. For this option, you must
-- set a programDateTimeIntervalSeconds value that is greater than 0.
--
-- 'streamSelection', 'hlsPackage_streamSelection' - Undocumented member.
--
-- 'programDateTimeIntervalSeconds', 'hlsPackage_programDateTimeIntervalSeconds' - The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
-- inserted into manifests. Additionally, when an interval is specified
-- ID3Timed Metadata messages will be generated every 5 seconds using the
-- ingest time of the content. If the interval is not specified, or set to
-- 0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests
-- and no ID3Timed Metadata messages will be generated. Note that
-- irrespective of this parameter, if any ID3 Timed Metadata is found in
-- HTTP Live Streaming (HLS) input, it will be passed through to HLS
-- output.
--
-- 'playlistWindowSeconds', 'hlsPackage_playlistWindowSeconds' - Time window (in seconds) contained in each parent manifest.
--
-- 'adTriggers', 'hlsPackage_adTriggers' - Undocumented member.
--
-- 'includeIframeOnlyStream', 'hlsPackage_includeIframeOnlyStream' - When enabled, an I-Frame only stream will be included in the output.
--
-- 'useAudioRenditionGroup', 'hlsPackage_useAudioRenditionGroup' - When enabled, audio streams will be placed in rendition groups in the
-- output.
--
-- 'encryption', 'hlsPackage_encryption' - Undocumented member.
--
-- 'adsOnDeliveryRestrictions', 'hlsPackage_adsOnDeliveryRestrictions' - Undocumented member.
--
-- 'segmentDurationSeconds', 'hlsPackage_segmentDurationSeconds' - Duration (in seconds) of each fragment. Actual fragments will be rounded
-- to the nearest multiple of the source fragment duration.
--
-- 'playlistType', 'hlsPackage_playlistType' - The HTTP Live Streaming (HLS) playlist type. When either \"EVENT\" or
-- \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry will be
-- included in the media playlist.
newHlsPackage ::
  HlsPackage
newHlsPackage =
  HlsPackage'
    { adMarkers = Core.Nothing,
      streamSelection = Core.Nothing,
      programDateTimeIntervalSeconds = Core.Nothing,
      playlistWindowSeconds = Core.Nothing,
      adTriggers = Core.Nothing,
      includeIframeOnlyStream = Core.Nothing,
      useAudioRenditionGroup = Core.Nothing,
      encryption = Core.Nothing,
      adsOnDeliveryRestrictions = Core.Nothing,
      segmentDurationSeconds = Core.Nothing,
      playlistType = Core.Nothing
    }

-- | This setting controls how ad markers are included in the packaged
-- OriginEndpoint. \"NONE\" will omit all SCTE-35 ad markers from the
-- output. \"PASSTHROUGH\" causes the manifest to contain a copy of the
-- SCTE-35 ad markers (comments) taken directly from the input HTTP Live
-- Streaming (HLS) manifest. \"SCTE35_ENHANCED\" generates ad markers and
-- blackout tags based on SCTE-35 messages in the input source.
-- \"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program
-- transition events in HLS and CMAF manifests. For this option, you must
-- set a programDateTimeIntervalSeconds value that is greater than 0.
hlsPackage_adMarkers :: Lens.Lens' HlsPackage (Core.Maybe AdMarkers)
hlsPackage_adMarkers = Lens.lens (\HlsPackage' {adMarkers} -> adMarkers) (\s@HlsPackage' {} a -> s {adMarkers = a} :: HlsPackage)

-- | Undocumented member.
hlsPackage_streamSelection :: Lens.Lens' HlsPackage (Core.Maybe StreamSelection)
hlsPackage_streamSelection = Lens.lens (\HlsPackage' {streamSelection} -> streamSelection) (\s@HlsPackage' {} a -> s {streamSelection = a} :: HlsPackage)

-- | The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
-- inserted into manifests. Additionally, when an interval is specified
-- ID3Timed Metadata messages will be generated every 5 seconds using the
-- ingest time of the content. If the interval is not specified, or set to
-- 0, then no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests
-- and no ID3Timed Metadata messages will be generated. Note that
-- irrespective of this parameter, if any ID3 Timed Metadata is found in
-- HTTP Live Streaming (HLS) input, it will be passed through to HLS
-- output.
hlsPackage_programDateTimeIntervalSeconds :: Lens.Lens' HlsPackage (Core.Maybe Core.Int)
hlsPackage_programDateTimeIntervalSeconds = Lens.lens (\HlsPackage' {programDateTimeIntervalSeconds} -> programDateTimeIntervalSeconds) (\s@HlsPackage' {} a -> s {programDateTimeIntervalSeconds = a} :: HlsPackage)

-- | Time window (in seconds) contained in each parent manifest.
hlsPackage_playlistWindowSeconds :: Lens.Lens' HlsPackage (Core.Maybe Core.Int)
hlsPackage_playlistWindowSeconds = Lens.lens (\HlsPackage' {playlistWindowSeconds} -> playlistWindowSeconds) (\s@HlsPackage' {} a -> s {playlistWindowSeconds = a} :: HlsPackage)

-- | Undocumented member.
hlsPackage_adTriggers :: Lens.Lens' HlsPackage (Core.Maybe [AdTriggersElement])
hlsPackage_adTriggers = Lens.lens (\HlsPackage' {adTriggers} -> adTriggers) (\s@HlsPackage' {} a -> s {adTriggers = a} :: HlsPackage) Core.. Lens.mapping Lens._Coerce

-- | When enabled, an I-Frame only stream will be included in the output.
hlsPackage_includeIframeOnlyStream :: Lens.Lens' HlsPackage (Core.Maybe Core.Bool)
hlsPackage_includeIframeOnlyStream = Lens.lens (\HlsPackage' {includeIframeOnlyStream} -> includeIframeOnlyStream) (\s@HlsPackage' {} a -> s {includeIframeOnlyStream = a} :: HlsPackage)

-- | When enabled, audio streams will be placed in rendition groups in the
-- output.
hlsPackage_useAudioRenditionGroup :: Lens.Lens' HlsPackage (Core.Maybe Core.Bool)
hlsPackage_useAudioRenditionGroup = Lens.lens (\HlsPackage' {useAudioRenditionGroup} -> useAudioRenditionGroup) (\s@HlsPackage' {} a -> s {useAudioRenditionGroup = a} :: HlsPackage)

-- | Undocumented member.
hlsPackage_encryption :: Lens.Lens' HlsPackage (Core.Maybe HlsEncryption)
hlsPackage_encryption = Lens.lens (\HlsPackage' {encryption} -> encryption) (\s@HlsPackage' {} a -> s {encryption = a} :: HlsPackage)

-- | Undocumented member.
hlsPackage_adsOnDeliveryRestrictions :: Lens.Lens' HlsPackage (Core.Maybe AdsOnDeliveryRestrictions)
hlsPackage_adsOnDeliveryRestrictions = Lens.lens (\HlsPackage' {adsOnDeliveryRestrictions} -> adsOnDeliveryRestrictions) (\s@HlsPackage' {} a -> s {adsOnDeliveryRestrictions = a} :: HlsPackage)

-- | Duration (in seconds) of each fragment. Actual fragments will be rounded
-- to the nearest multiple of the source fragment duration.
hlsPackage_segmentDurationSeconds :: Lens.Lens' HlsPackage (Core.Maybe Core.Int)
hlsPackage_segmentDurationSeconds = Lens.lens (\HlsPackage' {segmentDurationSeconds} -> segmentDurationSeconds) (\s@HlsPackage' {} a -> s {segmentDurationSeconds = a} :: HlsPackage)

-- | The HTTP Live Streaming (HLS) playlist type. When either \"EVENT\" or
-- \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE entry will be
-- included in the media playlist.
hlsPackage_playlistType :: Lens.Lens' HlsPackage (Core.Maybe PlaylistType)
hlsPackage_playlistType = Lens.lens (\HlsPackage' {playlistType} -> playlistType) (\s@HlsPackage' {} a -> s {playlistType = a} :: HlsPackage)

instance Core.FromJSON HlsPackage where
  parseJSON =
    Core.withObject
      "HlsPackage"
      ( \x ->
          HlsPackage'
            Core.<$> (x Core..:? "adMarkers")
            Core.<*> (x Core..:? "streamSelection")
            Core.<*> (x Core..:? "programDateTimeIntervalSeconds")
            Core.<*> (x Core..:? "playlistWindowSeconds")
            Core.<*> (x Core..:? "adTriggers" Core..!= Core.mempty)
            Core.<*> (x Core..:? "includeIframeOnlyStream")
            Core.<*> (x Core..:? "useAudioRenditionGroup")
            Core.<*> (x Core..:? "encryption")
            Core.<*> (x Core..:? "adsOnDeliveryRestrictions")
            Core.<*> (x Core..:? "segmentDurationSeconds")
            Core.<*> (x Core..:? "playlistType")
      )

instance Core.Hashable HlsPackage

instance Core.NFData HlsPackage

instance Core.ToJSON HlsPackage where
  toJSON HlsPackage' {..} =
    Core.object
      ( Core.catMaybes
          [ ("adMarkers" Core..=) Core.<$> adMarkers,
            ("streamSelection" Core..=) Core.<$> streamSelection,
            ("programDateTimeIntervalSeconds" Core..=)
              Core.<$> programDateTimeIntervalSeconds,
            ("playlistWindowSeconds" Core..=)
              Core.<$> playlistWindowSeconds,
            ("adTriggers" Core..=) Core.<$> adTriggers,
            ("includeIframeOnlyStream" Core..=)
              Core.<$> includeIframeOnlyStream,
            ("useAudioRenditionGroup" Core..=)
              Core.<$> useAudioRenditionGroup,
            ("encryption" Core..=) Core.<$> encryption,
            ("adsOnDeliveryRestrictions" Core..=)
              Core.<$> adsOnDeliveryRestrictions,
            ("segmentDurationSeconds" Core..=)
              Core.<$> segmentDurationSeconds,
            ("playlistType" Core..=) Core.<$> playlistType
          ]
      )
