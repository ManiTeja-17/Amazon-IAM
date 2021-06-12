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
-- Module      : Network.AWS.Pinpoint.Types.CampaignStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CampaignStatus
  ( CampaignStatus
      ( ..,
        CampaignStatus_COMPLETED,
        CampaignStatus_DELETED,
        CampaignStatus_EXECUTING,
        CampaignStatus_INVALID,
        CampaignStatus_PAUSED,
        CampaignStatus_PENDING_NEXT_RUN,
        CampaignStatus_SCHEDULED
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype CampaignStatus = CampaignStatus'
  { fromCampaignStatus ::
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

pattern CampaignStatus_COMPLETED :: CampaignStatus
pattern CampaignStatus_COMPLETED = CampaignStatus' "COMPLETED"

pattern CampaignStatus_DELETED :: CampaignStatus
pattern CampaignStatus_DELETED = CampaignStatus' "DELETED"

pattern CampaignStatus_EXECUTING :: CampaignStatus
pattern CampaignStatus_EXECUTING = CampaignStatus' "EXECUTING"

pattern CampaignStatus_INVALID :: CampaignStatus
pattern CampaignStatus_INVALID = CampaignStatus' "INVALID"

pattern CampaignStatus_PAUSED :: CampaignStatus
pattern CampaignStatus_PAUSED = CampaignStatus' "PAUSED"

pattern CampaignStatus_PENDING_NEXT_RUN :: CampaignStatus
pattern CampaignStatus_PENDING_NEXT_RUN = CampaignStatus' "PENDING_NEXT_RUN"

pattern CampaignStatus_SCHEDULED :: CampaignStatus
pattern CampaignStatus_SCHEDULED = CampaignStatus' "SCHEDULED"

{-# COMPLETE
  CampaignStatus_COMPLETED,
  CampaignStatus_DELETED,
  CampaignStatus_EXECUTING,
  CampaignStatus_INVALID,
  CampaignStatus_PAUSED,
  CampaignStatus_PENDING_NEXT_RUN,
  CampaignStatus_SCHEDULED,
  CampaignStatus'
  #-}
