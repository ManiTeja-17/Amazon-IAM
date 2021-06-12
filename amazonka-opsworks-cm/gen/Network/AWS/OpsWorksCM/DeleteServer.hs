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
-- Module      : Network.AWS.OpsWorksCM.DeleteServer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the server and the underlying AWS CloudFormation stacks
-- (including the server\'s EC2 instance). When you run this command, the
-- server state is updated to @DELETING@. After the server is deleted, it
-- is no longer returned by @DescribeServer@ requests. If the AWS
-- CloudFormation stack cannot be deleted, the server cannot be deleted.
--
-- This operation is asynchronous.
--
-- An @InvalidStateException@ is thrown when a server deletion is already
-- in progress. A @ResourceNotFoundException@ is thrown when the server
-- does not exist. A @ValidationException@ is raised when parameters of the
-- request are not valid.
module Network.AWS.OpsWorksCM.DeleteServer
  ( -- * Creating a Request
    DeleteServer (..),
    newDeleteServer,

    -- * Request Lenses
    deleteServer_serverName,

    -- * Destructuring the Response
    DeleteServerResponse (..),
    newDeleteServerResponse,

    -- * Response Lenses
    deleteServerResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorksCM.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteServer' smart constructor.
data DeleteServer = DeleteServer'
  { -- | The ID of the server to delete.
    serverName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteServer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverName', 'deleteServer_serverName' - The ID of the server to delete.
newDeleteServer ::
  -- | 'serverName'
  Core.Text ->
  DeleteServer
newDeleteServer pServerName_ =
  DeleteServer' {serverName = pServerName_}

-- | The ID of the server to delete.
deleteServer_serverName :: Lens.Lens' DeleteServer Core.Text
deleteServer_serverName = Lens.lens (\DeleteServer' {serverName} -> serverName) (\s@DeleteServer' {} a -> s {serverName = a} :: DeleteServer)

instance Core.AWSRequest DeleteServer where
  type AWSResponse DeleteServer = DeleteServerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteServerResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteServer

instance Core.NFData DeleteServer

instance Core.ToHeaders DeleteServer where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OpsWorksCM_V2016_11_01.DeleteServer" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteServer where
  toJSON DeleteServer' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("ServerName" Core..= serverName)]
      )

instance Core.ToPath DeleteServer where
  toPath = Core.const "/"

instance Core.ToQuery DeleteServer where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteServerResponse' smart constructor.
data DeleteServerResponse = DeleteServerResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteServerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteServerResponse_httpStatus' - The response's http status code.
newDeleteServerResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteServerResponse
newDeleteServerResponse pHttpStatus_ =
  DeleteServerResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteServerResponse_httpStatus :: Lens.Lens' DeleteServerResponse Core.Int
deleteServerResponse_httpStatus = Lens.lens (\DeleteServerResponse' {httpStatus} -> httpStatus) (\s@DeleteServerResponse' {} a -> s {httpStatus = a} :: DeleteServerResponse)

instance Core.NFData DeleteServerResponse
