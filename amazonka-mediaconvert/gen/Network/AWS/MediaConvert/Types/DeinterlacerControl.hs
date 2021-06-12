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
-- Module      : Network.AWS.MediaConvert.Types.DeinterlacerControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DeinterlacerControl
  ( DeinterlacerControl
      ( ..,
        DeinterlacerControl_FORCE_ALL_FRAMES,
        DeinterlacerControl_NORMAL
      ),
  )
where

import qualified Network.AWS.Core as Core

-- | - When set to NORMAL (default), the deinterlacer does not convert frames
-- that are tagged in metadata as progressive. It will only convert those
-- that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the
-- deinterlacer converts every frame to progressive - even those that are
-- already tagged as progressive. Turn Force mode on only if there is a
-- good chance that the metadata has tagged frames as progressive when they
-- are not progressive. Do not turn on otherwise; processing frames that
-- are already progressive into progressive will probably result in lower
-- quality video.
newtype DeinterlacerControl = DeinterlacerControl'
  { fromDeinterlacerControl ::
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

pattern DeinterlacerControl_FORCE_ALL_FRAMES :: DeinterlacerControl
pattern DeinterlacerControl_FORCE_ALL_FRAMES = DeinterlacerControl' "FORCE_ALL_FRAMES"

pattern DeinterlacerControl_NORMAL :: DeinterlacerControl
pattern DeinterlacerControl_NORMAL = DeinterlacerControl' "NORMAL"

{-# COMPLETE
  DeinterlacerControl_FORCE_ALL_FRAMES,
  DeinterlacerControl_NORMAL,
  DeinterlacerControl'
  #-}
