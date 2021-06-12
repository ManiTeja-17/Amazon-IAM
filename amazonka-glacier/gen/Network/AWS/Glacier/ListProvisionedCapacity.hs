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
-- Module      : Network.AWS.Glacier.ListProvisionedCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists the provisioned capacity units for the specified
-- AWS account.
module Network.AWS.Glacier.ListProvisionedCapacity
  ( -- * Creating a Request
    ListProvisionedCapacity (..),
    newListProvisionedCapacity,

    -- * Request Lenses
    listProvisionedCapacity_accountId,

    -- * Destructuring the Response
    ListProvisionedCapacityResponse (..),
    newListProvisionedCapacityResponse,

    -- * Response Lenses
    listProvisionedCapacityResponse_provisionedCapacityList,
    listProvisionedCapacityResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glacier.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListProvisionedCapacity' smart constructor.
data ListProvisionedCapacity = ListProvisionedCapacity'
  { -- | The AWS account ID of the account that owns the vault. You can either
    -- specify an AWS account ID or optionally a single \'-\' (hyphen), in
    -- which case Amazon S3 Glacier uses the AWS account ID associated with the
    -- credentials used to sign the request. If you use an account ID, don\'t
    -- include any hyphens (\'-\') in the ID.
    accountId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListProvisionedCapacity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'listProvisionedCapacity_accountId' - The AWS account ID of the account that owns the vault. You can either
-- specify an AWS account ID or optionally a single \'-\' (hyphen), in
-- which case Amazon S3 Glacier uses the AWS account ID associated with the
-- credentials used to sign the request. If you use an account ID, don\'t
-- include any hyphens (\'-\') in the ID.
newListProvisionedCapacity ::
  -- | 'accountId'
  Core.Text ->
  ListProvisionedCapacity
newListProvisionedCapacity pAccountId_ =
  ListProvisionedCapacity' {accountId = pAccountId_}

-- | The AWS account ID of the account that owns the vault. You can either
-- specify an AWS account ID or optionally a single \'-\' (hyphen), in
-- which case Amazon S3 Glacier uses the AWS account ID associated with the
-- credentials used to sign the request. If you use an account ID, don\'t
-- include any hyphens (\'-\') in the ID.
listProvisionedCapacity_accountId :: Lens.Lens' ListProvisionedCapacity Core.Text
listProvisionedCapacity_accountId = Lens.lens (\ListProvisionedCapacity' {accountId} -> accountId) (\s@ListProvisionedCapacity' {} a -> s {accountId = a} :: ListProvisionedCapacity)

instance Core.AWSRequest ListProvisionedCapacity where
  type
    AWSResponse ListProvisionedCapacity =
      ListProvisionedCapacityResponse
  request =
    Request.glacierVersionHeader (Core._serviceVersion defaultService)
      Core.. Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListProvisionedCapacityResponse'
            Core.<$> ( x Core..?> "ProvisionedCapacityList"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListProvisionedCapacity

instance Core.NFData ListProvisionedCapacity

instance Core.ToHeaders ListProvisionedCapacity where
  toHeaders = Core.const Core.mempty

instance Core.ToPath ListProvisionedCapacity where
  toPath ListProvisionedCapacity' {..} =
    Core.mconcat
      ["/", Core.toBS accountId, "/provisioned-capacity"]

instance Core.ToQuery ListProvisionedCapacity where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListProvisionedCapacityResponse' smart constructor.
data ListProvisionedCapacityResponse = ListProvisionedCapacityResponse'
  { -- | The response body contains the following JSON fields.
    provisionedCapacityList :: Core.Maybe [ProvisionedCapacityDescription],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListProvisionedCapacityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'provisionedCapacityList', 'listProvisionedCapacityResponse_provisionedCapacityList' - The response body contains the following JSON fields.
--
-- 'httpStatus', 'listProvisionedCapacityResponse_httpStatus' - The response's http status code.
newListProvisionedCapacityResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListProvisionedCapacityResponse
newListProvisionedCapacityResponse pHttpStatus_ =
  ListProvisionedCapacityResponse'
    { provisionedCapacityList =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The response body contains the following JSON fields.
listProvisionedCapacityResponse_provisionedCapacityList :: Lens.Lens' ListProvisionedCapacityResponse (Core.Maybe [ProvisionedCapacityDescription])
listProvisionedCapacityResponse_provisionedCapacityList = Lens.lens (\ListProvisionedCapacityResponse' {provisionedCapacityList} -> provisionedCapacityList) (\s@ListProvisionedCapacityResponse' {} a -> s {provisionedCapacityList = a} :: ListProvisionedCapacityResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listProvisionedCapacityResponse_httpStatus :: Lens.Lens' ListProvisionedCapacityResponse Core.Int
listProvisionedCapacityResponse_httpStatus = Lens.lens (\ListProvisionedCapacityResponse' {httpStatus} -> httpStatus) (\s@ListProvisionedCapacityResponse' {} a -> s {httpStatus = a} :: ListProvisionedCapacityResponse)

instance Core.NFData ListProvisionedCapacityResponse
