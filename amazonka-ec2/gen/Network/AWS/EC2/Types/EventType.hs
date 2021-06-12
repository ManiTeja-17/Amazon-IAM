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
-- Module      : Network.AWS.EC2.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EventType
  ( EventType
      ( ..,
        EventType_Error,
        EventType_FleetRequestChange,
        EventType_Information,
        EventType_InstanceChange
      ),
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal

newtype EventType = EventType'
  { fromEventType ::
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

pattern EventType_Error :: EventType
pattern EventType_Error = EventType' "error"

pattern EventType_FleetRequestChange :: EventType
pattern EventType_FleetRequestChange = EventType' "fleetRequestChange"

pattern EventType_Information :: EventType
pattern EventType_Information = EventType' "information"

pattern EventType_InstanceChange :: EventType
pattern EventType_InstanceChange = EventType' "instanceChange"

{-# COMPLETE
  EventType_Error,
  EventType_FleetRequestChange,
  EventType_Information,
  EventType_InstanceChange,
  EventType'
  #-}
