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
-- Module      : Network.AWS.DeviceFarm.Types.DeviceAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.DeviceAvailability
  ( DeviceAvailability
      ( ..,
        DeviceAvailability_AVAILABLE,
        DeviceAvailability_BUSY,
        DeviceAvailability_HIGHLY_AVAILABLE,
        DeviceAvailability_TEMPORARY_NOT_AVAILABLE
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype DeviceAvailability = DeviceAvailability'
  { fromDeviceAvailability ::
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

pattern DeviceAvailability_AVAILABLE :: DeviceAvailability
pattern DeviceAvailability_AVAILABLE = DeviceAvailability' "AVAILABLE"

pattern DeviceAvailability_BUSY :: DeviceAvailability
pattern DeviceAvailability_BUSY = DeviceAvailability' "BUSY"

pattern DeviceAvailability_HIGHLY_AVAILABLE :: DeviceAvailability
pattern DeviceAvailability_HIGHLY_AVAILABLE = DeviceAvailability' "HIGHLY_AVAILABLE"

pattern DeviceAvailability_TEMPORARY_NOT_AVAILABLE :: DeviceAvailability
pattern DeviceAvailability_TEMPORARY_NOT_AVAILABLE = DeviceAvailability' "TEMPORARY_NOT_AVAILABLE"

{-# COMPLETE
  DeviceAvailability_AVAILABLE,
  DeviceAvailability_BUSY,
  DeviceAvailability_HIGHLY_AVAILABLE,
  DeviceAvailability_TEMPORARY_NOT_AVAILABLE,
  DeviceAvailability'
  #-}
