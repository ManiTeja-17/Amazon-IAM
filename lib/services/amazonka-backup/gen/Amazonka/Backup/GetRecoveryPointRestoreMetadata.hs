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
-- Module      : Amazonka.Backup.GetRecoveryPointRestoreMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a set of metadata key-value pairs that were used to create the
-- backup.
module Amazonka.Backup.GetRecoveryPointRestoreMetadata
  ( -- * Creating a Request
    GetRecoveryPointRestoreMetadata (..),
    newGetRecoveryPointRestoreMetadata,

    -- * Request Lenses
    getRecoveryPointRestoreMetadata_backupVaultName,
    getRecoveryPointRestoreMetadata_recoveryPointArn,

    -- * Destructuring the Response
    GetRecoveryPointRestoreMetadataResponse (..),
    newGetRecoveryPointRestoreMetadataResponse,

    -- * Response Lenses
    getRecoveryPointRestoreMetadataResponse_backupVaultArn,
    getRecoveryPointRestoreMetadataResponse_recoveryPointArn,
    getRecoveryPointRestoreMetadataResponse_restoreMetadata,
    getRecoveryPointRestoreMetadataResponse_httpStatus,
  )
where

import Amazonka.Backup.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetRecoveryPointRestoreMetadata' smart constructor.
data GetRecoveryPointRestoreMetadata = GetRecoveryPointRestoreMetadata'
  { -- | The name of a logical container where backups are stored. Backup vaults
    -- are identified by names that are unique to the account used to create
    -- them and the Amazon Web Services Region where they are created. They
    -- consist of lowercase letters, numbers, and hyphens.
    backupVaultName :: Prelude.Text,
    -- | An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
    -- for example,
    -- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
    recoveryPointArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecoveryPointRestoreMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupVaultName', 'getRecoveryPointRestoreMetadata_backupVaultName' - The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
--
-- 'recoveryPointArn', 'getRecoveryPointRestoreMetadata_recoveryPointArn' - An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
-- for example,
-- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
newGetRecoveryPointRestoreMetadata ::
  -- | 'backupVaultName'
  Prelude.Text ->
  -- | 'recoveryPointArn'
  Prelude.Text ->
  GetRecoveryPointRestoreMetadata
newGetRecoveryPointRestoreMetadata
  pBackupVaultName_
  pRecoveryPointArn_ =
    GetRecoveryPointRestoreMetadata'
      { backupVaultName =
          pBackupVaultName_,
        recoveryPointArn = pRecoveryPointArn_
      }

-- | The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
getRecoveryPointRestoreMetadata_backupVaultName :: Lens.Lens' GetRecoveryPointRestoreMetadata Prelude.Text
getRecoveryPointRestoreMetadata_backupVaultName = Lens.lens (\GetRecoveryPointRestoreMetadata' {backupVaultName} -> backupVaultName) (\s@GetRecoveryPointRestoreMetadata' {} a -> s {backupVaultName = a} :: GetRecoveryPointRestoreMetadata)

-- | An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
-- for example,
-- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
getRecoveryPointRestoreMetadata_recoveryPointArn :: Lens.Lens' GetRecoveryPointRestoreMetadata Prelude.Text
getRecoveryPointRestoreMetadata_recoveryPointArn = Lens.lens (\GetRecoveryPointRestoreMetadata' {recoveryPointArn} -> recoveryPointArn) (\s@GetRecoveryPointRestoreMetadata' {} a -> s {recoveryPointArn = a} :: GetRecoveryPointRestoreMetadata)

instance
  Core.AWSRequest
    GetRecoveryPointRestoreMetadata
  where
  type
    AWSResponse GetRecoveryPointRestoreMetadata =
      GetRecoveryPointRestoreMetadataResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRecoveryPointRestoreMetadataResponse'
            Prelude.<$> (x Core..?> "BackupVaultArn")
            Prelude.<*> (x Core..?> "RecoveryPointArn")
            Prelude.<*> ( x Core..?> "RestoreMetadata"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetRecoveryPointRestoreMetadata

instance
  Prelude.NFData
    GetRecoveryPointRestoreMetadata

instance
  Core.ToHeaders
    GetRecoveryPointRestoreMetadata
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetRecoveryPointRestoreMetadata where
  toPath GetRecoveryPointRestoreMetadata' {..} =
    Prelude.mconcat
      [ "/backup-vaults/",
        Core.toBS backupVaultName,
        "/recovery-points/",
        Core.toBS recoveryPointArn,
        "/restore-metadata"
      ]

instance Core.ToQuery GetRecoveryPointRestoreMetadata where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRecoveryPointRestoreMetadataResponse' smart constructor.
data GetRecoveryPointRestoreMetadataResponse = GetRecoveryPointRestoreMetadataResponse'
  { -- | An ARN that uniquely identifies a backup vault; for example,
    -- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
    backupVaultArn :: Prelude.Maybe Prelude.Text,
    -- | An ARN that uniquely identifies a recovery point; for example,
    -- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
    recoveryPointArn :: Prelude.Maybe Prelude.Text,
    -- | The set of metadata key-value pairs that describe the original
    -- configuration of the backed-up resource. These values vary depending on
    -- the service that is being restored.
    restoreMetadata :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecoveryPointRestoreMetadataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupVaultArn', 'getRecoveryPointRestoreMetadataResponse_backupVaultArn' - An ARN that uniquely identifies a backup vault; for example,
-- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
--
-- 'recoveryPointArn', 'getRecoveryPointRestoreMetadataResponse_recoveryPointArn' - An ARN that uniquely identifies a recovery point; for example,
-- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
--
-- 'restoreMetadata', 'getRecoveryPointRestoreMetadataResponse_restoreMetadata' - The set of metadata key-value pairs that describe the original
-- configuration of the backed-up resource. These values vary depending on
-- the service that is being restored.
--
-- 'httpStatus', 'getRecoveryPointRestoreMetadataResponse_httpStatus' - The response's http status code.
newGetRecoveryPointRestoreMetadataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRecoveryPointRestoreMetadataResponse
newGetRecoveryPointRestoreMetadataResponse
  pHttpStatus_ =
    GetRecoveryPointRestoreMetadataResponse'
      { backupVaultArn =
          Prelude.Nothing,
        recoveryPointArn = Prelude.Nothing,
        restoreMetadata = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | An ARN that uniquely identifies a backup vault; for example,
-- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
getRecoveryPointRestoreMetadataResponse_backupVaultArn :: Lens.Lens' GetRecoveryPointRestoreMetadataResponse (Prelude.Maybe Prelude.Text)
getRecoveryPointRestoreMetadataResponse_backupVaultArn = Lens.lens (\GetRecoveryPointRestoreMetadataResponse' {backupVaultArn} -> backupVaultArn) (\s@GetRecoveryPointRestoreMetadataResponse' {} a -> s {backupVaultArn = a} :: GetRecoveryPointRestoreMetadataResponse)

-- | An ARN that uniquely identifies a recovery point; for example,
-- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
getRecoveryPointRestoreMetadataResponse_recoveryPointArn :: Lens.Lens' GetRecoveryPointRestoreMetadataResponse (Prelude.Maybe Prelude.Text)
getRecoveryPointRestoreMetadataResponse_recoveryPointArn = Lens.lens (\GetRecoveryPointRestoreMetadataResponse' {recoveryPointArn} -> recoveryPointArn) (\s@GetRecoveryPointRestoreMetadataResponse' {} a -> s {recoveryPointArn = a} :: GetRecoveryPointRestoreMetadataResponse)

-- | The set of metadata key-value pairs that describe the original
-- configuration of the backed-up resource. These values vary depending on
-- the service that is being restored.
getRecoveryPointRestoreMetadataResponse_restoreMetadata :: Lens.Lens' GetRecoveryPointRestoreMetadataResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getRecoveryPointRestoreMetadataResponse_restoreMetadata = Lens.lens (\GetRecoveryPointRestoreMetadataResponse' {restoreMetadata} -> restoreMetadata) (\s@GetRecoveryPointRestoreMetadataResponse' {} a -> s {restoreMetadata = a} :: GetRecoveryPointRestoreMetadataResponse) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | The response's http status code.
getRecoveryPointRestoreMetadataResponse_httpStatus :: Lens.Lens' GetRecoveryPointRestoreMetadataResponse Prelude.Int
getRecoveryPointRestoreMetadataResponse_httpStatus = Lens.lens (\GetRecoveryPointRestoreMetadataResponse' {httpStatus} -> httpStatus) (\s@GetRecoveryPointRestoreMetadataResponse' {} a -> s {httpStatus = a} :: GetRecoveryPointRestoreMetadataResponse)

instance
  Prelude.NFData
    GetRecoveryPointRestoreMetadataResponse