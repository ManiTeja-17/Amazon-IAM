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
-- Module      : Network.AWS.SMS.DeleteServerCatalog
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all servers from your server catalog.
module Network.AWS.SMS.DeleteServerCatalog
  ( -- * Creating a Request
    DeleteServerCatalog (..),
    newDeleteServerCatalog,

    -- * Destructuring the Response
    DeleteServerCatalogResponse (..),
    newDeleteServerCatalogResponse,

    -- * Response Lenses
    deleteServerCatalogResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SMS.Types

-- | /See:/ 'newDeleteServerCatalog' smart constructor.
data DeleteServerCatalog = DeleteServerCatalog'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteServerCatalog' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteServerCatalog ::
  DeleteServerCatalog
newDeleteServerCatalog = DeleteServerCatalog'

instance Core.AWSRequest DeleteServerCatalog where
  type
    AWSResponse DeleteServerCatalog =
      DeleteServerCatalogResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteServerCatalogResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteServerCatalog

instance Core.NFData DeleteServerCatalog

instance Core.ToHeaders DeleteServerCatalog where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSServerMigrationService_V2016_10_24.DeleteServerCatalog" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteServerCatalog where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath DeleteServerCatalog where
  toPath = Core.const "/"

instance Core.ToQuery DeleteServerCatalog where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteServerCatalogResponse' smart constructor.
data DeleteServerCatalogResponse = DeleteServerCatalogResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteServerCatalogResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteServerCatalogResponse_httpStatus' - The response's http status code.
newDeleteServerCatalogResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteServerCatalogResponse
newDeleteServerCatalogResponse pHttpStatus_ =
  DeleteServerCatalogResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteServerCatalogResponse_httpStatus :: Lens.Lens' DeleteServerCatalogResponse Core.Int
deleteServerCatalogResponse_httpStatus = Lens.lens (\DeleteServerCatalogResponse' {httpStatus} -> httpStatus) (\s@DeleteServerCatalogResponse' {} a -> s {httpStatus = a} :: DeleteServerCatalogResponse)

instance Core.NFData DeleteServerCatalogResponse
