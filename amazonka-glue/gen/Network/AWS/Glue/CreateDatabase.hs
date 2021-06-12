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
-- Module      : Network.AWS.Glue.CreateDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new database in a Data Catalog.
module Network.AWS.Glue.CreateDatabase
  ( -- * Creating a Request
    CreateDatabase (..),
    newCreateDatabase,

    -- * Request Lenses
    createDatabase_catalogId,
    createDatabase_databaseInput,

    -- * Destructuring the Response
    CreateDatabaseResponse (..),
    newCreateDatabaseResponse,

    -- * Response Lenses
    createDatabaseResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDatabase' smart constructor.
data CreateDatabase = CreateDatabase'
  { -- | The ID of the Data Catalog in which to create the database. If none is
    -- provided, the AWS account ID is used by default.
    catalogId :: Core.Maybe Core.Text,
    -- | The metadata for the database.
    databaseInput :: DatabaseInput
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDatabase' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'createDatabase_catalogId' - The ID of the Data Catalog in which to create the database. If none is
-- provided, the AWS account ID is used by default.
--
-- 'databaseInput', 'createDatabase_databaseInput' - The metadata for the database.
newCreateDatabase ::
  -- | 'databaseInput'
  DatabaseInput ->
  CreateDatabase
newCreateDatabase pDatabaseInput_ =
  CreateDatabase'
    { catalogId = Core.Nothing,
      databaseInput = pDatabaseInput_
    }

-- | The ID of the Data Catalog in which to create the database. If none is
-- provided, the AWS account ID is used by default.
createDatabase_catalogId :: Lens.Lens' CreateDatabase (Core.Maybe Core.Text)
createDatabase_catalogId = Lens.lens (\CreateDatabase' {catalogId} -> catalogId) (\s@CreateDatabase' {} a -> s {catalogId = a} :: CreateDatabase)

-- | The metadata for the database.
createDatabase_databaseInput :: Lens.Lens' CreateDatabase DatabaseInput
createDatabase_databaseInput = Lens.lens (\CreateDatabase' {databaseInput} -> databaseInput) (\s@CreateDatabase' {} a -> s {databaseInput = a} :: CreateDatabase)

instance Core.AWSRequest CreateDatabase where
  type
    AWSResponse CreateDatabase =
      CreateDatabaseResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateDatabaseResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateDatabase

instance Core.NFData CreateDatabase

instance Core.ToHeaders CreateDatabase where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.CreateDatabase" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateDatabase where
  toJSON CreateDatabase' {..} =
    Core.object
      ( Core.catMaybes
          [ ("CatalogId" Core..=) Core.<$> catalogId,
            Core.Just ("DatabaseInput" Core..= databaseInput)
          ]
      )

instance Core.ToPath CreateDatabase where
  toPath = Core.const "/"

instance Core.ToQuery CreateDatabase where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateDatabaseResponse' smart constructor.
data CreateDatabaseResponse = CreateDatabaseResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDatabaseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createDatabaseResponse_httpStatus' - The response's http status code.
newCreateDatabaseResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateDatabaseResponse
newCreateDatabaseResponse pHttpStatus_ =
  CreateDatabaseResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
createDatabaseResponse_httpStatus :: Lens.Lens' CreateDatabaseResponse Core.Int
createDatabaseResponse_httpStatus = Lens.lens (\CreateDatabaseResponse' {httpStatus} -> httpStatus) (\s@CreateDatabaseResponse' {} a -> s {httpStatus = a} :: CreateDatabaseResponse)

instance Core.NFData CreateDatabaseResponse
