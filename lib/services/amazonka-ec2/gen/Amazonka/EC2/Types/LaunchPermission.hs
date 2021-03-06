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
-- Module      : Amazonka.EC2.Types.LaunchPermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.LaunchPermission where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.PermissionGroup
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a launch permission.
--
-- /See:/ 'newLaunchPermission' smart constructor.
data LaunchPermission = LaunchPermission'
  { -- | The name of the group.
    group' :: Prelude.Maybe PermissionGroup,
    -- | The Amazon Web Services account ID.
    --
    -- Constraints: Up to 10 000 account IDs can be specified in a single
    -- request.
    userId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LaunchPermission' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'group'', 'launchPermission_group' - The name of the group.
--
-- 'userId', 'launchPermission_userId' - The Amazon Web Services account ID.
--
-- Constraints: Up to 10 000 account IDs can be specified in a single
-- request.
newLaunchPermission ::
  LaunchPermission
newLaunchPermission =
  LaunchPermission'
    { group' = Prelude.Nothing,
      userId = Prelude.Nothing
    }

-- | The name of the group.
launchPermission_group :: Lens.Lens' LaunchPermission (Prelude.Maybe PermissionGroup)
launchPermission_group = Lens.lens (\LaunchPermission' {group'} -> group') (\s@LaunchPermission' {} a -> s {group' = a} :: LaunchPermission)

-- | The Amazon Web Services account ID.
--
-- Constraints: Up to 10 000 account IDs can be specified in a single
-- request.
launchPermission_userId :: Lens.Lens' LaunchPermission (Prelude.Maybe Prelude.Text)
launchPermission_userId = Lens.lens (\LaunchPermission' {userId} -> userId) (\s@LaunchPermission' {} a -> s {userId = a} :: LaunchPermission)

instance Core.FromXML LaunchPermission where
  parseXML x =
    LaunchPermission'
      Prelude.<$> (x Core..@? "group")
      Prelude.<*> (x Core..@? "userId")

instance Prelude.Hashable LaunchPermission where
  hashWithSalt _salt LaunchPermission' {..} =
    _salt `Prelude.hashWithSalt` group'
      `Prelude.hashWithSalt` userId

instance Prelude.NFData LaunchPermission where
  rnf LaunchPermission' {..} =
    Prelude.rnf group' `Prelude.seq` Prelude.rnf userId

instance Core.ToQuery LaunchPermission where
  toQuery LaunchPermission' {..} =
    Prelude.mconcat
      ["Group" Core.=: group', "UserId" Core.=: userId]
