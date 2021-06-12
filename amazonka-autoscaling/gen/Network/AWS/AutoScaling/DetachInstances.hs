{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.DetachInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more instances from the specified Auto Scaling group.
--
-- After the instances are detached, you can manage them independent of the
-- Auto Scaling group.
--
-- If you do not specify the option to decrement the desired capacity,
-- Amazon EC2 Auto Scaling launches instances to replace the ones that are
-- detached.
--
-- If there is a Classic Load Balancer attached to the Auto Scaling group,
-- the instances are deregistered from the load balancer. If there are
-- target groups attached to the Auto Scaling group, the instances are
-- deregistered from the target groups.
--
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html Detach EC2 instances from your Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
module Network.AWS.AutoScaling.DetachInstances
  ( -- * Creating a Request
    DetachInstances (..),
    newDetachInstances,

    -- * Request Lenses
    detachInstances_instanceIds,
    detachInstances_autoScalingGroupName,
    detachInstances_shouldDecrementDesiredCapacity,

    -- * Destructuring the Response
    DetachInstancesResponse (..),
    newDetachInstancesResponse,

    -- * Response Lenses
    detachInstancesResponse_activities,
    detachInstancesResponse_httpStatus,
  )
where

import Network.AWS.AutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDetachInstances' smart constructor.
data DetachInstances = DetachInstances'
  { -- | The IDs of the instances. You can specify up to 20 instances.
    instanceIds :: Core.Maybe [Core.Text],
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Core.Text,
    -- | Indicates whether the Auto Scaling group decrements the desired capacity
    -- value by the number of instances detached.
    shouldDecrementDesiredCapacity :: Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DetachInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceIds', 'detachInstances_instanceIds' - The IDs of the instances. You can specify up to 20 instances.
--
-- 'autoScalingGroupName', 'detachInstances_autoScalingGroupName' - The name of the Auto Scaling group.
--
-- 'shouldDecrementDesiredCapacity', 'detachInstances_shouldDecrementDesiredCapacity' - Indicates whether the Auto Scaling group decrements the desired capacity
-- value by the number of instances detached.
newDetachInstances ::
  -- | 'autoScalingGroupName'
  Core.Text ->
  -- | 'shouldDecrementDesiredCapacity'
  Core.Bool ->
  DetachInstances
newDetachInstances
  pAutoScalingGroupName_
  pShouldDecrementDesiredCapacity_ =
    DetachInstances'
      { instanceIds = Core.Nothing,
        autoScalingGroupName = pAutoScalingGroupName_,
        shouldDecrementDesiredCapacity =
          pShouldDecrementDesiredCapacity_
      }

-- | The IDs of the instances. You can specify up to 20 instances.
detachInstances_instanceIds :: Lens.Lens' DetachInstances (Core.Maybe [Core.Text])
detachInstances_instanceIds = Lens.lens (\DetachInstances' {instanceIds} -> instanceIds) (\s@DetachInstances' {} a -> s {instanceIds = a} :: DetachInstances) Core.. Lens.mapping Lens._Coerce

-- | The name of the Auto Scaling group.
detachInstances_autoScalingGroupName :: Lens.Lens' DetachInstances Core.Text
detachInstances_autoScalingGroupName = Lens.lens (\DetachInstances' {autoScalingGroupName} -> autoScalingGroupName) (\s@DetachInstances' {} a -> s {autoScalingGroupName = a} :: DetachInstances)

-- | Indicates whether the Auto Scaling group decrements the desired capacity
-- value by the number of instances detached.
detachInstances_shouldDecrementDesiredCapacity :: Lens.Lens' DetachInstances Core.Bool
detachInstances_shouldDecrementDesiredCapacity = Lens.lens (\DetachInstances' {shouldDecrementDesiredCapacity} -> shouldDecrementDesiredCapacity) (\s@DetachInstances' {} a -> s {shouldDecrementDesiredCapacity = a} :: DetachInstances)

instance Core.AWSRequest DetachInstances where
  type
    AWSResponse DetachInstances =
      DetachInstancesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DetachInstancesResult"
      ( \s h x ->
          DetachInstancesResponse'
            Core.<$> ( x Core..@? "Activities" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "member")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DetachInstances

instance Core.NFData DetachInstances

instance Core.ToHeaders DetachInstances where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DetachInstances where
  toPath = Core.const "/"

instance Core.ToQuery DetachInstances where
  toQuery DetachInstances' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DetachInstances" :: Core.ByteString),
        "Version" Core.=: ("2011-01-01" :: Core.ByteString),
        "InstanceIds"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Core.<$> instanceIds),
        "AutoScalingGroupName" Core.=: autoScalingGroupName,
        "ShouldDecrementDesiredCapacity"
          Core.=: shouldDecrementDesiredCapacity
      ]

-- | /See:/ 'newDetachInstancesResponse' smart constructor.
data DetachInstancesResponse = DetachInstancesResponse'
  { -- | The activities related to detaching the instances from the Auto Scaling
    -- group.
    activities :: Core.Maybe [Activity],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DetachInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'activities', 'detachInstancesResponse_activities' - The activities related to detaching the instances from the Auto Scaling
-- group.
--
-- 'httpStatus', 'detachInstancesResponse_httpStatus' - The response's http status code.
newDetachInstancesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DetachInstancesResponse
newDetachInstancesResponse pHttpStatus_ =
  DetachInstancesResponse'
    { activities = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The activities related to detaching the instances from the Auto Scaling
-- group.
detachInstancesResponse_activities :: Lens.Lens' DetachInstancesResponse (Core.Maybe [Activity])
detachInstancesResponse_activities = Lens.lens (\DetachInstancesResponse' {activities} -> activities) (\s@DetachInstancesResponse' {} a -> s {activities = a} :: DetachInstancesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
detachInstancesResponse_httpStatus :: Lens.Lens' DetachInstancesResponse Core.Int
detachInstancesResponse_httpStatus = Lens.lens (\DetachInstancesResponse' {httpStatus} -> httpStatus) (\s@DetachInstancesResponse' {} a -> s {httpStatus = a} :: DetachInstancesResponse)

instance Core.NFData DetachInstancesResponse
