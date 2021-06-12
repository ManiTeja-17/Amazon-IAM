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
-- Module      : Network.AWS.AutoScaling.ExecutePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Executes the specified policy. This can be useful for testing the design
-- of your scaling policy.
module Network.AWS.AutoScaling.ExecutePolicy
  ( -- * Creating a Request
    ExecutePolicy (..),
    newExecutePolicy,

    -- * Request Lenses
    executePolicy_metricValue,
    executePolicy_breachThreshold,
    executePolicy_honorCooldown,
    executePolicy_autoScalingGroupName,
    executePolicy_policyName,

    -- * Destructuring the Response
    ExecutePolicyResponse (..),
    newExecutePolicyResponse,
  )
where

import Network.AWS.AutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newExecutePolicy' smart constructor.
data ExecutePolicy = ExecutePolicy'
  { -- | The metric value to compare to @BreachThreshold@. This enables you to
    -- execute a policy of type @StepScaling@ and determine which step
    -- adjustment to use. For example, if the breach threshold is 50 and you
    -- want to use a step adjustment with a lower bound of 0 and an upper bound
    -- of 10, you can set the metric value to 59.
    --
    -- If you specify a metric value that doesn\'t correspond to a step
    -- adjustment for the policy, the call returns an error.
    --
    -- Required if the policy type is @StepScaling@ and not supported
    -- otherwise.
    metricValue :: Core.Maybe Core.Double,
    -- | The breach threshold for the alarm.
    --
    -- Required if the policy type is @StepScaling@ and not supported
    -- otherwise.
    breachThreshold :: Core.Maybe Core.Double,
    -- | Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period
    -- to complete before executing the policy.
    --
    -- Valid only if the policy type is @SimpleScaling@. For more information,
    -- see
    -- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html Scaling cooldowns for Amazon EC2 Auto Scaling>
    -- in the /Amazon EC2 Auto Scaling User Guide/.
    honorCooldown :: Core.Maybe Core.Bool,
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Core.Maybe Core.Text,
    -- | The name or ARN of the policy.
    policyName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ExecutePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricValue', 'executePolicy_metricValue' - The metric value to compare to @BreachThreshold@. This enables you to
-- execute a policy of type @StepScaling@ and determine which step
-- adjustment to use. For example, if the breach threshold is 50 and you
-- want to use a step adjustment with a lower bound of 0 and an upper bound
-- of 10, you can set the metric value to 59.
--
-- If you specify a metric value that doesn\'t correspond to a step
-- adjustment for the policy, the call returns an error.
--
-- Required if the policy type is @StepScaling@ and not supported
-- otherwise.
--
-- 'breachThreshold', 'executePolicy_breachThreshold' - The breach threshold for the alarm.
--
-- Required if the policy type is @StepScaling@ and not supported
-- otherwise.
--
-- 'honorCooldown', 'executePolicy_honorCooldown' - Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period
-- to complete before executing the policy.
--
-- Valid only if the policy type is @SimpleScaling@. For more information,
-- see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html Scaling cooldowns for Amazon EC2 Auto Scaling>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- 'autoScalingGroupName', 'executePolicy_autoScalingGroupName' - The name of the Auto Scaling group.
--
-- 'policyName', 'executePolicy_policyName' - The name or ARN of the policy.
newExecutePolicy ::
  -- | 'policyName'
  Core.Text ->
  ExecutePolicy
newExecutePolicy pPolicyName_ =
  ExecutePolicy'
    { metricValue = Core.Nothing,
      breachThreshold = Core.Nothing,
      honorCooldown = Core.Nothing,
      autoScalingGroupName = Core.Nothing,
      policyName = pPolicyName_
    }

-- | The metric value to compare to @BreachThreshold@. This enables you to
-- execute a policy of type @StepScaling@ and determine which step
-- adjustment to use. For example, if the breach threshold is 50 and you
-- want to use a step adjustment with a lower bound of 0 and an upper bound
-- of 10, you can set the metric value to 59.
--
-- If you specify a metric value that doesn\'t correspond to a step
-- adjustment for the policy, the call returns an error.
--
-- Required if the policy type is @StepScaling@ and not supported
-- otherwise.
executePolicy_metricValue :: Lens.Lens' ExecutePolicy (Core.Maybe Core.Double)
executePolicy_metricValue = Lens.lens (\ExecutePolicy' {metricValue} -> metricValue) (\s@ExecutePolicy' {} a -> s {metricValue = a} :: ExecutePolicy)

-- | The breach threshold for the alarm.
--
-- Required if the policy type is @StepScaling@ and not supported
-- otherwise.
executePolicy_breachThreshold :: Lens.Lens' ExecutePolicy (Core.Maybe Core.Double)
executePolicy_breachThreshold = Lens.lens (\ExecutePolicy' {breachThreshold} -> breachThreshold) (\s@ExecutePolicy' {} a -> s {breachThreshold = a} :: ExecutePolicy)

-- | Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period
-- to complete before executing the policy.
--
-- Valid only if the policy type is @SimpleScaling@. For more information,
-- see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html Scaling cooldowns for Amazon EC2 Auto Scaling>
-- in the /Amazon EC2 Auto Scaling User Guide/.
executePolicy_honorCooldown :: Lens.Lens' ExecutePolicy (Core.Maybe Core.Bool)
executePolicy_honorCooldown = Lens.lens (\ExecutePolicy' {honorCooldown} -> honorCooldown) (\s@ExecutePolicy' {} a -> s {honorCooldown = a} :: ExecutePolicy)

-- | The name of the Auto Scaling group.
executePolicy_autoScalingGroupName :: Lens.Lens' ExecutePolicy (Core.Maybe Core.Text)
executePolicy_autoScalingGroupName = Lens.lens (\ExecutePolicy' {autoScalingGroupName} -> autoScalingGroupName) (\s@ExecutePolicy' {} a -> s {autoScalingGroupName = a} :: ExecutePolicy)

-- | The name or ARN of the policy.
executePolicy_policyName :: Lens.Lens' ExecutePolicy Core.Text
executePolicy_policyName = Lens.lens (\ExecutePolicy' {policyName} -> policyName) (\s@ExecutePolicy' {} a -> s {policyName = a} :: ExecutePolicy)

instance Core.AWSRequest ExecutePolicy where
  type
    AWSResponse ExecutePolicy =
      ExecutePolicyResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull ExecutePolicyResponse'

instance Core.Hashable ExecutePolicy

instance Core.NFData ExecutePolicy

instance Core.ToHeaders ExecutePolicy where
  toHeaders = Core.const Core.mempty

instance Core.ToPath ExecutePolicy where
  toPath = Core.const "/"

instance Core.ToQuery ExecutePolicy where
  toQuery ExecutePolicy' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("ExecutePolicy" :: Core.ByteString),
        "Version" Core.=: ("2011-01-01" :: Core.ByteString),
        "MetricValue" Core.=: metricValue,
        "BreachThreshold" Core.=: breachThreshold,
        "HonorCooldown" Core.=: honorCooldown,
        "AutoScalingGroupName" Core.=: autoScalingGroupName,
        "PolicyName" Core.=: policyName
      ]

-- | /See:/ 'newExecutePolicyResponse' smart constructor.
data ExecutePolicyResponse = ExecutePolicyResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ExecutePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newExecutePolicyResponse ::
  ExecutePolicyResponse
newExecutePolicyResponse = ExecutePolicyResponse'

instance Core.NFData ExecutePolicyResponse
