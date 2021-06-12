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
-- Module      : Network.AWS.RDS.DeleteDBProxy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing proxy.
module Network.AWS.RDS.DeleteDBProxy
  ( -- * Creating a Request
    DeleteDBProxy (..),
    newDeleteDBProxy,

    -- * Request Lenses
    deleteDBProxy_dbProxyName,

    -- * Destructuring the Response
    DeleteDBProxyResponse (..),
    newDeleteDBProxyResponse,

    -- * Response Lenses
    deleteDBProxyResponse_dbProxy,
    deleteDBProxyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDBProxy' smart constructor.
data DeleteDBProxy = DeleteDBProxy'
  { -- | The name of the DB proxy to delete.
    dbProxyName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDBProxy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbProxyName', 'deleteDBProxy_dbProxyName' - The name of the DB proxy to delete.
newDeleteDBProxy ::
  -- | 'dbProxyName'
  Core.Text ->
  DeleteDBProxy
newDeleteDBProxy pDBProxyName_ =
  DeleteDBProxy' {dbProxyName = pDBProxyName_}

-- | The name of the DB proxy to delete.
deleteDBProxy_dbProxyName :: Lens.Lens' DeleteDBProxy Core.Text
deleteDBProxy_dbProxyName = Lens.lens (\DeleteDBProxy' {dbProxyName} -> dbProxyName) (\s@DeleteDBProxy' {} a -> s {dbProxyName = a} :: DeleteDBProxy)

instance Core.AWSRequest DeleteDBProxy where
  type
    AWSResponse DeleteDBProxy =
      DeleteDBProxyResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteDBProxyResult"
      ( \s h x ->
          DeleteDBProxyResponse'
            Core.<$> (x Core..@? "DBProxy")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteDBProxy

instance Core.NFData DeleteDBProxy

instance Core.ToHeaders DeleteDBProxy where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteDBProxy where
  toPath = Core.const "/"

instance Core.ToQuery DeleteDBProxy where
  toQuery DeleteDBProxy' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DeleteDBProxy" :: Core.ByteString),
        "Version" Core.=: ("2014-10-31" :: Core.ByteString),
        "DBProxyName" Core.=: dbProxyName
      ]

-- | /See:/ 'newDeleteDBProxyResponse' smart constructor.
data DeleteDBProxyResponse = DeleteDBProxyResponse'
  { -- | The data structure representing the details of the DB proxy that you
    -- delete.
    dbProxy :: Core.Maybe DBProxy,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDBProxyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbProxy', 'deleteDBProxyResponse_dbProxy' - The data structure representing the details of the DB proxy that you
-- delete.
--
-- 'httpStatus', 'deleteDBProxyResponse_httpStatus' - The response's http status code.
newDeleteDBProxyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteDBProxyResponse
newDeleteDBProxyResponse pHttpStatus_ =
  DeleteDBProxyResponse'
    { dbProxy = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The data structure representing the details of the DB proxy that you
-- delete.
deleteDBProxyResponse_dbProxy :: Lens.Lens' DeleteDBProxyResponse (Core.Maybe DBProxy)
deleteDBProxyResponse_dbProxy = Lens.lens (\DeleteDBProxyResponse' {dbProxy} -> dbProxy) (\s@DeleteDBProxyResponse' {} a -> s {dbProxy = a} :: DeleteDBProxyResponse)

-- | The response's http status code.
deleteDBProxyResponse_httpStatus :: Lens.Lens' DeleteDBProxyResponse Core.Int
deleteDBProxyResponse_httpStatus = Lens.lens (\DeleteDBProxyResponse' {httpStatus} -> httpStatus) (\s@DeleteDBProxyResponse' {} a -> s {httpStatus = a} :: DeleteDBProxyResponse)

instance Core.NFData DeleteDBProxyResponse
