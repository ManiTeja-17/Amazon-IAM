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
-- Module      : Network.AWS.StorageGateway.Types.SMBSecurityStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.SMBSecurityStrategy
  ( SMBSecurityStrategy
      ( ..,
        SMBSecurityStrategy_ClientSpecified,
        SMBSecurityStrategy_MandatoryEncryption,
        SMBSecurityStrategy_MandatorySigning
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype SMBSecurityStrategy = SMBSecurityStrategy'
  { fromSMBSecurityStrategy ::
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

pattern SMBSecurityStrategy_ClientSpecified :: SMBSecurityStrategy
pattern SMBSecurityStrategy_ClientSpecified = SMBSecurityStrategy' "ClientSpecified"

pattern SMBSecurityStrategy_MandatoryEncryption :: SMBSecurityStrategy
pattern SMBSecurityStrategy_MandatoryEncryption = SMBSecurityStrategy' "MandatoryEncryption"

pattern SMBSecurityStrategy_MandatorySigning :: SMBSecurityStrategy
pattern SMBSecurityStrategy_MandatorySigning = SMBSecurityStrategy' "MandatorySigning"

{-# COMPLETE
  SMBSecurityStrategy_ClientSpecified,
  SMBSecurityStrategy_MandatoryEncryption,
  SMBSecurityStrategy_MandatorySigning,
  SMBSecurityStrategy'
  #-}
