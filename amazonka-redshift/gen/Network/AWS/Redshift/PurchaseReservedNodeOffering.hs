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
-- Module      : Network.AWS.Redshift.PurchaseReservedNodeOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows you to purchase reserved nodes. Amazon Redshift offers a
-- predefined set of reserved node offerings. You can purchase one or more
-- of the offerings. You can call the DescribeReservedNodeOfferings API to
-- obtain the available reserved node offerings. You can call this API by
-- providing a specific reserved node offering and the number of nodes you
-- want to reserve.
--
-- For more information about reserved node offerings, go to
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html Purchasing Reserved Nodes>
-- in the /Amazon Redshift Cluster Management Guide/.
module Network.AWS.Redshift.PurchaseReservedNodeOffering
  ( -- * Creating a Request
    PurchaseReservedNodeOffering (..),
    newPurchaseReservedNodeOffering,

    -- * Request Lenses
    purchaseReservedNodeOffering_nodeCount,
    purchaseReservedNodeOffering_reservedNodeOfferingId,

    -- * Destructuring the Response
    PurchaseReservedNodeOfferingResponse (..),
    newPurchaseReservedNodeOfferingResponse,

    -- * Response Lenses
    purchaseReservedNodeOfferingResponse_reservedNode,
    purchaseReservedNodeOfferingResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newPurchaseReservedNodeOffering' smart constructor.
data PurchaseReservedNodeOffering = PurchaseReservedNodeOffering'
  { -- | The number of reserved nodes that you want to purchase.
    --
    -- Default: @1@
    nodeCount :: Core.Maybe Core.Int,
    -- | The unique identifier of the reserved node offering you want to
    -- purchase.
    reservedNodeOfferingId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PurchaseReservedNodeOffering' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nodeCount', 'purchaseReservedNodeOffering_nodeCount' - The number of reserved nodes that you want to purchase.
--
-- Default: @1@
--
-- 'reservedNodeOfferingId', 'purchaseReservedNodeOffering_reservedNodeOfferingId' - The unique identifier of the reserved node offering you want to
-- purchase.
newPurchaseReservedNodeOffering ::
  -- | 'reservedNodeOfferingId'
  Core.Text ->
  PurchaseReservedNodeOffering
newPurchaseReservedNodeOffering
  pReservedNodeOfferingId_ =
    PurchaseReservedNodeOffering'
      { nodeCount =
          Core.Nothing,
        reservedNodeOfferingId =
          pReservedNodeOfferingId_
      }

-- | The number of reserved nodes that you want to purchase.
--
-- Default: @1@
purchaseReservedNodeOffering_nodeCount :: Lens.Lens' PurchaseReservedNodeOffering (Core.Maybe Core.Int)
purchaseReservedNodeOffering_nodeCount = Lens.lens (\PurchaseReservedNodeOffering' {nodeCount} -> nodeCount) (\s@PurchaseReservedNodeOffering' {} a -> s {nodeCount = a} :: PurchaseReservedNodeOffering)

-- | The unique identifier of the reserved node offering you want to
-- purchase.
purchaseReservedNodeOffering_reservedNodeOfferingId :: Lens.Lens' PurchaseReservedNodeOffering Core.Text
purchaseReservedNodeOffering_reservedNodeOfferingId = Lens.lens (\PurchaseReservedNodeOffering' {reservedNodeOfferingId} -> reservedNodeOfferingId) (\s@PurchaseReservedNodeOffering' {} a -> s {reservedNodeOfferingId = a} :: PurchaseReservedNodeOffering)

instance Core.AWSRequest PurchaseReservedNodeOffering where
  type
    AWSResponse PurchaseReservedNodeOffering =
      PurchaseReservedNodeOfferingResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "PurchaseReservedNodeOfferingResult"
      ( \s h x ->
          PurchaseReservedNodeOfferingResponse'
            Core.<$> (x Core..@? "ReservedNode")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable PurchaseReservedNodeOffering

instance Core.NFData PurchaseReservedNodeOffering

instance Core.ToHeaders PurchaseReservedNodeOffering where
  toHeaders = Core.const Core.mempty

instance Core.ToPath PurchaseReservedNodeOffering where
  toPath = Core.const "/"

instance Core.ToQuery PurchaseReservedNodeOffering where
  toQuery PurchaseReservedNodeOffering' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("PurchaseReservedNodeOffering" :: Core.ByteString),
        "Version" Core.=: ("2012-12-01" :: Core.ByteString),
        "NodeCount" Core.=: nodeCount,
        "ReservedNodeOfferingId"
          Core.=: reservedNodeOfferingId
      ]

-- | /See:/ 'newPurchaseReservedNodeOfferingResponse' smart constructor.
data PurchaseReservedNodeOfferingResponse = PurchaseReservedNodeOfferingResponse'
  { reservedNode :: Core.Maybe ReservedNode,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PurchaseReservedNodeOfferingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservedNode', 'purchaseReservedNodeOfferingResponse_reservedNode' - Undocumented member.
--
-- 'httpStatus', 'purchaseReservedNodeOfferingResponse_httpStatus' - The response's http status code.
newPurchaseReservedNodeOfferingResponse ::
  -- | 'httpStatus'
  Core.Int ->
  PurchaseReservedNodeOfferingResponse
newPurchaseReservedNodeOfferingResponse pHttpStatus_ =
  PurchaseReservedNodeOfferingResponse'
    { reservedNode =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
purchaseReservedNodeOfferingResponse_reservedNode :: Lens.Lens' PurchaseReservedNodeOfferingResponse (Core.Maybe ReservedNode)
purchaseReservedNodeOfferingResponse_reservedNode = Lens.lens (\PurchaseReservedNodeOfferingResponse' {reservedNode} -> reservedNode) (\s@PurchaseReservedNodeOfferingResponse' {} a -> s {reservedNode = a} :: PurchaseReservedNodeOfferingResponse)

-- | The response's http status code.
purchaseReservedNodeOfferingResponse_httpStatus :: Lens.Lens' PurchaseReservedNodeOfferingResponse Core.Int
purchaseReservedNodeOfferingResponse_httpStatus = Lens.lens (\PurchaseReservedNodeOfferingResponse' {httpStatus} -> httpStatus) (\s@PurchaseReservedNodeOfferingResponse' {} a -> s {httpStatus = a} :: PurchaseReservedNodeOfferingResponse)

instance
  Core.NFData
    PurchaseReservedNodeOfferingResponse
