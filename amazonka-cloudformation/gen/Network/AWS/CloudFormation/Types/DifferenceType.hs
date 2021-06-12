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
-- Module      : Network.AWS.CloudFormation.Types.DifferenceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.DifferenceType
  ( DifferenceType
      ( ..,
        DifferenceType_ADD,
        DifferenceType_NOT_EQUAL,
        DifferenceType_REMOVE
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype DifferenceType = DifferenceType'
  { fromDifferenceType ::
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

pattern DifferenceType_ADD :: DifferenceType
pattern DifferenceType_ADD = DifferenceType' "ADD"

pattern DifferenceType_NOT_EQUAL :: DifferenceType
pattern DifferenceType_NOT_EQUAL = DifferenceType' "NOT_EQUAL"

pattern DifferenceType_REMOVE :: DifferenceType
pattern DifferenceType_REMOVE = DifferenceType' "REMOVE"

{-# COMPLETE
  DifferenceType_ADD,
  DifferenceType_NOT_EQUAL,
  DifferenceType_REMOVE,
  DifferenceType'
  #-}
