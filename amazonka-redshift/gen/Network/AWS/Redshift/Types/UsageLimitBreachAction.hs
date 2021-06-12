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
-- Module      : Network.AWS.Redshift.Types.UsageLimitBreachAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.UsageLimitBreachAction
  ( UsageLimitBreachAction
      ( ..,
        UsageLimitBreachAction_Disable,
        UsageLimitBreachAction_Emit_metric,
        UsageLimitBreachAction_Log
      ),
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Redshift.Internal

newtype UsageLimitBreachAction = UsageLimitBreachAction'
  { fromUsageLimitBreachAction ::
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

pattern UsageLimitBreachAction_Disable :: UsageLimitBreachAction
pattern UsageLimitBreachAction_Disable = UsageLimitBreachAction' "disable"

pattern UsageLimitBreachAction_Emit_metric :: UsageLimitBreachAction
pattern UsageLimitBreachAction_Emit_metric = UsageLimitBreachAction' "emit-metric"

pattern UsageLimitBreachAction_Log :: UsageLimitBreachAction
pattern UsageLimitBreachAction_Log = UsageLimitBreachAction' "log"

{-# COMPLETE
  UsageLimitBreachAction_Disable,
  UsageLimitBreachAction_Emit_metric,
  UsageLimitBreachAction_Log,
  UsageLimitBreachAction'
  #-}
