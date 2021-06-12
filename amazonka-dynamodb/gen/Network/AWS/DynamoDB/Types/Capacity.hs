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
-- Module      : Network.AWS.DynamoDB.Types.Capacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.Capacity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Represents the amount of provisioned throughput capacity consumed on a
-- table or an index.
--
-- /See:/ 'newCapacity' smart constructor.
data Capacity = Capacity'
  { -- | The total number of write capacity units consumed on a table or an
    -- index.
    writeCapacityUnits :: Core.Maybe Core.Double,
    -- | The total number of capacity units consumed on a table or an index.
    capacityUnits :: Core.Maybe Core.Double,
    -- | The total number of read capacity units consumed on a table or an index.
    readCapacityUnits :: Core.Maybe Core.Double
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Capacity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'writeCapacityUnits', 'capacity_writeCapacityUnits' - The total number of write capacity units consumed on a table or an
-- index.
--
-- 'capacityUnits', 'capacity_capacityUnits' - The total number of capacity units consumed on a table or an index.
--
-- 'readCapacityUnits', 'capacity_readCapacityUnits' - The total number of read capacity units consumed on a table or an index.
newCapacity ::
  Capacity
newCapacity =
  Capacity'
    { writeCapacityUnits = Core.Nothing,
      capacityUnits = Core.Nothing,
      readCapacityUnits = Core.Nothing
    }

-- | The total number of write capacity units consumed on a table or an
-- index.
capacity_writeCapacityUnits :: Lens.Lens' Capacity (Core.Maybe Core.Double)
capacity_writeCapacityUnits = Lens.lens (\Capacity' {writeCapacityUnits} -> writeCapacityUnits) (\s@Capacity' {} a -> s {writeCapacityUnits = a} :: Capacity)

-- | The total number of capacity units consumed on a table or an index.
capacity_capacityUnits :: Lens.Lens' Capacity (Core.Maybe Core.Double)
capacity_capacityUnits = Lens.lens (\Capacity' {capacityUnits} -> capacityUnits) (\s@Capacity' {} a -> s {capacityUnits = a} :: Capacity)

-- | The total number of read capacity units consumed on a table or an index.
capacity_readCapacityUnits :: Lens.Lens' Capacity (Core.Maybe Core.Double)
capacity_readCapacityUnits = Lens.lens (\Capacity' {readCapacityUnits} -> readCapacityUnits) (\s@Capacity' {} a -> s {readCapacityUnits = a} :: Capacity)

instance Core.FromJSON Capacity where
  parseJSON =
    Core.withObject
      "Capacity"
      ( \x ->
          Capacity'
            Core.<$> (x Core..:? "WriteCapacityUnits")
            Core.<*> (x Core..:? "CapacityUnits")
            Core.<*> (x Core..:? "ReadCapacityUnits")
      )

instance Core.Hashable Capacity

instance Core.NFData Capacity
