{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.QuickSight.Types.ErrorInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.ErrorInfo where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types.IngestionErrorType

-- | Error information for the SPICE ingestion of a dataset.
--
-- /See:/ 'newErrorInfo' smart constructor.
data ErrorInfo = ErrorInfo'
  { -- | Error type.
    type' :: Prelude.Maybe IngestionErrorType,
    -- | Error message.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ErrorInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'errorInfo_type' - Error type.
--
-- 'message', 'errorInfo_message' - Error message.
newErrorInfo ::
  ErrorInfo
newErrorInfo =
  ErrorInfo'
    { type' = Prelude.Nothing,
      message = Prelude.Nothing
    }

-- | Error type.
errorInfo_type :: Lens.Lens' ErrorInfo (Prelude.Maybe IngestionErrorType)
errorInfo_type = Lens.lens (\ErrorInfo' {type'} -> type') (\s@ErrorInfo' {} a -> s {type' = a} :: ErrorInfo)

-- | Error message.
errorInfo_message :: Lens.Lens' ErrorInfo (Prelude.Maybe Prelude.Text)
errorInfo_message = Lens.lens (\ErrorInfo' {message} -> message) (\s@ErrorInfo' {} a -> s {message = a} :: ErrorInfo)

instance Core.FromJSON ErrorInfo where
  parseJSON =
    Core.withObject
      "ErrorInfo"
      ( \x ->
          ErrorInfo'
            Prelude.<$> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "Message")
      )

instance Prelude.Hashable ErrorInfo where
  hashWithSalt _salt ErrorInfo' {..} =
    _salt `Prelude.hashWithSalt` type'
      `Prelude.hashWithSalt` message

instance Prelude.NFData ErrorInfo where
  rnf ErrorInfo' {..} =
    Prelude.rnf type' `Prelude.seq` Prelude.rnf message
