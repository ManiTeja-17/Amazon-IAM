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
-- Module      : Network.AWS.ELB.Types.LoadBalancerAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.LoadBalancerAttributes where

import qualified Network.AWS.Core as Core
import Network.AWS.ELB.Internal
import Network.AWS.ELB.Types.AccessLog
import Network.AWS.ELB.Types.AdditionalAttribute
import Network.AWS.ELB.Types.ConnectionDraining
import Network.AWS.ELB.Types.ConnectionSettings
import Network.AWS.ELB.Types.CrossZoneLoadBalancing
import qualified Network.AWS.Lens as Lens

-- | The attributes for a load balancer.
--
-- /See:/ 'newLoadBalancerAttributes' smart constructor.
data LoadBalancerAttributes = LoadBalancerAttributes'
  { -- | If enabled, the load balancer allows existing requests to complete
    -- before the load balancer shifts traffic away from a deregistered or
    -- unhealthy instance.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html Configure Connection Draining>
    -- in the /Classic Load Balancers Guide/.
    connectionDraining :: Core.Maybe ConnectionDraining,
    -- | Any additional attributes.
    additionalAttributes :: Core.Maybe [AdditionalAttribute],
    -- | If enabled, the load balancer allows the connections to remain idle (no
    -- data is sent over the connection) for the specified duration.
    --
    -- By default, Elastic Load Balancing maintains a 60-second idle connection
    -- timeout for both front-end and back-end connections of your load
    -- balancer. For more information, see
    -- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html Configure Idle Connection Timeout>
    -- in the /Classic Load Balancers Guide/.
    connectionSettings :: Core.Maybe ConnectionSettings,
    -- | If enabled, the load balancer captures detailed information of all
    -- requests and delivers the information to the Amazon S3 bucket that you
    -- specify.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html Enable Access Logs>
    -- in the /Classic Load Balancers Guide/.
    accessLog :: Core.Maybe AccessLog,
    -- | If enabled, the load balancer routes the request traffic evenly across
    -- all instances regardless of the Availability Zones.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html Configure Cross-Zone Load Balancing>
    -- in the /Classic Load Balancers Guide/.
    crossZoneLoadBalancing :: Core.Maybe CrossZoneLoadBalancing
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LoadBalancerAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionDraining', 'loadBalancerAttributes_connectionDraining' - If enabled, the load balancer allows existing requests to complete
-- before the load balancer shifts traffic away from a deregistered or
-- unhealthy instance.
--
-- For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html Configure Connection Draining>
-- in the /Classic Load Balancers Guide/.
--
-- 'additionalAttributes', 'loadBalancerAttributes_additionalAttributes' - Any additional attributes.
--
-- 'connectionSettings', 'loadBalancerAttributes_connectionSettings' - If enabled, the load balancer allows the connections to remain idle (no
-- data is sent over the connection) for the specified duration.
--
-- By default, Elastic Load Balancing maintains a 60-second idle connection
-- timeout for both front-end and back-end connections of your load
-- balancer. For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html Configure Idle Connection Timeout>
-- in the /Classic Load Balancers Guide/.
--
-- 'accessLog', 'loadBalancerAttributes_accessLog' - If enabled, the load balancer captures detailed information of all
-- requests and delivers the information to the Amazon S3 bucket that you
-- specify.
--
-- For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html Enable Access Logs>
-- in the /Classic Load Balancers Guide/.
--
-- 'crossZoneLoadBalancing', 'loadBalancerAttributes_crossZoneLoadBalancing' - If enabled, the load balancer routes the request traffic evenly across
-- all instances regardless of the Availability Zones.
--
-- For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html Configure Cross-Zone Load Balancing>
-- in the /Classic Load Balancers Guide/.
newLoadBalancerAttributes ::
  LoadBalancerAttributes
newLoadBalancerAttributes =
  LoadBalancerAttributes'
    { connectionDraining =
        Core.Nothing,
      additionalAttributes = Core.Nothing,
      connectionSettings = Core.Nothing,
      accessLog = Core.Nothing,
      crossZoneLoadBalancing = Core.Nothing
    }

-- | If enabled, the load balancer allows existing requests to complete
-- before the load balancer shifts traffic away from a deregistered or
-- unhealthy instance.
--
-- For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html Configure Connection Draining>
-- in the /Classic Load Balancers Guide/.
loadBalancerAttributes_connectionDraining :: Lens.Lens' LoadBalancerAttributes (Core.Maybe ConnectionDraining)
loadBalancerAttributes_connectionDraining = Lens.lens (\LoadBalancerAttributes' {connectionDraining} -> connectionDraining) (\s@LoadBalancerAttributes' {} a -> s {connectionDraining = a} :: LoadBalancerAttributes)

-- | Any additional attributes.
loadBalancerAttributes_additionalAttributes :: Lens.Lens' LoadBalancerAttributes (Core.Maybe [AdditionalAttribute])
loadBalancerAttributes_additionalAttributes = Lens.lens (\LoadBalancerAttributes' {additionalAttributes} -> additionalAttributes) (\s@LoadBalancerAttributes' {} a -> s {additionalAttributes = a} :: LoadBalancerAttributes) Core.. Lens.mapping Lens._Coerce

-- | If enabled, the load balancer allows the connections to remain idle (no
-- data is sent over the connection) for the specified duration.
--
-- By default, Elastic Load Balancing maintains a 60-second idle connection
-- timeout for both front-end and back-end connections of your load
-- balancer. For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html Configure Idle Connection Timeout>
-- in the /Classic Load Balancers Guide/.
loadBalancerAttributes_connectionSettings :: Lens.Lens' LoadBalancerAttributes (Core.Maybe ConnectionSettings)
loadBalancerAttributes_connectionSettings = Lens.lens (\LoadBalancerAttributes' {connectionSettings} -> connectionSettings) (\s@LoadBalancerAttributes' {} a -> s {connectionSettings = a} :: LoadBalancerAttributes)

-- | If enabled, the load balancer captures detailed information of all
-- requests and delivers the information to the Amazon S3 bucket that you
-- specify.
--
-- For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html Enable Access Logs>
-- in the /Classic Load Balancers Guide/.
loadBalancerAttributes_accessLog :: Lens.Lens' LoadBalancerAttributes (Core.Maybe AccessLog)
loadBalancerAttributes_accessLog = Lens.lens (\LoadBalancerAttributes' {accessLog} -> accessLog) (\s@LoadBalancerAttributes' {} a -> s {accessLog = a} :: LoadBalancerAttributes)

-- | If enabled, the load balancer routes the request traffic evenly across
-- all instances regardless of the Availability Zones.
--
-- For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html Configure Cross-Zone Load Balancing>
-- in the /Classic Load Balancers Guide/.
loadBalancerAttributes_crossZoneLoadBalancing :: Lens.Lens' LoadBalancerAttributes (Core.Maybe CrossZoneLoadBalancing)
loadBalancerAttributes_crossZoneLoadBalancing = Lens.lens (\LoadBalancerAttributes' {crossZoneLoadBalancing} -> crossZoneLoadBalancing) (\s@LoadBalancerAttributes' {} a -> s {crossZoneLoadBalancing = a} :: LoadBalancerAttributes)

instance Core.FromXML LoadBalancerAttributes where
  parseXML x =
    LoadBalancerAttributes'
      Core.<$> (x Core..@? "ConnectionDraining")
      Core.<*> ( x Core..@? "AdditionalAttributes"
                   Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "member")
               )
      Core.<*> (x Core..@? "ConnectionSettings")
      Core.<*> (x Core..@? "AccessLog")
      Core.<*> (x Core..@? "CrossZoneLoadBalancing")

instance Core.Hashable LoadBalancerAttributes

instance Core.NFData LoadBalancerAttributes

instance Core.ToQuery LoadBalancerAttributes where
  toQuery LoadBalancerAttributes' {..} =
    Core.mconcat
      [ "ConnectionDraining" Core.=: connectionDraining,
        "AdditionalAttributes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Core.<$> additionalAttributes
            ),
        "ConnectionSettings" Core.=: connectionSettings,
        "AccessLog" Core.=: accessLog,
        "CrossZoneLoadBalancing"
          Core.=: crossZoneLoadBalancing
      ]
