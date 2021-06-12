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
-- Module      : Network.AWS.ElasticTranscoder.Types.CreateJobOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.CreateJobOutput where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticTranscoder.Types.Captions
import Network.AWS.ElasticTranscoder.Types.Clip
import Network.AWS.ElasticTranscoder.Types.Encryption
import Network.AWS.ElasticTranscoder.Types.JobAlbumArt
import Network.AWS.ElasticTranscoder.Types.JobWatermark
import qualified Network.AWS.Lens as Lens

-- | The @CreateJobOutput@ structure.
--
-- /See:/ 'newCreateJobOutput' smart constructor.
data CreateJobOutput = CreateJobOutput'
  { -- | The name to assign to the transcoded file. Elastic Transcoder saves the
    -- file in the Amazon S3 bucket specified by the @OutputBucket@ object in
    -- the pipeline that is specified by the pipeline ID. If a file with the
    -- specified name already exists in the output bucket, the job fails.
    key :: Core.Maybe Core.Text,
    -- | Whether you want Elastic Transcoder to create thumbnails for your videos
    -- and, if so, how you want Elastic Transcoder to name the files.
    --
    -- If you don\'t want Elastic Transcoder to create thumbnails, specify
    -- \"\".
    --
    -- If you do want Elastic Transcoder to create thumbnails, specify the
    -- information that you want to include in the file name for each
    -- thumbnail. You can specify the following values in any sequence:
    --
    -- -   __@{count}@ (Required)__: If you want to create thumbnails, you must
    --     include @{count}@ in the @ThumbnailPattern@ object. Wherever you
    --     specify @{count}@, Elastic Transcoder adds a five-digit sequence
    --     number (beginning with __00001__) to thumbnail file names. The
    --     number indicates where a given thumbnail appears in the sequence of
    --     thumbnails for a transcoded file.
    --
    --     If you specify a literal value and\/or @{resolution}@ but you omit
    --     @{count}@, Elastic Transcoder returns a validation error and does
    --     not create the job.
    --
    -- -   __Literal values (Optional)__: You can specify literal values
    --     anywhere in the @ThumbnailPattern@ object. For example, you can
    --     include them as a file name prefix or as a delimiter between
    --     @{resolution}@ and @{count}@.
    --
    -- -   __@{resolution}@ (Optional)__: If you want Elastic Transcoder to
    --     include the resolution in the file name, include @{resolution}@ in
    --     the @ThumbnailPattern@ object.
    --
    -- When creating thumbnails, Elastic Transcoder automatically saves the
    -- files in the format (.jpg or .png) that appears in the preset that you
    -- specified in the @PresetID@ value of @CreateJobOutput@. Elastic
    -- Transcoder also appends the applicable file name extension.
    thumbnailPattern :: Core.Maybe Core.Text,
    -- | The encryption settings, if any, that you want Elastic Transcoder to
    -- apply to your thumbnail.
    thumbnailEncryption :: Core.Maybe Encryption,
    -- | Information about the watermarks that you want Elastic Transcoder to add
    -- to the video during transcoding. You can specify up to four watermarks
    -- for each output. Settings for each watermark must be defined in the
    -- preset for the current output.
    watermarks :: Core.Maybe [JobWatermark],
    -- | The @Id@ of the preset to use for this job. The preset determines the
    -- audio, video, and thumbnail settings that Elastic Transcoder uses for
    -- transcoding.
    presetId :: Core.Maybe Core.Text,
    -- | Information about the album art that you want Elastic Transcoder to add
    -- to the file during transcoding. You can specify up to twenty album
    -- artworks for each output. Settings for each artwork must be defined in
    -- the job for the current output.
    albumArt :: Core.Maybe JobAlbumArt,
    -- | You can specify encryption settings for any output files that you want
    -- to use for a transcoding job. This includes the output file and any
    -- watermarks, thumbnails, album art, or captions that you want to use. You
    -- must specify encryption settings for each file individually.
    encryption :: Core.Maybe Encryption,
    -- | The number of degrees clockwise by which you want Elastic Transcoder to
    -- rotate the output relative to the input. Enter one of the following
    -- values: @auto@, @0@, @90@, @180@, @270@. The value @auto@ generally
    -- works only if the file that you\'re transcoding contains rotation
    -- metadata.
    rotate :: Core.Maybe Core.Text,
    -- | You can create an output file that contains an excerpt from the input
    -- file. This excerpt, called a clip, can come from the beginning, middle,
    -- or end of the file. The Composition object contains settings for the
    -- clips that make up an output file. For the current release, you can only
    -- specify settings for a single clip per output file. The Composition
    -- object cannot be null.
    composition :: Core.Maybe [Clip],
    -- | (Outputs in Fragmented MP4 or MPEG-TS format only.
    --
    -- If you specify a preset in @PresetId@ for which the value of @Container@
    -- is @fmp4@ (Fragmented MP4) or @ts@ (MPEG-TS), @SegmentDuration@ is the
    -- target maximum duration of each segment in seconds. For @HLSv3@ format
    -- playlists, each media segment is stored in a separate @.ts@ file. For
    -- @HLSv4@ and @Smooth@ playlists, all media segments for an output are
    -- stored in a single file. Each segment is approximately the length of the
    -- @SegmentDuration@, though individual segments might be shorter or
    -- longer.
    --
    -- The range of valid values is 1 to 60 seconds. If the duration of the
    -- video is not evenly divisible by @SegmentDuration@, the duration of the
    -- last segment is the remainder of total length\/SegmentDuration.
    --
    -- Elastic Transcoder creates an output-specific playlist for each output
    -- @HLS@ output that you specify in OutputKeys. To add an output to the
    -- master playlist for this job, include it in the @OutputKeys@ of the
    -- associated playlist.
    segmentDuration :: Core.Maybe Core.Text,
    -- | You can configure Elastic Transcoder to transcode captions, or
    -- subtitles, from one format to another. All captions must be in UTF-8.
    -- Elastic Transcoder supports two types of captions:
    --
    -- -   __Embedded:__ Embedded captions are included in the same file as the
    --     audio and video. Elastic Transcoder supports only one embedded
    --     caption per language, to a maximum of 300 embedded captions per
    --     file.
    --
    --     Valid input values include: @CEA-608 (EIA-608@, first non-empty
    --     channel only), @CEA-708 (EIA-708@, first non-empty channel only),
    --     and @mov-text@
    --
    --     Valid outputs include: @mov-text@
    --
    --     Elastic Transcoder supports a maximum of one embedded format per
    --     output.
    --
    -- -   __Sidecar:__ Sidecar captions are kept in a separate metadata file
    --     from the audio and video data. Sidecar captions require a player
    --     that is capable of understanding the relationship between the video
    --     file and the sidecar file. Elastic Transcoder supports only one
    --     sidecar caption per language, to a maximum of 20 sidecar captions
    --     per file.
    --
    --     Valid input values include: @dfxp@ (first div element only),
    --     @ebu-tt@, @scc@, @smpt@, @srt@, @ttml@ (first div element only), and
    --     @webvtt@
    --
    --     Valid outputs include: @dfxp@ (first div element only), @scc@,
    --     @srt@, and @webvtt@.
    --
    -- If you want ttml or smpte-tt compatible captions, specify dfxp as your
    -- output format.
    --
    -- Elastic Transcoder does not support OCR (Optical Character Recognition),
    -- does not accept pictures as a valid input for captions, and is not
    -- available for audio-only transcoding. Elastic Transcoder does not
    -- preserve text formatting (for example, italics) during the transcoding
    -- process.
    --
    -- To remove captions or leave the captions empty, set @Captions@ to null.
    -- To pass through existing captions unchanged, set the @MergePolicy@ to
    -- @MergeRetain@, and pass in a null @CaptionSources@ array.
    --
    -- For more information on embedded files, see the Subtitles Wikipedia
    -- page.
    --
    -- For more information on sidecar files, see the Extensible Metadata
    -- Platform and Sidecar file Wikipedia pages.
    captions :: Core.Maybe Captions
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateJobOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'createJobOutput_key' - The name to assign to the transcoded file. Elastic Transcoder saves the
-- file in the Amazon S3 bucket specified by the @OutputBucket@ object in
-- the pipeline that is specified by the pipeline ID. If a file with the
-- specified name already exists in the output bucket, the job fails.
--
-- 'thumbnailPattern', 'createJobOutput_thumbnailPattern' - Whether you want Elastic Transcoder to create thumbnails for your videos
-- and, if so, how you want Elastic Transcoder to name the files.
--
-- If you don\'t want Elastic Transcoder to create thumbnails, specify
-- \"\".
--
-- If you do want Elastic Transcoder to create thumbnails, specify the
-- information that you want to include in the file name for each
-- thumbnail. You can specify the following values in any sequence:
--
-- -   __@{count}@ (Required)__: If you want to create thumbnails, you must
--     include @{count}@ in the @ThumbnailPattern@ object. Wherever you
--     specify @{count}@, Elastic Transcoder adds a five-digit sequence
--     number (beginning with __00001__) to thumbnail file names. The
--     number indicates where a given thumbnail appears in the sequence of
--     thumbnails for a transcoded file.
--
--     If you specify a literal value and\/or @{resolution}@ but you omit
--     @{count}@, Elastic Transcoder returns a validation error and does
--     not create the job.
--
-- -   __Literal values (Optional)__: You can specify literal values
--     anywhere in the @ThumbnailPattern@ object. For example, you can
--     include them as a file name prefix or as a delimiter between
--     @{resolution}@ and @{count}@.
--
-- -   __@{resolution}@ (Optional)__: If you want Elastic Transcoder to
--     include the resolution in the file name, include @{resolution}@ in
--     the @ThumbnailPattern@ object.
--
-- When creating thumbnails, Elastic Transcoder automatically saves the
-- files in the format (.jpg or .png) that appears in the preset that you
-- specified in the @PresetID@ value of @CreateJobOutput@. Elastic
-- Transcoder also appends the applicable file name extension.
--
-- 'thumbnailEncryption', 'createJobOutput_thumbnailEncryption' - The encryption settings, if any, that you want Elastic Transcoder to
-- apply to your thumbnail.
--
-- 'watermarks', 'createJobOutput_watermarks' - Information about the watermarks that you want Elastic Transcoder to add
-- to the video during transcoding. You can specify up to four watermarks
-- for each output. Settings for each watermark must be defined in the
-- preset for the current output.
--
-- 'presetId', 'createJobOutput_presetId' - The @Id@ of the preset to use for this job. The preset determines the
-- audio, video, and thumbnail settings that Elastic Transcoder uses for
-- transcoding.
--
-- 'albumArt', 'createJobOutput_albumArt' - Information about the album art that you want Elastic Transcoder to add
-- to the file during transcoding. You can specify up to twenty album
-- artworks for each output. Settings for each artwork must be defined in
-- the job for the current output.
--
-- 'encryption', 'createJobOutput_encryption' - You can specify encryption settings for any output files that you want
-- to use for a transcoding job. This includes the output file and any
-- watermarks, thumbnails, album art, or captions that you want to use. You
-- must specify encryption settings for each file individually.
--
-- 'rotate', 'createJobOutput_rotate' - The number of degrees clockwise by which you want Elastic Transcoder to
-- rotate the output relative to the input. Enter one of the following
-- values: @auto@, @0@, @90@, @180@, @270@. The value @auto@ generally
-- works only if the file that you\'re transcoding contains rotation
-- metadata.
--
-- 'composition', 'createJobOutput_composition' - You can create an output file that contains an excerpt from the input
-- file. This excerpt, called a clip, can come from the beginning, middle,
-- or end of the file. The Composition object contains settings for the
-- clips that make up an output file. For the current release, you can only
-- specify settings for a single clip per output file. The Composition
-- object cannot be null.
--
-- 'segmentDuration', 'createJobOutput_segmentDuration' - (Outputs in Fragmented MP4 or MPEG-TS format only.
--
-- If you specify a preset in @PresetId@ for which the value of @Container@
-- is @fmp4@ (Fragmented MP4) or @ts@ (MPEG-TS), @SegmentDuration@ is the
-- target maximum duration of each segment in seconds. For @HLSv3@ format
-- playlists, each media segment is stored in a separate @.ts@ file. For
-- @HLSv4@ and @Smooth@ playlists, all media segments for an output are
-- stored in a single file. Each segment is approximately the length of the
-- @SegmentDuration@, though individual segments might be shorter or
-- longer.
--
-- The range of valid values is 1 to 60 seconds. If the duration of the
-- video is not evenly divisible by @SegmentDuration@, the duration of the
-- last segment is the remainder of total length\/SegmentDuration.
--
-- Elastic Transcoder creates an output-specific playlist for each output
-- @HLS@ output that you specify in OutputKeys. To add an output to the
-- master playlist for this job, include it in the @OutputKeys@ of the
-- associated playlist.
--
-- 'captions', 'createJobOutput_captions' - You can configure Elastic Transcoder to transcode captions, or
-- subtitles, from one format to another. All captions must be in UTF-8.
-- Elastic Transcoder supports two types of captions:
--
-- -   __Embedded:__ Embedded captions are included in the same file as the
--     audio and video. Elastic Transcoder supports only one embedded
--     caption per language, to a maximum of 300 embedded captions per
--     file.
--
--     Valid input values include: @CEA-608 (EIA-608@, first non-empty
--     channel only), @CEA-708 (EIA-708@, first non-empty channel only),
--     and @mov-text@
--
--     Valid outputs include: @mov-text@
--
--     Elastic Transcoder supports a maximum of one embedded format per
--     output.
--
-- -   __Sidecar:__ Sidecar captions are kept in a separate metadata file
--     from the audio and video data. Sidecar captions require a player
--     that is capable of understanding the relationship between the video
--     file and the sidecar file. Elastic Transcoder supports only one
--     sidecar caption per language, to a maximum of 20 sidecar captions
--     per file.
--
--     Valid input values include: @dfxp@ (first div element only),
--     @ebu-tt@, @scc@, @smpt@, @srt@, @ttml@ (first div element only), and
--     @webvtt@
--
--     Valid outputs include: @dfxp@ (first div element only), @scc@,
--     @srt@, and @webvtt@.
--
-- If you want ttml or smpte-tt compatible captions, specify dfxp as your
-- output format.
--
-- Elastic Transcoder does not support OCR (Optical Character Recognition),
-- does not accept pictures as a valid input for captions, and is not
-- available for audio-only transcoding. Elastic Transcoder does not
-- preserve text formatting (for example, italics) during the transcoding
-- process.
--
-- To remove captions or leave the captions empty, set @Captions@ to null.
-- To pass through existing captions unchanged, set the @MergePolicy@ to
-- @MergeRetain@, and pass in a null @CaptionSources@ array.
--
-- For more information on embedded files, see the Subtitles Wikipedia
-- page.
--
-- For more information on sidecar files, see the Extensible Metadata
-- Platform and Sidecar file Wikipedia pages.
newCreateJobOutput ::
  CreateJobOutput
newCreateJobOutput =
  CreateJobOutput'
    { key = Core.Nothing,
      thumbnailPattern = Core.Nothing,
      thumbnailEncryption = Core.Nothing,
      watermarks = Core.Nothing,
      presetId = Core.Nothing,
      albumArt = Core.Nothing,
      encryption = Core.Nothing,
      rotate = Core.Nothing,
      composition = Core.Nothing,
      segmentDuration = Core.Nothing,
      captions = Core.Nothing
    }

-- | The name to assign to the transcoded file. Elastic Transcoder saves the
-- file in the Amazon S3 bucket specified by the @OutputBucket@ object in
-- the pipeline that is specified by the pipeline ID. If a file with the
-- specified name already exists in the output bucket, the job fails.
createJobOutput_key :: Lens.Lens' CreateJobOutput (Core.Maybe Core.Text)
createJobOutput_key = Lens.lens (\CreateJobOutput' {key} -> key) (\s@CreateJobOutput' {} a -> s {key = a} :: CreateJobOutput)

-- | Whether you want Elastic Transcoder to create thumbnails for your videos
-- and, if so, how you want Elastic Transcoder to name the files.
--
-- If you don\'t want Elastic Transcoder to create thumbnails, specify
-- \"\".
--
-- If you do want Elastic Transcoder to create thumbnails, specify the
-- information that you want to include in the file name for each
-- thumbnail. You can specify the following values in any sequence:
--
-- -   __@{count}@ (Required)__: If you want to create thumbnails, you must
--     include @{count}@ in the @ThumbnailPattern@ object. Wherever you
--     specify @{count}@, Elastic Transcoder adds a five-digit sequence
--     number (beginning with __00001__) to thumbnail file names. The
--     number indicates where a given thumbnail appears in the sequence of
--     thumbnails for a transcoded file.
--
--     If you specify a literal value and\/or @{resolution}@ but you omit
--     @{count}@, Elastic Transcoder returns a validation error and does
--     not create the job.
--
-- -   __Literal values (Optional)__: You can specify literal values
--     anywhere in the @ThumbnailPattern@ object. For example, you can
--     include them as a file name prefix or as a delimiter between
--     @{resolution}@ and @{count}@.
--
-- -   __@{resolution}@ (Optional)__: If you want Elastic Transcoder to
--     include the resolution in the file name, include @{resolution}@ in
--     the @ThumbnailPattern@ object.
--
-- When creating thumbnails, Elastic Transcoder automatically saves the
-- files in the format (.jpg or .png) that appears in the preset that you
-- specified in the @PresetID@ value of @CreateJobOutput@. Elastic
-- Transcoder also appends the applicable file name extension.
createJobOutput_thumbnailPattern :: Lens.Lens' CreateJobOutput (Core.Maybe Core.Text)
createJobOutput_thumbnailPattern = Lens.lens (\CreateJobOutput' {thumbnailPattern} -> thumbnailPattern) (\s@CreateJobOutput' {} a -> s {thumbnailPattern = a} :: CreateJobOutput)

-- | The encryption settings, if any, that you want Elastic Transcoder to
-- apply to your thumbnail.
createJobOutput_thumbnailEncryption :: Lens.Lens' CreateJobOutput (Core.Maybe Encryption)
createJobOutput_thumbnailEncryption = Lens.lens (\CreateJobOutput' {thumbnailEncryption} -> thumbnailEncryption) (\s@CreateJobOutput' {} a -> s {thumbnailEncryption = a} :: CreateJobOutput)

-- | Information about the watermarks that you want Elastic Transcoder to add
-- to the video during transcoding. You can specify up to four watermarks
-- for each output. Settings for each watermark must be defined in the
-- preset for the current output.
createJobOutput_watermarks :: Lens.Lens' CreateJobOutput (Core.Maybe [JobWatermark])
createJobOutput_watermarks = Lens.lens (\CreateJobOutput' {watermarks} -> watermarks) (\s@CreateJobOutput' {} a -> s {watermarks = a} :: CreateJobOutput) Core.. Lens.mapping Lens._Coerce

-- | The @Id@ of the preset to use for this job. The preset determines the
-- audio, video, and thumbnail settings that Elastic Transcoder uses for
-- transcoding.
createJobOutput_presetId :: Lens.Lens' CreateJobOutput (Core.Maybe Core.Text)
createJobOutput_presetId = Lens.lens (\CreateJobOutput' {presetId} -> presetId) (\s@CreateJobOutput' {} a -> s {presetId = a} :: CreateJobOutput)

-- | Information about the album art that you want Elastic Transcoder to add
-- to the file during transcoding. You can specify up to twenty album
-- artworks for each output. Settings for each artwork must be defined in
-- the job for the current output.
createJobOutput_albumArt :: Lens.Lens' CreateJobOutput (Core.Maybe JobAlbumArt)
createJobOutput_albumArt = Lens.lens (\CreateJobOutput' {albumArt} -> albumArt) (\s@CreateJobOutput' {} a -> s {albumArt = a} :: CreateJobOutput)

-- | You can specify encryption settings for any output files that you want
-- to use for a transcoding job. This includes the output file and any
-- watermarks, thumbnails, album art, or captions that you want to use. You
-- must specify encryption settings for each file individually.
createJobOutput_encryption :: Lens.Lens' CreateJobOutput (Core.Maybe Encryption)
createJobOutput_encryption = Lens.lens (\CreateJobOutput' {encryption} -> encryption) (\s@CreateJobOutput' {} a -> s {encryption = a} :: CreateJobOutput)

-- | The number of degrees clockwise by which you want Elastic Transcoder to
-- rotate the output relative to the input. Enter one of the following
-- values: @auto@, @0@, @90@, @180@, @270@. The value @auto@ generally
-- works only if the file that you\'re transcoding contains rotation
-- metadata.
createJobOutput_rotate :: Lens.Lens' CreateJobOutput (Core.Maybe Core.Text)
createJobOutput_rotate = Lens.lens (\CreateJobOutput' {rotate} -> rotate) (\s@CreateJobOutput' {} a -> s {rotate = a} :: CreateJobOutput)

-- | You can create an output file that contains an excerpt from the input
-- file. This excerpt, called a clip, can come from the beginning, middle,
-- or end of the file. The Composition object contains settings for the
-- clips that make up an output file. For the current release, you can only
-- specify settings for a single clip per output file. The Composition
-- object cannot be null.
createJobOutput_composition :: Lens.Lens' CreateJobOutput (Core.Maybe [Clip])
createJobOutput_composition = Lens.lens (\CreateJobOutput' {composition} -> composition) (\s@CreateJobOutput' {} a -> s {composition = a} :: CreateJobOutput) Core.. Lens.mapping Lens._Coerce

-- | (Outputs in Fragmented MP4 or MPEG-TS format only.
--
-- If you specify a preset in @PresetId@ for which the value of @Container@
-- is @fmp4@ (Fragmented MP4) or @ts@ (MPEG-TS), @SegmentDuration@ is the
-- target maximum duration of each segment in seconds. For @HLSv3@ format
-- playlists, each media segment is stored in a separate @.ts@ file. For
-- @HLSv4@ and @Smooth@ playlists, all media segments for an output are
-- stored in a single file. Each segment is approximately the length of the
-- @SegmentDuration@, though individual segments might be shorter or
-- longer.
--
-- The range of valid values is 1 to 60 seconds. If the duration of the
-- video is not evenly divisible by @SegmentDuration@, the duration of the
-- last segment is the remainder of total length\/SegmentDuration.
--
-- Elastic Transcoder creates an output-specific playlist for each output
-- @HLS@ output that you specify in OutputKeys. To add an output to the
-- master playlist for this job, include it in the @OutputKeys@ of the
-- associated playlist.
createJobOutput_segmentDuration :: Lens.Lens' CreateJobOutput (Core.Maybe Core.Text)
createJobOutput_segmentDuration = Lens.lens (\CreateJobOutput' {segmentDuration} -> segmentDuration) (\s@CreateJobOutput' {} a -> s {segmentDuration = a} :: CreateJobOutput)

-- | You can configure Elastic Transcoder to transcode captions, or
-- subtitles, from one format to another. All captions must be in UTF-8.
-- Elastic Transcoder supports two types of captions:
--
-- -   __Embedded:__ Embedded captions are included in the same file as the
--     audio and video. Elastic Transcoder supports only one embedded
--     caption per language, to a maximum of 300 embedded captions per
--     file.
--
--     Valid input values include: @CEA-608 (EIA-608@, first non-empty
--     channel only), @CEA-708 (EIA-708@, first non-empty channel only),
--     and @mov-text@
--
--     Valid outputs include: @mov-text@
--
--     Elastic Transcoder supports a maximum of one embedded format per
--     output.
--
-- -   __Sidecar:__ Sidecar captions are kept in a separate metadata file
--     from the audio and video data. Sidecar captions require a player
--     that is capable of understanding the relationship between the video
--     file and the sidecar file. Elastic Transcoder supports only one
--     sidecar caption per language, to a maximum of 20 sidecar captions
--     per file.
--
--     Valid input values include: @dfxp@ (first div element only),
--     @ebu-tt@, @scc@, @smpt@, @srt@, @ttml@ (first div element only), and
--     @webvtt@
--
--     Valid outputs include: @dfxp@ (first div element only), @scc@,
--     @srt@, and @webvtt@.
--
-- If you want ttml or smpte-tt compatible captions, specify dfxp as your
-- output format.
--
-- Elastic Transcoder does not support OCR (Optical Character Recognition),
-- does not accept pictures as a valid input for captions, and is not
-- available for audio-only transcoding. Elastic Transcoder does not
-- preserve text formatting (for example, italics) during the transcoding
-- process.
--
-- To remove captions or leave the captions empty, set @Captions@ to null.
-- To pass through existing captions unchanged, set the @MergePolicy@ to
-- @MergeRetain@, and pass in a null @CaptionSources@ array.
--
-- For more information on embedded files, see the Subtitles Wikipedia
-- page.
--
-- For more information on sidecar files, see the Extensible Metadata
-- Platform and Sidecar file Wikipedia pages.
createJobOutput_captions :: Lens.Lens' CreateJobOutput (Core.Maybe Captions)
createJobOutput_captions = Lens.lens (\CreateJobOutput' {captions} -> captions) (\s@CreateJobOutput' {} a -> s {captions = a} :: CreateJobOutput)

instance Core.Hashable CreateJobOutput

instance Core.NFData CreateJobOutput

instance Core.ToJSON CreateJobOutput where
  toJSON CreateJobOutput' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Key" Core..=) Core.<$> key,
            ("ThumbnailPattern" Core..=)
              Core.<$> thumbnailPattern,
            ("ThumbnailEncryption" Core..=)
              Core.<$> thumbnailEncryption,
            ("Watermarks" Core..=) Core.<$> watermarks,
            ("PresetId" Core..=) Core.<$> presetId,
            ("AlbumArt" Core..=) Core.<$> albumArt,
            ("Encryption" Core..=) Core.<$> encryption,
            ("Rotate" Core..=) Core.<$> rotate,
            ("Composition" Core..=) Core.<$> composition,
            ("SegmentDuration" Core..=) Core.<$> segmentDuration,
            ("Captions" Core..=) Core.<$> captions
          ]
      )
