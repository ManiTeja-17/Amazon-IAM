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
-- Module      : Network.AWS.IoT.Types.DomainType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DomainType
  ( DomainType
      ( ..,
        DomainType_AWS_MANAGED,
        DomainType_CUSTOMER_MANAGED,
        DomainType_ENDPOINT
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype DomainType = DomainType'
  { fromDomainType ::
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

pattern DomainType_AWS_MANAGED :: DomainType
pattern DomainType_AWS_MANAGED = DomainType' "AWS_MANAGED"

pattern DomainType_CUSTOMER_MANAGED :: DomainType
pattern DomainType_CUSTOMER_MANAGED = DomainType' "CUSTOMER_MANAGED"

pattern DomainType_ENDPOINT :: DomainType
pattern DomainType_ENDPOINT = DomainType' "ENDPOINT"

{-# COMPLETE
  DomainType_AWS_MANAGED,
  DomainType_CUSTOMER_MANAGED,
  DomainType_ENDPOINT,
  DomainType'
  #-}
