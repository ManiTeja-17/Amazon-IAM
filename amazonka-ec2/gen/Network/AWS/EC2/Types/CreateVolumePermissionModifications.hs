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
-- Module      : Network.AWS.EC2.Types.CreateVolumePermissionModifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CreateVolumePermissionModifications where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CreateVolumePermission
import qualified Network.AWS.Lens as Lens

-- | Describes modifications to the list of create volume permissions for a
-- volume.
--
-- /See:/ 'newCreateVolumePermissionModifications' smart constructor.
data CreateVolumePermissionModifications = CreateVolumePermissionModifications'
  { -- | Adds the specified AWS account ID or group to the list.
    add :: Core.Maybe [CreateVolumePermission],
    -- | Removes the specified AWS account ID or group from the list.
    remove :: Core.Maybe [CreateVolumePermission]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateVolumePermissionModifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'add', 'createVolumePermissionModifications_add' - Adds the specified AWS account ID or group to the list.
--
-- 'remove', 'createVolumePermissionModifications_remove' - Removes the specified AWS account ID or group from the list.
newCreateVolumePermissionModifications ::
  CreateVolumePermissionModifications
newCreateVolumePermissionModifications =
  CreateVolumePermissionModifications'
    { add =
        Core.Nothing,
      remove = Core.Nothing
    }

-- | Adds the specified AWS account ID or group to the list.
createVolumePermissionModifications_add :: Lens.Lens' CreateVolumePermissionModifications (Core.Maybe [CreateVolumePermission])
createVolumePermissionModifications_add = Lens.lens (\CreateVolumePermissionModifications' {add} -> add) (\s@CreateVolumePermissionModifications' {} a -> s {add = a} :: CreateVolumePermissionModifications) Core.. Lens.mapping Lens._Coerce

-- | Removes the specified AWS account ID or group from the list.
createVolumePermissionModifications_remove :: Lens.Lens' CreateVolumePermissionModifications (Core.Maybe [CreateVolumePermission])
createVolumePermissionModifications_remove = Lens.lens (\CreateVolumePermissionModifications' {remove} -> remove) (\s@CreateVolumePermissionModifications' {} a -> s {remove = a} :: CreateVolumePermissionModifications) Core.. Lens.mapping Lens._Coerce

instance
  Core.Hashable
    CreateVolumePermissionModifications

instance
  Core.NFData
    CreateVolumePermissionModifications

instance
  Core.ToQuery
    CreateVolumePermissionModifications
  where
  toQuery CreateVolumePermissionModifications' {..} =
    Core.mconcat
      [ Core.toQuery (Core.toQueryList "Add" Core.<$> add),
        Core.toQuery
          (Core.toQueryList "Remove" Core.<$> remove)
      ]
