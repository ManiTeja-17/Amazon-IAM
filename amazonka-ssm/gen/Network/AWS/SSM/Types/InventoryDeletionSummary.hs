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
-- Module      : Network.AWS.SSM.Types.InventoryDeletionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InventoryDeletionSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SSM.Types.InventoryDeletionSummaryItem

-- | Information about the delete operation.
--
-- /See:/ 'newInventoryDeletionSummary' smart constructor.
data InventoryDeletionSummary = InventoryDeletionSummary'
  { -- | Remaining number of items to delete.
    remainingCount :: Core.Maybe Core.Int,
    -- | The total number of items to delete. This count does not change during
    -- the delete operation.
    totalCount :: Core.Maybe Core.Int,
    -- | A list of counts and versions for deleted items.
    summaryItems :: Core.Maybe [InventoryDeletionSummaryItem]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'InventoryDeletionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'remainingCount', 'inventoryDeletionSummary_remainingCount' - Remaining number of items to delete.
--
-- 'totalCount', 'inventoryDeletionSummary_totalCount' - The total number of items to delete. This count does not change during
-- the delete operation.
--
-- 'summaryItems', 'inventoryDeletionSummary_summaryItems' - A list of counts and versions for deleted items.
newInventoryDeletionSummary ::
  InventoryDeletionSummary
newInventoryDeletionSummary =
  InventoryDeletionSummary'
    { remainingCount =
        Core.Nothing,
      totalCount = Core.Nothing,
      summaryItems = Core.Nothing
    }

-- | Remaining number of items to delete.
inventoryDeletionSummary_remainingCount :: Lens.Lens' InventoryDeletionSummary (Core.Maybe Core.Int)
inventoryDeletionSummary_remainingCount = Lens.lens (\InventoryDeletionSummary' {remainingCount} -> remainingCount) (\s@InventoryDeletionSummary' {} a -> s {remainingCount = a} :: InventoryDeletionSummary)

-- | The total number of items to delete. This count does not change during
-- the delete operation.
inventoryDeletionSummary_totalCount :: Lens.Lens' InventoryDeletionSummary (Core.Maybe Core.Int)
inventoryDeletionSummary_totalCount = Lens.lens (\InventoryDeletionSummary' {totalCount} -> totalCount) (\s@InventoryDeletionSummary' {} a -> s {totalCount = a} :: InventoryDeletionSummary)

-- | A list of counts and versions for deleted items.
inventoryDeletionSummary_summaryItems :: Lens.Lens' InventoryDeletionSummary (Core.Maybe [InventoryDeletionSummaryItem])
inventoryDeletionSummary_summaryItems = Lens.lens (\InventoryDeletionSummary' {summaryItems} -> summaryItems) (\s@InventoryDeletionSummary' {} a -> s {summaryItems = a} :: InventoryDeletionSummary) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON InventoryDeletionSummary where
  parseJSON =
    Core.withObject
      "InventoryDeletionSummary"
      ( \x ->
          InventoryDeletionSummary'
            Core.<$> (x Core..:? "RemainingCount")
            Core.<*> (x Core..:? "TotalCount")
            Core.<*> (x Core..:? "SummaryItems" Core..!= Core.mempty)
      )

instance Core.Hashable InventoryDeletionSummary

instance Core.NFData InventoryDeletionSummary
