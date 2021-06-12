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
-- Module      : Network.AWS.WorkDocs.Types.FolderContentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.FolderContentType
  ( FolderContentType
      ( ..,
        FolderContentType_ALL,
        FolderContentType_DOCUMENT,
        FolderContentType_FOLDER
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype FolderContentType = FolderContentType'
  { fromFolderContentType ::
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

pattern FolderContentType_ALL :: FolderContentType
pattern FolderContentType_ALL = FolderContentType' "ALL"

pattern FolderContentType_DOCUMENT :: FolderContentType
pattern FolderContentType_DOCUMENT = FolderContentType' "DOCUMENT"

pattern FolderContentType_FOLDER :: FolderContentType
pattern FolderContentType_FOLDER = FolderContentType' "FOLDER"

{-# COMPLETE
  FolderContentType_ALL,
  FolderContentType_DOCUMENT,
  FolderContentType_FOLDER,
  FolderContentType'
  #-}
