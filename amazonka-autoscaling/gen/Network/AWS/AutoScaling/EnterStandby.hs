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
-- Module      : Network.AWS.AutoScaling.EnterStandby
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified instances into the standby state.
--
-- If you choose to decrement the desired capacity of the Auto Scaling
-- group, the instances can enter standby as long as the desired capacity
-- of the Auto Scaling group after the instances are placed into standby is
-- equal to or greater than the minimum capacity of the group.
--
-- If you choose not to decrement the desired capacity of the Auto Scaling
-- group, the Auto Scaling group launches new instances to replace the
-- instances on standby.
--
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html Temporarily removing instances from your Auto Scaling group>
-- in the /Amazon EC2 Auto Scaling User Guide/.
module Network.AWS.AutoScaling.EnterStandby
  ( -- * Creating a Request
    EnterStandby (..),
    newEnterStandby,

    -- * Request Lenses
    enterStandby_instanceIds,
    enterStandby_autoScalingGroupName,
    enterStandby_shouldDecrementDesiredCapacity,

    -- * Destructuring the Response
    EnterStandbyResponse (..),
    newEnterStandbyResponse,

    -- * Response Lenses
    enterStandbyResponse_activities,
    enterStandbyResponse_httpStatus,
  )
where

import Network.AWS.AutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newEnterStandby' smart constructor.
data EnterStandby = EnterStandby'
  { -- | The IDs of the instances. You can specify up to 20 instances.
    instanceIds :: Core.Maybe [Core.Text],
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Core.Text,
    -- | Indicates whether to decrement the desired capacity of the Auto Scaling
    -- group by the number of instances moved to @Standby@ mode.
    shouldDecrementDesiredCapacity :: Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EnterStandby' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceIds', 'enterStandby_instanceIds' - The IDs of the instances. You can specify up to 20 instances.
--
-- 'autoScalingGroupName', 'enterStandby_autoScalingGroupName' - The name of the Auto Scaling group.
--
-- 'shouldDecrementDesiredCapacity', 'enterStandby_shouldDecrementDesiredCapacity' - Indicates whether to decrement the desired capacity of the Auto Scaling
-- group by the number of instances moved to @Standby@ mode.
newEnterStandby ::
  -- | 'autoScalingGroupName'
  Core.Text ->
  -- | 'shouldDecrementDesiredCapacity'
  Core.Bool ->
  EnterStandby
newEnterStandby
  pAutoScalingGroupName_
  pShouldDecrementDesiredCapacity_ =
    EnterStandby'
      { instanceIds = Core.Nothing,
        autoScalingGroupName = pAutoScalingGroupName_,
        shouldDecrementDesiredCapacity =
          pShouldDecrementDesiredCapacity_
      }

-- | The IDs of the instances. You can specify up to 20 instances.
enterStandby_instanceIds :: Lens.Lens' EnterStandby (Core.Maybe [Core.Text])
enterStandby_instanceIds = Lens.lens (\EnterStandby' {instanceIds} -> instanceIds) (\s@EnterStandby' {} a -> s {instanceIds = a} :: EnterStandby) Core.. Lens.mapping Lens._Coerce

-- | The name of the Auto Scaling group.
enterStandby_autoScalingGroupName :: Lens.Lens' EnterStandby Core.Text
enterStandby_autoScalingGroupName = Lens.lens (\EnterStandby' {autoScalingGroupName} -> autoScalingGroupName) (\s@EnterStandby' {} a -> s {autoScalingGroupName = a} :: EnterStandby)

-- | Indicates whether to decrement the desired capacity of the Auto Scaling
-- group by the number of instances moved to @Standby@ mode.
enterStandby_shouldDecrementDesiredCapacity :: Lens.Lens' EnterStandby Core.Bool
enterStandby_shouldDecrementDesiredCapacity = Lens.lens (\EnterStandby' {shouldDecrementDesiredCapacity} -> shouldDecrementDesiredCapacity) (\s@EnterStandby' {} a -> s {shouldDecrementDesiredCapacity = a} :: EnterStandby)

instance Core.AWSRequest EnterStandby where
  type AWSResponse EnterStandby = EnterStandbyResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "EnterStandbyResult"
      ( \s h x ->
          EnterStandbyResponse'
            Core.<$> ( x Core..@? "Activities" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "member")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable EnterStandby

instance Core.NFData EnterStandby

instance Core.ToHeaders EnterStandby where
  toHeaders = Core.const Core.mempty

instance Core.ToPath EnterStandby where
  toPath = Core.const "/"

instance Core.ToQuery EnterStandby where
  toQuery EnterStandby' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("EnterStandby" :: Core.ByteString),
        "Version" Core.=: ("2011-01-01" :: Core.ByteString),
        "InstanceIds"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Core.<$> instanceIds),
        "AutoScalingGroupName" Core.=: autoScalingGroupName,
        "ShouldDecrementDesiredCapacity"
          Core.=: shouldDecrementDesiredCapacity
      ]

-- | /See:/ 'newEnterStandbyResponse' smart constructor.
data EnterStandbyResponse = EnterStandbyResponse'
  { -- | The activities related to moving instances into @Standby@ mode.
    activities :: Core.Maybe [Activity],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EnterStandbyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'activities', 'enterStandbyResponse_activities' - The activities related to moving instances into @Standby@ mode.
--
-- 'httpStatus', 'enterStandbyResponse_httpStatus' - The response's http status code.
newEnterStandbyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  EnterStandbyResponse
newEnterStandbyResponse pHttpStatus_ =
  EnterStandbyResponse'
    { activities = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The activities related to moving instances into @Standby@ mode.
enterStandbyResponse_activities :: Lens.Lens' EnterStandbyResponse (Core.Maybe [Activity])
enterStandbyResponse_activities = Lens.lens (\EnterStandbyResponse' {activities} -> activities) (\s@EnterStandbyResponse' {} a -> s {activities = a} :: EnterStandbyResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
enterStandbyResponse_httpStatus :: Lens.Lens' EnterStandbyResponse Core.Int
enterStandbyResponse_httpStatus = Lens.lens (\EnterStandbyResponse' {httpStatus} -> httpStatus) (\s@EnterStandbyResponse' {} a -> s {httpStatus = a} :: EnterStandbyResponse)

instance Core.NFData EnterStandbyResponse
