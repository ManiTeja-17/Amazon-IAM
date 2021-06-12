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
-- Module      : Network.AWS.Polly.StartSpeechSynthesisTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the creation of an asynchronous synthesis task, by starting a new
-- @SpeechSynthesisTask@. This operation requires all the standard
-- information needed for speech synthesis, plus the name of an Amazon S3
-- bucket for the service to store the output of the synthesis task and two
-- optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the
-- synthesis task is created, this operation will return a
-- SpeechSynthesisTask object, which will include an identifier of this
-- task as well as the current status.
module Network.AWS.Polly.StartSpeechSynthesisTask
  ( -- * Creating a Request
    StartSpeechSynthesisTask (..),
    newStartSpeechSynthesisTask,

    -- * Request Lenses
    startSpeechSynthesisTask_languageCode,
    startSpeechSynthesisTask_speechMarkTypes,
    startSpeechSynthesisTask_lexiconNames,
    startSpeechSynthesisTask_textType,
    startSpeechSynthesisTask_sampleRate,
    startSpeechSynthesisTask_engine,
    startSpeechSynthesisTask_outputS3KeyPrefix,
    startSpeechSynthesisTask_snsTopicArn,
    startSpeechSynthesisTask_outputFormat,
    startSpeechSynthesisTask_outputS3BucketName,
    startSpeechSynthesisTask_text,
    startSpeechSynthesisTask_voiceId,

    -- * Destructuring the Response
    StartSpeechSynthesisTaskResponse (..),
    newStartSpeechSynthesisTaskResponse,

    -- * Response Lenses
    startSpeechSynthesisTaskResponse_synthesisTask,
    startSpeechSynthesisTaskResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Polly.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartSpeechSynthesisTask' smart constructor.
data StartSpeechSynthesisTask = StartSpeechSynthesisTask'
  { -- | Optional language code for the Speech Synthesis request. This is only
    -- necessary if using a bilingual voice, such as Aditi, which can be used
    -- for either Indian English (en-IN) or Hindi (hi-IN).
    --
    -- If a bilingual voice is used and no language code is specified, Amazon
    -- Polly will use the default language of the bilingual voice. The default
    -- language for any voice is the one returned by the
    -- <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices>
    -- operation for the @LanguageCode@ parameter. For example, if no language
    -- code is specified, Aditi will use Indian English rather than Hindi.
    languageCode :: Core.Maybe LanguageCode,
    -- | The type of speech marks returned for the input text.
    speechMarkTypes :: Core.Maybe [SpeechMarkType],
    -- | List of one or more pronunciation lexicon names you want the service to
    -- apply during synthesis. Lexicons are applied only if the language of the
    -- lexicon is the same as the language of the voice.
    lexiconNames :: Core.Maybe [Core.Text],
    -- | Specifies whether the input text is plain text or SSML. The default
    -- value is plain text.
    textType :: Core.Maybe TextType,
    -- | The audio frequency specified in Hz.
    --
    -- The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\",
    -- \"22050\", and \"24000\". The default value for standard voices is
    -- \"22050\". The default value for neural voices is \"24000\".
    --
    -- Valid values for pcm are \"8000\" and \"16000\" The default value is
    -- \"16000\".
    sampleRate :: Core.Maybe Core.Text,
    -- | Specifies the engine (@standard@ or @neural@) for Amazon Polly to use
    -- when processing input text for speech synthesis. Using a voice that is
    -- not supported for the engine selected will result in an error.
    engine :: Core.Maybe Engine,
    -- | The Amazon S3 key prefix for the output speech file.
    outputS3KeyPrefix :: Core.Maybe Core.Text,
    -- | ARN for the SNS topic optionally used for providing status notification
    -- for a speech synthesis task.
    snsTopicArn :: Core.Maybe Core.Text,
    -- | The format in which the returned output will be encoded. For audio
    -- stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this
    -- will be json.
    outputFormat :: OutputFormat,
    -- | Amazon S3 bucket name to which the output file will be saved.
    outputS3BucketName :: Core.Text,
    -- | The input text to synthesize. If you specify ssml as the TextType,
    -- follow the SSML format for the input text.
    text :: Core.Text,
    -- | Voice ID to use for the synthesis.
    voiceId :: VoiceId
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StartSpeechSynthesisTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'languageCode', 'startSpeechSynthesisTask_languageCode' - Optional language code for the Speech Synthesis request. This is only
-- necessary if using a bilingual voice, such as Aditi, which can be used
-- for either Indian English (en-IN) or Hindi (hi-IN).
--
-- If a bilingual voice is used and no language code is specified, Amazon
-- Polly will use the default language of the bilingual voice. The default
-- language for any voice is the one returned by the
-- <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices>
-- operation for the @LanguageCode@ parameter. For example, if no language
-- code is specified, Aditi will use Indian English rather than Hindi.
--
-- 'speechMarkTypes', 'startSpeechSynthesisTask_speechMarkTypes' - The type of speech marks returned for the input text.
--
-- 'lexiconNames', 'startSpeechSynthesisTask_lexiconNames' - List of one or more pronunciation lexicon names you want the service to
-- apply during synthesis. Lexicons are applied only if the language of the
-- lexicon is the same as the language of the voice.
--
-- 'textType', 'startSpeechSynthesisTask_textType' - Specifies whether the input text is plain text or SSML. The default
-- value is plain text.
--
-- 'sampleRate', 'startSpeechSynthesisTask_sampleRate' - The audio frequency specified in Hz.
--
-- The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\",
-- \"22050\", and \"24000\". The default value for standard voices is
-- \"22050\". The default value for neural voices is \"24000\".
--
-- Valid values for pcm are \"8000\" and \"16000\" The default value is
-- \"16000\".
--
-- 'engine', 'startSpeechSynthesisTask_engine' - Specifies the engine (@standard@ or @neural@) for Amazon Polly to use
-- when processing input text for speech synthesis. Using a voice that is
-- not supported for the engine selected will result in an error.
--
-- 'outputS3KeyPrefix', 'startSpeechSynthesisTask_outputS3KeyPrefix' - The Amazon S3 key prefix for the output speech file.
--
-- 'snsTopicArn', 'startSpeechSynthesisTask_snsTopicArn' - ARN for the SNS topic optionally used for providing status notification
-- for a speech synthesis task.
--
-- 'outputFormat', 'startSpeechSynthesisTask_outputFormat' - The format in which the returned output will be encoded. For audio
-- stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this
-- will be json.
--
-- 'outputS3BucketName', 'startSpeechSynthesisTask_outputS3BucketName' - Amazon S3 bucket name to which the output file will be saved.
--
-- 'text', 'startSpeechSynthesisTask_text' - The input text to synthesize. If you specify ssml as the TextType,
-- follow the SSML format for the input text.
--
-- 'voiceId', 'startSpeechSynthesisTask_voiceId' - Voice ID to use for the synthesis.
newStartSpeechSynthesisTask ::
  -- | 'outputFormat'
  OutputFormat ->
  -- | 'outputS3BucketName'
  Core.Text ->
  -- | 'text'
  Core.Text ->
  -- | 'voiceId'
  VoiceId ->
  StartSpeechSynthesisTask
newStartSpeechSynthesisTask
  pOutputFormat_
  pOutputS3BucketName_
  pText_
  pVoiceId_ =
    StartSpeechSynthesisTask'
      { languageCode =
          Core.Nothing,
        speechMarkTypes = Core.Nothing,
        lexiconNames = Core.Nothing,
        textType = Core.Nothing,
        sampleRate = Core.Nothing,
        engine = Core.Nothing,
        outputS3KeyPrefix = Core.Nothing,
        snsTopicArn = Core.Nothing,
        outputFormat = pOutputFormat_,
        outputS3BucketName = pOutputS3BucketName_,
        text = pText_,
        voiceId = pVoiceId_
      }

-- | Optional language code for the Speech Synthesis request. This is only
-- necessary if using a bilingual voice, such as Aditi, which can be used
-- for either Indian English (en-IN) or Hindi (hi-IN).
--
-- If a bilingual voice is used and no language code is specified, Amazon
-- Polly will use the default language of the bilingual voice. The default
-- language for any voice is the one returned by the
-- <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices>
-- operation for the @LanguageCode@ parameter. For example, if no language
-- code is specified, Aditi will use Indian English rather than Hindi.
startSpeechSynthesisTask_languageCode :: Lens.Lens' StartSpeechSynthesisTask (Core.Maybe LanguageCode)
startSpeechSynthesisTask_languageCode = Lens.lens (\StartSpeechSynthesisTask' {languageCode} -> languageCode) (\s@StartSpeechSynthesisTask' {} a -> s {languageCode = a} :: StartSpeechSynthesisTask)

-- | The type of speech marks returned for the input text.
startSpeechSynthesisTask_speechMarkTypes :: Lens.Lens' StartSpeechSynthesisTask (Core.Maybe [SpeechMarkType])
startSpeechSynthesisTask_speechMarkTypes = Lens.lens (\StartSpeechSynthesisTask' {speechMarkTypes} -> speechMarkTypes) (\s@StartSpeechSynthesisTask' {} a -> s {speechMarkTypes = a} :: StartSpeechSynthesisTask) Core.. Lens.mapping Lens._Coerce

-- | List of one or more pronunciation lexicon names you want the service to
-- apply during synthesis. Lexicons are applied only if the language of the
-- lexicon is the same as the language of the voice.
startSpeechSynthesisTask_lexiconNames :: Lens.Lens' StartSpeechSynthesisTask (Core.Maybe [Core.Text])
startSpeechSynthesisTask_lexiconNames = Lens.lens (\StartSpeechSynthesisTask' {lexiconNames} -> lexiconNames) (\s@StartSpeechSynthesisTask' {} a -> s {lexiconNames = a} :: StartSpeechSynthesisTask) Core.. Lens.mapping Lens._Coerce

-- | Specifies whether the input text is plain text or SSML. The default
-- value is plain text.
startSpeechSynthesisTask_textType :: Lens.Lens' StartSpeechSynthesisTask (Core.Maybe TextType)
startSpeechSynthesisTask_textType = Lens.lens (\StartSpeechSynthesisTask' {textType} -> textType) (\s@StartSpeechSynthesisTask' {} a -> s {textType = a} :: StartSpeechSynthesisTask)

-- | The audio frequency specified in Hz.
--
-- The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\",
-- \"22050\", and \"24000\". The default value for standard voices is
-- \"22050\". The default value for neural voices is \"24000\".
--
-- Valid values for pcm are \"8000\" and \"16000\" The default value is
-- \"16000\".
startSpeechSynthesisTask_sampleRate :: Lens.Lens' StartSpeechSynthesisTask (Core.Maybe Core.Text)
startSpeechSynthesisTask_sampleRate = Lens.lens (\StartSpeechSynthesisTask' {sampleRate} -> sampleRate) (\s@StartSpeechSynthesisTask' {} a -> s {sampleRate = a} :: StartSpeechSynthesisTask)

-- | Specifies the engine (@standard@ or @neural@) for Amazon Polly to use
-- when processing input text for speech synthesis. Using a voice that is
-- not supported for the engine selected will result in an error.
startSpeechSynthesisTask_engine :: Lens.Lens' StartSpeechSynthesisTask (Core.Maybe Engine)
startSpeechSynthesisTask_engine = Lens.lens (\StartSpeechSynthesisTask' {engine} -> engine) (\s@StartSpeechSynthesisTask' {} a -> s {engine = a} :: StartSpeechSynthesisTask)

-- | The Amazon S3 key prefix for the output speech file.
startSpeechSynthesisTask_outputS3KeyPrefix :: Lens.Lens' StartSpeechSynthesisTask (Core.Maybe Core.Text)
startSpeechSynthesisTask_outputS3KeyPrefix = Lens.lens (\StartSpeechSynthesisTask' {outputS3KeyPrefix} -> outputS3KeyPrefix) (\s@StartSpeechSynthesisTask' {} a -> s {outputS3KeyPrefix = a} :: StartSpeechSynthesisTask)

-- | ARN for the SNS topic optionally used for providing status notification
-- for a speech synthesis task.
startSpeechSynthesisTask_snsTopicArn :: Lens.Lens' StartSpeechSynthesisTask (Core.Maybe Core.Text)
startSpeechSynthesisTask_snsTopicArn = Lens.lens (\StartSpeechSynthesisTask' {snsTopicArn} -> snsTopicArn) (\s@StartSpeechSynthesisTask' {} a -> s {snsTopicArn = a} :: StartSpeechSynthesisTask)

-- | The format in which the returned output will be encoded. For audio
-- stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this
-- will be json.
startSpeechSynthesisTask_outputFormat :: Lens.Lens' StartSpeechSynthesisTask OutputFormat
startSpeechSynthesisTask_outputFormat = Lens.lens (\StartSpeechSynthesisTask' {outputFormat} -> outputFormat) (\s@StartSpeechSynthesisTask' {} a -> s {outputFormat = a} :: StartSpeechSynthesisTask)

-- | Amazon S3 bucket name to which the output file will be saved.
startSpeechSynthesisTask_outputS3BucketName :: Lens.Lens' StartSpeechSynthesisTask Core.Text
startSpeechSynthesisTask_outputS3BucketName = Lens.lens (\StartSpeechSynthesisTask' {outputS3BucketName} -> outputS3BucketName) (\s@StartSpeechSynthesisTask' {} a -> s {outputS3BucketName = a} :: StartSpeechSynthesisTask)

-- | The input text to synthesize. If you specify ssml as the TextType,
-- follow the SSML format for the input text.
startSpeechSynthesisTask_text :: Lens.Lens' StartSpeechSynthesisTask Core.Text
startSpeechSynthesisTask_text = Lens.lens (\StartSpeechSynthesisTask' {text} -> text) (\s@StartSpeechSynthesisTask' {} a -> s {text = a} :: StartSpeechSynthesisTask)

-- | Voice ID to use for the synthesis.
startSpeechSynthesisTask_voiceId :: Lens.Lens' StartSpeechSynthesisTask VoiceId
startSpeechSynthesisTask_voiceId = Lens.lens (\StartSpeechSynthesisTask' {voiceId} -> voiceId) (\s@StartSpeechSynthesisTask' {} a -> s {voiceId = a} :: StartSpeechSynthesisTask)

instance Core.AWSRequest StartSpeechSynthesisTask where
  type
    AWSResponse StartSpeechSynthesisTask =
      StartSpeechSynthesisTaskResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartSpeechSynthesisTaskResponse'
            Core.<$> (x Core..?> "SynthesisTask")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable StartSpeechSynthesisTask

instance Core.NFData StartSpeechSynthesisTask

instance Core.ToHeaders StartSpeechSynthesisTask where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON StartSpeechSynthesisTask where
  toJSON StartSpeechSynthesisTask' {..} =
    Core.object
      ( Core.catMaybes
          [ ("LanguageCode" Core..=) Core.<$> languageCode,
            ("SpeechMarkTypes" Core..=) Core.<$> speechMarkTypes,
            ("LexiconNames" Core..=) Core.<$> lexiconNames,
            ("TextType" Core..=) Core.<$> textType,
            ("SampleRate" Core..=) Core.<$> sampleRate,
            ("Engine" Core..=) Core.<$> engine,
            ("OutputS3KeyPrefix" Core..=)
              Core.<$> outputS3KeyPrefix,
            ("SnsTopicArn" Core..=) Core.<$> snsTopicArn,
            Core.Just ("OutputFormat" Core..= outputFormat),
            Core.Just
              ("OutputS3BucketName" Core..= outputS3BucketName),
            Core.Just ("Text" Core..= text),
            Core.Just ("VoiceId" Core..= voiceId)
          ]
      )

instance Core.ToPath StartSpeechSynthesisTask where
  toPath = Core.const "/v1/synthesisTasks"

instance Core.ToQuery StartSpeechSynthesisTask where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newStartSpeechSynthesisTaskResponse' smart constructor.
data StartSpeechSynthesisTaskResponse = StartSpeechSynthesisTaskResponse'
  { -- | SynthesisTask object that provides information and attributes about a
    -- newly submitted speech synthesis task.
    synthesisTask :: Core.Maybe SynthesisTask,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StartSpeechSynthesisTaskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'synthesisTask', 'startSpeechSynthesisTaskResponse_synthesisTask' - SynthesisTask object that provides information and attributes about a
-- newly submitted speech synthesis task.
--
-- 'httpStatus', 'startSpeechSynthesisTaskResponse_httpStatus' - The response's http status code.
newStartSpeechSynthesisTaskResponse ::
  -- | 'httpStatus'
  Core.Int ->
  StartSpeechSynthesisTaskResponse
newStartSpeechSynthesisTaskResponse pHttpStatus_ =
  StartSpeechSynthesisTaskResponse'
    { synthesisTask =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | SynthesisTask object that provides information and attributes about a
-- newly submitted speech synthesis task.
startSpeechSynthesisTaskResponse_synthesisTask :: Lens.Lens' StartSpeechSynthesisTaskResponse (Core.Maybe SynthesisTask)
startSpeechSynthesisTaskResponse_synthesisTask = Lens.lens (\StartSpeechSynthesisTaskResponse' {synthesisTask} -> synthesisTask) (\s@StartSpeechSynthesisTaskResponse' {} a -> s {synthesisTask = a} :: StartSpeechSynthesisTaskResponse)

-- | The response's http status code.
startSpeechSynthesisTaskResponse_httpStatus :: Lens.Lens' StartSpeechSynthesisTaskResponse Core.Int
startSpeechSynthesisTaskResponse_httpStatus = Lens.lens (\StartSpeechSynthesisTaskResponse' {httpStatus} -> httpStatus) (\s@StartSpeechSynthesisTaskResponse' {} a -> s {httpStatus = a} :: StartSpeechSynthesisTaskResponse)

instance Core.NFData StartSpeechSynthesisTaskResponse
