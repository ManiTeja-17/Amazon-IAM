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
-- Module      : Network.AWS.ECS.Types.ManagedScaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ManagedScaling where

import qualified Network.AWS.Core as Core
import Network.AWS.ECS.Types.ManagedScalingStatus
import qualified Network.AWS.Lens as Lens

-- | The managed scaling settings for the Auto Scaling group capacity
-- provider.
--
-- When managed scaling is enabled, Amazon ECS manages the scale-in and
-- scale-out actions of the Auto Scaling group. Amazon ECS manages a target
-- tracking scaling policy using an Amazon ECS-managed CloudWatch metric
-- with the specified @targetCapacity@ value as the target value for the
-- metric. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/asg-capacity-providers.html#asg-capacity-providers-managed-scaling Using Managed Scaling>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- If managed scaling is disabled, the user must manage the scaling of the
-- Auto Scaling group.
--
-- /See:/ 'newManagedScaling' smart constructor.
data ManagedScaling = ManagedScaling'
  { -- | Whether or not to enable managed scaling for the capacity provider.
    status :: Core.Maybe ManagedScalingStatus,
    -- | The maximum number of container instances that Amazon ECS will scale in
    -- or scale out at one time. If this parameter is omitted, the default
    -- value of @10000@ is used.
    maximumScalingStepSize :: Core.Maybe Core.Natural,
    -- | The minimum number of container instances that Amazon ECS will scale in
    -- or scale out at one time. If this parameter is omitted, the default
    -- value of @1@ is used.
    minimumScalingStepSize :: Core.Maybe Core.Natural,
    -- | The period of time, in seconds, after a newly launched Amazon EC2
    -- instance can contribute to CloudWatch metrics for Auto Scaling group. If
    -- this parameter is omitted, the default value of @300@ seconds is used.
    instanceWarmupPeriod :: Core.Maybe Core.Natural,
    -- | The target capacity value for the capacity provider. The specified value
    -- must be greater than @0@ and less than or equal to @100@. A value of
    -- @100@ will result in the Amazon EC2 instances in your Auto Scaling group
    -- being completely utilized.
    targetCapacity :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ManagedScaling' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'managedScaling_status' - Whether or not to enable managed scaling for the capacity provider.
--
-- 'maximumScalingStepSize', 'managedScaling_maximumScalingStepSize' - The maximum number of container instances that Amazon ECS will scale in
-- or scale out at one time. If this parameter is omitted, the default
-- value of @10000@ is used.
--
-- 'minimumScalingStepSize', 'managedScaling_minimumScalingStepSize' - The minimum number of container instances that Amazon ECS will scale in
-- or scale out at one time. If this parameter is omitted, the default
-- value of @1@ is used.
--
-- 'instanceWarmupPeriod', 'managedScaling_instanceWarmupPeriod' - The period of time, in seconds, after a newly launched Amazon EC2
-- instance can contribute to CloudWatch metrics for Auto Scaling group. If
-- this parameter is omitted, the default value of @300@ seconds is used.
--
-- 'targetCapacity', 'managedScaling_targetCapacity' - The target capacity value for the capacity provider. The specified value
-- must be greater than @0@ and less than or equal to @100@. A value of
-- @100@ will result in the Amazon EC2 instances in your Auto Scaling group
-- being completely utilized.
newManagedScaling ::
  ManagedScaling
newManagedScaling =
  ManagedScaling'
    { status = Core.Nothing,
      maximumScalingStepSize = Core.Nothing,
      minimumScalingStepSize = Core.Nothing,
      instanceWarmupPeriod = Core.Nothing,
      targetCapacity = Core.Nothing
    }

-- | Whether or not to enable managed scaling for the capacity provider.
managedScaling_status :: Lens.Lens' ManagedScaling (Core.Maybe ManagedScalingStatus)
managedScaling_status = Lens.lens (\ManagedScaling' {status} -> status) (\s@ManagedScaling' {} a -> s {status = a} :: ManagedScaling)

-- | The maximum number of container instances that Amazon ECS will scale in
-- or scale out at one time. If this parameter is omitted, the default
-- value of @10000@ is used.
managedScaling_maximumScalingStepSize :: Lens.Lens' ManagedScaling (Core.Maybe Core.Natural)
managedScaling_maximumScalingStepSize = Lens.lens (\ManagedScaling' {maximumScalingStepSize} -> maximumScalingStepSize) (\s@ManagedScaling' {} a -> s {maximumScalingStepSize = a} :: ManagedScaling)

-- | The minimum number of container instances that Amazon ECS will scale in
-- or scale out at one time. If this parameter is omitted, the default
-- value of @1@ is used.
managedScaling_minimumScalingStepSize :: Lens.Lens' ManagedScaling (Core.Maybe Core.Natural)
managedScaling_minimumScalingStepSize = Lens.lens (\ManagedScaling' {minimumScalingStepSize} -> minimumScalingStepSize) (\s@ManagedScaling' {} a -> s {minimumScalingStepSize = a} :: ManagedScaling)

-- | The period of time, in seconds, after a newly launched Amazon EC2
-- instance can contribute to CloudWatch metrics for Auto Scaling group. If
-- this parameter is omitted, the default value of @300@ seconds is used.
managedScaling_instanceWarmupPeriod :: Lens.Lens' ManagedScaling (Core.Maybe Core.Natural)
managedScaling_instanceWarmupPeriod = Lens.lens (\ManagedScaling' {instanceWarmupPeriod} -> instanceWarmupPeriod) (\s@ManagedScaling' {} a -> s {instanceWarmupPeriod = a} :: ManagedScaling)

-- | The target capacity value for the capacity provider. The specified value
-- must be greater than @0@ and less than or equal to @100@. A value of
-- @100@ will result in the Amazon EC2 instances in your Auto Scaling group
-- being completely utilized.
managedScaling_targetCapacity :: Lens.Lens' ManagedScaling (Core.Maybe Core.Natural)
managedScaling_targetCapacity = Lens.lens (\ManagedScaling' {targetCapacity} -> targetCapacity) (\s@ManagedScaling' {} a -> s {targetCapacity = a} :: ManagedScaling)

instance Core.FromJSON ManagedScaling where
  parseJSON =
    Core.withObject
      "ManagedScaling"
      ( \x ->
          ManagedScaling'
            Core.<$> (x Core..:? "status")
            Core.<*> (x Core..:? "maximumScalingStepSize")
            Core.<*> (x Core..:? "minimumScalingStepSize")
            Core.<*> (x Core..:? "instanceWarmupPeriod")
            Core.<*> (x Core..:? "targetCapacity")
      )

instance Core.Hashable ManagedScaling

instance Core.NFData ManagedScaling

instance Core.ToJSON ManagedScaling where
  toJSON ManagedScaling' {..} =
    Core.object
      ( Core.catMaybes
          [ ("status" Core..=) Core.<$> status,
            ("maximumScalingStepSize" Core..=)
              Core.<$> maximumScalingStepSize,
            ("minimumScalingStepSize" Core..=)
              Core.<$> minimumScalingStepSize,
            ("instanceWarmupPeriod" Core..=)
              Core.<$> instanceWarmupPeriod,
            ("targetCapacity" Core..=) Core.<$> targetCapacity
          ]
      )
