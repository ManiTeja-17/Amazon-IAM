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
-- Module      : Network.AWS.StepFunctions.Types.BillingDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.BillingDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | An object that describes workflow billing details.
--
-- /See:/ 'newBillingDetails' smart constructor.
data BillingDetails = BillingDetails'
  { -- | Billed memory consumption of your workflow, in MB.
    billedMemoryUsedInMB :: Core.Maybe Core.Natural,
    -- | Billed duration of your workflow, in milliseconds.
    billedDurationInMilliseconds :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BillingDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'billedMemoryUsedInMB', 'billingDetails_billedMemoryUsedInMB' - Billed memory consumption of your workflow, in MB.
--
-- 'billedDurationInMilliseconds', 'billingDetails_billedDurationInMilliseconds' - Billed duration of your workflow, in milliseconds.
newBillingDetails ::
  BillingDetails
newBillingDetails =
  BillingDetails'
    { billedMemoryUsedInMB =
        Core.Nothing,
      billedDurationInMilliseconds = Core.Nothing
    }

-- | Billed memory consumption of your workflow, in MB.
billingDetails_billedMemoryUsedInMB :: Lens.Lens' BillingDetails (Core.Maybe Core.Natural)
billingDetails_billedMemoryUsedInMB = Lens.lens (\BillingDetails' {billedMemoryUsedInMB} -> billedMemoryUsedInMB) (\s@BillingDetails' {} a -> s {billedMemoryUsedInMB = a} :: BillingDetails)

-- | Billed duration of your workflow, in milliseconds.
billingDetails_billedDurationInMilliseconds :: Lens.Lens' BillingDetails (Core.Maybe Core.Natural)
billingDetails_billedDurationInMilliseconds = Lens.lens (\BillingDetails' {billedDurationInMilliseconds} -> billedDurationInMilliseconds) (\s@BillingDetails' {} a -> s {billedDurationInMilliseconds = a} :: BillingDetails)

instance Core.FromJSON BillingDetails where
  parseJSON =
    Core.withObject
      "BillingDetails"
      ( \x ->
          BillingDetails'
            Core.<$> (x Core..:? "billedMemoryUsedInMB")
            Core.<*> (x Core..:? "billedDurationInMilliseconds")
      )

instance Core.Hashable BillingDetails

instance Core.NFData BillingDetails
