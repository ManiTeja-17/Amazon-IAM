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
-- Module      : Network.AWS.MediaConvert.Types.QueueListBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.QueueListBy
  ( QueueListBy
      ( ..,
        QueueListBy_CREATION_DATE,
        QueueListBy_NAME
      ),
  )
where

import qualified Network.AWS.Core as Core

-- | Optional. When you request a list of queues, you can choose to list them
-- alphabetically by NAME or chronologically by CREATION_DATE. If you
-- don\'t specify, the service will list them by creation date.
newtype QueueListBy = QueueListBy'
  { fromQueueListBy ::
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

pattern QueueListBy_CREATION_DATE :: QueueListBy
pattern QueueListBy_CREATION_DATE = QueueListBy' "CREATION_DATE"

pattern QueueListBy_NAME :: QueueListBy
pattern QueueListBy_NAME = QueueListBy' "NAME"

{-# COMPLETE
  QueueListBy_CREATION_DATE,
  QueueListBy_NAME,
  QueueListBy'
  #-}
