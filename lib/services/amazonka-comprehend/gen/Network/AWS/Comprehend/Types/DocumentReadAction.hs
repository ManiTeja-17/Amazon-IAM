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
-- Module      : Amazonka.Comprehend.Types.DocumentReadAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Comprehend.Types.DocumentReadAction
  ( DocumentReadAction
      ( ..,
        DocumentReadAction_TEXTRACT_ANALYZE_DOCUMENT,
        DocumentReadAction_TEXTRACT_DETECT_DOCUMENT_TEXT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype DocumentReadAction = DocumentReadAction'
  { fromDocumentReadAction ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
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

pattern DocumentReadAction_TEXTRACT_ANALYZE_DOCUMENT :: DocumentReadAction
pattern DocumentReadAction_TEXTRACT_ANALYZE_DOCUMENT = DocumentReadAction' "TEXTRACT_ANALYZE_DOCUMENT"

pattern DocumentReadAction_TEXTRACT_DETECT_DOCUMENT_TEXT :: DocumentReadAction
pattern DocumentReadAction_TEXTRACT_DETECT_DOCUMENT_TEXT = DocumentReadAction' "TEXTRACT_DETECT_DOCUMENT_TEXT"

{-# COMPLETE
  DocumentReadAction_TEXTRACT_ANALYZE_DOCUMENT,
  DocumentReadAction_TEXTRACT_DETECT_DOCUMENT_TEXT,
  DocumentReadAction'
  #-}
