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
-- Module      : Network.AWS.EC2.Types.CapacityReservationTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationTarget where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Describes a target Capacity Reservation or Capacity Reservation group.
--
-- /See:/ 'newCapacityReservationTarget' smart constructor.
data CapacityReservationTarget = CapacityReservationTarget'
  { -- | The ARN of the Capacity Reservation resource group in which to run the
    -- instance.
    capacityReservationResourceGroupArn :: Core.Maybe Core.Text,
    -- | The ID of the Capacity Reservation in which to run the instance.
    capacityReservationId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CapacityReservationTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'capacityReservationResourceGroupArn', 'capacityReservationTarget_capacityReservationResourceGroupArn' - The ARN of the Capacity Reservation resource group in which to run the
-- instance.
--
-- 'capacityReservationId', 'capacityReservationTarget_capacityReservationId' - The ID of the Capacity Reservation in which to run the instance.
newCapacityReservationTarget ::
  CapacityReservationTarget
newCapacityReservationTarget =
  CapacityReservationTarget'
    { capacityReservationResourceGroupArn =
        Core.Nothing,
      capacityReservationId = Core.Nothing
    }

-- | The ARN of the Capacity Reservation resource group in which to run the
-- instance.
capacityReservationTarget_capacityReservationResourceGroupArn :: Lens.Lens' CapacityReservationTarget (Core.Maybe Core.Text)
capacityReservationTarget_capacityReservationResourceGroupArn = Lens.lens (\CapacityReservationTarget' {capacityReservationResourceGroupArn} -> capacityReservationResourceGroupArn) (\s@CapacityReservationTarget' {} a -> s {capacityReservationResourceGroupArn = a} :: CapacityReservationTarget)

-- | The ID of the Capacity Reservation in which to run the instance.
capacityReservationTarget_capacityReservationId :: Lens.Lens' CapacityReservationTarget (Core.Maybe Core.Text)
capacityReservationTarget_capacityReservationId = Lens.lens (\CapacityReservationTarget' {capacityReservationId} -> capacityReservationId) (\s@CapacityReservationTarget' {} a -> s {capacityReservationId = a} :: CapacityReservationTarget)

instance Core.Hashable CapacityReservationTarget

instance Core.NFData CapacityReservationTarget

instance Core.ToQuery CapacityReservationTarget where
  toQuery CapacityReservationTarget' {..} =
    Core.mconcat
      [ "CapacityReservationResourceGroupArn"
          Core.=: capacityReservationResourceGroupArn,
        "CapacityReservationId"
          Core.=: capacityReservationId
      ]
