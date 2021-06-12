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
-- Module      : Network.AWS.Glacier.PurchaseProvisionedCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation purchases a provisioned capacity unit for an AWS account.
module Network.AWS.Glacier.PurchaseProvisionedCapacity
  ( -- * Creating a Request
    PurchaseProvisionedCapacity (..),
    newPurchaseProvisionedCapacity,

    -- * Request Lenses
    purchaseProvisionedCapacity_accountId,

    -- * Destructuring the Response
    PurchaseProvisionedCapacityResponse (..),
    newPurchaseProvisionedCapacityResponse,

    -- * Response Lenses
    purchaseProvisionedCapacityResponse_capacityId,
    purchaseProvisionedCapacityResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glacier.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPurchaseProvisionedCapacity' smart constructor.
data PurchaseProvisionedCapacity = PurchaseProvisionedCapacity'
  { -- | The AWS account ID of the account that owns the vault. You can either
    -- specify an AWS account ID or optionally a single \'-\' (hyphen), in
    -- which case Amazon S3 Glacier uses the AWS account ID associated with the
    -- credentials used to sign the request. If you use an account ID, don\'t
    -- include any hyphens (\'-\') in the ID.
    accountId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PurchaseProvisionedCapacity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'purchaseProvisionedCapacity_accountId' - The AWS account ID of the account that owns the vault. You can either
-- specify an AWS account ID or optionally a single \'-\' (hyphen), in
-- which case Amazon S3 Glacier uses the AWS account ID associated with the
-- credentials used to sign the request. If you use an account ID, don\'t
-- include any hyphens (\'-\') in the ID.
newPurchaseProvisionedCapacity ::
  -- | 'accountId'
  Core.Text ->
  PurchaseProvisionedCapacity
newPurchaseProvisionedCapacity pAccountId_ =
  PurchaseProvisionedCapacity'
    { accountId =
        pAccountId_
    }

-- | The AWS account ID of the account that owns the vault. You can either
-- specify an AWS account ID or optionally a single \'-\' (hyphen), in
-- which case Amazon S3 Glacier uses the AWS account ID associated with the
-- credentials used to sign the request. If you use an account ID, don\'t
-- include any hyphens (\'-\') in the ID.
purchaseProvisionedCapacity_accountId :: Lens.Lens' PurchaseProvisionedCapacity Core.Text
purchaseProvisionedCapacity_accountId = Lens.lens (\PurchaseProvisionedCapacity' {accountId} -> accountId) (\s@PurchaseProvisionedCapacity' {} a -> s {accountId = a} :: PurchaseProvisionedCapacity)

instance Core.AWSRequest PurchaseProvisionedCapacity where
  type
    AWSResponse PurchaseProvisionedCapacity =
      PurchaseProvisionedCapacityResponse
  request =
    Request.glacierVersionHeader (Core._serviceVersion defaultService)
      Core.. Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          PurchaseProvisionedCapacityResponse'
            Core.<$> (h Core..#? "x-amz-capacity-id")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable PurchaseProvisionedCapacity

instance Core.NFData PurchaseProvisionedCapacity

instance Core.ToHeaders PurchaseProvisionedCapacity where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON PurchaseProvisionedCapacity where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath PurchaseProvisionedCapacity where
  toPath PurchaseProvisionedCapacity' {..} =
    Core.mconcat
      ["/", Core.toBS accountId, "/provisioned-capacity"]

instance Core.ToQuery PurchaseProvisionedCapacity where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newPurchaseProvisionedCapacityResponse' smart constructor.
data PurchaseProvisionedCapacityResponse = PurchaseProvisionedCapacityResponse'
  { -- | The ID that identifies the provisioned capacity unit.
    capacityId :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PurchaseProvisionedCapacityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'capacityId', 'purchaseProvisionedCapacityResponse_capacityId' - The ID that identifies the provisioned capacity unit.
--
-- 'httpStatus', 'purchaseProvisionedCapacityResponse_httpStatus' - The response's http status code.
newPurchaseProvisionedCapacityResponse ::
  -- | 'httpStatus'
  Core.Int ->
  PurchaseProvisionedCapacityResponse
newPurchaseProvisionedCapacityResponse pHttpStatus_ =
  PurchaseProvisionedCapacityResponse'
    { capacityId =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID that identifies the provisioned capacity unit.
purchaseProvisionedCapacityResponse_capacityId :: Lens.Lens' PurchaseProvisionedCapacityResponse (Core.Maybe Core.Text)
purchaseProvisionedCapacityResponse_capacityId = Lens.lens (\PurchaseProvisionedCapacityResponse' {capacityId} -> capacityId) (\s@PurchaseProvisionedCapacityResponse' {} a -> s {capacityId = a} :: PurchaseProvisionedCapacityResponse)

-- | The response's http status code.
purchaseProvisionedCapacityResponse_httpStatus :: Lens.Lens' PurchaseProvisionedCapacityResponse Core.Int
purchaseProvisionedCapacityResponse_httpStatus = Lens.lens (\PurchaseProvisionedCapacityResponse' {httpStatus} -> httpStatus) (\s@PurchaseProvisionedCapacityResponse' {} a -> s {httpStatus = a} :: PurchaseProvisionedCapacityResponse)

instance
  Core.NFData
    PurchaseProvisionedCapacityResponse
