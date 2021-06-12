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
-- Module      : Network.AWS.RDS.Types.DBParameterGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBParameterGroupStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The status of the DB parameter group.
--
-- This data type is used as a response element in the following actions:
--
-- -   @CreateDBInstance@
--
-- -   @CreateDBInstanceReadReplica@
--
-- -   @DeleteDBInstance@
--
-- -   @ModifyDBInstance@
--
-- -   @RebootDBInstance@
--
-- -   @RestoreDBInstanceFromDBSnapshot@
--
-- /See:/ 'newDBParameterGroupStatus' smart constructor.
data DBParameterGroupStatus = DBParameterGroupStatus'
  { -- | The name of the DB parameter group.
    dbParameterGroupName :: Core.Maybe Core.Text,
    -- | The status of parameter updates.
    parameterApplyStatus :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DBParameterGroupStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbParameterGroupName', 'dbParameterGroupStatus_dbParameterGroupName' - The name of the DB parameter group.
--
-- 'parameterApplyStatus', 'dbParameterGroupStatus_parameterApplyStatus' - The status of parameter updates.
newDBParameterGroupStatus ::
  DBParameterGroupStatus
newDBParameterGroupStatus =
  DBParameterGroupStatus'
    { dbParameterGroupName =
        Core.Nothing,
      parameterApplyStatus = Core.Nothing
    }

-- | The name of the DB parameter group.
dbParameterGroupStatus_dbParameterGroupName :: Lens.Lens' DBParameterGroupStatus (Core.Maybe Core.Text)
dbParameterGroupStatus_dbParameterGroupName = Lens.lens (\DBParameterGroupStatus' {dbParameterGroupName} -> dbParameterGroupName) (\s@DBParameterGroupStatus' {} a -> s {dbParameterGroupName = a} :: DBParameterGroupStatus)

-- | The status of parameter updates.
dbParameterGroupStatus_parameterApplyStatus :: Lens.Lens' DBParameterGroupStatus (Core.Maybe Core.Text)
dbParameterGroupStatus_parameterApplyStatus = Lens.lens (\DBParameterGroupStatus' {parameterApplyStatus} -> parameterApplyStatus) (\s@DBParameterGroupStatus' {} a -> s {parameterApplyStatus = a} :: DBParameterGroupStatus)

instance Core.FromXML DBParameterGroupStatus where
  parseXML x =
    DBParameterGroupStatus'
      Core.<$> (x Core..@? "DBParameterGroupName")
      Core.<*> (x Core..@? "ParameterApplyStatus")

instance Core.Hashable DBParameterGroupStatus

instance Core.NFData DBParameterGroupStatus
