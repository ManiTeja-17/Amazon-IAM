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
-- Module      : Network.AWS.CodePipeline.Types.PipelineExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.PipelineExecutionStatus
  ( PipelineExecutionStatus
      ( ..,
        PipelineExecutionStatus_Cancelled,
        PipelineExecutionStatus_Failed,
        PipelineExecutionStatus_InProgress,
        PipelineExecutionStatus_Stopped,
        PipelineExecutionStatus_Stopping,
        PipelineExecutionStatus_Succeeded,
        PipelineExecutionStatus_Superseded
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype PipelineExecutionStatus = PipelineExecutionStatus'
  { fromPipelineExecutionStatus ::
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

pattern PipelineExecutionStatus_Cancelled :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Cancelled = PipelineExecutionStatus' "Cancelled"

pattern PipelineExecutionStatus_Failed :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Failed = PipelineExecutionStatus' "Failed"

pattern PipelineExecutionStatus_InProgress :: PipelineExecutionStatus
pattern PipelineExecutionStatus_InProgress = PipelineExecutionStatus' "InProgress"

pattern PipelineExecutionStatus_Stopped :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Stopped = PipelineExecutionStatus' "Stopped"

pattern PipelineExecutionStatus_Stopping :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Stopping = PipelineExecutionStatus' "Stopping"

pattern PipelineExecutionStatus_Succeeded :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Succeeded = PipelineExecutionStatus' "Succeeded"

pattern PipelineExecutionStatus_Superseded :: PipelineExecutionStatus
pattern PipelineExecutionStatus_Superseded = PipelineExecutionStatus' "Superseded"

{-# COMPLETE
  PipelineExecutionStatus_Cancelled,
  PipelineExecutionStatus_Failed,
  PipelineExecutionStatus_InProgress,
  PipelineExecutionStatus_Stopped,
  PipelineExecutionStatus_Stopping,
  PipelineExecutionStatus_Succeeded,
  PipelineExecutionStatus_Superseded,
  PipelineExecutionStatus'
  #-}
