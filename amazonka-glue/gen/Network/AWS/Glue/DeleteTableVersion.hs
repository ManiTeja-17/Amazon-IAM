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
-- Module      : Network.AWS.Glue.DeleteTableVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified version of a table.
module Network.AWS.Glue.DeleteTableVersion
  ( -- * Creating a Request
    DeleteTableVersion (..),
    newDeleteTableVersion,

    -- * Request Lenses
    deleteTableVersion_catalogId,
    deleteTableVersion_databaseName,
    deleteTableVersion_tableName,
    deleteTableVersion_versionId,

    -- * Destructuring the Response
    DeleteTableVersionResponse (..),
    newDeleteTableVersionResponse,

    -- * Response Lenses
    deleteTableVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteTableVersion' smart constructor.
data DeleteTableVersion = DeleteTableVersion'
  { -- | The ID of the Data Catalog where the tables reside. If none is provided,
    -- the AWS account ID is used by default.
    catalogId :: Core.Maybe Core.Text,
    -- | The database in the catalog in which the table resides. For Hive
    -- compatibility, this name is entirely lowercase.
    databaseName :: Core.Text,
    -- | The name of the table. For Hive compatibility, this name is entirely
    -- lowercase.
    tableName :: Core.Text,
    -- | The ID of the table version to be deleted. A @VersionID@ is a string
    -- representation of an integer. Each version is incremented by 1.
    versionId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteTableVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'deleteTableVersion_catalogId' - The ID of the Data Catalog where the tables reside. If none is provided,
-- the AWS account ID is used by default.
--
-- 'databaseName', 'deleteTableVersion_databaseName' - The database in the catalog in which the table resides. For Hive
-- compatibility, this name is entirely lowercase.
--
-- 'tableName', 'deleteTableVersion_tableName' - The name of the table. For Hive compatibility, this name is entirely
-- lowercase.
--
-- 'versionId', 'deleteTableVersion_versionId' - The ID of the table version to be deleted. A @VersionID@ is a string
-- representation of an integer. Each version is incremented by 1.
newDeleteTableVersion ::
  -- | 'databaseName'
  Core.Text ->
  -- | 'tableName'
  Core.Text ->
  -- | 'versionId'
  Core.Text ->
  DeleteTableVersion
newDeleteTableVersion
  pDatabaseName_
  pTableName_
  pVersionId_ =
    DeleteTableVersion'
      { catalogId = Core.Nothing,
        databaseName = pDatabaseName_,
        tableName = pTableName_,
        versionId = pVersionId_
      }

-- | The ID of the Data Catalog where the tables reside. If none is provided,
-- the AWS account ID is used by default.
deleteTableVersion_catalogId :: Lens.Lens' DeleteTableVersion (Core.Maybe Core.Text)
deleteTableVersion_catalogId = Lens.lens (\DeleteTableVersion' {catalogId} -> catalogId) (\s@DeleteTableVersion' {} a -> s {catalogId = a} :: DeleteTableVersion)

-- | The database in the catalog in which the table resides. For Hive
-- compatibility, this name is entirely lowercase.
deleteTableVersion_databaseName :: Lens.Lens' DeleteTableVersion Core.Text
deleteTableVersion_databaseName = Lens.lens (\DeleteTableVersion' {databaseName} -> databaseName) (\s@DeleteTableVersion' {} a -> s {databaseName = a} :: DeleteTableVersion)

-- | The name of the table. For Hive compatibility, this name is entirely
-- lowercase.
deleteTableVersion_tableName :: Lens.Lens' DeleteTableVersion Core.Text
deleteTableVersion_tableName = Lens.lens (\DeleteTableVersion' {tableName} -> tableName) (\s@DeleteTableVersion' {} a -> s {tableName = a} :: DeleteTableVersion)

-- | The ID of the table version to be deleted. A @VersionID@ is a string
-- representation of an integer. Each version is incremented by 1.
deleteTableVersion_versionId :: Lens.Lens' DeleteTableVersion Core.Text
deleteTableVersion_versionId = Lens.lens (\DeleteTableVersion' {versionId} -> versionId) (\s@DeleteTableVersion' {} a -> s {versionId = a} :: DeleteTableVersion)

instance Core.AWSRequest DeleteTableVersion where
  type
    AWSResponse DeleteTableVersion =
      DeleteTableVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteTableVersionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteTableVersion

instance Core.NFData DeleteTableVersion

instance Core.ToHeaders DeleteTableVersion where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.DeleteTableVersion" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteTableVersion where
  toJSON DeleteTableVersion' {..} =
    Core.object
      ( Core.catMaybes
          [ ("CatalogId" Core..=) Core.<$> catalogId,
            Core.Just ("DatabaseName" Core..= databaseName),
            Core.Just ("TableName" Core..= tableName),
            Core.Just ("VersionId" Core..= versionId)
          ]
      )

instance Core.ToPath DeleteTableVersion where
  toPath = Core.const "/"

instance Core.ToQuery DeleteTableVersion where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteTableVersionResponse' smart constructor.
data DeleteTableVersionResponse = DeleteTableVersionResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteTableVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteTableVersionResponse_httpStatus' - The response's http status code.
newDeleteTableVersionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteTableVersionResponse
newDeleteTableVersionResponse pHttpStatus_ =
  DeleteTableVersionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteTableVersionResponse_httpStatus :: Lens.Lens' DeleteTableVersionResponse Core.Int
deleteTableVersionResponse_httpStatus = Lens.lens (\DeleteTableVersionResponse' {httpStatus} -> httpStatus) (\s@DeleteTableVersionResponse' {} a -> s {httpStatus = a} :: DeleteTableVersionResponse)

instance Core.NFData DeleteTableVersionResponse
