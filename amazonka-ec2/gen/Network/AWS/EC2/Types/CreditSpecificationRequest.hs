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
-- Module      : Network.AWS.EC2.Types.CreditSpecificationRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CreditSpecificationRequest where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | The credit option for CPU usage of a T2, T3, or T3a instance.
--
-- /See:/ 'newCreditSpecificationRequest' smart constructor.
data CreditSpecificationRequest = CreditSpecificationRequest'
  { -- | The credit option for CPU usage of a T2, T3, or T3a instance. Valid
    -- values are @standard@ and @unlimited@.
    cpuCredits :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreditSpecificationRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cpuCredits', 'creditSpecificationRequest_cpuCredits' - The credit option for CPU usage of a T2, T3, or T3a instance. Valid
-- values are @standard@ and @unlimited@.
newCreditSpecificationRequest ::
  -- | 'cpuCredits'
  Core.Text ->
  CreditSpecificationRequest
newCreditSpecificationRequest pCpuCredits_ =
  CreditSpecificationRequest'
    { cpuCredits =
        pCpuCredits_
    }

-- | The credit option for CPU usage of a T2, T3, or T3a instance. Valid
-- values are @standard@ and @unlimited@.
creditSpecificationRequest_cpuCredits :: Lens.Lens' CreditSpecificationRequest Core.Text
creditSpecificationRequest_cpuCredits = Lens.lens (\CreditSpecificationRequest' {cpuCredits} -> cpuCredits) (\s@CreditSpecificationRequest' {} a -> s {cpuCredits = a} :: CreditSpecificationRequest)

instance Core.Hashable CreditSpecificationRequest

instance Core.NFData CreditSpecificationRequest

instance Core.ToQuery CreditSpecificationRequest where
  toQuery CreditSpecificationRequest' {..} =
    Core.mconcat ["CpuCredits" Core.=: cpuCredits]
