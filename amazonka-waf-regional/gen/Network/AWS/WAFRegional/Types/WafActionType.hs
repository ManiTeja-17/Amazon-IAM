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
-- Module      : Network.AWS.WAFRegional.Types.WafActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.WafActionType
  ( WafActionType
      ( ..,
        WafActionType_ALLOW,
        WafActionType_BLOCK,
        WafActionType_COUNT
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype WafActionType = WafActionType'
  { fromWafActionType ::
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

pattern WafActionType_ALLOW :: WafActionType
pattern WafActionType_ALLOW = WafActionType' "ALLOW"

pattern WafActionType_BLOCK :: WafActionType
pattern WafActionType_BLOCK = WafActionType' "BLOCK"

pattern WafActionType_COUNT :: WafActionType
pattern WafActionType_COUNT = WafActionType' "COUNT"

{-# COMPLETE
  WafActionType_ALLOW,
  WafActionType_BLOCK,
  WafActionType_COUNT,
  WafActionType'
  #-}
