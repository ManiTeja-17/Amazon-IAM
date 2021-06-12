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
-- Module      : Network.AWS.EKS.Types.LogType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EKS.Types.LogType
  ( LogType
      ( ..,
        LogType_Api,
        LogType_Audit,
        LogType_Authenticator,
        LogType_ControllerManager,
        LogType_Scheduler
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype LogType = LogType' {fromLogType :: Core.Text}
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

pattern LogType_Api :: LogType
pattern LogType_Api = LogType' "api"

pattern LogType_Audit :: LogType
pattern LogType_Audit = LogType' "audit"

pattern LogType_Authenticator :: LogType
pattern LogType_Authenticator = LogType' "authenticator"

pattern LogType_ControllerManager :: LogType
pattern LogType_ControllerManager = LogType' "controllerManager"

pattern LogType_Scheduler :: LogType
pattern LogType_Scheduler = LogType' "scheduler"

{-# COMPLETE
  LogType_Api,
  LogType_Audit,
  LogType_Authenticator,
  LogType_ControllerManager,
  LogType_Scheduler,
  LogType'
  #-}
