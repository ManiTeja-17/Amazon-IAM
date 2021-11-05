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
-- Module      : Network.AWS.Chime.UpdateAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates account details for the specified Amazon Chime account.
-- Currently, only account name and default license updates are supported
-- for this action.
module Network.AWS.Chime.UpdateAccount
  ( -- * Creating a Request
    UpdateAccount (..),
    newUpdateAccount,

    -- * Request Lenses
    updateAccount_defaultLicense,
    updateAccount_name,
    updateAccount_accountId,

    -- * Destructuring the Response
    UpdateAccountResponse (..),
    newUpdateAccountResponse,

    -- * Response Lenses
    updateAccountResponse_account,
    updateAccountResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateAccount' smart constructor.
data UpdateAccount = UpdateAccount'
  { -- | The default license applied when you add users to an Amazon Chime
    -- account.
    defaultLicense :: Prelude.Maybe License,
    -- | The new name for the specified Amazon Chime account.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Chime account ID.
    accountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultLicense', 'updateAccount_defaultLicense' - The default license applied when you add users to an Amazon Chime
-- account.
--
-- 'name', 'updateAccount_name' - The new name for the specified Amazon Chime account.
--
-- 'accountId', 'updateAccount_accountId' - The Amazon Chime account ID.
newUpdateAccount ::
  -- | 'accountId'
  Prelude.Text ->
  UpdateAccount
newUpdateAccount pAccountId_ =
  UpdateAccount'
    { defaultLicense = Prelude.Nothing,
      name = Prelude.Nothing,
      accountId = pAccountId_
    }

-- | The default license applied when you add users to an Amazon Chime
-- account.
updateAccount_defaultLicense :: Lens.Lens' UpdateAccount (Prelude.Maybe License)
updateAccount_defaultLicense = Lens.lens (\UpdateAccount' {defaultLicense} -> defaultLicense) (\s@UpdateAccount' {} a -> s {defaultLicense = a} :: UpdateAccount)

-- | The new name for the specified Amazon Chime account.
updateAccount_name :: Lens.Lens' UpdateAccount (Prelude.Maybe Prelude.Text)
updateAccount_name = Lens.lens (\UpdateAccount' {name} -> name) (\s@UpdateAccount' {} a -> s {name = a} :: UpdateAccount)

-- | The Amazon Chime account ID.
updateAccount_accountId :: Lens.Lens' UpdateAccount Prelude.Text
updateAccount_accountId = Lens.lens (\UpdateAccount' {accountId} -> accountId) (\s@UpdateAccount' {} a -> s {accountId = a} :: UpdateAccount)

instance Core.AWSRequest UpdateAccount where
  type
    AWSResponse UpdateAccount =
      UpdateAccountResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAccountResponse'
            Prelude.<$> (x Core..?> "Account")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAccount

instance Prelude.NFData UpdateAccount

instance Core.ToHeaders UpdateAccount where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateAccount where
  toJSON UpdateAccount' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DefaultLicense" Core..=)
              Prelude.<$> defaultLicense,
            ("Name" Core..=) Prelude.<$> name
          ]
      )

instance Core.ToPath UpdateAccount where
  toPath UpdateAccount' {..} =
    Prelude.mconcat ["/accounts/", Core.toBS accountId]

instance Core.ToQuery UpdateAccount where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAccountResponse' smart constructor.
data UpdateAccountResponse = UpdateAccountResponse'
  { -- | The updated Amazon Chime account details.
    account :: Prelude.Maybe Account,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'account', 'updateAccountResponse_account' - The updated Amazon Chime account details.
--
-- 'httpStatus', 'updateAccountResponse_httpStatus' - The response's http status code.
newUpdateAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAccountResponse
newUpdateAccountResponse pHttpStatus_ =
  UpdateAccountResponse'
    { account = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated Amazon Chime account details.
updateAccountResponse_account :: Lens.Lens' UpdateAccountResponse (Prelude.Maybe Account)
updateAccountResponse_account = Lens.lens (\UpdateAccountResponse' {account} -> account) (\s@UpdateAccountResponse' {} a -> s {account = a} :: UpdateAccountResponse)

-- | The response's http status code.
updateAccountResponse_httpStatus :: Lens.Lens' UpdateAccountResponse Prelude.Int
updateAccountResponse_httpStatus = Lens.lens (\UpdateAccountResponse' {httpStatus} -> httpStatus) (\s@UpdateAccountResponse' {} a -> s {httpStatus = a} :: UpdateAccountResponse)

instance Prelude.NFData UpdateAccountResponse