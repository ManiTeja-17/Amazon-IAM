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
-- Module      : Network.AWS.EC2.Types.TargetReservationValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TargetReservationValue where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ReservationValue
import Network.AWS.EC2.Types.TargetConfiguration
import qualified Network.AWS.Lens as Lens

-- | The total value of the new Convertible Reserved Instances.
--
-- /See:/ 'newTargetReservationValue' smart constructor.
data TargetReservationValue = TargetReservationValue'
  { -- | The configuration of the Convertible Reserved Instances that make up the
    -- exchange.
    targetConfiguration :: Core.Maybe TargetConfiguration,
    -- | The total value of the Convertible Reserved Instances that make up the
    -- exchange. This is the sum of the list value, remaining upfront price,
    -- and additional upfront cost of the exchange.
    reservationValue :: Core.Maybe ReservationValue
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TargetReservationValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetConfiguration', 'targetReservationValue_targetConfiguration' - The configuration of the Convertible Reserved Instances that make up the
-- exchange.
--
-- 'reservationValue', 'targetReservationValue_reservationValue' - The total value of the Convertible Reserved Instances that make up the
-- exchange. This is the sum of the list value, remaining upfront price,
-- and additional upfront cost of the exchange.
newTargetReservationValue ::
  TargetReservationValue
newTargetReservationValue =
  TargetReservationValue'
    { targetConfiguration =
        Core.Nothing,
      reservationValue = Core.Nothing
    }

-- | The configuration of the Convertible Reserved Instances that make up the
-- exchange.
targetReservationValue_targetConfiguration :: Lens.Lens' TargetReservationValue (Core.Maybe TargetConfiguration)
targetReservationValue_targetConfiguration = Lens.lens (\TargetReservationValue' {targetConfiguration} -> targetConfiguration) (\s@TargetReservationValue' {} a -> s {targetConfiguration = a} :: TargetReservationValue)

-- | The total value of the Convertible Reserved Instances that make up the
-- exchange. This is the sum of the list value, remaining upfront price,
-- and additional upfront cost of the exchange.
targetReservationValue_reservationValue :: Lens.Lens' TargetReservationValue (Core.Maybe ReservationValue)
targetReservationValue_reservationValue = Lens.lens (\TargetReservationValue' {reservationValue} -> reservationValue) (\s@TargetReservationValue' {} a -> s {reservationValue = a} :: TargetReservationValue)

instance Core.FromXML TargetReservationValue where
  parseXML x =
    TargetReservationValue'
      Core.<$> (x Core..@? "targetConfiguration")
      Core.<*> (x Core..@? "reservationValue")

instance Core.Hashable TargetReservationValue

instance Core.NFData TargetReservationValue
