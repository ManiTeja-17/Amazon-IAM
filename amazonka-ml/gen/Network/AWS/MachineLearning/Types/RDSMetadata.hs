{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.RDSMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.RDSMetadata where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MachineLearning.Types.RDSDatabase

-- | The datasource details that are specific to Amazon RDS.
--
-- /See:/ 'newRDSMetadata' smart constructor.
data RDSMetadata = RDSMetadata'
  { -- | The ID of the Data Pipeline instance that is used to carry to copy data
    -- from Amazon RDS to Amazon S3. You can use the ID to find details about
    -- the instance in the Data Pipeline console.
    dataPipelineId :: Core.Maybe Core.Text,
    -- | The SQL query that is supplied during CreateDataSourceFromRDS. Returns
    -- only if @Verbose@ is true in @GetDataSourceInput@.
    selectSqlQuery :: Core.Maybe Core.Text,
    -- | The role (DataPipelineDefaultRole) assumed by the Data Pipeline service
    -- to monitor the progress of the copy task from Amazon RDS to Amazon S3.
    -- For more information, see
    -- <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates>
    -- for data pipelines.
    serviceRole :: Core.Maybe Core.Text,
    -- | The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2
    -- instance to carry out the copy task from Amazon RDS to Amazon S3. For
    -- more information, see
    -- <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates>
    -- for data pipelines.
    resourceRole :: Core.Maybe Core.Text,
    databaseUserName :: Core.Maybe Core.Text,
    -- | The database details required to connect to an Amazon RDS.
    database :: Core.Maybe RDSDatabase
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RDSMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataPipelineId', 'rDSMetadata_dataPipelineId' - The ID of the Data Pipeline instance that is used to carry to copy data
-- from Amazon RDS to Amazon S3. You can use the ID to find details about
-- the instance in the Data Pipeline console.
--
-- 'selectSqlQuery', 'rDSMetadata_selectSqlQuery' - The SQL query that is supplied during CreateDataSourceFromRDS. Returns
-- only if @Verbose@ is true in @GetDataSourceInput@.
--
-- 'serviceRole', 'rDSMetadata_serviceRole' - The role (DataPipelineDefaultRole) assumed by the Data Pipeline service
-- to monitor the progress of the copy task from Amazon RDS to Amazon S3.
-- For more information, see
-- <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates>
-- for data pipelines.
--
-- 'resourceRole', 'rDSMetadata_resourceRole' - The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2
-- instance to carry out the copy task from Amazon RDS to Amazon S3. For
-- more information, see
-- <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates>
-- for data pipelines.
--
-- 'databaseUserName', 'rDSMetadata_databaseUserName' - Undocumented member.
--
-- 'database', 'rDSMetadata_database' - The database details required to connect to an Amazon RDS.
newRDSMetadata ::
  RDSMetadata
newRDSMetadata =
  RDSMetadata'
    { dataPipelineId = Core.Nothing,
      selectSqlQuery = Core.Nothing,
      serviceRole = Core.Nothing,
      resourceRole = Core.Nothing,
      databaseUserName = Core.Nothing,
      database = Core.Nothing
    }

-- | The ID of the Data Pipeline instance that is used to carry to copy data
-- from Amazon RDS to Amazon S3. You can use the ID to find details about
-- the instance in the Data Pipeline console.
rDSMetadata_dataPipelineId :: Lens.Lens' RDSMetadata (Core.Maybe Core.Text)
rDSMetadata_dataPipelineId = Lens.lens (\RDSMetadata' {dataPipelineId} -> dataPipelineId) (\s@RDSMetadata' {} a -> s {dataPipelineId = a} :: RDSMetadata)

-- | The SQL query that is supplied during CreateDataSourceFromRDS. Returns
-- only if @Verbose@ is true in @GetDataSourceInput@.
rDSMetadata_selectSqlQuery :: Lens.Lens' RDSMetadata (Core.Maybe Core.Text)
rDSMetadata_selectSqlQuery = Lens.lens (\RDSMetadata' {selectSqlQuery} -> selectSqlQuery) (\s@RDSMetadata' {} a -> s {selectSqlQuery = a} :: RDSMetadata)

-- | The role (DataPipelineDefaultRole) assumed by the Data Pipeline service
-- to monitor the progress of the copy task from Amazon RDS to Amazon S3.
-- For more information, see
-- <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates>
-- for data pipelines.
rDSMetadata_serviceRole :: Lens.Lens' RDSMetadata (Core.Maybe Core.Text)
rDSMetadata_serviceRole = Lens.lens (\RDSMetadata' {serviceRole} -> serviceRole) (\s@RDSMetadata' {} a -> s {serviceRole = a} :: RDSMetadata)

-- | The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2
-- instance to carry out the copy task from Amazon RDS to Amazon S3. For
-- more information, see
-- <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates>
-- for data pipelines.
rDSMetadata_resourceRole :: Lens.Lens' RDSMetadata (Core.Maybe Core.Text)
rDSMetadata_resourceRole = Lens.lens (\RDSMetadata' {resourceRole} -> resourceRole) (\s@RDSMetadata' {} a -> s {resourceRole = a} :: RDSMetadata)

-- | Undocumented member.
rDSMetadata_databaseUserName :: Lens.Lens' RDSMetadata (Core.Maybe Core.Text)
rDSMetadata_databaseUserName = Lens.lens (\RDSMetadata' {databaseUserName} -> databaseUserName) (\s@RDSMetadata' {} a -> s {databaseUserName = a} :: RDSMetadata)

-- | The database details required to connect to an Amazon RDS.
rDSMetadata_database :: Lens.Lens' RDSMetadata (Core.Maybe RDSDatabase)
rDSMetadata_database = Lens.lens (\RDSMetadata' {database} -> database) (\s@RDSMetadata' {} a -> s {database = a} :: RDSMetadata)

instance Core.FromJSON RDSMetadata where
  parseJSON =
    Core.withObject
      "RDSMetadata"
      ( \x ->
          RDSMetadata'
            Core.<$> (x Core..:? "DataPipelineId")
            Core.<*> (x Core..:? "SelectSqlQuery")
            Core.<*> (x Core..:? "ServiceRole")
            Core.<*> (x Core..:? "ResourceRole")
            Core.<*> (x Core..:? "DatabaseUserName")
            Core.<*> (x Core..:? "Database")
      )

instance Core.Hashable RDSMetadata

instance Core.NFData RDSMetadata
