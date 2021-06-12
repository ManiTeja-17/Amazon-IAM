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
-- Module      : Network.AWS.Rekognition.Types.TextDetectionResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.TextDetectionResult where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Rekognition.Types.TextDetection

-- | Information about text detected in a video. Incudes the detected text,
-- the time in milliseconds from the start of the video that the text was
-- detected, and where it was detected on the screen.
--
-- /See:/ 'newTextDetectionResult' smart constructor.
data TextDetectionResult = TextDetectionResult'
  { -- | Details about text detected in a video.
    textDetection :: Core.Maybe TextDetection,
    -- | The time, in milliseconds from the start of the video, that the text was
    -- detected.
    timestamp :: Core.Maybe Core.Integer
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TextDetectionResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textDetection', 'textDetectionResult_textDetection' - Details about text detected in a video.
--
-- 'timestamp', 'textDetectionResult_timestamp' - The time, in milliseconds from the start of the video, that the text was
-- detected.
newTextDetectionResult ::
  TextDetectionResult
newTextDetectionResult =
  TextDetectionResult'
    { textDetection = Core.Nothing,
      timestamp = Core.Nothing
    }

-- | Details about text detected in a video.
textDetectionResult_textDetection :: Lens.Lens' TextDetectionResult (Core.Maybe TextDetection)
textDetectionResult_textDetection = Lens.lens (\TextDetectionResult' {textDetection} -> textDetection) (\s@TextDetectionResult' {} a -> s {textDetection = a} :: TextDetectionResult)

-- | The time, in milliseconds from the start of the video, that the text was
-- detected.
textDetectionResult_timestamp :: Lens.Lens' TextDetectionResult (Core.Maybe Core.Integer)
textDetectionResult_timestamp = Lens.lens (\TextDetectionResult' {timestamp} -> timestamp) (\s@TextDetectionResult' {} a -> s {timestamp = a} :: TextDetectionResult)

instance Core.FromJSON TextDetectionResult where
  parseJSON =
    Core.withObject
      "TextDetectionResult"
      ( \x ->
          TextDetectionResult'
            Core.<$> (x Core..:? "TextDetection")
            Core.<*> (x Core..:? "Timestamp")
      )

instance Core.Hashable TextDetectionResult

instance Core.NFData TextDetectionResult
