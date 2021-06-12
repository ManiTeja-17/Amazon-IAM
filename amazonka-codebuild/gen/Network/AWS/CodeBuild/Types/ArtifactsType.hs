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
-- Module      : Network.AWS.CodeBuild.Types.ArtifactsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ArtifactsType
  ( ArtifactsType
      ( ..,
        ArtifactsType_CODEPIPELINE,
        ArtifactsType_NO_ARTIFACTS,
        ArtifactsType_S3
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype ArtifactsType = ArtifactsType'
  { fromArtifactsType ::
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

pattern ArtifactsType_CODEPIPELINE :: ArtifactsType
pattern ArtifactsType_CODEPIPELINE = ArtifactsType' "CODEPIPELINE"

pattern ArtifactsType_NO_ARTIFACTS :: ArtifactsType
pattern ArtifactsType_NO_ARTIFACTS = ArtifactsType' "NO_ARTIFACTS"

pattern ArtifactsType_S3 :: ArtifactsType
pattern ArtifactsType_S3 = ArtifactsType' "S3"

{-# COMPLETE
  ArtifactsType_CODEPIPELINE,
  ArtifactsType_NO_ARTIFACTS,
  ArtifactsType_S3,
  ArtifactsType'
  #-}
