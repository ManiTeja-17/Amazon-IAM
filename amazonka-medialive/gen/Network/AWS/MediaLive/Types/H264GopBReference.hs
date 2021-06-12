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
-- Module      : Network.AWS.MediaLive.Types.H264GopBReference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264GopBReference
  ( H264GopBReference
      ( ..,
        H264GopBReference_DISABLED,
        H264GopBReference_ENABLED
      ),
  )
where

import qualified Network.AWS.Core as Core

-- | H264 Gop BReference
newtype H264GopBReference = H264GopBReference'
  { fromH264GopBReference ::
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

pattern H264GopBReference_DISABLED :: H264GopBReference
pattern H264GopBReference_DISABLED = H264GopBReference' "DISABLED"

pattern H264GopBReference_ENABLED :: H264GopBReference
pattern H264GopBReference_ENABLED = H264GopBReference' "ENABLED"

{-# COMPLETE
  H264GopBReference_DISABLED,
  H264GopBReference_ENABLED,
  H264GopBReference'
  #-}
