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
-- Module      : Network.AWS.Athena.Types.WorkGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.WorkGroup where

import Network.AWS.Athena.Types.WorkGroupConfiguration
import Network.AWS.Athena.Types.WorkGroupState
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | A workgroup, which contains a name, description, creation time, state,
-- and other configuration, listed under WorkGroup$Configuration. Each
-- workgroup enables you to isolate queries for you or your group of users
-- from other queries in the same account, to configure the query results
-- location and the encryption configuration (known as workgroup settings),
-- to enable sending query metrics to Amazon CloudWatch, and to establish
-- per-query data usage control limits for all queries in a workgroup. The
-- workgroup settings override is specified in
-- EnforceWorkGroupConfiguration (true\/false) in the
-- WorkGroupConfiguration. See
-- WorkGroupConfiguration$EnforceWorkGroupConfiguration.
--
-- /See:/ 'newWorkGroup' smart constructor.
data WorkGroup = WorkGroup'
  { -- | The date and time the workgroup was created.
    creationTime :: Core.Maybe Core.POSIX,
    -- | The configuration of the workgroup, which includes the location in
    -- Amazon S3 where query results are stored, the encryption configuration,
    -- if any, used for query results; whether the Amazon CloudWatch Metrics
    -- are enabled for the workgroup; whether workgroup settings override
    -- client-side settings; and the data usage limits for the amount of data
    -- scanned per query or per workgroup. The workgroup settings override is
    -- specified in EnforceWorkGroupConfiguration (true\/false) in the
    -- WorkGroupConfiguration. See
    -- WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    configuration :: Core.Maybe WorkGroupConfiguration,
    -- | The state of the workgroup: ENABLED or DISABLED.
    state :: Core.Maybe WorkGroupState,
    -- | The workgroup description.
    description :: Core.Maybe Core.Text,
    -- | The workgroup name.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'WorkGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'workGroup_creationTime' - The date and time the workgroup was created.
--
-- 'configuration', 'workGroup_configuration' - The configuration of the workgroup, which includes the location in
-- Amazon S3 where query results are stored, the encryption configuration,
-- if any, used for query results; whether the Amazon CloudWatch Metrics
-- are enabled for the workgroup; whether workgroup settings override
-- client-side settings; and the data usage limits for the amount of data
-- scanned per query or per workgroup. The workgroup settings override is
-- specified in EnforceWorkGroupConfiguration (true\/false) in the
-- WorkGroupConfiguration. See
-- WorkGroupConfiguration$EnforceWorkGroupConfiguration.
--
-- 'state', 'workGroup_state' - The state of the workgroup: ENABLED or DISABLED.
--
-- 'description', 'workGroup_description' - The workgroup description.
--
-- 'name', 'workGroup_name' - The workgroup name.
newWorkGroup ::
  -- | 'name'
  Core.Text ->
  WorkGroup
newWorkGroup pName_ =
  WorkGroup'
    { creationTime = Core.Nothing,
      configuration = Core.Nothing,
      state = Core.Nothing,
      description = Core.Nothing,
      name = pName_
    }

-- | The date and time the workgroup was created.
workGroup_creationTime :: Lens.Lens' WorkGroup (Core.Maybe Core.UTCTime)
workGroup_creationTime = Lens.lens (\WorkGroup' {creationTime} -> creationTime) (\s@WorkGroup' {} a -> s {creationTime = a} :: WorkGroup) Core.. Lens.mapping Core._Time

-- | The configuration of the workgroup, which includes the location in
-- Amazon S3 where query results are stored, the encryption configuration,
-- if any, used for query results; whether the Amazon CloudWatch Metrics
-- are enabled for the workgroup; whether workgroup settings override
-- client-side settings; and the data usage limits for the amount of data
-- scanned per query or per workgroup. The workgroup settings override is
-- specified in EnforceWorkGroupConfiguration (true\/false) in the
-- WorkGroupConfiguration. See
-- WorkGroupConfiguration$EnforceWorkGroupConfiguration.
workGroup_configuration :: Lens.Lens' WorkGroup (Core.Maybe WorkGroupConfiguration)
workGroup_configuration = Lens.lens (\WorkGroup' {configuration} -> configuration) (\s@WorkGroup' {} a -> s {configuration = a} :: WorkGroup)

-- | The state of the workgroup: ENABLED or DISABLED.
workGroup_state :: Lens.Lens' WorkGroup (Core.Maybe WorkGroupState)
workGroup_state = Lens.lens (\WorkGroup' {state} -> state) (\s@WorkGroup' {} a -> s {state = a} :: WorkGroup)

-- | The workgroup description.
workGroup_description :: Lens.Lens' WorkGroup (Core.Maybe Core.Text)
workGroup_description = Lens.lens (\WorkGroup' {description} -> description) (\s@WorkGroup' {} a -> s {description = a} :: WorkGroup)

-- | The workgroup name.
workGroup_name :: Lens.Lens' WorkGroup Core.Text
workGroup_name = Lens.lens (\WorkGroup' {name} -> name) (\s@WorkGroup' {} a -> s {name = a} :: WorkGroup)

instance Core.FromJSON WorkGroup where
  parseJSON =
    Core.withObject
      "WorkGroup"
      ( \x ->
          WorkGroup'
            Core.<$> (x Core..:? "CreationTime")
            Core.<*> (x Core..:? "Configuration")
            Core.<*> (x Core..:? "State")
            Core.<*> (x Core..:? "Description")
            Core.<*> (x Core..: "Name")
      )

instance Core.Hashable WorkGroup

instance Core.NFData WorkGroup
