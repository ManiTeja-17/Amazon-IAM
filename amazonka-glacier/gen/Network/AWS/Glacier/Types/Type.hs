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
-- Module      : Network.AWS.Glacier.Types.Type
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.Type
  ( Type
      ( ..,
        Type_AmazonCustomerByEmail,
        Type_CanonicalUser,
        Type_Group
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype Type = Type' {fromType :: Core.Text}
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

pattern Type_AmazonCustomerByEmail :: Type
pattern Type_AmazonCustomerByEmail = Type' "AmazonCustomerByEmail"

pattern Type_CanonicalUser :: Type
pattern Type_CanonicalUser = Type' "CanonicalUser"

pattern Type_Group :: Type
pattern Type_Group = Type' "Group"

{-# COMPLETE
  Type_AmazonCustomerByEmail,
  Type_CanonicalUser,
  Type_Group,
  Type'
  #-}
