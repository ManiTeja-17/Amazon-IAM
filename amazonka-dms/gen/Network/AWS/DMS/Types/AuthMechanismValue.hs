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
-- Module      : Network.AWS.DMS.Types.AuthMechanismValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.AuthMechanismValue
  ( AuthMechanismValue
      ( ..,
        AuthMechanismValue_Default,
        AuthMechanismValue_Mongodb_cr,
        AuthMechanismValue_Scram_sha_1
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype AuthMechanismValue = AuthMechanismValue'
  { fromAuthMechanismValue ::
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

pattern AuthMechanismValue_Default :: AuthMechanismValue
pattern AuthMechanismValue_Default = AuthMechanismValue' "default"

pattern AuthMechanismValue_Mongodb_cr :: AuthMechanismValue
pattern AuthMechanismValue_Mongodb_cr = AuthMechanismValue' "mongodb_cr"

pattern AuthMechanismValue_Scram_sha_1 :: AuthMechanismValue
pattern AuthMechanismValue_Scram_sha_1 = AuthMechanismValue' "scram_sha_1"

{-# COMPLETE
  AuthMechanismValue_Default,
  AuthMechanismValue_Mongodb_cr,
  AuthMechanismValue_Scram_sha_1,
  AuthMechanismValue'
  #-}
