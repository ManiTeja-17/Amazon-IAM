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
-- Module      : Network.AWS.DynamoDB.DescribeBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an existing backup of a table.
--
-- You can call @DescribeBackup@ at a maximum rate of 10 times per second.
module Network.AWS.DynamoDB.DescribeBackup
  ( -- * Creating a Request
    DescribeBackup (..),
    newDescribeBackup,

    -- * Request Lenses
    describeBackup_backupArn,

    -- * Destructuring the Response
    DescribeBackupResponse (..),
    newDescribeBackupResponse,

    -- * Response Lenses
    describeBackupResponse_backupDescription,
    describeBackupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DynamoDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeBackup' smart constructor.
data DescribeBackup = DescribeBackup'
  { -- | The Amazon Resource Name (ARN) associated with the backup.
    backupArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeBackup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupArn', 'describeBackup_backupArn' - The Amazon Resource Name (ARN) associated with the backup.
newDescribeBackup ::
  -- | 'backupArn'
  Core.Text ->
  DescribeBackup
newDescribeBackup pBackupArn_ =
  DescribeBackup' {backupArn = pBackupArn_}

-- | The Amazon Resource Name (ARN) associated with the backup.
describeBackup_backupArn :: Lens.Lens' DescribeBackup Core.Text
describeBackup_backupArn = Lens.lens (\DescribeBackup' {backupArn} -> backupArn) (\s@DescribeBackup' {} a -> s {backupArn = a} :: DescribeBackup)

instance Core.AWSRequest DescribeBackup where
  type
    AWSResponse DescribeBackup =
      DescribeBackupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeBackupResponse'
            Core.<$> (x Core..?> "BackupDescription")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeBackup

instance Core.NFData DescribeBackup

instance Core.ToHeaders DescribeBackup where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DynamoDB_20120810.DescribeBackup" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.0" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeBackup where
  toJSON DescribeBackup' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("BackupArn" Core..= backupArn)]
      )

instance Core.ToPath DescribeBackup where
  toPath = Core.const "/"

instance Core.ToQuery DescribeBackup where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeBackupResponse' smart constructor.
data DescribeBackupResponse = DescribeBackupResponse'
  { -- | Contains the description of the backup created for the table.
    backupDescription :: Core.Maybe BackupDescription,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeBackupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupDescription', 'describeBackupResponse_backupDescription' - Contains the description of the backup created for the table.
--
-- 'httpStatus', 'describeBackupResponse_httpStatus' - The response's http status code.
newDescribeBackupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeBackupResponse
newDescribeBackupResponse pHttpStatus_ =
  DescribeBackupResponse'
    { backupDescription =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains the description of the backup created for the table.
describeBackupResponse_backupDescription :: Lens.Lens' DescribeBackupResponse (Core.Maybe BackupDescription)
describeBackupResponse_backupDescription = Lens.lens (\DescribeBackupResponse' {backupDescription} -> backupDescription) (\s@DescribeBackupResponse' {} a -> s {backupDescription = a} :: DescribeBackupResponse)

-- | The response's http status code.
describeBackupResponse_httpStatus :: Lens.Lens' DescribeBackupResponse Core.Int
describeBackupResponse_httpStatus = Lens.lens (\DescribeBackupResponse' {httpStatus} -> httpStatus) (\s@DescribeBackupResponse' {} a -> s {httpStatus = a} :: DescribeBackupResponse)

instance Core.NFData DescribeBackupResponse
