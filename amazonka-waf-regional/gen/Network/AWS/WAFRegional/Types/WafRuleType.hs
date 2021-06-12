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
-- Module      : Network.AWS.WAFRegional.Types.WafRuleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.WafRuleType
  ( WafRuleType
      ( ..,
        WafRuleType_GROUP,
        WafRuleType_RATE_BASED,
        WafRuleType_REGULAR
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype WafRuleType = WafRuleType'
  { fromWafRuleType ::
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

pattern WafRuleType_GROUP :: WafRuleType
pattern WafRuleType_GROUP = WafRuleType' "GROUP"

pattern WafRuleType_RATE_BASED :: WafRuleType
pattern WafRuleType_RATE_BASED = WafRuleType' "RATE_BASED"

pattern WafRuleType_REGULAR :: WafRuleType
pattern WafRuleType_REGULAR = WafRuleType' "REGULAR"

{-# COMPLETE
  WafRuleType_GROUP,
  WafRuleType_RATE_BASED,
  WafRuleType_REGULAR,
  WafRuleType'
  #-}
