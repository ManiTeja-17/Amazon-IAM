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
-- Module      : Network.AWS.MediaConvert.Types.CmafInitializationVectorInManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafInitializationVectorInManifest
  ( CmafInitializationVectorInManifest
      ( ..,
        CmafInitializationVectorInManifest_EXCLUDE,
        CmafInitializationVectorInManifest_INCLUDE
      ),
  )
where

import qualified Network.AWS.Core as Core

-- | When you use DRM with CMAF outputs, choose whether the service writes
-- the 128-bit encryption initialization vector in the HLS and DASH
-- manifests.
newtype CmafInitializationVectorInManifest = CmafInitializationVectorInManifest'
  { fromCmafInitializationVectorInManifest ::
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

pattern CmafInitializationVectorInManifest_EXCLUDE :: CmafInitializationVectorInManifest
pattern CmafInitializationVectorInManifest_EXCLUDE = CmafInitializationVectorInManifest' "EXCLUDE"

pattern CmafInitializationVectorInManifest_INCLUDE :: CmafInitializationVectorInManifest
pattern CmafInitializationVectorInManifest_INCLUDE = CmafInitializationVectorInManifest' "INCLUDE"

{-# COMPLETE
  CmafInitializationVectorInManifest_EXCLUDE,
  CmafInitializationVectorInManifest_INCLUDE,
  CmafInitializationVectorInManifest'
  #-}
