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
-- Module      : Network.AWS.CloudHSMv2.Types.BackupRetentionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.BackupRetentionPolicy where

import Network.AWS.CloudHSMv2.Types.BackupRetentionType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | A policy that defines the number of days to retain backups.
--
-- /See:/ 'newBackupRetentionPolicy' smart constructor.
data BackupRetentionPolicy = BackupRetentionPolicy'
  { -- | Use a value between 7 - 379.
    value :: Core.Maybe Core.Text,
    -- | The type of backup retention policy. For the @DAYS@ type, the value is
    -- the number of days to retain backups.
    type' :: Core.Maybe BackupRetentionType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BackupRetentionPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'backupRetentionPolicy_value' - Use a value between 7 - 379.
--
-- 'type'', 'backupRetentionPolicy_type' - The type of backup retention policy. For the @DAYS@ type, the value is
-- the number of days to retain backups.
newBackupRetentionPolicy ::
  BackupRetentionPolicy
newBackupRetentionPolicy =
  BackupRetentionPolicy'
    { value = Core.Nothing,
      type' = Core.Nothing
    }

-- | Use a value between 7 - 379.
backupRetentionPolicy_value :: Lens.Lens' BackupRetentionPolicy (Core.Maybe Core.Text)
backupRetentionPolicy_value = Lens.lens (\BackupRetentionPolicy' {value} -> value) (\s@BackupRetentionPolicy' {} a -> s {value = a} :: BackupRetentionPolicy)

-- | The type of backup retention policy. For the @DAYS@ type, the value is
-- the number of days to retain backups.
backupRetentionPolicy_type :: Lens.Lens' BackupRetentionPolicy (Core.Maybe BackupRetentionType)
backupRetentionPolicy_type = Lens.lens (\BackupRetentionPolicy' {type'} -> type') (\s@BackupRetentionPolicy' {} a -> s {type' = a} :: BackupRetentionPolicy)

instance Core.FromJSON BackupRetentionPolicy where
  parseJSON =
    Core.withObject
      "BackupRetentionPolicy"
      ( \x ->
          BackupRetentionPolicy'
            Core.<$> (x Core..:? "Value") Core.<*> (x Core..:? "Type")
      )

instance Core.Hashable BackupRetentionPolicy

instance Core.NFData BackupRetentionPolicy

instance Core.ToJSON BackupRetentionPolicy where
  toJSON BackupRetentionPolicy' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Value" Core..=) Core.<$> value,
            ("Type" Core..=) Core.<$> type'
          ]
      )
