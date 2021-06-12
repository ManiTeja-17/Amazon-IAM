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
-- Module      : Network.AWS.EC2.Types.EnaSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EnaSupport
  ( EnaSupport
      ( ..,
        EnaSupport_Required,
        EnaSupport_Supported,
        EnaSupport_Unsupported
      ),
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal

newtype EnaSupport = EnaSupport'
  { fromEnaSupport ::
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

pattern EnaSupport_Required :: EnaSupport
pattern EnaSupport_Required = EnaSupport' "required"

pattern EnaSupport_Supported :: EnaSupport
pattern EnaSupport_Supported = EnaSupport' "supported"

pattern EnaSupport_Unsupported :: EnaSupport
pattern EnaSupport_Unsupported = EnaSupport' "unsupported"

{-# COMPLETE
  EnaSupport_Required,
  EnaSupport_Supported,
  EnaSupport_Unsupported,
  EnaSupport'
  #-}
