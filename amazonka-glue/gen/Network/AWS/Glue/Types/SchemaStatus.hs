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
-- Module      : Network.AWS.Glue.Types.SchemaStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaStatus
  ( SchemaStatus
      ( ..,
        SchemaStatus_AVAILABLE,
        SchemaStatus_DELETING,
        SchemaStatus_PENDING
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype SchemaStatus = SchemaStatus'
  { fromSchemaStatus ::
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

pattern SchemaStatus_AVAILABLE :: SchemaStatus
pattern SchemaStatus_AVAILABLE = SchemaStatus' "AVAILABLE"

pattern SchemaStatus_DELETING :: SchemaStatus
pattern SchemaStatus_DELETING = SchemaStatus' "DELETING"

pattern SchemaStatus_PENDING :: SchemaStatus
pattern SchemaStatus_PENDING = SchemaStatus' "PENDING"

{-# COMPLETE
  SchemaStatus_AVAILABLE,
  SchemaStatus_DELETING,
  SchemaStatus_PENDING,
  SchemaStatus'
  #-}
