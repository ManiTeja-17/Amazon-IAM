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
-- Module      : Network.AWS.DirectConnect.DeleteDirectConnectGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Direct Connect gateway. You must first delete all
-- virtual interfaces that are attached to the Direct Connect gateway and
-- disassociate all virtual private gateways associated with the Direct
-- Connect gateway.
module Network.AWS.DirectConnect.DeleteDirectConnectGateway
  ( -- * Creating a Request
    DeleteDirectConnectGateway (..),
    newDeleteDirectConnectGateway,

    -- * Request Lenses
    deleteDirectConnectGateway_directConnectGatewayId,

    -- * Destructuring the Response
    DeleteDirectConnectGatewayResponse (..),
    newDeleteDirectConnectGatewayResponse,

    -- * Response Lenses
    deleteDirectConnectGatewayResponse_directConnectGateway,
    deleteDirectConnectGatewayResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectConnect.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDirectConnectGateway' smart constructor.
data DeleteDirectConnectGateway = DeleteDirectConnectGateway'
  { -- | The ID of the Direct Connect gateway.
    directConnectGatewayId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDirectConnectGateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'directConnectGatewayId', 'deleteDirectConnectGateway_directConnectGatewayId' - The ID of the Direct Connect gateway.
newDeleteDirectConnectGateway ::
  -- | 'directConnectGatewayId'
  Core.Text ->
  DeleteDirectConnectGateway
newDeleteDirectConnectGateway
  pDirectConnectGatewayId_ =
    DeleteDirectConnectGateway'
      { directConnectGatewayId =
          pDirectConnectGatewayId_
      }

-- | The ID of the Direct Connect gateway.
deleteDirectConnectGateway_directConnectGatewayId :: Lens.Lens' DeleteDirectConnectGateway Core.Text
deleteDirectConnectGateway_directConnectGatewayId = Lens.lens (\DeleteDirectConnectGateway' {directConnectGatewayId} -> directConnectGatewayId) (\s@DeleteDirectConnectGateway' {} a -> s {directConnectGatewayId = a} :: DeleteDirectConnectGateway)

instance Core.AWSRequest DeleteDirectConnectGateway where
  type
    AWSResponse DeleteDirectConnectGateway =
      DeleteDirectConnectGatewayResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteDirectConnectGatewayResponse'
            Core.<$> (x Core..?> "directConnectGateway")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteDirectConnectGateway

instance Core.NFData DeleteDirectConnectGateway

instance Core.ToHeaders DeleteDirectConnectGateway where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OvertureService.DeleteDirectConnectGateway" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteDirectConnectGateway where
  toJSON DeleteDirectConnectGateway' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "directConnectGatewayId"
                  Core..= directConnectGatewayId
              )
          ]
      )

instance Core.ToPath DeleteDirectConnectGateway where
  toPath = Core.const "/"

instance Core.ToQuery DeleteDirectConnectGateway where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteDirectConnectGatewayResponse' smart constructor.
data DeleteDirectConnectGatewayResponse = DeleteDirectConnectGatewayResponse'
  { -- | The Direct Connect gateway.
    directConnectGateway :: Core.Maybe DirectConnectGateway,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDirectConnectGatewayResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'directConnectGateway', 'deleteDirectConnectGatewayResponse_directConnectGateway' - The Direct Connect gateway.
--
-- 'httpStatus', 'deleteDirectConnectGatewayResponse_httpStatus' - The response's http status code.
newDeleteDirectConnectGatewayResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteDirectConnectGatewayResponse
newDeleteDirectConnectGatewayResponse pHttpStatus_ =
  DeleteDirectConnectGatewayResponse'
    { directConnectGateway =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Direct Connect gateway.
deleteDirectConnectGatewayResponse_directConnectGateway :: Lens.Lens' DeleteDirectConnectGatewayResponse (Core.Maybe DirectConnectGateway)
deleteDirectConnectGatewayResponse_directConnectGateway = Lens.lens (\DeleteDirectConnectGatewayResponse' {directConnectGateway} -> directConnectGateway) (\s@DeleteDirectConnectGatewayResponse' {} a -> s {directConnectGateway = a} :: DeleteDirectConnectGatewayResponse)

-- | The response's http status code.
deleteDirectConnectGatewayResponse_httpStatus :: Lens.Lens' DeleteDirectConnectGatewayResponse Core.Int
deleteDirectConnectGatewayResponse_httpStatus = Lens.lens (\DeleteDirectConnectGatewayResponse' {httpStatus} -> httpStatus) (\s@DeleteDirectConnectGatewayResponse' {} a -> s {httpStatus = a} :: DeleteDirectConnectGatewayResponse)

instance
  Core.NFData
    DeleteDirectConnectGatewayResponse
