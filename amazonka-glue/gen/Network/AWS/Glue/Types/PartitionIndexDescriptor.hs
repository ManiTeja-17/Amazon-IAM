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
-- Module      : Network.AWS.Glue.Types.PartitionIndexDescriptor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.PartitionIndexDescriptor where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types.BackfillError
import Network.AWS.Glue.Types.KeySchemaElement
import Network.AWS.Glue.Types.PartitionIndexStatus
import qualified Network.AWS.Lens as Lens

-- | A descriptor for a partition index in a table.
--
-- /See:/ 'newPartitionIndexDescriptor' smart constructor.
data PartitionIndexDescriptor = PartitionIndexDescriptor'
  { -- | A list of errors that can occur when registering partition indexes for
    -- an existing table.
    backfillErrors :: Core.Maybe [BackfillError],
    -- | The name of the partition index.
    indexName :: Core.Text,
    -- | A list of one or more keys, as @KeySchemaElement@ structures, for the
    -- partition index.
    keys :: Core.NonEmpty KeySchemaElement,
    -- | The status of the partition index.
    --
    -- The possible statuses are:
    --
    -- -   CREATING: The index is being created. When an index is in a CREATING
    --     state, the index or its table cannot be deleted.
    --
    -- -   ACTIVE: The index creation succeeds.
    --
    -- -   FAILED: The index creation fails.
    --
    -- -   DELETING: The index is deleted from the list of indexes.
    indexStatus :: PartitionIndexStatus
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PartitionIndexDescriptor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backfillErrors', 'partitionIndexDescriptor_backfillErrors' - A list of errors that can occur when registering partition indexes for
-- an existing table.
--
-- 'indexName', 'partitionIndexDescriptor_indexName' - The name of the partition index.
--
-- 'keys', 'partitionIndexDescriptor_keys' - A list of one or more keys, as @KeySchemaElement@ structures, for the
-- partition index.
--
-- 'indexStatus', 'partitionIndexDescriptor_indexStatus' - The status of the partition index.
--
-- The possible statuses are:
--
-- -   CREATING: The index is being created. When an index is in a CREATING
--     state, the index or its table cannot be deleted.
--
-- -   ACTIVE: The index creation succeeds.
--
-- -   FAILED: The index creation fails.
--
-- -   DELETING: The index is deleted from the list of indexes.
newPartitionIndexDescriptor ::
  -- | 'indexName'
  Core.Text ->
  -- | 'keys'
  Core.NonEmpty KeySchemaElement ->
  -- | 'indexStatus'
  PartitionIndexStatus ->
  PartitionIndexDescriptor
newPartitionIndexDescriptor
  pIndexName_
  pKeys_
  pIndexStatus_ =
    PartitionIndexDescriptor'
      { backfillErrors =
          Core.Nothing,
        indexName = pIndexName_,
        keys = Lens._Coerce Lens.# pKeys_,
        indexStatus = pIndexStatus_
      }

-- | A list of errors that can occur when registering partition indexes for
-- an existing table.
partitionIndexDescriptor_backfillErrors :: Lens.Lens' PartitionIndexDescriptor (Core.Maybe [BackfillError])
partitionIndexDescriptor_backfillErrors = Lens.lens (\PartitionIndexDescriptor' {backfillErrors} -> backfillErrors) (\s@PartitionIndexDescriptor' {} a -> s {backfillErrors = a} :: PartitionIndexDescriptor) Core.. Lens.mapping Lens._Coerce

-- | The name of the partition index.
partitionIndexDescriptor_indexName :: Lens.Lens' PartitionIndexDescriptor Core.Text
partitionIndexDescriptor_indexName = Lens.lens (\PartitionIndexDescriptor' {indexName} -> indexName) (\s@PartitionIndexDescriptor' {} a -> s {indexName = a} :: PartitionIndexDescriptor)

-- | A list of one or more keys, as @KeySchemaElement@ structures, for the
-- partition index.
partitionIndexDescriptor_keys :: Lens.Lens' PartitionIndexDescriptor (Core.NonEmpty KeySchemaElement)
partitionIndexDescriptor_keys = Lens.lens (\PartitionIndexDescriptor' {keys} -> keys) (\s@PartitionIndexDescriptor' {} a -> s {keys = a} :: PartitionIndexDescriptor) Core.. Lens._Coerce

-- | The status of the partition index.
--
-- The possible statuses are:
--
-- -   CREATING: The index is being created. When an index is in a CREATING
--     state, the index or its table cannot be deleted.
--
-- -   ACTIVE: The index creation succeeds.
--
-- -   FAILED: The index creation fails.
--
-- -   DELETING: The index is deleted from the list of indexes.
partitionIndexDescriptor_indexStatus :: Lens.Lens' PartitionIndexDescriptor PartitionIndexStatus
partitionIndexDescriptor_indexStatus = Lens.lens (\PartitionIndexDescriptor' {indexStatus} -> indexStatus) (\s@PartitionIndexDescriptor' {} a -> s {indexStatus = a} :: PartitionIndexDescriptor)

instance Core.FromJSON PartitionIndexDescriptor where
  parseJSON =
    Core.withObject
      "PartitionIndexDescriptor"
      ( \x ->
          PartitionIndexDescriptor'
            Core.<$> (x Core..:? "BackfillErrors" Core..!= Core.mempty)
            Core.<*> (x Core..: "IndexName")
            Core.<*> (x Core..: "Keys")
            Core.<*> (x Core..: "IndexStatus")
      )

instance Core.Hashable PartitionIndexDescriptor

instance Core.NFData PartitionIndexDescriptor
