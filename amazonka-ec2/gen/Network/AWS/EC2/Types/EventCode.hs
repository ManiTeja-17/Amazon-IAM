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
-- Module      : Network.AWS.EC2.Types.EventCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EventCode
  ( EventCode
      ( ..,
        EventCode_Instance_reboot,
        EventCode_Instance_retirement,
        EventCode_Instance_stop,
        EventCode_System_maintenance,
        EventCode_System_reboot
      ),
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal

newtype EventCode = EventCode'
  { fromEventCode ::
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

pattern EventCode_Instance_reboot :: EventCode
pattern EventCode_Instance_reboot = EventCode' "instance-reboot"

pattern EventCode_Instance_retirement :: EventCode
pattern EventCode_Instance_retirement = EventCode' "instance-retirement"

pattern EventCode_Instance_stop :: EventCode
pattern EventCode_Instance_stop = EventCode' "instance-stop"

pattern EventCode_System_maintenance :: EventCode
pattern EventCode_System_maintenance = EventCode' "system-maintenance"

pattern EventCode_System_reboot :: EventCode
pattern EventCode_System_reboot = EventCode' "system-reboot"

{-# COMPLETE
  EventCode_Instance_reboot,
  EventCode_Instance_retirement,
  EventCode_Instance_stop,
  EventCode_System_maintenance,
  EventCode_System_reboot,
  EventCode'
  #-}
