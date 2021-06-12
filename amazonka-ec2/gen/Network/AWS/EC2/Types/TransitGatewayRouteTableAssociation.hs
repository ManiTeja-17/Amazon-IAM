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
-- Module      : Network.AWS.EC2.Types.TransitGatewayRouteTableAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayRouteTableAssociation where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.TransitGatewayAssociationState
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import qualified Network.AWS.Lens as Lens

-- | Describes an association between a route table and a resource
-- attachment.
--
-- /See:/ 'newTransitGatewayRouteTableAssociation' smart constructor.
data TransitGatewayRouteTableAssociation = TransitGatewayRouteTableAssociation'
  { -- | The ID of the resource.
    resourceId :: Core.Maybe Core.Text,
    -- | The resource type. Note that the @tgw-peering@ resource type has been
    -- deprecated.
    resourceType :: Core.Maybe TransitGatewayAttachmentResourceType,
    -- | The state of the association.
    state :: Core.Maybe TransitGatewayAssociationState,
    -- | The ID of the attachment.
    transitGatewayAttachmentId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TransitGatewayRouteTableAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'transitGatewayRouteTableAssociation_resourceId' - The ID of the resource.
--
-- 'resourceType', 'transitGatewayRouteTableAssociation_resourceType' - The resource type. Note that the @tgw-peering@ resource type has been
-- deprecated.
--
-- 'state', 'transitGatewayRouteTableAssociation_state' - The state of the association.
--
-- 'transitGatewayAttachmentId', 'transitGatewayRouteTableAssociation_transitGatewayAttachmentId' - The ID of the attachment.
newTransitGatewayRouteTableAssociation ::
  TransitGatewayRouteTableAssociation
newTransitGatewayRouteTableAssociation =
  TransitGatewayRouteTableAssociation'
    { resourceId =
        Core.Nothing,
      resourceType = Core.Nothing,
      state = Core.Nothing,
      transitGatewayAttachmentId =
        Core.Nothing
    }

-- | The ID of the resource.
transitGatewayRouteTableAssociation_resourceId :: Lens.Lens' TransitGatewayRouteTableAssociation (Core.Maybe Core.Text)
transitGatewayRouteTableAssociation_resourceId = Lens.lens (\TransitGatewayRouteTableAssociation' {resourceId} -> resourceId) (\s@TransitGatewayRouteTableAssociation' {} a -> s {resourceId = a} :: TransitGatewayRouteTableAssociation)

-- | The resource type. Note that the @tgw-peering@ resource type has been
-- deprecated.
transitGatewayRouteTableAssociation_resourceType :: Lens.Lens' TransitGatewayRouteTableAssociation (Core.Maybe TransitGatewayAttachmentResourceType)
transitGatewayRouteTableAssociation_resourceType = Lens.lens (\TransitGatewayRouteTableAssociation' {resourceType} -> resourceType) (\s@TransitGatewayRouteTableAssociation' {} a -> s {resourceType = a} :: TransitGatewayRouteTableAssociation)

-- | The state of the association.
transitGatewayRouteTableAssociation_state :: Lens.Lens' TransitGatewayRouteTableAssociation (Core.Maybe TransitGatewayAssociationState)
transitGatewayRouteTableAssociation_state = Lens.lens (\TransitGatewayRouteTableAssociation' {state} -> state) (\s@TransitGatewayRouteTableAssociation' {} a -> s {state = a} :: TransitGatewayRouteTableAssociation)

-- | The ID of the attachment.
transitGatewayRouteTableAssociation_transitGatewayAttachmentId :: Lens.Lens' TransitGatewayRouteTableAssociation (Core.Maybe Core.Text)
transitGatewayRouteTableAssociation_transitGatewayAttachmentId = Lens.lens (\TransitGatewayRouteTableAssociation' {transitGatewayAttachmentId} -> transitGatewayAttachmentId) (\s@TransitGatewayRouteTableAssociation' {} a -> s {transitGatewayAttachmentId = a} :: TransitGatewayRouteTableAssociation)

instance
  Core.FromXML
    TransitGatewayRouteTableAssociation
  where
  parseXML x =
    TransitGatewayRouteTableAssociation'
      Core.<$> (x Core..@? "resourceId")
      Core.<*> (x Core..@? "resourceType")
      Core.<*> (x Core..@? "state")
      Core.<*> (x Core..@? "transitGatewayAttachmentId")

instance
  Core.Hashable
    TransitGatewayRouteTableAssociation

instance
  Core.NFData
    TransitGatewayRouteTableAssociation
