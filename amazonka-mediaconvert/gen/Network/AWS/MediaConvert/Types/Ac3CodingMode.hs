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
-- Module      : Network.AWS.MediaConvert.Types.Ac3CodingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Ac3CodingMode
  ( Ac3CodingMode
      ( ..,
        Ac3CodingMode_CODING_MODE_1_0,
        Ac3CodingMode_CODING_MODE_1_1,
        Ac3CodingMode_CODING_MODE_2_0,
        Ac3CodingMode_CODING_MODE_3_2_LFE
      ),
  )
where

import qualified Network.AWS.Core as Core

-- | Dolby Digital coding mode. Determines number of channels.
newtype Ac3CodingMode = Ac3CodingMode'
  { fromAc3CodingMode ::
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

pattern Ac3CodingMode_CODING_MODE_1_0 :: Ac3CodingMode
pattern Ac3CodingMode_CODING_MODE_1_0 = Ac3CodingMode' "CODING_MODE_1_0"

pattern Ac3CodingMode_CODING_MODE_1_1 :: Ac3CodingMode
pattern Ac3CodingMode_CODING_MODE_1_1 = Ac3CodingMode' "CODING_MODE_1_1"

pattern Ac3CodingMode_CODING_MODE_2_0 :: Ac3CodingMode
pattern Ac3CodingMode_CODING_MODE_2_0 = Ac3CodingMode' "CODING_MODE_2_0"

pattern Ac3CodingMode_CODING_MODE_3_2_LFE :: Ac3CodingMode
pattern Ac3CodingMode_CODING_MODE_3_2_LFE = Ac3CodingMode' "CODING_MODE_3_2_LFE"

{-# COMPLETE
  Ac3CodingMode_CODING_MODE_1_0,
  Ac3CodingMode_CODING_MODE_1_1,
  Ac3CodingMode_CODING_MODE_2_0,
  Ac3CodingMode_CODING_MODE_3_2_LFE,
  Ac3CodingMode'
  #-}
