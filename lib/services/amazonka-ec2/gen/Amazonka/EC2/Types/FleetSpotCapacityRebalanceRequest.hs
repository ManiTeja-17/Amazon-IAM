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
-- Module      : Amazonka.EC2.Types.FleetSpotCapacityRebalanceRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.FleetSpotCapacityRebalanceRequest where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.FleetReplacementStrategy
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The Spot Instance replacement strategy to use when Amazon EC2 emits a
-- signal that your Spot Instance is at an elevated risk of being
-- interrupted. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-configuration-strategies.html#ec2-fleet-capacity-rebalance Capacity rebalancing>
-- in the /Amazon EC2 User Guide/.
--
-- /See:/ 'newFleetSpotCapacityRebalanceRequest' smart constructor.
data FleetSpotCapacityRebalanceRequest = FleetSpotCapacityRebalanceRequest'
  { -- | The replacement strategy to use. Only available for fleets of type
    -- @maintain@.
    --
    -- To allow EC2 Fleet to launch a replacement Spot Instance when an
    -- instance rebalance notification is emitted for an existing Spot Instance
    -- in the fleet, specify @launch@. You must specify a value, otherwise you
    -- get an error.
    --
    -- When a replacement instance is launched, the instance marked for
    -- rebalance is not automatically terminated. You can terminate it, or you
    -- can leave it running. You are charged for all instances while they are
    -- running.
    replacementStrategy :: Prelude.Maybe FleetReplacementStrategy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FleetSpotCapacityRebalanceRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replacementStrategy', 'fleetSpotCapacityRebalanceRequest_replacementStrategy' - The replacement strategy to use. Only available for fleets of type
-- @maintain@.
--
-- To allow EC2 Fleet to launch a replacement Spot Instance when an
-- instance rebalance notification is emitted for an existing Spot Instance
-- in the fleet, specify @launch@. You must specify a value, otherwise you
-- get an error.
--
-- When a replacement instance is launched, the instance marked for
-- rebalance is not automatically terminated. You can terminate it, or you
-- can leave it running. You are charged for all instances while they are
-- running.
newFleetSpotCapacityRebalanceRequest ::
  FleetSpotCapacityRebalanceRequest
newFleetSpotCapacityRebalanceRequest =
  FleetSpotCapacityRebalanceRequest'
    { replacementStrategy =
        Prelude.Nothing
    }

-- | The replacement strategy to use. Only available for fleets of type
-- @maintain@.
--
-- To allow EC2 Fleet to launch a replacement Spot Instance when an
-- instance rebalance notification is emitted for an existing Spot Instance
-- in the fleet, specify @launch@. You must specify a value, otherwise you
-- get an error.
--
-- When a replacement instance is launched, the instance marked for
-- rebalance is not automatically terminated. You can terminate it, or you
-- can leave it running. You are charged for all instances while they are
-- running.
fleetSpotCapacityRebalanceRequest_replacementStrategy :: Lens.Lens' FleetSpotCapacityRebalanceRequest (Prelude.Maybe FleetReplacementStrategy)
fleetSpotCapacityRebalanceRequest_replacementStrategy = Lens.lens (\FleetSpotCapacityRebalanceRequest' {replacementStrategy} -> replacementStrategy) (\s@FleetSpotCapacityRebalanceRequest' {} a -> s {replacementStrategy = a} :: FleetSpotCapacityRebalanceRequest)

instance
  Prelude.Hashable
    FleetSpotCapacityRebalanceRequest
  where
  hashWithSalt
    _salt
    FleetSpotCapacityRebalanceRequest' {..} =
      _salt `Prelude.hashWithSalt` replacementStrategy

instance
  Prelude.NFData
    FleetSpotCapacityRebalanceRequest
  where
  rnf FleetSpotCapacityRebalanceRequest' {..} =
    Prelude.rnf replacementStrategy

instance
  Core.ToQuery
    FleetSpotCapacityRebalanceRequest
  where
  toQuery FleetSpotCapacityRebalanceRequest' {..} =
    Prelude.mconcat
      ["ReplacementStrategy" Core.=: replacementStrategy]
