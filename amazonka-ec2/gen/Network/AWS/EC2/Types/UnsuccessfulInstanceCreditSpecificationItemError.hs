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
-- Module      : Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationItemError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationItemError where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.UnsuccessfulInstanceCreditSpecificationErrorCode
import qualified Network.AWS.Lens as Lens

-- | Information about the error for the burstable performance instance whose
-- credit option for CPU usage was not modified.
--
-- /See:/ 'newUnsuccessfulInstanceCreditSpecificationItemError' smart constructor.
data UnsuccessfulInstanceCreditSpecificationItemError = UnsuccessfulInstanceCreditSpecificationItemError'
  { -- | The applicable error message.
    message :: Core.Maybe Core.Text,
    -- | The error code.
    code :: Core.Maybe UnsuccessfulInstanceCreditSpecificationErrorCode
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UnsuccessfulInstanceCreditSpecificationItemError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'unsuccessfulInstanceCreditSpecificationItemError_message' - The applicable error message.
--
-- 'code', 'unsuccessfulInstanceCreditSpecificationItemError_code' - The error code.
newUnsuccessfulInstanceCreditSpecificationItemError ::
  UnsuccessfulInstanceCreditSpecificationItemError
newUnsuccessfulInstanceCreditSpecificationItemError =
  UnsuccessfulInstanceCreditSpecificationItemError'
    { message =
        Core.Nothing,
      code = Core.Nothing
    }

-- | The applicable error message.
unsuccessfulInstanceCreditSpecificationItemError_message :: Lens.Lens' UnsuccessfulInstanceCreditSpecificationItemError (Core.Maybe Core.Text)
unsuccessfulInstanceCreditSpecificationItemError_message = Lens.lens (\UnsuccessfulInstanceCreditSpecificationItemError' {message} -> message) (\s@UnsuccessfulInstanceCreditSpecificationItemError' {} a -> s {message = a} :: UnsuccessfulInstanceCreditSpecificationItemError)

-- | The error code.
unsuccessfulInstanceCreditSpecificationItemError_code :: Lens.Lens' UnsuccessfulInstanceCreditSpecificationItemError (Core.Maybe UnsuccessfulInstanceCreditSpecificationErrorCode)
unsuccessfulInstanceCreditSpecificationItemError_code = Lens.lens (\UnsuccessfulInstanceCreditSpecificationItemError' {code} -> code) (\s@UnsuccessfulInstanceCreditSpecificationItemError' {} a -> s {code = a} :: UnsuccessfulInstanceCreditSpecificationItemError)

instance
  Core.FromXML
    UnsuccessfulInstanceCreditSpecificationItemError
  where
  parseXML x =
    UnsuccessfulInstanceCreditSpecificationItemError'
      Core.<$> (x Core..@? "message") Core.<*> (x Core..@? "code")

instance
  Core.Hashable
    UnsuccessfulInstanceCreditSpecificationItemError

instance
  Core.NFData
    UnsuccessfulInstanceCreditSpecificationItemError
