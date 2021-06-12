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
-- Module      : Network.AWS.CodeCommit.Types.Conflict
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.Conflict where

import Network.AWS.CodeCommit.Types.ConflictMetadata
import Network.AWS.CodeCommit.Types.MergeHunk
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Information about conflicts in a merge operation.
--
-- /See:/ 'newConflict' smart constructor.
data Conflict = Conflict'
  { -- | A list of hunks that contain the differences between files or lines
    -- causing the conflict.
    mergeHunks :: Core.Maybe [MergeHunk],
    -- | Metadata about a conflict in a merge operation.
    conflictMetadata :: Core.Maybe ConflictMetadata
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Conflict' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mergeHunks', 'conflict_mergeHunks' - A list of hunks that contain the differences between files or lines
-- causing the conflict.
--
-- 'conflictMetadata', 'conflict_conflictMetadata' - Metadata about a conflict in a merge operation.
newConflict ::
  Conflict
newConflict =
  Conflict'
    { mergeHunks = Core.Nothing,
      conflictMetadata = Core.Nothing
    }

-- | A list of hunks that contain the differences between files or lines
-- causing the conflict.
conflict_mergeHunks :: Lens.Lens' Conflict (Core.Maybe [MergeHunk])
conflict_mergeHunks = Lens.lens (\Conflict' {mergeHunks} -> mergeHunks) (\s@Conflict' {} a -> s {mergeHunks = a} :: Conflict) Core.. Lens.mapping Lens._Coerce

-- | Metadata about a conflict in a merge operation.
conflict_conflictMetadata :: Lens.Lens' Conflict (Core.Maybe ConflictMetadata)
conflict_conflictMetadata = Lens.lens (\Conflict' {conflictMetadata} -> conflictMetadata) (\s@Conflict' {} a -> s {conflictMetadata = a} :: Conflict)

instance Core.FromJSON Conflict where
  parseJSON =
    Core.withObject
      "Conflict"
      ( \x ->
          Conflict'
            Core.<$> (x Core..:? "mergeHunks" Core..!= Core.mempty)
            Core.<*> (x Core..:? "conflictMetadata")
      )

instance Core.Hashable Conflict

instance Core.NFData Conflict
