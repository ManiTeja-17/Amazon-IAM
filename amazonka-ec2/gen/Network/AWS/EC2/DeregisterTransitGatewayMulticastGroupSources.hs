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
-- Module      : Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupSources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deregisters the specified sources (network interfaces) from the transit
-- gateway multicast group.
module Network.AWS.EC2.DeregisterTransitGatewayMulticastGroupSources
  ( -- * Creating a Request
    DeregisterTransitGatewayMulticastGroupSources (..),
    newDeregisterTransitGatewayMulticastGroupSources,

    -- * Request Lenses
    deregisterTransitGatewayMulticastGroupSources_dryRun,
    deregisterTransitGatewayMulticastGroupSources_transitGatewayMulticastDomainId,
    deregisterTransitGatewayMulticastGroupSources_networkInterfaceIds,
    deregisterTransitGatewayMulticastGroupSources_groupIpAddress,

    -- * Destructuring the Response
    DeregisterTransitGatewayMulticastGroupSourcesResponse (..),
    newDeregisterTransitGatewayMulticastGroupSourcesResponse,

    -- * Response Lenses
    deregisterTransitGatewayMulticastGroupSourcesResponse_deregisteredMulticastGroupSources,
    deregisterTransitGatewayMulticastGroupSourcesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeregisterTransitGatewayMulticastGroupSources' smart constructor.
data DeregisterTransitGatewayMulticastGroupSources = DeregisterTransitGatewayMulticastGroupSources'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | The ID of the transit gateway multicast domain.
    transitGatewayMulticastDomainId :: Core.Maybe Core.Text,
    -- | The IDs of the group sources\' network interfaces.
    networkInterfaceIds :: Core.Maybe [Core.Text],
    -- | The IP address assigned to the transit gateway multicast group.
    groupIpAddress :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeregisterTransitGatewayMulticastGroupSources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'deregisterTransitGatewayMulticastGroupSources_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'transitGatewayMulticastDomainId', 'deregisterTransitGatewayMulticastGroupSources_transitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
--
-- 'networkInterfaceIds', 'deregisterTransitGatewayMulticastGroupSources_networkInterfaceIds' - The IDs of the group sources\' network interfaces.
--
-- 'groupIpAddress', 'deregisterTransitGatewayMulticastGroupSources_groupIpAddress' - The IP address assigned to the transit gateway multicast group.
newDeregisterTransitGatewayMulticastGroupSources ::
  DeregisterTransitGatewayMulticastGroupSources
newDeregisterTransitGatewayMulticastGroupSources =
  DeregisterTransitGatewayMulticastGroupSources'
    { dryRun =
        Core.Nothing,
      transitGatewayMulticastDomainId =
        Core.Nothing,
      networkInterfaceIds =
        Core.Nothing,
      groupIpAddress =
        Core.Nothing
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
deregisterTransitGatewayMulticastGroupSources_dryRun :: Lens.Lens' DeregisterTransitGatewayMulticastGroupSources (Core.Maybe Core.Bool)
deregisterTransitGatewayMulticastGroupSources_dryRun = Lens.lens (\DeregisterTransitGatewayMulticastGroupSources' {dryRun} -> dryRun) (\s@DeregisterTransitGatewayMulticastGroupSources' {} a -> s {dryRun = a} :: DeregisterTransitGatewayMulticastGroupSources)

-- | The ID of the transit gateway multicast domain.
deregisterTransitGatewayMulticastGroupSources_transitGatewayMulticastDomainId :: Lens.Lens' DeregisterTransitGatewayMulticastGroupSources (Core.Maybe Core.Text)
deregisterTransitGatewayMulticastGroupSources_transitGatewayMulticastDomainId = Lens.lens (\DeregisterTransitGatewayMulticastGroupSources' {transitGatewayMulticastDomainId} -> transitGatewayMulticastDomainId) (\s@DeregisterTransitGatewayMulticastGroupSources' {} a -> s {transitGatewayMulticastDomainId = a} :: DeregisterTransitGatewayMulticastGroupSources)

-- | The IDs of the group sources\' network interfaces.
deregisterTransitGatewayMulticastGroupSources_networkInterfaceIds :: Lens.Lens' DeregisterTransitGatewayMulticastGroupSources (Core.Maybe [Core.Text])
deregisterTransitGatewayMulticastGroupSources_networkInterfaceIds = Lens.lens (\DeregisterTransitGatewayMulticastGroupSources' {networkInterfaceIds} -> networkInterfaceIds) (\s@DeregisterTransitGatewayMulticastGroupSources' {} a -> s {networkInterfaceIds = a} :: DeregisterTransitGatewayMulticastGroupSources) Core.. Lens.mapping Lens._Coerce

-- | The IP address assigned to the transit gateway multicast group.
deregisterTransitGatewayMulticastGroupSources_groupIpAddress :: Lens.Lens' DeregisterTransitGatewayMulticastGroupSources (Core.Maybe Core.Text)
deregisterTransitGatewayMulticastGroupSources_groupIpAddress = Lens.lens (\DeregisterTransitGatewayMulticastGroupSources' {groupIpAddress} -> groupIpAddress) (\s@DeregisterTransitGatewayMulticastGroupSources' {} a -> s {groupIpAddress = a} :: DeregisterTransitGatewayMulticastGroupSources)

instance
  Core.AWSRequest
    DeregisterTransitGatewayMulticastGroupSources
  where
  type
    AWSResponse
      DeregisterTransitGatewayMulticastGroupSources =
      DeregisterTransitGatewayMulticastGroupSourcesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DeregisterTransitGatewayMulticastGroupSourcesResponse'
            Core.<$> (x Core..@? "deregisteredMulticastGroupSources")
              Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    DeregisterTransitGatewayMulticastGroupSources

instance
  Core.NFData
    DeregisterTransitGatewayMulticastGroupSources

instance
  Core.ToHeaders
    DeregisterTransitGatewayMulticastGroupSources
  where
  toHeaders = Core.const Core.mempty

instance
  Core.ToPath
    DeregisterTransitGatewayMulticastGroupSources
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    DeregisterTransitGatewayMulticastGroupSources
  where
  toQuery
    DeregisterTransitGatewayMulticastGroupSources' {..} =
      Core.mconcat
        [ "Action"
            Core.=: ( "DeregisterTransitGatewayMulticastGroupSources" ::
                        Core.ByteString
                    ),
          "Version" Core.=: ("2016-11-15" :: Core.ByteString),
          "DryRun" Core.=: dryRun,
          "TransitGatewayMulticastDomainId"
            Core.=: transitGatewayMulticastDomainId,
          Core.toQuery
            ( Core.toQueryList "NetworkInterfaceIds"
                Core.<$> networkInterfaceIds
            ),
          "GroupIpAddress" Core.=: groupIpAddress
        ]

-- | /See:/ 'newDeregisterTransitGatewayMulticastGroupSourcesResponse' smart constructor.
data DeregisterTransitGatewayMulticastGroupSourcesResponse = DeregisterTransitGatewayMulticastGroupSourcesResponse'
  { -- | Information about the deregistered group sources.
    deregisteredMulticastGroupSources :: Core.Maybe TransitGatewayMulticastDeregisteredGroupSources,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeregisterTransitGatewayMulticastGroupSourcesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deregisteredMulticastGroupSources', 'deregisterTransitGatewayMulticastGroupSourcesResponse_deregisteredMulticastGroupSources' - Information about the deregistered group sources.
--
-- 'httpStatus', 'deregisterTransitGatewayMulticastGroupSourcesResponse_httpStatus' - The response's http status code.
newDeregisterTransitGatewayMulticastGroupSourcesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeregisterTransitGatewayMulticastGroupSourcesResponse
newDeregisterTransitGatewayMulticastGroupSourcesResponse
  pHttpStatus_ =
    DeregisterTransitGatewayMulticastGroupSourcesResponse'
      { deregisteredMulticastGroupSources =
          Core.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Information about the deregistered group sources.
deregisterTransitGatewayMulticastGroupSourcesResponse_deregisteredMulticastGroupSources :: Lens.Lens' DeregisterTransitGatewayMulticastGroupSourcesResponse (Core.Maybe TransitGatewayMulticastDeregisteredGroupSources)
deregisterTransitGatewayMulticastGroupSourcesResponse_deregisteredMulticastGroupSources = Lens.lens (\DeregisterTransitGatewayMulticastGroupSourcesResponse' {deregisteredMulticastGroupSources} -> deregisteredMulticastGroupSources) (\s@DeregisterTransitGatewayMulticastGroupSourcesResponse' {} a -> s {deregisteredMulticastGroupSources = a} :: DeregisterTransitGatewayMulticastGroupSourcesResponse)

-- | The response's http status code.
deregisterTransitGatewayMulticastGroupSourcesResponse_httpStatus :: Lens.Lens' DeregisterTransitGatewayMulticastGroupSourcesResponse Core.Int
deregisterTransitGatewayMulticastGroupSourcesResponse_httpStatus = Lens.lens (\DeregisterTransitGatewayMulticastGroupSourcesResponse' {httpStatus} -> httpStatus) (\s@DeregisterTransitGatewayMulticastGroupSourcesResponse' {} a -> s {httpStatus = a} :: DeregisterTransitGatewayMulticastGroupSourcesResponse)

instance
  Core.NFData
    DeregisterTransitGatewayMulticastGroupSourcesResponse
