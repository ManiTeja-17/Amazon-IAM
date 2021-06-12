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
-- Module      : Network.AWS.CloudWatchEvents.Types.EventSourceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.EventSourceState
  ( EventSourceState
      ( ..,
        EventSourceState_ACTIVE,
        EventSourceState_DELETED,
        EventSourceState_PENDING
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype EventSourceState = EventSourceState'
  { fromEventSourceState ::
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

pattern EventSourceState_ACTIVE :: EventSourceState
pattern EventSourceState_ACTIVE = EventSourceState' "ACTIVE"

pattern EventSourceState_DELETED :: EventSourceState
pattern EventSourceState_DELETED = EventSourceState' "DELETED"

pattern EventSourceState_PENDING :: EventSourceState
pattern EventSourceState_PENDING = EventSourceState' "PENDING"

{-# COMPLETE
  EventSourceState_ACTIVE,
  EventSourceState_DELETED,
  EventSourceState_PENDING,
  EventSourceState'
  #-}
