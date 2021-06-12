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
-- Module      : Network.AWS.WAF.Types.MatchFieldType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.MatchFieldType
  ( MatchFieldType
      ( ..,
        MatchFieldType_ALL_QUERY_ARGS,
        MatchFieldType_BODY,
        MatchFieldType_HEADER,
        MatchFieldType_METHOD,
        MatchFieldType_QUERY_STRING,
        MatchFieldType_SINGLE_QUERY_ARG,
        MatchFieldType_URI
      ),
  )
where

import qualified Network.AWS.Core as Core

newtype MatchFieldType = MatchFieldType'
  { fromMatchFieldType ::
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

pattern MatchFieldType_ALL_QUERY_ARGS :: MatchFieldType
pattern MatchFieldType_ALL_QUERY_ARGS = MatchFieldType' "ALL_QUERY_ARGS"

pattern MatchFieldType_BODY :: MatchFieldType
pattern MatchFieldType_BODY = MatchFieldType' "BODY"

pattern MatchFieldType_HEADER :: MatchFieldType
pattern MatchFieldType_HEADER = MatchFieldType' "HEADER"

pattern MatchFieldType_METHOD :: MatchFieldType
pattern MatchFieldType_METHOD = MatchFieldType' "METHOD"

pattern MatchFieldType_QUERY_STRING :: MatchFieldType
pattern MatchFieldType_QUERY_STRING = MatchFieldType' "QUERY_STRING"

pattern MatchFieldType_SINGLE_QUERY_ARG :: MatchFieldType
pattern MatchFieldType_SINGLE_QUERY_ARG = MatchFieldType' "SINGLE_QUERY_ARG"

pattern MatchFieldType_URI :: MatchFieldType
pattern MatchFieldType_URI = MatchFieldType' "URI"

{-# COMPLETE
  MatchFieldType_ALL_QUERY_ARGS,
  MatchFieldType_BODY,
  MatchFieldType_HEADER,
  MatchFieldType_METHOD,
  MatchFieldType_QUERY_STRING,
  MatchFieldType_SINGLE_QUERY_ARG,
  MatchFieldType_URI,
  MatchFieldType'
  #-}
