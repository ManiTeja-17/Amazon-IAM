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
-- Module      : Network.AWS.EC2.DescribeReservedInstancesListings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your account\'s Reserved Instance listings in the Reserved
-- Instance Marketplace.
--
-- The Reserved Instance Marketplace matches sellers who want to resell
-- Reserved Instance capacity that they no longer need with buyers who want
-- to purchase additional capacity. Reserved Instances bought and sold
-- through the Reserved Instance Marketplace work like any other Reserved
-- Instances.
--
-- As a seller, you choose to list some or all of your Reserved Instances,
-- and you specify the upfront price to receive for them. Your Reserved
-- Instances are then listed in the Reserved Instance Marketplace and are
-- available for purchase.
--
-- As a buyer, you specify the configuration of the Reserved Instance to
-- purchase, and the Marketplace matches what you\'re searching for with
-- what\'s available. The Marketplace first sells the lowest priced
-- Reserved Instances to you, and continues to sell available Reserved
-- Instance listings to you until your demand is met. You are charged based
-- on the total price of all of the listings that you purchase.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html Reserved Instance Marketplace>
-- in the /Amazon EC2 User Guide/.
module Network.AWS.EC2.DescribeReservedInstancesListings
  ( -- * Creating a Request
    DescribeReservedInstancesListings (..),
    newDescribeReservedInstancesListings,

    -- * Request Lenses
    describeReservedInstancesListings_reservedInstancesId,
    describeReservedInstancesListings_reservedInstancesListingId,
    describeReservedInstancesListings_filters,

    -- * Destructuring the Response
    DescribeReservedInstancesListingsResponse (..),
    newDescribeReservedInstancesListingsResponse,

    -- * Response Lenses
    describeReservedInstancesListingsResponse_reservedInstancesListings,
    describeReservedInstancesListingsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DescribeReservedInstancesListings.
--
-- /See:/ 'newDescribeReservedInstancesListings' smart constructor.
data DescribeReservedInstancesListings = DescribeReservedInstancesListings'
  { -- | One or more Reserved Instance IDs.
    reservedInstancesId :: Core.Maybe Core.Text,
    -- | One or more Reserved Instance listing IDs.
    reservedInstancesListingId :: Core.Maybe Core.Text,
    -- | One or more filters.
    --
    -- -   @reserved-instances-id@ - The ID of the Reserved Instances.
    --
    -- -   @reserved-instances-listing-id@ - The ID of the Reserved Instances
    --     listing.
    --
    -- -   @status@ - The status of the Reserved Instance listing (@pending@ |
    --     @active@ | @cancelled@ | @closed@).
    --
    -- -   @status-message@ - The reason for the status.
    filters :: Core.Maybe [Filter]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeReservedInstancesListings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservedInstancesId', 'describeReservedInstancesListings_reservedInstancesId' - One or more Reserved Instance IDs.
--
-- 'reservedInstancesListingId', 'describeReservedInstancesListings_reservedInstancesListingId' - One or more Reserved Instance listing IDs.
--
-- 'filters', 'describeReservedInstancesListings_filters' - One or more filters.
--
-- -   @reserved-instances-id@ - The ID of the Reserved Instances.
--
-- -   @reserved-instances-listing-id@ - The ID of the Reserved Instances
--     listing.
--
-- -   @status@ - The status of the Reserved Instance listing (@pending@ |
--     @active@ | @cancelled@ | @closed@).
--
-- -   @status-message@ - The reason for the status.
newDescribeReservedInstancesListings ::
  DescribeReservedInstancesListings
newDescribeReservedInstancesListings =
  DescribeReservedInstancesListings'
    { reservedInstancesId =
        Core.Nothing,
      reservedInstancesListingId =
        Core.Nothing,
      filters = Core.Nothing
    }

-- | One or more Reserved Instance IDs.
describeReservedInstancesListings_reservedInstancesId :: Lens.Lens' DescribeReservedInstancesListings (Core.Maybe Core.Text)
describeReservedInstancesListings_reservedInstancesId = Lens.lens (\DescribeReservedInstancesListings' {reservedInstancesId} -> reservedInstancesId) (\s@DescribeReservedInstancesListings' {} a -> s {reservedInstancesId = a} :: DescribeReservedInstancesListings)

-- | One or more Reserved Instance listing IDs.
describeReservedInstancesListings_reservedInstancesListingId :: Lens.Lens' DescribeReservedInstancesListings (Core.Maybe Core.Text)
describeReservedInstancesListings_reservedInstancesListingId = Lens.lens (\DescribeReservedInstancesListings' {reservedInstancesListingId} -> reservedInstancesListingId) (\s@DescribeReservedInstancesListings' {} a -> s {reservedInstancesListingId = a} :: DescribeReservedInstancesListings)

-- | One or more filters.
--
-- -   @reserved-instances-id@ - The ID of the Reserved Instances.
--
-- -   @reserved-instances-listing-id@ - The ID of the Reserved Instances
--     listing.
--
-- -   @status@ - The status of the Reserved Instance listing (@pending@ |
--     @active@ | @cancelled@ | @closed@).
--
-- -   @status-message@ - The reason for the status.
describeReservedInstancesListings_filters :: Lens.Lens' DescribeReservedInstancesListings (Core.Maybe [Filter])
describeReservedInstancesListings_filters = Lens.lens (\DescribeReservedInstancesListings' {filters} -> filters) (\s@DescribeReservedInstancesListings' {} a -> s {filters = a} :: DescribeReservedInstancesListings) Core.. Lens.mapping Lens._Coerce

instance
  Core.AWSRequest
    DescribeReservedInstancesListings
  where
  type
    AWSResponse DescribeReservedInstancesListings =
      DescribeReservedInstancesListingsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeReservedInstancesListingsResponse'
            Core.<$> ( x Core..@? "reservedInstancesListingsSet"
                         Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "item")
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    DescribeReservedInstancesListings

instance
  Core.NFData
    DescribeReservedInstancesListings

instance
  Core.ToHeaders
    DescribeReservedInstancesListings
  where
  toHeaders = Core.const Core.mempty

instance
  Core.ToPath
    DescribeReservedInstancesListings
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    DescribeReservedInstancesListings
  where
  toQuery DescribeReservedInstancesListings' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ( "DescribeReservedInstancesListings" ::
                      Core.ByteString
                  ),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        "ReservedInstancesId" Core.=: reservedInstancesId,
        "ReservedInstancesListingId"
          Core.=: reservedInstancesListingId,
        Core.toQuery
          (Core.toQueryList "Filter" Core.<$> filters)
      ]

-- | Contains the output of DescribeReservedInstancesListings.
--
-- /See:/ 'newDescribeReservedInstancesListingsResponse' smart constructor.
data DescribeReservedInstancesListingsResponse = DescribeReservedInstancesListingsResponse'
  { -- | Information about the Reserved Instance listing.
    reservedInstancesListings :: Core.Maybe [ReservedInstancesListing],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeReservedInstancesListingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservedInstancesListings', 'describeReservedInstancesListingsResponse_reservedInstancesListings' - Information about the Reserved Instance listing.
--
-- 'httpStatus', 'describeReservedInstancesListingsResponse_httpStatus' - The response's http status code.
newDescribeReservedInstancesListingsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeReservedInstancesListingsResponse
newDescribeReservedInstancesListingsResponse
  pHttpStatus_ =
    DescribeReservedInstancesListingsResponse'
      { reservedInstancesListings =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Information about the Reserved Instance listing.
describeReservedInstancesListingsResponse_reservedInstancesListings :: Lens.Lens' DescribeReservedInstancesListingsResponse (Core.Maybe [ReservedInstancesListing])
describeReservedInstancesListingsResponse_reservedInstancesListings = Lens.lens (\DescribeReservedInstancesListingsResponse' {reservedInstancesListings} -> reservedInstancesListings) (\s@DescribeReservedInstancesListingsResponse' {} a -> s {reservedInstancesListings = a} :: DescribeReservedInstancesListingsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeReservedInstancesListingsResponse_httpStatus :: Lens.Lens' DescribeReservedInstancesListingsResponse Core.Int
describeReservedInstancesListingsResponse_httpStatus = Lens.lens (\DescribeReservedInstancesListingsResponse' {httpStatus} -> httpStatus) (\s@DescribeReservedInstancesListingsResponse' {} a -> s {httpStatus = a} :: DescribeReservedInstancesListingsResponse)

instance
  Core.NFData
    DescribeReservedInstancesListingsResponse
