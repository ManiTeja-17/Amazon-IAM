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
-- Module      : Network.AWS.ElastiCache.PurchaseReservedCacheNodesOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows you to purchase a reserved cache node offering. Reserved nodes
-- are not eligible for cancellation and are non-refundable. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/reserved-nodes.html Managing Costs with Reserved Nodes>
-- for Redis or
-- <https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/reserved-nodes.html Managing Costs with Reserved Nodes>
-- for Memcached.
module Network.AWS.ElastiCache.PurchaseReservedCacheNodesOffering
  ( -- * Creating a Request
    PurchaseReservedCacheNodesOffering (..),
    newPurchaseReservedCacheNodesOffering,

    -- * Request Lenses
    purchaseReservedCacheNodesOffering_cacheNodeCount,
    purchaseReservedCacheNodesOffering_reservedCacheNodeId,
    purchaseReservedCacheNodesOffering_reservedCacheNodesOfferingId,

    -- * Destructuring the Response
    PurchaseReservedCacheNodesOfferingResponse (..),
    newPurchaseReservedCacheNodesOfferingResponse,

    -- * Response Lenses
    purchaseReservedCacheNodesOfferingResponse_reservedCacheNode,
    purchaseReservedCacheNodesOfferingResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElastiCache.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @PurchaseReservedCacheNodesOffering@
-- operation.
--
-- /See:/ 'newPurchaseReservedCacheNodesOffering' smart constructor.
data PurchaseReservedCacheNodesOffering = PurchaseReservedCacheNodesOffering'
  { -- | The number of cache node instances to reserve.
    --
    -- Default: @1@
    cacheNodeCount :: Core.Maybe Core.Int,
    -- | A customer-specified identifier to track this reservation.
    --
    -- The Reserved Cache Node ID is an unique customer-specified identifier to
    -- track this reservation. If this parameter is not specified, ElastiCache
    -- automatically generates an identifier for the reservation.
    --
    -- Example: myreservationID
    reservedCacheNodeId :: Core.Maybe Core.Text,
    -- | The ID of the reserved cache node offering to purchase.
    --
    -- Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
    reservedCacheNodesOfferingId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PurchaseReservedCacheNodesOffering' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cacheNodeCount', 'purchaseReservedCacheNodesOffering_cacheNodeCount' - The number of cache node instances to reserve.
--
-- Default: @1@
--
-- 'reservedCacheNodeId', 'purchaseReservedCacheNodesOffering_reservedCacheNodeId' - A customer-specified identifier to track this reservation.
--
-- The Reserved Cache Node ID is an unique customer-specified identifier to
-- track this reservation. If this parameter is not specified, ElastiCache
-- automatically generates an identifier for the reservation.
--
-- Example: myreservationID
--
-- 'reservedCacheNodesOfferingId', 'purchaseReservedCacheNodesOffering_reservedCacheNodesOfferingId' - The ID of the reserved cache node offering to purchase.
--
-- Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
newPurchaseReservedCacheNodesOffering ::
  -- | 'reservedCacheNodesOfferingId'
  Core.Text ->
  PurchaseReservedCacheNodesOffering
newPurchaseReservedCacheNodesOffering
  pReservedCacheNodesOfferingId_ =
    PurchaseReservedCacheNodesOffering'
      { cacheNodeCount =
          Core.Nothing,
        reservedCacheNodeId = Core.Nothing,
        reservedCacheNodesOfferingId =
          pReservedCacheNodesOfferingId_
      }

-- | The number of cache node instances to reserve.
--
-- Default: @1@
purchaseReservedCacheNodesOffering_cacheNodeCount :: Lens.Lens' PurchaseReservedCacheNodesOffering (Core.Maybe Core.Int)
purchaseReservedCacheNodesOffering_cacheNodeCount = Lens.lens (\PurchaseReservedCacheNodesOffering' {cacheNodeCount} -> cacheNodeCount) (\s@PurchaseReservedCacheNodesOffering' {} a -> s {cacheNodeCount = a} :: PurchaseReservedCacheNodesOffering)

-- | A customer-specified identifier to track this reservation.
--
-- The Reserved Cache Node ID is an unique customer-specified identifier to
-- track this reservation. If this parameter is not specified, ElastiCache
-- automatically generates an identifier for the reservation.
--
-- Example: myreservationID
purchaseReservedCacheNodesOffering_reservedCacheNodeId :: Lens.Lens' PurchaseReservedCacheNodesOffering (Core.Maybe Core.Text)
purchaseReservedCacheNodesOffering_reservedCacheNodeId = Lens.lens (\PurchaseReservedCacheNodesOffering' {reservedCacheNodeId} -> reservedCacheNodeId) (\s@PurchaseReservedCacheNodesOffering' {} a -> s {reservedCacheNodeId = a} :: PurchaseReservedCacheNodesOffering)

-- | The ID of the reserved cache node offering to purchase.
--
-- Example: @438012d3-4052-4cc7-b2e3-8d3372e0e706@
purchaseReservedCacheNodesOffering_reservedCacheNodesOfferingId :: Lens.Lens' PurchaseReservedCacheNodesOffering Core.Text
purchaseReservedCacheNodesOffering_reservedCacheNodesOfferingId = Lens.lens (\PurchaseReservedCacheNodesOffering' {reservedCacheNodesOfferingId} -> reservedCacheNodesOfferingId) (\s@PurchaseReservedCacheNodesOffering' {} a -> s {reservedCacheNodesOfferingId = a} :: PurchaseReservedCacheNodesOffering)

instance
  Core.AWSRequest
    PurchaseReservedCacheNodesOffering
  where
  type
    AWSResponse PurchaseReservedCacheNodesOffering =
      PurchaseReservedCacheNodesOfferingResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "PurchaseReservedCacheNodesOfferingResult"
      ( \s h x ->
          PurchaseReservedCacheNodesOfferingResponse'
            Core.<$> (x Core..@? "ReservedCacheNode")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    PurchaseReservedCacheNodesOffering

instance
  Core.NFData
    PurchaseReservedCacheNodesOffering

instance
  Core.ToHeaders
    PurchaseReservedCacheNodesOffering
  where
  toHeaders = Core.const Core.mempty

instance
  Core.ToPath
    PurchaseReservedCacheNodesOffering
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    PurchaseReservedCacheNodesOffering
  where
  toQuery PurchaseReservedCacheNodesOffering' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ( "PurchaseReservedCacheNodesOffering" ::
                      Core.ByteString
                  ),
        "Version" Core.=: ("2015-02-02" :: Core.ByteString),
        "CacheNodeCount" Core.=: cacheNodeCount,
        "ReservedCacheNodeId" Core.=: reservedCacheNodeId,
        "ReservedCacheNodesOfferingId"
          Core.=: reservedCacheNodesOfferingId
      ]

-- | /See:/ 'newPurchaseReservedCacheNodesOfferingResponse' smart constructor.
data PurchaseReservedCacheNodesOfferingResponse = PurchaseReservedCacheNodesOfferingResponse'
  { reservedCacheNode :: Core.Maybe ReservedCacheNode,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PurchaseReservedCacheNodesOfferingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservedCacheNode', 'purchaseReservedCacheNodesOfferingResponse_reservedCacheNode' - Undocumented member.
--
-- 'httpStatus', 'purchaseReservedCacheNodesOfferingResponse_httpStatus' - The response's http status code.
newPurchaseReservedCacheNodesOfferingResponse ::
  -- | 'httpStatus'
  Core.Int ->
  PurchaseReservedCacheNodesOfferingResponse
newPurchaseReservedCacheNodesOfferingResponse
  pHttpStatus_ =
    PurchaseReservedCacheNodesOfferingResponse'
      { reservedCacheNode =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Undocumented member.
purchaseReservedCacheNodesOfferingResponse_reservedCacheNode :: Lens.Lens' PurchaseReservedCacheNodesOfferingResponse (Core.Maybe ReservedCacheNode)
purchaseReservedCacheNodesOfferingResponse_reservedCacheNode = Lens.lens (\PurchaseReservedCacheNodesOfferingResponse' {reservedCacheNode} -> reservedCacheNode) (\s@PurchaseReservedCacheNodesOfferingResponse' {} a -> s {reservedCacheNode = a} :: PurchaseReservedCacheNodesOfferingResponse)

-- | The response's http status code.
purchaseReservedCacheNodesOfferingResponse_httpStatus :: Lens.Lens' PurchaseReservedCacheNodesOfferingResponse Core.Int
purchaseReservedCacheNodesOfferingResponse_httpStatus = Lens.lens (\PurchaseReservedCacheNodesOfferingResponse' {httpStatus} -> httpStatus) (\s@PurchaseReservedCacheNodesOfferingResponse' {} a -> s {httpStatus = a} :: PurchaseReservedCacheNodesOfferingResponse)

instance
  Core.NFData
    PurchaseReservedCacheNodesOfferingResponse
