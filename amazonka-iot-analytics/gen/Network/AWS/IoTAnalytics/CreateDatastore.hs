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
-- Module      : Network.AWS.IoTAnalytics.CreateDatastore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a data store, which is a repository for messages.
module Network.AWS.IoTAnalytics.CreateDatastore
  ( -- * Creating a Request
    CreateDatastore (..),
    newCreateDatastore,

    -- * Request Lenses
    createDatastore_datastoreStorage,
    createDatastore_fileFormatConfiguration,
    createDatastore_retentionPeriod,
    createDatastore_tags,
    createDatastore_datastoreName,

    -- * Destructuring the Response
    CreateDatastoreResponse (..),
    newCreateDatastoreResponse,

    -- * Response Lenses
    createDatastoreResponse_datastoreArn,
    createDatastoreResponse_retentionPeriod,
    createDatastoreResponse_datastoreName,
    createDatastoreResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDatastore' smart constructor.
data CreateDatastore = CreateDatastore'
  { -- | Where data store data is stored. You can choose one of
    -- @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the
    -- default is @serviceManagedS3@. You cannot change this storage option
    -- after the data store is created.
    datastoreStorage :: Core.Maybe DatastoreStorage,
    -- | Contains the configuration information of file formats. AWS IoT
    -- Analytics data stores support JSON and
    -- <https://parquet.apache.org/ Parquet>.
    --
    -- The default file format is JSON. You can specify only one format.
    --
    -- You can\'t change the file format after you create the data store.
    fileFormatConfiguration :: Core.Maybe FileFormatConfiguration,
    -- | How long, in days, message data is kept for the data store. When
    -- @customerManagedS3@ storage is selected, this parameter is ignored.
    retentionPeriod :: Core.Maybe RetentionPeriod,
    -- | Metadata which can be used to manage the data store.
    tags :: Core.Maybe (Core.NonEmpty Tag),
    -- | The name of the data store.
    datastoreName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDatastore' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datastoreStorage', 'createDatastore_datastoreStorage' - Where data store data is stored. You can choose one of
-- @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the
-- default is @serviceManagedS3@. You cannot change this storage option
-- after the data store is created.
--
-- 'fileFormatConfiguration', 'createDatastore_fileFormatConfiguration' - Contains the configuration information of file formats. AWS IoT
-- Analytics data stores support JSON and
-- <https://parquet.apache.org/ Parquet>.
--
-- The default file format is JSON. You can specify only one format.
--
-- You can\'t change the file format after you create the data store.
--
-- 'retentionPeriod', 'createDatastore_retentionPeriod' - How long, in days, message data is kept for the data store. When
-- @customerManagedS3@ storage is selected, this parameter is ignored.
--
-- 'tags', 'createDatastore_tags' - Metadata which can be used to manage the data store.
--
-- 'datastoreName', 'createDatastore_datastoreName' - The name of the data store.
newCreateDatastore ::
  -- | 'datastoreName'
  Core.Text ->
  CreateDatastore
newCreateDatastore pDatastoreName_ =
  CreateDatastore'
    { datastoreStorage = Core.Nothing,
      fileFormatConfiguration = Core.Nothing,
      retentionPeriod = Core.Nothing,
      tags = Core.Nothing,
      datastoreName = pDatastoreName_
    }

-- | Where data store data is stored. You can choose one of
-- @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the
-- default is @serviceManagedS3@. You cannot change this storage option
-- after the data store is created.
createDatastore_datastoreStorage :: Lens.Lens' CreateDatastore (Core.Maybe DatastoreStorage)
createDatastore_datastoreStorage = Lens.lens (\CreateDatastore' {datastoreStorage} -> datastoreStorage) (\s@CreateDatastore' {} a -> s {datastoreStorage = a} :: CreateDatastore)

-- | Contains the configuration information of file formats. AWS IoT
-- Analytics data stores support JSON and
-- <https://parquet.apache.org/ Parquet>.
--
-- The default file format is JSON. You can specify only one format.
--
-- You can\'t change the file format after you create the data store.
createDatastore_fileFormatConfiguration :: Lens.Lens' CreateDatastore (Core.Maybe FileFormatConfiguration)
createDatastore_fileFormatConfiguration = Lens.lens (\CreateDatastore' {fileFormatConfiguration} -> fileFormatConfiguration) (\s@CreateDatastore' {} a -> s {fileFormatConfiguration = a} :: CreateDatastore)

-- | How long, in days, message data is kept for the data store. When
-- @customerManagedS3@ storage is selected, this parameter is ignored.
createDatastore_retentionPeriod :: Lens.Lens' CreateDatastore (Core.Maybe RetentionPeriod)
createDatastore_retentionPeriod = Lens.lens (\CreateDatastore' {retentionPeriod} -> retentionPeriod) (\s@CreateDatastore' {} a -> s {retentionPeriod = a} :: CreateDatastore)

-- | Metadata which can be used to manage the data store.
createDatastore_tags :: Lens.Lens' CreateDatastore (Core.Maybe (Core.NonEmpty Tag))
createDatastore_tags = Lens.lens (\CreateDatastore' {tags} -> tags) (\s@CreateDatastore' {} a -> s {tags = a} :: CreateDatastore) Core.. Lens.mapping Lens._Coerce

-- | The name of the data store.
createDatastore_datastoreName :: Lens.Lens' CreateDatastore Core.Text
createDatastore_datastoreName = Lens.lens (\CreateDatastore' {datastoreName} -> datastoreName) (\s@CreateDatastore' {} a -> s {datastoreName = a} :: CreateDatastore)

instance Core.AWSRequest CreateDatastore where
  type
    AWSResponse CreateDatastore =
      CreateDatastoreResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDatastoreResponse'
            Core.<$> (x Core..?> "datastoreArn")
            Core.<*> (x Core..?> "retentionPeriod")
            Core.<*> (x Core..?> "datastoreName")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateDatastore

instance Core.NFData CreateDatastore

instance Core.ToHeaders CreateDatastore where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON CreateDatastore where
  toJSON CreateDatastore' {..} =
    Core.object
      ( Core.catMaybes
          [ ("datastoreStorage" Core..=)
              Core.<$> datastoreStorage,
            ("fileFormatConfiguration" Core..=)
              Core.<$> fileFormatConfiguration,
            ("retentionPeriod" Core..=) Core.<$> retentionPeriod,
            ("tags" Core..=) Core.<$> tags,
            Core.Just ("datastoreName" Core..= datastoreName)
          ]
      )

instance Core.ToPath CreateDatastore where
  toPath = Core.const "/datastores"

instance Core.ToQuery CreateDatastore where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateDatastoreResponse' smart constructor.
data CreateDatastoreResponse = CreateDatastoreResponse'
  { -- | The ARN of the data store.
    datastoreArn :: Core.Maybe Core.Text,
    -- | How long, in days, message data is kept for the data store.
    retentionPeriod :: Core.Maybe RetentionPeriod,
    -- | The name of the data store.
    datastoreName :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDatastoreResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datastoreArn', 'createDatastoreResponse_datastoreArn' - The ARN of the data store.
--
-- 'retentionPeriod', 'createDatastoreResponse_retentionPeriod' - How long, in days, message data is kept for the data store.
--
-- 'datastoreName', 'createDatastoreResponse_datastoreName' - The name of the data store.
--
-- 'httpStatus', 'createDatastoreResponse_httpStatus' - The response's http status code.
newCreateDatastoreResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateDatastoreResponse
newCreateDatastoreResponse pHttpStatus_ =
  CreateDatastoreResponse'
    { datastoreArn =
        Core.Nothing,
      retentionPeriod = Core.Nothing,
      datastoreName = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the data store.
createDatastoreResponse_datastoreArn :: Lens.Lens' CreateDatastoreResponse (Core.Maybe Core.Text)
createDatastoreResponse_datastoreArn = Lens.lens (\CreateDatastoreResponse' {datastoreArn} -> datastoreArn) (\s@CreateDatastoreResponse' {} a -> s {datastoreArn = a} :: CreateDatastoreResponse)

-- | How long, in days, message data is kept for the data store.
createDatastoreResponse_retentionPeriod :: Lens.Lens' CreateDatastoreResponse (Core.Maybe RetentionPeriod)
createDatastoreResponse_retentionPeriod = Lens.lens (\CreateDatastoreResponse' {retentionPeriod} -> retentionPeriod) (\s@CreateDatastoreResponse' {} a -> s {retentionPeriod = a} :: CreateDatastoreResponse)

-- | The name of the data store.
createDatastoreResponse_datastoreName :: Lens.Lens' CreateDatastoreResponse (Core.Maybe Core.Text)
createDatastoreResponse_datastoreName = Lens.lens (\CreateDatastoreResponse' {datastoreName} -> datastoreName) (\s@CreateDatastoreResponse' {} a -> s {datastoreName = a} :: CreateDatastoreResponse)

-- | The response's http status code.
createDatastoreResponse_httpStatus :: Lens.Lens' CreateDatastoreResponse Core.Int
createDatastoreResponse_httpStatus = Lens.lens (\CreateDatastoreResponse' {httpStatus} -> httpStatus) (\s@CreateDatastoreResponse' {} a -> s {httpStatus = a} :: CreateDatastoreResponse)

instance Core.NFData CreateDatastoreResponse
