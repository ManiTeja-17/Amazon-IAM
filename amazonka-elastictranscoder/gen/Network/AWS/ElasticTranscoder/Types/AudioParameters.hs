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
-- Module      : Network.AWS.ElasticTranscoder.Types.AudioParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.AudioParameters where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticTranscoder.Types.AudioCodecOptions
import qualified Network.AWS.Lens as Lens

-- | Parameters required for transcoding audio.
--
-- /See:/ 'newAudioParameters' smart constructor.
data AudioParameters = AudioParameters'
  { -- | If you specified @AAC@ for @Audio:Codec@, this is the @AAC@ compression
    -- profile to use. Valid values include:
    --
    -- @auto@, @AAC-LC@, @HE-AAC@, @HE-AACv2@
    --
    -- If you specify @auto@, Elastic Transcoder chooses a profile based on the
    -- bit rate of the output file.
    codecOptions :: Core.Maybe AudioCodecOptions,
    -- | The audio codec for the output file. Valid values include @aac@, @flac@,
    -- @mp2@, @mp3@, @pcm@, and @vorbis@.
    codec :: Core.Maybe Core.Text,
    -- | The number of audio channels in the output file. The following values
    -- are valid:
    --
    -- @auto@, @0@, @1@, @2@
    --
    -- One channel carries the information played by a single speaker. For
    -- example, a stereo track with two channels sends one channel to the left
    -- speaker, and the other channel to the right speaker. The output channels
    -- are organized into tracks. If you want Elastic Transcoder to
    -- automatically detect the number of audio channels in the input file and
    -- use that value for the output file, select @auto@.
    --
    -- The output of a specific channel value and inputs are as follows:
    --
    -- -   @auto@ __channel specified, with any input:__ Pass through up to
    --     eight input channels.
    --
    -- -   @0@ __channels specified, with any input:__ Audio omitted from the
    --     output.
    --
    -- -   @1@ __channel specified, with at least one input channel:__ Mono
    --     sound.
    --
    -- -   @2@ __channels specified, with any input:__ Two identical mono
    --     channels or stereo. For more information about tracks, see
    --     @Audio:AudioPackingMode.@
    --
    -- For more information about how Elastic Transcoder organizes channels and
    -- tracks, see @Audio:AudioPackingMode@.
    channels :: Core.Maybe Core.Text,
    -- | The sample rate of the audio stream in the output file, in Hertz. Valid
    -- values include:
    --
    -- @auto@, @22050@, @32000@, @44100@, @48000@, @96000@
    --
    -- If you specify @auto@, Elastic Transcoder automatically detects the
    -- sample rate.
    sampleRate :: Core.Maybe Core.Text,
    -- | The method of organizing audio channels and tracks. Use @Audio:Channels@
    -- to specify the number of channels in your output, and
    -- @Audio:AudioPackingMode@ to specify the number of tracks and their
    -- relation to the channels. If you do not specify an
    -- @Audio:AudioPackingMode@, Elastic Transcoder uses @SingleTrack@.
    --
    -- The following values are valid:
    --
    -- @SingleTrack@, @OneChannelPerTrack@, and
    -- @OneChannelPerTrackWithMosTo8Tracks@
    --
    -- When you specify @SingleTrack@, Elastic Transcoder creates a single
    -- track for your output. The track can have up to eight channels. Use
    -- @SingleTrack@ for all non-@mxf@ containers.
    --
    -- The outputs of @SingleTrack@ for a specific channel value and inputs are
    -- as follows:
    --
    -- -   @0@ __channels with any input:__ Audio omitted from the output
    --
    -- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
    --     from the output
    --
    -- -   @1 @ __channel with any input with audio:__ One track with one
    --     channel, downmixed if necessary
    --
    -- -   @2 @ __channels with one track with one channel:__ One track with
    --     two identical channels
    --
    -- -   @2 or auto @ __channels with two tracks with one channel each:__ One
    --     track with two channels
    --
    -- -   @2 or auto @ __channels with one track with two channels:__ One
    --     track with two channels
    --
    -- -   @2 @ __channels with one track with multiple channels:__ One track
    --     with two channels
    --
    -- -   @auto @ __channels with one track with one channel:__ One track with
    --     one channel
    --
    -- -   @auto @ __channels with one track with multiple channels:__ One
    --     track with multiple channels
    --
    -- When you specify @OneChannelPerTrack@, Elastic Transcoder creates a new
    -- track for every channel in your output. Your output can have up to eight
    -- single-channel tracks.
    --
    -- The outputs of @OneChannelPerTrack@ for a specific channel value and
    -- inputs are as follows:
    --
    -- -   @0 @ __channels with any input:__ Audio omitted from the output
    --
    -- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
    --     from the output
    --
    -- -   @1 @ __channel with any input with audio:__ One track with one
    --     channel, downmixed if necessary
    --
    -- -   @2 @ __channels with one track with one channel:__ Two tracks with
    --     one identical channel each
    --
    -- -   @2 or auto @ __channels with two tracks with one channel each:__ Two
    --     tracks with one channel each
    --
    -- -   @2 or auto @ __channels with one track with two channels:__ Two
    --     tracks with one channel each
    --
    -- -   @2 @ __channels with one track with multiple channels:__ Two tracks
    --     with one channel each
    --
    -- -   @auto @ __channels with one track with one channel:__ One track with
    --     one channel
    --
    -- -   @auto @ __channels with one track with multiple channels:__ Up to
    --     eight tracks with one channel each
    --
    -- When you specify @OneChannelPerTrackWithMosTo8Tracks@, Elastic
    -- Transcoder creates eight single-channel tracks for your output. All
    -- tracks that do not contain audio data from an input channel are MOS, or
    -- Mit Out Sound, tracks.
    --
    -- The outputs of @OneChannelPerTrackWithMosTo8Tracks@ for a specific
    -- channel value and inputs are as follows:
    --
    -- -   @0 @ __channels with any input:__ Audio omitted from the output
    --
    -- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
    --     from the output
    --
    -- -   @1 @ __channel with any input with audio:__ One track with one
    --     channel, downmixed if necessary, plus six MOS tracks
    --
    -- -   @2 @ __channels with one track with one channel:__ Two tracks with
    --     one identical channel each, plus six MOS tracks
    --
    -- -   @2 or auto @ __channels with two tracks with one channel each:__ Two
    --     tracks with one channel each, plus six MOS tracks
    --
    -- -   @2 or auto @ __channels with one track with two channels:__ Two
    --     tracks with one channel each, plus six MOS tracks
    --
    -- -   @2 @ __channels with one track with multiple channels:__ Two tracks
    --     with one channel each, plus six MOS tracks
    --
    -- -   @auto @ __channels with one track with one channel:__ One track with
    --     one channel, plus seven MOS tracks
    --
    -- -   @auto @ __channels with one track with multiple channels:__ Up to
    --     eight tracks with one channel each, plus MOS tracks until there are
    --     eight tracks in all
    audioPackingMode :: Core.Maybe Core.Text,
    -- | The bit rate of the audio stream in the output file, in
    -- kilobits\/second. Enter an integer between 64 and 320, inclusive.
    bitRate :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AudioParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'codecOptions', 'audioParameters_codecOptions' - If you specified @AAC@ for @Audio:Codec@, this is the @AAC@ compression
-- profile to use. Valid values include:
--
-- @auto@, @AAC-LC@, @HE-AAC@, @HE-AACv2@
--
-- If you specify @auto@, Elastic Transcoder chooses a profile based on the
-- bit rate of the output file.
--
-- 'codec', 'audioParameters_codec' - The audio codec for the output file. Valid values include @aac@, @flac@,
-- @mp2@, @mp3@, @pcm@, and @vorbis@.
--
-- 'channels', 'audioParameters_channels' - The number of audio channels in the output file. The following values
-- are valid:
--
-- @auto@, @0@, @1@, @2@
--
-- One channel carries the information played by a single speaker. For
-- example, a stereo track with two channels sends one channel to the left
-- speaker, and the other channel to the right speaker. The output channels
-- are organized into tracks. If you want Elastic Transcoder to
-- automatically detect the number of audio channels in the input file and
-- use that value for the output file, select @auto@.
--
-- The output of a specific channel value and inputs are as follows:
--
-- -   @auto@ __channel specified, with any input:__ Pass through up to
--     eight input channels.
--
-- -   @0@ __channels specified, with any input:__ Audio omitted from the
--     output.
--
-- -   @1@ __channel specified, with at least one input channel:__ Mono
--     sound.
--
-- -   @2@ __channels specified, with any input:__ Two identical mono
--     channels or stereo. For more information about tracks, see
--     @Audio:AudioPackingMode.@
--
-- For more information about how Elastic Transcoder organizes channels and
-- tracks, see @Audio:AudioPackingMode@.
--
-- 'sampleRate', 'audioParameters_sampleRate' - The sample rate of the audio stream in the output file, in Hertz. Valid
-- values include:
--
-- @auto@, @22050@, @32000@, @44100@, @48000@, @96000@
--
-- If you specify @auto@, Elastic Transcoder automatically detects the
-- sample rate.
--
-- 'audioPackingMode', 'audioParameters_audioPackingMode' - The method of organizing audio channels and tracks. Use @Audio:Channels@
-- to specify the number of channels in your output, and
-- @Audio:AudioPackingMode@ to specify the number of tracks and their
-- relation to the channels. If you do not specify an
-- @Audio:AudioPackingMode@, Elastic Transcoder uses @SingleTrack@.
--
-- The following values are valid:
--
-- @SingleTrack@, @OneChannelPerTrack@, and
-- @OneChannelPerTrackWithMosTo8Tracks@
--
-- When you specify @SingleTrack@, Elastic Transcoder creates a single
-- track for your output. The track can have up to eight channels. Use
-- @SingleTrack@ for all non-@mxf@ containers.
--
-- The outputs of @SingleTrack@ for a specific channel value and inputs are
-- as follows:
--
-- -   @0@ __channels with any input:__ Audio omitted from the output
--
-- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
--     from the output
--
-- -   @1 @ __channel with any input with audio:__ One track with one
--     channel, downmixed if necessary
--
-- -   @2 @ __channels with one track with one channel:__ One track with
--     two identical channels
--
-- -   @2 or auto @ __channels with two tracks with one channel each:__ One
--     track with two channels
--
-- -   @2 or auto @ __channels with one track with two channels:__ One
--     track with two channels
--
-- -   @2 @ __channels with one track with multiple channels:__ One track
--     with two channels
--
-- -   @auto @ __channels with one track with one channel:__ One track with
--     one channel
--
-- -   @auto @ __channels with one track with multiple channels:__ One
--     track with multiple channels
--
-- When you specify @OneChannelPerTrack@, Elastic Transcoder creates a new
-- track for every channel in your output. Your output can have up to eight
-- single-channel tracks.
--
-- The outputs of @OneChannelPerTrack@ for a specific channel value and
-- inputs are as follows:
--
-- -   @0 @ __channels with any input:__ Audio omitted from the output
--
-- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
--     from the output
--
-- -   @1 @ __channel with any input with audio:__ One track with one
--     channel, downmixed if necessary
--
-- -   @2 @ __channels with one track with one channel:__ Two tracks with
--     one identical channel each
--
-- -   @2 or auto @ __channels with two tracks with one channel each:__ Two
--     tracks with one channel each
--
-- -   @2 or auto @ __channels with one track with two channels:__ Two
--     tracks with one channel each
--
-- -   @2 @ __channels with one track with multiple channels:__ Two tracks
--     with one channel each
--
-- -   @auto @ __channels with one track with one channel:__ One track with
--     one channel
--
-- -   @auto @ __channels with one track with multiple channels:__ Up to
--     eight tracks with one channel each
--
-- When you specify @OneChannelPerTrackWithMosTo8Tracks@, Elastic
-- Transcoder creates eight single-channel tracks for your output. All
-- tracks that do not contain audio data from an input channel are MOS, or
-- Mit Out Sound, tracks.
--
-- The outputs of @OneChannelPerTrackWithMosTo8Tracks@ for a specific
-- channel value and inputs are as follows:
--
-- -   @0 @ __channels with any input:__ Audio omitted from the output
--
-- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
--     from the output
--
-- -   @1 @ __channel with any input with audio:__ One track with one
--     channel, downmixed if necessary, plus six MOS tracks
--
-- -   @2 @ __channels with one track with one channel:__ Two tracks with
--     one identical channel each, plus six MOS tracks
--
-- -   @2 or auto @ __channels with two tracks with one channel each:__ Two
--     tracks with one channel each, plus six MOS tracks
--
-- -   @2 or auto @ __channels with one track with two channels:__ Two
--     tracks with one channel each, plus six MOS tracks
--
-- -   @2 @ __channels with one track with multiple channels:__ Two tracks
--     with one channel each, plus six MOS tracks
--
-- -   @auto @ __channels with one track with one channel:__ One track with
--     one channel, plus seven MOS tracks
--
-- -   @auto @ __channels with one track with multiple channels:__ Up to
--     eight tracks with one channel each, plus MOS tracks until there are
--     eight tracks in all
--
-- 'bitRate', 'audioParameters_bitRate' - The bit rate of the audio stream in the output file, in
-- kilobits\/second. Enter an integer between 64 and 320, inclusive.
newAudioParameters ::
  AudioParameters
newAudioParameters =
  AudioParameters'
    { codecOptions = Core.Nothing,
      codec = Core.Nothing,
      channels = Core.Nothing,
      sampleRate = Core.Nothing,
      audioPackingMode = Core.Nothing,
      bitRate = Core.Nothing
    }

-- | If you specified @AAC@ for @Audio:Codec@, this is the @AAC@ compression
-- profile to use. Valid values include:
--
-- @auto@, @AAC-LC@, @HE-AAC@, @HE-AACv2@
--
-- If you specify @auto@, Elastic Transcoder chooses a profile based on the
-- bit rate of the output file.
audioParameters_codecOptions :: Lens.Lens' AudioParameters (Core.Maybe AudioCodecOptions)
audioParameters_codecOptions = Lens.lens (\AudioParameters' {codecOptions} -> codecOptions) (\s@AudioParameters' {} a -> s {codecOptions = a} :: AudioParameters)

-- | The audio codec for the output file. Valid values include @aac@, @flac@,
-- @mp2@, @mp3@, @pcm@, and @vorbis@.
audioParameters_codec :: Lens.Lens' AudioParameters (Core.Maybe Core.Text)
audioParameters_codec = Lens.lens (\AudioParameters' {codec} -> codec) (\s@AudioParameters' {} a -> s {codec = a} :: AudioParameters)

-- | The number of audio channels in the output file. The following values
-- are valid:
--
-- @auto@, @0@, @1@, @2@
--
-- One channel carries the information played by a single speaker. For
-- example, a stereo track with two channels sends one channel to the left
-- speaker, and the other channel to the right speaker. The output channels
-- are organized into tracks. If you want Elastic Transcoder to
-- automatically detect the number of audio channels in the input file and
-- use that value for the output file, select @auto@.
--
-- The output of a specific channel value and inputs are as follows:
--
-- -   @auto@ __channel specified, with any input:__ Pass through up to
--     eight input channels.
--
-- -   @0@ __channels specified, with any input:__ Audio omitted from the
--     output.
--
-- -   @1@ __channel specified, with at least one input channel:__ Mono
--     sound.
--
-- -   @2@ __channels specified, with any input:__ Two identical mono
--     channels or stereo. For more information about tracks, see
--     @Audio:AudioPackingMode.@
--
-- For more information about how Elastic Transcoder organizes channels and
-- tracks, see @Audio:AudioPackingMode@.
audioParameters_channels :: Lens.Lens' AudioParameters (Core.Maybe Core.Text)
audioParameters_channels = Lens.lens (\AudioParameters' {channels} -> channels) (\s@AudioParameters' {} a -> s {channels = a} :: AudioParameters)

-- | The sample rate of the audio stream in the output file, in Hertz. Valid
-- values include:
--
-- @auto@, @22050@, @32000@, @44100@, @48000@, @96000@
--
-- If you specify @auto@, Elastic Transcoder automatically detects the
-- sample rate.
audioParameters_sampleRate :: Lens.Lens' AudioParameters (Core.Maybe Core.Text)
audioParameters_sampleRate = Lens.lens (\AudioParameters' {sampleRate} -> sampleRate) (\s@AudioParameters' {} a -> s {sampleRate = a} :: AudioParameters)

-- | The method of organizing audio channels and tracks. Use @Audio:Channels@
-- to specify the number of channels in your output, and
-- @Audio:AudioPackingMode@ to specify the number of tracks and their
-- relation to the channels. If you do not specify an
-- @Audio:AudioPackingMode@, Elastic Transcoder uses @SingleTrack@.
--
-- The following values are valid:
--
-- @SingleTrack@, @OneChannelPerTrack@, and
-- @OneChannelPerTrackWithMosTo8Tracks@
--
-- When you specify @SingleTrack@, Elastic Transcoder creates a single
-- track for your output. The track can have up to eight channels. Use
-- @SingleTrack@ for all non-@mxf@ containers.
--
-- The outputs of @SingleTrack@ for a specific channel value and inputs are
-- as follows:
--
-- -   @0@ __channels with any input:__ Audio omitted from the output
--
-- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
--     from the output
--
-- -   @1 @ __channel with any input with audio:__ One track with one
--     channel, downmixed if necessary
--
-- -   @2 @ __channels with one track with one channel:__ One track with
--     two identical channels
--
-- -   @2 or auto @ __channels with two tracks with one channel each:__ One
--     track with two channels
--
-- -   @2 or auto @ __channels with one track with two channels:__ One
--     track with two channels
--
-- -   @2 @ __channels with one track with multiple channels:__ One track
--     with two channels
--
-- -   @auto @ __channels with one track with one channel:__ One track with
--     one channel
--
-- -   @auto @ __channels with one track with multiple channels:__ One
--     track with multiple channels
--
-- When you specify @OneChannelPerTrack@, Elastic Transcoder creates a new
-- track for every channel in your output. Your output can have up to eight
-- single-channel tracks.
--
-- The outputs of @OneChannelPerTrack@ for a specific channel value and
-- inputs are as follows:
--
-- -   @0 @ __channels with any input:__ Audio omitted from the output
--
-- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
--     from the output
--
-- -   @1 @ __channel with any input with audio:__ One track with one
--     channel, downmixed if necessary
--
-- -   @2 @ __channels with one track with one channel:__ Two tracks with
--     one identical channel each
--
-- -   @2 or auto @ __channels with two tracks with one channel each:__ Two
--     tracks with one channel each
--
-- -   @2 or auto @ __channels with one track with two channels:__ Two
--     tracks with one channel each
--
-- -   @2 @ __channels with one track with multiple channels:__ Two tracks
--     with one channel each
--
-- -   @auto @ __channels with one track with one channel:__ One track with
--     one channel
--
-- -   @auto @ __channels with one track with multiple channels:__ Up to
--     eight tracks with one channel each
--
-- When you specify @OneChannelPerTrackWithMosTo8Tracks@, Elastic
-- Transcoder creates eight single-channel tracks for your output. All
-- tracks that do not contain audio data from an input channel are MOS, or
-- Mit Out Sound, tracks.
--
-- The outputs of @OneChannelPerTrackWithMosTo8Tracks@ for a specific
-- channel value and inputs are as follows:
--
-- -   @0 @ __channels with any input:__ Audio omitted from the output
--
-- -   @1, 2, or auto @ __channels with no audio input:__ Audio omitted
--     from the output
--
-- -   @1 @ __channel with any input with audio:__ One track with one
--     channel, downmixed if necessary, plus six MOS tracks
--
-- -   @2 @ __channels with one track with one channel:__ Two tracks with
--     one identical channel each, plus six MOS tracks
--
-- -   @2 or auto @ __channels with two tracks with one channel each:__ Two
--     tracks with one channel each, plus six MOS tracks
--
-- -   @2 or auto @ __channels with one track with two channels:__ Two
--     tracks with one channel each, plus six MOS tracks
--
-- -   @2 @ __channels with one track with multiple channels:__ Two tracks
--     with one channel each, plus six MOS tracks
--
-- -   @auto @ __channels with one track with one channel:__ One track with
--     one channel, plus seven MOS tracks
--
-- -   @auto @ __channels with one track with multiple channels:__ Up to
--     eight tracks with one channel each, plus MOS tracks until there are
--     eight tracks in all
audioParameters_audioPackingMode :: Lens.Lens' AudioParameters (Core.Maybe Core.Text)
audioParameters_audioPackingMode = Lens.lens (\AudioParameters' {audioPackingMode} -> audioPackingMode) (\s@AudioParameters' {} a -> s {audioPackingMode = a} :: AudioParameters)

-- | The bit rate of the audio stream in the output file, in
-- kilobits\/second. Enter an integer between 64 and 320, inclusive.
audioParameters_bitRate :: Lens.Lens' AudioParameters (Core.Maybe Core.Text)
audioParameters_bitRate = Lens.lens (\AudioParameters' {bitRate} -> bitRate) (\s@AudioParameters' {} a -> s {bitRate = a} :: AudioParameters)

instance Core.FromJSON AudioParameters where
  parseJSON =
    Core.withObject
      "AudioParameters"
      ( \x ->
          AudioParameters'
            Core.<$> (x Core..:? "CodecOptions")
            Core.<*> (x Core..:? "Codec")
            Core.<*> (x Core..:? "Channels")
            Core.<*> (x Core..:? "SampleRate")
            Core.<*> (x Core..:? "AudioPackingMode")
            Core.<*> (x Core..:? "BitRate")
      )

instance Core.Hashable AudioParameters

instance Core.NFData AudioParameters

instance Core.ToJSON AudioParameters where
  toJSON AudioParameters' {..} =
    Core.object
      ( Core.catMaybes
          [ ("CodecOptions" Core..=) Core.<$> codecOptions,
            ("Codec" Core..=) Core.<$> codec,
            ("Channels" Core..=) Core.<$> channels,
            ("SampleRate" Core..=) Core.<$> sampleRate,
            ("AudioPackingMode" Core..=)
              Core.<$> audioPackingMode,
            ("BitRate" Core..=) Core.<$> bitRate
          ]
      )
