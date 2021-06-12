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
-- Module      : Network.AWS.ServiceCatalog.DisableAWSOrganizationsAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disable portfolio sharing through AWS Organizations feature. This
-- feature will not delete your current shares but it will prevent you from
-- creating new shares throughout your organization. Current shares will
-- not be in sync with your organization structure if it changes after
-- calling this API. This API can only be called by the management account
-- in the organization.
--
-- This API can\'t be invoked if there are active delegated administrators
-- in the organization.
--
-- Note that a delegated administrator is not authorized to invoke
-- @DisableAWSOrganizationsAccess@.
module Network.AWS.ServiceCatalog.DisableAWSOrganizationsAccess
  ( -- * Creating a Request
    DisableAWSOrganizationsAccess (..),
    newDisableAWSOrganizationsAccess,

    -- * Destructuring the Response
    DisableAWSOrganizationsAccessResponse (..),
    newDisableAWSOrganizationsAccessResponse,

    -- * Response Lenses
    disableAWSOrganizationsAccessResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'newDisableAWSOrganizationsAccess' smart constructor.
data DisableAWSOrganizationsAccess = DisableAWSOrganizationsAccess'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisableAWSOrganizationsAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisableAWSOrganizationsAccess ::
  DisableAWSOrganizationsAccess
newDisableAWSOrganizationsAccess =
  DisableAWSOrganizationsAccess'

instance
  Core.AWSRequest
    DisableAWSOrganizationsAccess
  where
  type
    AWSResponse DisableAWSOrganizationsAccess =
      DisableAWSOrganizationsAccessResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisableAWSOrganizationsAccessResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DisableAWSOrganizationsAccess

instance Core.NFData DisableAWSOrganizationsAccess

instance Core.ToHeaders DisableAWSOrganizationsAccess where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.DisableAWSOrganizationsAccess" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DisableAWSOrganizationsAccess where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath DisableAWSOrganizationsAccess where
  toPath = Core.const "/"

instance Core.ToQuery DisableAWSOrganizationsAccess where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDisableAWSOrganizationsAccessResponse' smart constructor.
data DisableAWSOrganizationsAccessResponse = DisableAWSOrganizationsAccessResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisableAWSOrganizationsAccessResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disableAWSOrganizationsAccessResponse_httpStatus' - The response's http status code.
newDisableAWSOrganizationsAccessResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DisableAWSOrganizationsAccessResponse
newDisableAWSOrganizationsAccessResponse pHttpStatus_ =
  DisableAWSOrganizationsAccessResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
disableAWSOrganizationsAccessResponse_httpStatus :: Lens.Lens' DisableAWSOrganizationsAccessResponse Core.Int
disableAWSOrganizationsAccessResponse_httpStatus = Lens.lens (\DisableAWSOrganizationsAccessResponse' {httpStatus} -> httpStatus) (\s@DisableAWSOrganizationsAccessResponse' {} a -> s {httpStatus = a} :: DisableAWSOrganizationsAccessResponse)

instance
  Core.NFData
    DisableAWSOrganizationsAccessResponse
