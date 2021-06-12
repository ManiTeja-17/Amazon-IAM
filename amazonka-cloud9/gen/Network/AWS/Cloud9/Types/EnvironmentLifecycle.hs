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
-- Module      : Network.AWS.Cloud9.Types.EnvironmentLifecycle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.EnvironmentLifecycle where

import Network.AWS.Cloud9.Types.EnvironmentLifecycleStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Information about the current creation or deletion lifecycle state of an
-- AWS Cloud9 development environment.
--
-- /See:/ 'newEnvironmentLifecycle' smart constructor.
data EnvironmentLifecycle = EnvironmentLifecycle'
  { -- | The current creation or deletion lifecycle state of the environment.
    --
    -- -   @CREATING@: The environment is in the process of being created.
    --
    -- -   @CREATED@: The environment was successfully created.
    --
    -- -   @CREATE_FAILED@: The environment failed to be created.
    --
    -- -   @DELETING@: The environment is in the process of being deleted.
    --
    -- -   @DELETE_FAILED@: The environment failed to delete.
    status :: Core.Maybe EnvironmentLifecycleStatus,
    -- | Any informational message about the lifecycle state of the environment.
    reason :: Core.Maybe Core.Text,
    -- | If the environment failed to delete, the Amazon Resource Name (ARN) of
    -- the related AWS resource.
    failureResource :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EnvironmentLifecycle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'environmentLifecycle_status' - The current creation or deletion lifecycle state of the environment.
--
-- -   @CREATING@: The environment is in the process of being created.
--
-- -   @CREATED@: The environment was successfully created.
--
-- -   @CREATE_FAILED@: The environment failed to be created.
--
-- -   @DELETING@: The environment is in the process of being deleted.
--
-- -   @DELETE_FAILED@: The environment failed to delete.
--
-- 'reason', 'environmentLifecycle_reason' - Any informational message about the lifecycle state of the environment.
--
-- 'failureResource', 'environmentLifecycle_failureResource' - If the environment failed to delete, the Amazon Resource Name (ARN) of
-- the related AWS resource.
newEnvironmentLifecycle ::
  EnvironmentLifecycle
newEnvironmentLifecycle =
  EnvironmentLifecycle'
    { status = Core.Nothing,
      reason = Core.Nothing,
      failureResource = Core.Nothing
    }

-- | The current creation or deletion lifecycle state of the environment.
--
-- -   @CREATING@: The environment is in the process of being created.
--
-- -   @CREATED@: The environment was successfully created.
--
-- -   @CREATE_FAILED@: The environment failed to be created.
--
-- -   @DELETING@: The environment is in the process of being deleted.
--
-- -   @DELETE_FAILED@: The environment failed to delete.
environmentLifecycle_status :: Lens.Lens' EnvironmentLifecycle (Core.Maybe EnvironmentLifecycleStatus)
environmentLifecycle_status = Lens.lens (\EnvironmentLifecycle' {status} -> status) (\s@EnvironmentLifecycle' {} a -> s {status = a} :: EnvironmentLifecycle)

-- | Any informational message about the lifecycle state of the environment.
environmentLifecycle_reason :: Lens.Lens' EnvironmentLifecycle (Core.Maybe Core.Text)
environmentLifecycle_reason = Lens.lens (\EnvironmentLifecycle' {reason} -> reason) (\s@EnvironmentLifecycle' {} a -> s {reason = a} :: EnvironmentLifecycle)

-- | If the environment failed to delete, the Amazon Resource Name (ARN) of
-- the related AWS resource.
environmentLifecycle_failureResource :: Lens.Lens' EnvironmentLifecycle (Core.Maybe Core.Text)
environmentLifecycle_failureResource = Lens.lens (\EnvironmentLifecycle' {failureResource} -> failureResource) (\s@EnvironmentLifecycle' {} a -> s {failureResource = a} :: EnvironmentLifecycle)

instance Core.FromJSON EnvironmentLifecycle where
  parseJSON =
    Core.withObject
      "EnvironmentLifecycle"
      ( \x ->
          EnvironmentLifecycle'
            Core.<$> (x Core..:? "status")
            Core.<*> (x Core..:? "reason")
            Core.<*> (x Core..:? "failureResource")
      )

instance Core.Hashable EnvironmentLifecycle

instance Core.NFData EnvironmentLifecycle
