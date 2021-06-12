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
-- Module      : Network.AWS.GuardDuty.Types.DataSourceConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.DataSourceConfigurations where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types.S3LogsConfiguration
import qualified Network.AWS.Lens as Lens

-- | Contains information about which data sources are enabled.
--
-- /See:/ 'newDataSourceConfigurations' smart constructor.
data DataSourceConfigurations = DataSourceConfigurations'
  { -- | Describes whether S3 data event logs are enabled as a data source.
    s3Logs :: Core.Maybe S3LogsConfiguration
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DataSourceConfigurations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Logs', 'dataSourceConfigurations_s3Logs' - Describes whether S3 data event logs are enabled as a data source.
newDataSourceConfigurations ::
  DataSourceConfigurations
newDataSourceConfigurations =
  DataSourceConfigurations' {s3Logs = Core.Nothing}

-- | Describes whether S3 data event logs are enabled as a data source.
dataSourceConfigurations_s3Logs :: Lens.Lens' DataSourceConfigurations (Core.Maybe S3LogsConfiguration)
dataSourceConfigurations_s3Logs = Lens.lens (\DataSourceConfigurations' {s3Logs} -> s3Logs) (\s@DataSourceConfigurations' {} a -> s {s3Logs = a} :: DataSourceConfigurations)

instance Core.Hashable DataSourceConfigurations

instance Core.NFData DataSourceConfigurations

instance Core.ToJSON DataSourceConfigurations where
  toJSON DataSourceConfigurations' {..} =
    Core.object
      (Core.catMaybes [("s3Logs" Core..=) Core.<$> s3Logs])
