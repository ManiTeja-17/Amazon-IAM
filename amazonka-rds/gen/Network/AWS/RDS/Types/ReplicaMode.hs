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
-- Module      : Network.AWS.RDS.Types.ReplicaMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ReplicaMode
  ( ReplicaMode
      ( ..,
        ReplicaMode_Mounted,
        ReplicaMode_Open_read_only
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype ReplicaMode = ReplicaMode'
  { fromReplicaMode ::
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

pattern ReplicaMode_Mounted :: ReplicaMode
pattern ReplicaMode_Mounted = ReplicaMode' "mounted"

pattern ReplicaMode_Open_read_only :: ReplicaMode
pattern ReplicaMode_Open_read_only = ReplicaMode' "open-read-only"

{-# COMPLETE
  ReplicaMode_Mounted,
  ReplicaMode_Open_read_only,
  ReplicaMode'
  #-}
