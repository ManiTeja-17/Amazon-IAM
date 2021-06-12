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
-- Module      : Network.AWS.SSM.Types.AssociationExecutionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecutionFilterKey
  ( AssociationExecutionFilterKey
      ( ..,
        AssociationExecutionFilterKey_CreatedTime,
        AssociationExecutionFilterKey_ExecutionId,
        AssociationExecutionFilterKey_Status
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype AssociationExecutionFilterKey = AssociationExecutionFilterKey'
  { fromAssociationExecutionFilterKey ::
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

pattern AssociationExecutionFilterKey_CreatedTime :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_CreatedTime = AssociationExecutionFilterKey' "CreatedTime"

pattern AssociationExecutionFilterKey_ExecutionId :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_ExecutionId = AssociationExecutionFilterKey' "ExecutionId"

pattern AssociationExecutionFilterKey_Status :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_Status = AssociationExecutionFilterKey' "Status"

{-# COMPLETE
  AssociationExecutionFilterKey_CreatedTime,
  AssociationExecutionFilterKey_ExecutionId,
  AssociationExecutionFilterKey_Status,
  AssociationExecutionFilterKey'
  #-}
