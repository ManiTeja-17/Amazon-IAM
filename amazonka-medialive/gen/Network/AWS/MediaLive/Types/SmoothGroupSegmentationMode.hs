{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupSegmentationMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupSegmentationMode
  ( SmoothGroupSegmentationMode
      ( ..,
        SmoothGroupSegmentationMode_USE_INPUT_SEGMENTATION,
        SmoothGroupSegmentationMode_USE_SEGMENT_DURATION
      ),
  )
where

import qualified Network.AWS.Core as Core

-- | Smooth Group Segmentation Mode
newtype SmoothGroupSegmentationMode = SmoothGroupSegmentationMode'
  { fromSmoothGroupSegmentationMode ::
      Core.Text
  }
  deriving stock
    ( Core.Show,
      Core.Read,
      Core.Eq,
      Core.Ord,
      Core.Generic
    )
  deriving newtype
    ( Core.Hashable,
      Core.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern SmoothGroupSegmentationMode_USE_INPUT_SEGMENTATION :: SmoothGroupSegmentationMode
pattern SmoothGroupSegmentationMode_USE_INPUT_SEGMENTATION = SmoothGroupSegmentationMode' "USE_INPUT_SEGMENTATION"

pattern SmoothGroupSegmentationMode_USE_SEGMENT_DURATION :: SmoothGroupSegmentationMode
pattern SmoothGroupSegmentationMode_USE_SEGMENT_DURATION = SmoothGroupSegmentationMode' "USE_SEGMENT_DURATION"

{-# COMPLETE
  SmoothGroupSegmentationMode_USE_INPUT_SEGMENTATION,
  SmoothGroupSegmentationMode_USE_SEGMENT_DURATION,
  SmoothGroupSegmentationMode'
  #-}
