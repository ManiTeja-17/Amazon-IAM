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
-- Module      : Network.AWS.DMS.TestConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the connection between the replication instance and the endpoint.
module Network.AWS.DMS.TestConnection
  ( -- * Creating a Request
    TestConnection (..),
    newTestConnection,

    -- * Request Lenses
    testConnection_replicationInstanceArn,
    testConnection_endpointArn,

    -- * Destructuring the Response
    TestConnectionResponse (..),
    newTestConnectionResponse,

    -- * Response Lenses
    testConnectionResponse_connection,
    testConnectionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newTestConnection' smart constructor.
data TestConnection = TestConnection'
  { -- | The Amazon Resource Name (ARN) of the replication instance.
    replicationInstanceArn :: Core.Text,
    -- | The Amazon Resource Name (ARN) string that uniquely identifies the
    -- endpoint.
    endpointArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TestConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationInstanceArn', 'testConnection_replicationInstanceArn' - The Amazon Resource Name (ARN) of the replication instance.
--
-- 'endpointArn', 'testConnection_endpointArn' - The Amazon Resource Name (ARN) string that uniquely identifies the
-- endpoint.
newTestConnection ::
  -- | 'replicationInstanceArn'
  Core.Text ->
  -- | 'endpointArn'
  Core.Text ->
  TestConnection
newTestConnection
  pReplicationInstanceArn_
  pEndpointArn_ =
    TestConnection'
      { replicationInstanceArn =
          pReplicationInstanceArn_,
        endpointArn = pEndpointArn_
      }

-- | The Amazon Resource Name (ARN) of the replication instance.
testConnection_replicationInstanceArn :: Lens.Lens' TestConnection Core.Text
testConnection_replicationInstanceArn = Lens.lens (\TestConnection' {replicationInstanceArn} -> replicationInstanceArn) (\s@TestConnection' {} a -> s {replicationInstanceArn = a} :: TestConnection)

-- | The Amazon Resource Name (ARN) string that uniquely identifies the
-- endpoint.
testConnection_endpointArn :: Lens.Lens' TestConnection Core.Text
testConnection_endpointArn = Lens.lens (\TestConnection' {endpointArn} -> endpointArn) (\s@TestConnection' {} a -> s {endpointArn = a} :: TestConnection)

instance Core.AWSRequest TestConnection where
  type
    AWSResponse TestConnection =
      TestConnectionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          TestConnectionResponse'
            Core.<$> (x Core..?> "Connection")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable TestConnection

instance Core.NFData TestConnection

instance Core.ToHeaders TestConnection where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDMSv20160101.TestConnection" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON TestConnection where
  toJSON TestConnection' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "ReplicationInstanceArn"
                  Core..= replicationInstanceArn
              ),
            Core.Just ("EndpointArn" Core..= endpointArn)
          ]
      )

instance Core.ToPath TestConnection where
  toPath = Core.const "/"

instance Core.ToQuery TestConnection where
  toQuery = Core.const Core.mempty

-- |
--
-- /See:/ 'newTestConnectionResponse' smart constructor.
data TestConnectionResponse = TestConnectionResponse'
  { -- | The connection tested.
    connection :: Core.Maybe Connection,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TestConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connection', 'testConnectionResponse_connection' - The connection tested.
--
-- 'httpStatus', 'testConnectionResponse_httpStatus' - The response's http status code.
newTestConnectionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  TestConnectionResponse
newTestConnectionResponse pHttpStatus_ =
  TestConnectionResponse'
    { connection = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The connection tested.
testConnectionResponse_connection :: Lens.Lens' TestConnectionResponse (Core.Maybe Connection)
testConnectionResponse_connection = Lens.lens (\TestConnectionResponse' {connection} -> connection) (\s@TestConnectionResponse' {} a -> s {connection = a} :: TestConnectionResponse)

-- | The response's http status code.
testConnectionResponse_httpStatus :: Lens.Lens' TestConnectionResponse Core.Int
testConnectionResponse_httpStatus = Lens.lens (\TestConnectionResponse' {httpStatus} -> httpStatus) (\s@TestConnectionResponse' {} a -> s {httpStatus = a} :: TestConnectionResponse)

instance Core.NFData TestConnectionResponse
