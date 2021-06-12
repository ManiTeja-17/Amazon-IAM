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
-- Module      : Network.AWS.Glacier.CompleteVaultLock
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation completes the vault locking process by transitioning the
-- vault lock from the @InProgress@ state to the @Locked@ state, which
-- causes the vault lock policy to become unchangeable. A vault lock is put
-- into the @InProgress@ state by calling InitiateVaultLock. You can obtain
-- the state of the vault lock by calling GetVaultLock. For more
-- information about the vault locking process,
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html Amazon Glacier Vault Lock>.
--
-- This operation is idempotent. This request is always successful if the
-- vault lock is in the @Locked@ state and the provided lock ID matches the
-- lock ID originally used to lock the vault.
--
-- If an invalid lock ID is passed in the request when the vault lock is in
-- the @Locked@ state, the operation returns an @AccessDeniedException@
-- error. If an invalid lock ID is passed in the request when the vault
-- lock is in the @InProgress@ state, the operation throws an
-- @InvalidParameter@ error.
module Network.AWS.Glacier.CompleteVaultLock
  ( -- * Creating a Request
    CompleteVaultLock (..),
    newCompleteVaultLock,

    -- * Request Lenses
    completeVaultLock_accountId,
    completeVaultLock_vaultName,
    completeVaultLock_lockId,

    -- * Destructuring the Response
    CompleteVaultLockResponse (..),
    newCompleteVaultLockResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glacier.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input values for @CompleteVaultLock@.
--
-- /See:/ 'newCompleteVaultLock' smart constructor.
data CompleteVaultLock = CompleteVaultLock'
  { -- | The @AccountId@ value is the AWS account ID. This value must match the
    -- AWS account ID associated with the credentials used to sign the request.
    -- You can either specify an AWS account ID or optionally a single \'@-@\'
    -- (hyphen), in which case Amazon Glacier uses the AWS account ID
    -- associated with the credentials used to sign the request. If you specify
    -- your account ID, do not include any hyphens (\'-\') in the ID.
    accountId :: Core.Text,
    -- | The name of the vault.
    vaultName :: Core.Text,
    -- | The @lockId@ value is the lock ID obtained from a InitiateVaultLock
    -- request.
    lockId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CompleteVaultLock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'completeVaultLock_accountId' - The @AccountId@ value is the AWS account ID. This value must match the
-- AWS account ID associated with the credentials used to sign the request.
-- You can either specify an AWS account ID or optionally a single \'@-@\'
-- (hyphen), in which case Amazon Glacier uses the AWS account ID
-- associated with the credentials used to sign the request. If you specify
-- your account ID, do not include any hyphens (\'-\') in the ID.
--
-- 'vaultName', 'completeVaultLock_vaultName' - The name of the vault.
--
-- 'lockId', 'completeVaultLock_lockId' - The @lockId@ value is the lock ID obtained from a InitiateVaultLock
-- request.
newCompleteVaultLock ::
  -- | 'accountId'
  Core.Text ->
  -- | 'vaultName'
  Core.Text ->
  -- | 'lockId'
  Core.Text ->
  CompleteVaultLock
newCompleteVaultLock pAccountId_ pVaultName_ pLockId_ =
  CompleteVaultLock'
    { accountId = pAccountId_,
      vaultName = pVaultName_,
      lockId = pLockId_
    }

-- | The @AccountId@ value is the AWS account ID. This value must match the
-- AWS account ID associated with the credentials used to sign the request.
-- You can either specify an AWS account ID or optionally a single \'@-@\'
-- (hyphen), in which case Amazon Glacier uses the AWS account ID
-- associated with the credentials used to sign the request. If you specify
-- your account ID, do not include any hyphens (\'-\') in the ID.
completeVaultLock_accountId :: Lens.Lens' CompleteVaultLock Core.Text
completeVaultLock_accountId = Lens.lens (\CompleteVaultLock' {accountId} -> accountId) (\s@CompleteVaultLock' {} a -> s {accountId = a} :: CompleteVaultLock)

-- | The name of the vault.
completeVaultLock_vaultName :: Lens.Lens' CompleteVaultLock Core.Text
completeVaultLock_vaultName = Lens.lens (\CompleteVaultLock' {vaultName} -> vaultName) (\s@CompleteVaultLock' {} a -> s {vaultName = a} :: CompleteVaultLock)

-- | The @lockId@ value is the lock ID obtained from a InitiateVaultLock
-- request.
completeVaultLock_lockId :: Lens.Lens' CompleteVaultLock Core.Text
completeVaultLock_lockId = Lens.lens (\CompleteVaultLock' {lockId} -> lockId) (\s@CompleteVaultLock' {} a -> s {lockId = a} :: CompleteVaultLock)

instance Core.AWSRequest CompleteVaultLock where
  type
    AWSResponse CompleteVaultLock =
      CompleteVaultLockResponse
  request =
    Request.glacierVersionHeader (Core._serviceVersion defaultService)
      Core.. Request.postJSON defaultService
  response =
    Response.receiveNull CompleteVaultLockResponse'

instance Core.Hashable CompleteVaultLock

instance Core.NFData CompleteVaultLock

instance Core.ToHeaders CompleteVaultLock where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON CompleteVaultLock where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath CompleteVaultLock where
  toPath CompleteVaultLock' {..} =
    Core.mconcat
      [ "/",
        Core.toBS accountId,
        "/vaults/",
        Core.toBS vaultName,
        "/lock-policy/",
        Core.toBS lockId
      ]

instance Core.ToQuery CompleteVaultLock where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCompleteVaultLockResponse' smart constructor.
data CompleteVaultLockResponse = CompleteVaultLockResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CompleteVaultLockResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newCompleteVaultLockResponse ::
  CompleteVaultLockResponse
newCompleteVaultLockResponse =
  CompleteVaultLockResponse'

instance Core.NFData CompleteVaultLockResponse
