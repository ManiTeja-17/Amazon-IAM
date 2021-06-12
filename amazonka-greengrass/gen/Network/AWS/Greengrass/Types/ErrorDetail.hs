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
-- Module      : Network.AWS.Greengrass.Types.ErrorDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.ErrorDetail where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Details about the error.
--
-- /See:/ 'newErrorDetail' smart constructor.
data ErrorDetail = ErrorDetail'
  { -- | A detailed error message.
    detailedErrorMessage :: Core.Maybe Core.Text,
    -- | A detailed error code.
    detailedErrorCode :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ErrorDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detailedErrorMessage', 'errorDetail_detailedErrorMessage' - A detailed error message.
--
-- 'detailedErrorCode', 'errorDetail_detailedErrorCode' - A detailed error code.
newErrorDetail ::
  ErrorDetail
newErrorDetail =
  ErrorDetail'
    { detailedErrorMessage = Core.Nothing,
      detailedErrorCode = Core.Nothing
    }

-- | A detailed error message.
errorDetail_detailedErrorMessage :: Lens.Lens' ErrorDetail (Core.Maybe Core.Text)
errorDetail_detailedErrorMessage = Lens.lens (\ErrorDetail' {detailedErrorMessage} -> detailedErrorMessage) (\s@ErrorDetail' {} a -> s {detailedErrorMessage = a} :: ErrorDetail)

-- | A detailed error code.
errorDetail_detailedErrorCode :: Lens.Lens' ErrorDetail (Core.Maybe Core.Text)
errorDetail_detailedErrorCode = Lens.lens (\ErrorDetail' {detailedErrorCode} -> detailedErrorCode) (\s@ErrorDetail' {} a -> s {detailedErrorCode = a} :: ErrorDetail)

instance Core.FromJSON ErrorDetail where
  parseJSON =
    Core.withObject
      "ErrorDetail"
      ( \x ->
          ErrorDetail'
            Core.<$> (x Core..:? "DetailedErrorMessage")
            Core.<*> (x Core..:? "DetailedErrorCode")
      )

instance Core.Hashable ErrorDetail

instance Core.NFData ErrorDetail
