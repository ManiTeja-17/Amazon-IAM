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
-- Module      : Network.AWS.OpsWorksCM.CreateBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application-level backup of a server. While the server is in
-- the @BACKING_UP@ state, the server cannot be changed, and no additional
-- backup can be created.
--
-- Backups can be created for servers in @RUNNING@, @HEALTHY@, and
-- @UNHEALTHY@ states. By default, you can create a maximum of 50 manual
-- backups.
--
-- This operation is asynchronous.
--
-- A @LimitExceededException@ is thrown when the maximum number of manual
-- backups is reached. An @InvalidStateException@ is thrown when the server
-- is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A
-- @ResourceNotFoundException@ is thrown when the server is not found. A
-- @ValidationException@ is thrown when parameters of the request are not
-- valid.
module Network.AWS.OpsWorksCM.CreateBackup
  ( -- * Creating a Request
    CreateBackup (..),
    newCreateBackup,

    -- * Request Lenses
    createBackup_tags,
    createBackup_description,
    createBackup_serverName,

    -- * Destructuring the Response
    CreateBackupResponse (..),
    newCreateBackupResponse,

    -- * Response Lenses
    createBackupResponse_backup,
    createBackupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorksCM.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateBackup' smart constructor.
data CreateBackup = CreateBackup'
  { -- | A map that contains tag keys and tag values to attach to an AWS
    -- OpsWorks-CM server backup.
    --
    -- -   The key cannot be empty.
    --
    -- -   The key can be a maximum of 127 characters, and can contain only
    --     Unicode letters, numbers, or separators, or the following special
    --     characters: @+ - = . _ : \/@
    --
    -- -   The value can be a maximum 255 characters, and contain only Unicode
    --     letters, numbers, or separators, or the following special
    --     characters: @+ - = . _ : \/@
    --
    -- -   Leading and trailing white spaces are trimmed from both the key and
    --     value.
    --
    -- -   A maximum of 50 user-applied tags is allowed for tag-supported AWS
    --     OpsWorks-CM resources.
    tags :: Core.Maybe [Tag],
    -- | A user-defined description of the backup.
    description :: Core.Maybe Core.Text,
    -- | The name of the server that you want to back up.
    serverName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateBackup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createBackup_tags' - A map that contains tag keys and tag values to attach to an AWS
-- OpsWorks-CM server backup.
--
-- -   The key cannot be empty.
--
-- -   The key can be a maximum of 127 characters, and can contain only
--     Unicode letters, numbers, or separators, or the following special
--     characters: @+ - = . _ : \/@
--
-- -   The value can be a maximum 255 characters, and contain only Unicode
--     letters, numbers, or separators, or the following special
--     characters: @+ - = . _ : \/@
--
-- -   Leading and trailing white spaces are trimmed from both the key and
--     value.
--
-- -   A maximum of 50 user-applied tags is allowed for tag-supported AWS
--     OpsWorks-CM resources.
--
-- 'description', 'createBackup_description' - A user-defined description of the backup.
--
-- 'serverName', 'createBackup_serverName' - The name of the server that you want to back up.
newCreateBackup ::
  -- | 'serverName'
  Core.Text ->
  CreateBackup
newCreateBackup pServerName_ =
  CreateBackup'
    { tags = Core.Nothing,
      description = Core.Nothing,
      serverName = pServerName_
    }

-- | A map that contains tag keys and tag values to attach to an AWS
-- OpsWorks-CM server backup.
--
-- -   The key cannot be empty.
--
-- -   The key can be a maximum of 127 characters, and can contain only
--     Unicode letters, numbers, or separators, or the following special
--     characters: @+ - = . _ : \/@
--
-- -   The value can be a maximum 255 characters, and contain only Unicode
--     letters, numbers, or separators, or the following special
--     characters: @+ - = . _ : \/@
--
-- -   Leading and trailing white spaces are trimmed from both the key and
--     value.
--
-- -   A maximum of 50 user-applied tags is allowed for tag-supported AWS
--     OpsWorks-CM resources.
createBackup_tags :: Lens.Lens' CreateBackup (Core.Maybe [Tag])
createBackup_tags = Lens.lens (\CreateBackup' {tags} -> tags) (\s@CreateBackup' {} a -> s {tags = a} :: CreateBackup) Core.. Lens.mapping Lens._Coerce

-- | A user-defined description of the backup.
createBackup_description :: Lens.Lens' CreateBackup (Core.Maybe Core.Text)
createBackup_description = Lens.lens (\CreateBackup' {description} -> description) (\s@CreateBackup' {} a -> s {description = a} :: CreateBackup)

-- | The name of the server that you want to back up.
createBackup_serverName :: Lens.Lens' CreateBackup Core.Text
createBackup_serverName = Lens.lens (\CreateBackup' {serverName} -> serverName) (\s@CreateBackup' {} a -> s {serverName = a} :: CreateBackup)

instance Core.AWSRequest CreateBackup where
  type AWSResponse CreateBackup = CreateBackupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateBackupResponse'
            Core.<$> (x Core..?> "Backup")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateBackup

instance Core.NFData CreateBackup

instance Core.ToHeaders CreateBackup where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OpsWorksCM_V2016_11_01.CreateBackup" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateBackup where
  toJSON CreateBackup' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Tags" Core..=) Core.<$> tags,
            ("Description" Core..=) Core.<$> description,
            Core.Just ("ServerName" Core..= serverName)
          ]
      )

instance Core.ToPath CreateBackup where
  toPath = Core.const "/"

instance Core.ToQuery CreateBackup where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateBackupResponse' smart constructor.
data CreateBackupResponse = CreateBackupResponse'
  { -- | Backup created by request.
    backup :: Core.Maybe Backup,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateBackupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backup', 'createBackupResponse_backup' - Backup created by request.
--
-- 'httpStatus', 'createBackupResponse_httpStatus' - The response's http status code.
newCreateBackupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateBackupResponse
newCreateBackupResponse pHttpStatus_ =
  CreateBackupResponse'
    { backup = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Backup created by request.
createBackupResponse_backup :: Lens.Lens' CreateBackupResponse (Core.Maybe Backup)
createBackupResponse_backup = Lens.lens (\CreateBackupResponse' {backup} -> backup) (\s@CreateBackupResponse' {} a -> s {backup = a} :: CreateBackupResponse)

-- | The response's http status code.
createBackupResponse_httpStatus :: Lens.Lens' CreateBackupResponse Core.Int
createBackupResponse_httpStatus = Lens.lens (\CreateBackupResponse' {httpStatus} -> httpStatus) (\s@CreateBackupResponse' {} a -> s {httpStatus = a} :: CreateBackupResponse)

instance Core.NFData CreateBackupResponse
