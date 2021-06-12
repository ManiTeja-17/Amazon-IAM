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
-- Module      : Network.AWS.CloudTrail.Types.ReadWriteType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.ReadWriteType
  ( ReadWriteType
      ( ..,
        ReadWriteType_All,
        ReadWriteType_ReadOnly,
        ReadWriteType_WriteOnly
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype ReadWriteType = ReadWriteType'
  { fromReadWriteType ::
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

pattern ReadWriteType_All :: ReadWriteType
pattern ReadWriteType_All = ReadWriteType' "All"

pattern ReadWriteType_ReadOnly :: ReadWriteType
pattern ReadWriteType_ReadOnly = ReadWriteType' "ReadOnly"

pattern ReadWriteType_WriteOnly :: ReadWriteType
pattern ReadWriteType_WriteOnly = ReadWriteType' "WriteOnly"

{-# COMPLETE
  ReadWriteType_All,
  ReadWriteType_ReadOnly,
  ReadWriteType_WriteOnly,
  ReadWriteType'
  #-}
