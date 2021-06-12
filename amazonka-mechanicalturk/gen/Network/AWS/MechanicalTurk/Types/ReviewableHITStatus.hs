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
-- Module      : Network.AWS.MechanicalTurk.Types.ReviewableHITStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.ReviewableHITStatus
  ( ReviewableHITStatus
      ( ..,
        ReviewableHITStatus_Reviewable,
        ReviewableHITStatus_Reviewing
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype ReviewableHITStatus = ReviewableHITStatus'
  { fromReviewableHITStatus ::
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

pattern ReviewableHITStatus_Reviewable :: ReviewableHITStatus
pattern ReviewableHITStatus_Reviewable = ReviewableHITStatus' "Reviewable"

pattern ReviewableHITStatus_Reviewing :: ReviewableHITStatus
pattern ReviewableHITStatus_Reviewing = ReviewableHITStatus' "Reviewing"

{-# COMPLETE
  ReviewableHITStatus_Reviewable,
  ReviewableHITStatus_Reviewing,
  ReviewableHITStatus'
  #-}
