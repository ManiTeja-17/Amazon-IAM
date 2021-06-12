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
-- Module      : Network.AWS.IoTAnalytics.DeleteDatastore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified data store.
module Network.AWS.IoTAnalytics.DeleteDatastore
  ( -- * Creating a Request
    DeleteDatastore (..),
    newDeleteDatastore,

    -- * Request Lenses
    deleteDatastore_datastoreName,

    -- * Destructuring the Response
    DeleteDatastoreResponse (..),
    newDeleteDatastoreResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDatastore' smart constructor.
data DeleteDatastore = DeleteDatastore'
  { -- | The name of the data store to delete.
    datastoreName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDatastore' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datastoreName', 'deleteDatastore_datastoreName' - The name of the data store to delete.
newDeleteDatastore ::
  -- | 'datastoreName'
  Core.Text ->
  DeleteDatastore
newDeleteDatastore pDatastoreName_ =
  DeleteDatastore' {datastoreName = pDatastoreName_}

-- | The name of the data store to delete.
deleteDatastore_datastoreName :: Lens.Lens' DeleteDatastore Core.Text
deleteDatastore_datastoreName = Lens.lens (\DeleteDatastore' {datastoreName} -> datastoreName) (\s@DeleteDatastore' {} a -> s {datastoreName = a} :: DeleteDatastore)

instance Core.AWSRequest DeleteDatastore where
  type
    AWSResponse DeleteDatastore =
      DeleteDatastoreResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteDatastoreResponse'

instance Core.Hashable DeleteDatastore

instance Core.NFData DeleteDatastore

instance Core.ToHeaders DeleteDatastore where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteDatastore where
  toPath DeleteDatastore' {..} =
    Core.mconcat
      ["/datastores/", Core.toBS datastoreName]

instance Core.ToQuery DeleteDatastore where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteDatastoreResponse' smart constructor.
data DeleteDatastoreResponse = DeleteDatastoreResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDatastoreResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDatastoreResponse ::
  DeleteDatastoreResponse
newDeleteDatastoreResponse = DeleteDatastoreResponse'

instance Core.NFData DeleteDatastoreResponse
