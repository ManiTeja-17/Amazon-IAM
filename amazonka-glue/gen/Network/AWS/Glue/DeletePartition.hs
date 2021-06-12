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
-- Module      : Network.AWS.Glue.DeletePartition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified partition.
module Network.AWS.Glue.DeletePartition
  ( -- * Creating a Request
    DeletePartition (..),
    newDeletePartition,

    -- * Request Lenses
    deletePartition_catalogId,
    deletePartition_databaseName,
    deletePartition_tableName,
    deletePartition_partitionValues,

    -- * Destructuring the Response
    DeletePartitionResponse (..),
    newDeletePartitionResponse,

    -- * Response Lenses
    deletePartitionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeletePartition' smart constructor.
data DeletePartition = DeletePartition'
  { -- | The ID of the Data Catalog where the partition to be deleted resides. If
    -- none is provided, the AWS account ID is used by default.
    catalogId :: Core.Maybe Core.Text,
    -- | The name of the catalog database in which the table in question resides.
    databaseName :: Core.Text,
    -- | The name of the table that contains the partition to be deleted.
    tableName :: Core.Text,
    -- | The values that define the partition.
    partitionValues :: [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeletePartition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'deletePartition_catalogId' - The ID of the Data Catalog where the partition to be deleted resides. If
-- none is provided, the AWS account ID is used by default.
--
-- 'databaseName', 'deletePartition_databaseName' - The name of the catalog database in which the table in question resides.
--
-- 'tableName', 'deletePartition_tableName' - The name of the table that contains the partition to be deleted.
--
-- 'partitionValues', 'deletePartition_partitionValues' - The values that define the partition.
newDeletePartition ::
  -- | 'databaseName'
  Core.Text ->
  -- | 'tableName'
  Core.Text ->
  DeletePartition
newDeletePartition pDatabaseName_ pTableName_ =
  DeletePartition'
    { catalogId = Core.Nothing,
      databaseName = pDatabaseName_,
      tableName = pTableName_,
      partitionValues = Core.mempty
    }

-- | The ID of the Data Catalog where the partition to be deleted resides. If
-- none is provided, the AWS account ID is used by default.
deletePartition_catalogId :: Lens.Lens' DeletePartition (Core.Maybe Core.Text)
deletePartition_catalogId = Lens.lens (\DeletePartition' {catalogId} -> catalogId) (\s@DeletePartition' {} a -> s {catalogId = a} :: DeletePartition)

-- | The name of the catalog database in which the table in question resides.
deletePartition_databaseName :: Lens.Lens' DeletePartition Core.Text
deletePartition_databaseName = Lens.lens (\DeletePartition' {databaseName} -> databaseName) (\s@DeletePartition' {} a -> s {databaseName = a} :: DeletePartition)

-- | The name of the table that contains the partition to be deleted.
deletePartition_tableName :: Lens.Lens' DeletePartition Core.Text
deletePartition_tableName = Lens.lens (\DeletePartition' {tableName} -> tableName) (\s@DeletePartition' {} a -> s {tableName = a} :: DeletePartition)

-- | The values that define the partition.
deletePartition_partitionValues :: Lens.Lens' DeletePartition [Core.Text]
deletePartition_partitionValues = Lens.lens (\DeletePartition' {partitionValues} -> partitionValues) (\s@DeletePartition' {} a -> s {partitionValues = a} :: DeletePartition) Core.. Lens._Coerce

instance Core.AWSRequest DeletePartition where
  type
    AWSResponse DeletePartition =
      DeletePartitionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeletePartitionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeletePartition

instance Core.NFData DeletePartition

instance Core.ToHeaders DeletePartition where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.DeletePartition" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeletePartition where
  toJSON DeletePartition' {..} =
    Core.object
      ( Core.catMaybes
          [ ("CatalogId" Core..=) Core.<$> catalogId,
            Core.Just ("DatabaseName" Core..= databaseName),
            Core.Just ("TableName" Core..= tableName),
            Core.Just
              ("PartitionValues" Core..= partitionValues)
          ]
      )

instance Core.ToPath DeletePartition where
  toPath = Core.const "/"

instance Core.ToQuery DeletePartition where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeletePartitionResponse' smart constructor.
data DeletePartitionResponse = DeletePartitionResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeletePartitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deletePartitionResponse_httpStatus' - The response's http status code.
newDeletePartitionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeletePartitionResponse
newDeletePartitionResponse pHttpStatus_ =
  DeletePartitionResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deletePartitionResponse_httpStatus :: Lens.Lens' DeletePartitionResponse Core.Int
deletePartitionResponse_httpStatus = Lens.lens (\DeletePartitionResponse' {httpStatus} -> httpStatus) (\s@DeletePartitionResponse' {} a -> s {httpStatus = a} :: DeletePartitionResponse)

instance Core.NFData DeletePartitionResponse
