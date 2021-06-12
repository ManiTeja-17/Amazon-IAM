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
-- Module      : Network.AWS.OpsWorks.Types.RootDeviceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.RootDeviceType
  ( RootDeviceType
      ( ..,
        RootDeviceType_Ebs,
        RootDeviceType_Instance_store
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype RootDeviceType = RootDeviceType'
  { fromRootDeviceType ::
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

pattern RootDeviceType_Ebs :: RootDeviceType
pattern RootDeviceType_Ebs = RootDeviceType' "ebs"

pattern RootDeviceType_Instance_store :: RootDeviceType
pattern RootDeviceType_Instance_store = RootDeviceType' "instance-store"

{-# COMPLETE
  RootDeviceType_Ebs,
  RootDeviceType_Instance_store,
  RootDeviceType'
  #-}
