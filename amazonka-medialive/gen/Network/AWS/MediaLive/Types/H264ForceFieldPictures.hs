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
-- Module      : Network.AWS.MediaLive.Types.H264ForceFieldPictures
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ForceFieldPictures
  ( H264ForceFieldPictures
      ( ..,
        H264ForceFieldPictures_DISABLED,
        H264ForceFieldPictures_ENABLED
      ),
  )
where

import qualified Network.AWS.Core as Core

-- | H264 Force Field Pictures
newtype H264ForceFieldPictures = H264ForceFieldPictures'
  { fromH264ForceFieldPictures ::
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

pattern H264ForceFieldPictures_DISABLED :: H264ForceFieldPictures
pattern H264ForceFieldPictures_DISABLED = H264ForceFieldPictures' "DISABLED"

pattern H264ForceFieldPictures_ENABLED :: H264ForceFieldPictures
pattern H264ForceFieldPictures_ENABLED = H264ForceFieldPictures' "ENABLED"

{-# COMPLETE
  H264ForceFieldPictures_DISABLED,
  H264ForceFieldPictures_ENABLED,
  H264ForceFieldPictures'
  #-}
