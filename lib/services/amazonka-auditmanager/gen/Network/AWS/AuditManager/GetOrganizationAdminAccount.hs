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
-- Module      : Network.AWS.AuditManager.GetOrganizationAdminAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the name of the delegated Amazon Web Services administrator
-- account for the organization.
module Network.AWS.AuditManager.GetOrganizationAdminAccount
  ( -- * Creating a Request
    GetOrganizationAdminAccount (..),
    newGetOrganizationAdminAccount,

    -- * Destructuring the Response
    GetOrganizationAdminAccountResponse (..),
    newGetOrganizationAdminAccountResponse,

    -- * Response Lenses
    getOrganizationAdminAccountResponse_adminAccountId,
    getOrganizationAdminAccountResponse_organizationId,
    getOrganizationAdminAccountResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetOrganizationAdminAccount' smart constructor.
data GetOrganizationAdminAccount = GetOrganizationAdminAccount'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetOrganizationAdminAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetOrganizationAdminAccount ::
  GetOrganizationAdminAccount
newGetOrganizationAdminAccount =
  GetOrganizationAdminAccount'

instance Core.AWSRequest GetOrganizationAdminAccount where
  type
    AWSResponse GetOrganizationAdminAccount =
      GetOrganizationAdminAccountResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetOrganizationAdminAccountResponse'
            Prelude.<$> (x Core..?> "adminAccountId")
            Prelude.<*> (x Core..?> "organizationId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetOrganizationAdminAccount

instance Prelude.NFData GetOrganizationAdminAccount

instance Core.ToHeaders GetOrganizationAdminAccount where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetOrganizationAdminAccount where
  toPath =
    Prelude.const "/account/organizationAdminAccount"

instance Core.ToQuery GetOrganizationAdminAccount where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetOrganizationAdminAccountResponse' smart constructor.
data GetOrganizationAdminAccountResponse = GetOrganizationAdminAccountResponse'
  { -- | The identifier for the specified administrator account.
    adminAccountId :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the specified organization.
    organizationId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetOrganizationAdminAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'adminAccountId', 'getOrganizationAdminAccountResponse_adminAccountId' - The identifier for the specified administrator account.
--
-- 'organizationId', 'getOrganizationAdminAccountResponse_organizationId' - The identifier for the specified organization.
--
-- 'httpStatus', 'getOrganizationAdminAccountResponse_httpStatus' - The response's http status code.
newGetOrganizationAdminAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetOrganizationAdminAccountResponse
newGetOrganizationAdminAccountResponse pHttpStatus_ =
  GetOrganizationAdminAccountResponse'
    { adminAccountId =
        Prelude.Nothing,
      organizationId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier for the specified administrator account.
getOrganizationAdminAccountResponse_adminAccountId :: Lens.Lens' GetOrganizationAdminAccountResponse (Prelude.Maybe Prelude.Text)
getOrganizationAdminAccountResponse_adminAccountId = Lens.lens (\GetOrganizationAdminAccountResponse' {adminAccountId} -> adminAccountId) (\s@GetOrganizationAdminAccountResponse' {} a -> s {adminAccountId = a} :: GetOrganizationAdminAccountResponse)

-- | The identifier for the specified organization.
getOrganizationAdminAccountResponse_organizationId :: Lens.Lens' GetOrganizationAdminAccountResponse (Prelude.Maybe Prelude.Text)
getOrganizationAdminAccountResponse_organizationId = Lens.lens (\GetOrganizationAdminAccountResponse' {organizationId} -> organizationId) (\s@GetOrganizationAdminAccountResponse' {} a -> s {organizationId = a} :: GetOrganizationAdminAccountResponse)

-- | The response's http status code.
getOrganizationAdminAccountResponse_httpStatus :: Lens.Lens' GetOrganizationAdminAccountResponse Prelude.Int
getOrganizationAdminAccountResponse_httpStatus = Lens.lens (\GetOrganizationAdminAccountResponse' {httpStatus} -> httpStatus) (\s@GetOrganizationAdminAccountResponse' {} a -> s {httpStatus = a} :: GetOrganizationAdminAccountResponse)

instance
  Prelude.NFData
    GetOrganizationAdminAccountResponse