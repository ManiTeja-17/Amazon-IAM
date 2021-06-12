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
-- Module      : Network.AWS.SSM.Types.InventoryDeletionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventoryDeletionStatus
  ( InventoryDeletionStatus
      ( ..,
        InventoryDeletionStatus_Complete,
        InventoryDeletionStatus_InProgress
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype InventoryDeletionStatus = InventoryDeletionStatus'
  { fromInventoryDeletionStatus ::
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

pattern InventoryDeletionStatus_Complete :: InventoryDeletionStatus
pattern InventoryDeletionStatus_Complete = InventoryDeletionStatus' "Complete"

pattern InventoryDeletionStatus_InProgress :: InventoryDeletionStatus
pattern InventoryDeletionStatus_InProgress = InventoryDeletionStatus' "InProgress"

{-# COMPLETE
  InventoryDeletionStatus_Complete,
  InventoryDeletionStatus_InProgress,
  InventoryDeletionStatus'
  #-}
