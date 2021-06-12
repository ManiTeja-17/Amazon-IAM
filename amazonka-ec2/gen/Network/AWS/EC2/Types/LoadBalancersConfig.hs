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
-- Module      : Network.AWS.EC2.Types.LoadBalancersConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LoadBalancersConfig where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClassicLoadBalancersConfig
import Network.AWS.EC2.Types.TargetGroupsConfig
import qualified Network.AWS.Lens as Lens

-- | Describes the Classic Load Balancers and target groups to attach to a
-- Spot Fleet request.
--
-- /See:/ 'newLoadBalancersConfig' smart constructor.
data LoadBalancersConfig = LoadBalancersConfig'
  { -- | The Classic Load Balancers.
    classicLoadBalancersConfig :: Core.Maybe ClassicLoadBalancersConfig,
    -- | The target groups.
    targetGroupsConfig :: Core.Maybe TargetGroupsConfig
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LoadBalancersConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'classicLoadBalancersConfig', 'loadBalancersConfig_classicLoadBalancersConfig' - The Classic Load Balancers.
--
-- 'targetGroupsConfig', 'loadBalancersConfig_targetGroupsConfig' - The target groups.
newLoadBalancersConfig ::
  LoadBalancersConfig
newLoadBalancersConfig =
  LoadBalancersConfig'
    { classicLoadBalancersConfig =
        Core.Nothing,
      targetGroupsConfig = Core.Nothing
    }

-- | The Classic Load Balancers.
loadBalancersConfig_classicLoadBalancersConfig :: Lens.Lens' LoadBalancersConfig (Core.Maybe ClassicLoadBalancersConfig)
loadBalancersConfig_classicLoadBalancersConfig = Lens.lens (\LoadBalancersConfig' {classicLoadBalancersConfig} -> classicLoadBalancersConfig) (\s@LoadBalancersConfig' {} a -> s {classicLoadBalancersConfig = a} :: LoadBalancersConfig)

-- | The target groups.
loadBalancersConfig_targetGroupsConfig :: Lens.Lens' LoadBalancersConfig (Core.Maybe TargetGroupsConfig)
loadBalancersConfig_targetGroupsConfig = Lens.lens (\LoadBalancersConfig' {targetGroupsConfig} -> targetGroupsConfig) (\s@LoadBalancersConfig' {} a -> s {targetGroupsConfig = a} :: LoadBalancersConfig)

instance Core.FromXML LoadBalancersConfig where
  parseXML x =
    LoadBalancersConfig'
      Core.<$> (x Core..@? "classicLoadBalancersConfig")
      Core.<*> (x Core..@? "targetGroupsConfig")

instance Core.Hashable LoadBalancersConfig

instance Core.NFData LoadBalancersConfig

instance Core.ToQuery LoadBalancersConfig where
  toQuery LoadBalancersConfig' {..} =
    Core.mconcat
      [ "ClassicLoadBalancersConfig"
          Core.=: classicLoadBalancersConfig,
        "TargetGroupsConfig" Core.=: targetGroupsConfig
      ]
