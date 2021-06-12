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
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionArtifactType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSessionArtifactType
  ( TestGridSessionArtifactType
      ( ..,
        TestGridSessionArtifactType_SELENIUM_LOG,
        TestGridSessionArtifactType_UNKNOWN,
        TestGridSessionArtifactType_VIDEO
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype TestGridSessionArtifactType = TestGridSessionArtifactType'
  { fromTestGridSessionArtifactType ::
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

pattern TestGridSessionArtifactType_SELENIUM_LOG :: TestGridSessionArtifactType
pattern TestGridSessionArtifactType_SELENIUM_LOG = TestGridSessionArtifactType' "SELENIUM_LOG"

pattern TestGridSessionArtifactType_UNKNOWN :: TestGridSessionArtifactType
pattern TestGridSessionArtifactType_UNKNOWN = TestGridSessionArtifactType' "UNKNOWN"

pattern TestGridSessionArtifactType_VIDEO :: TestGridSessionArtifactType
pattern TestGridSessionArtifactType_VIDEO = TestGridSessionArtifactType' "VIDEO"

{-# COMPLETE
  TestGridSessionArtifactType_SELENIUM_LOG,
  TestGridSessionArtifactType_UNKNOWN,
  TestGridSessionArtifactType_VIDEO,
  TestGridSessionArtifactType'
  #-}
