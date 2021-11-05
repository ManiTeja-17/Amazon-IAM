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
-- Module      : Network.AWS.IoTSiteWise.Types.Aggregates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.Aggregates where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the (pre-calculated) aggregate values for an asset property.
--
-- /See:/ 'newAggregates' smart constructor.
data Aggregates = Aggregates'
  { -- | The maximum value of the time series over a time interval window.
    maximum :: Prelude.Maybe Prelude.Double,
    -- | The average (mean) value of the time series over a time interval window.
    average :: Prelude.Maybe Prelude.Double,
    -- | The count of data points in the time series over a time interval window.
    count :: Prelude.Maybe Prelude.Double,
    -- | The minimum value of the time series over a time interval window.
    minimum :: Prelude.Maybe Prelude.Double,
    -- | The standard deviation of the time series over a time interval window.
    standardDeviation :: Prelude.Maybe Prelude.Double,
    -- | The sum of the time series over a time interval window.
    sum :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Aggregates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maximum', 'aggregates_maximum' - The maximum value of the time series over a time interval window.
--
-- 'average', 'aggregates_average' - The average (mean) value of the time series over a time interval window.
--
-- 'count', 'aggregates_count' - The count of data points in the time series over a time interval window.
--
-- 'minimum', 'aggregates_minimum' - The minimum value of the time series over a time interval window.
--
-- 'standardDeviation', 'aggregates_standardDeviation' - The standard deviation of the time series over a time interval window.
--
-- 'sum', 'aggregates_sum' - The sum of the time series over a time interval window.
newAggregates ::
  Aggregates
newAggregates =
  Aggregates'
    { maximum = Prelude.Nothing,
      average = Prelude.Nothing,
      count = Prelude.Nothing,
      minimum = Prelude.Nothing,
      standardDeviation = Prelude.Nothing,
      sum = Prelude.Nothing
    }

-- | The maximum value of the time series over a time interval window.
aggregates_maximum :: Lens.Lens' Aggregates (Prelude.Maybe Prelude.Double)
aggregates_maximum = Lens.lens (\Aggregates' {maximum} -> maximum) (\s@Aggregates' {} a -> s {maximum = a} :: Aggregates)

-- | The average (mean) value of the time series over a time interval window.
aggregates_average :: Lens.Lens' Aggregates (Prelude.Maybe Prelude.Double)
aggregates_average = Lens.lens (\Aggregates' {average} -> average) (\s@Aggregates' {} a -> s {average = a} :: Aggregates)

-- | The count of data points in the time series over a time interval window.
aggregates_count :: Lens.Lens' Aggregates (Prelude.Maybe Prelude.Double)
aggregates_count = Lens.lens (\Aggregates' {count} -> count) (\s@Aggregates' {} a -> s {count = a} :: Aggregates)

-- | The minimum value of the time series over a time interval window.
aggregates_minimum :: Lens.Lens' Aggregates (Prelude.Maybe Prelude.Double)
aggregates_minimum = Lens.lens (\Aggregates' {minimum} -> minimum) (\s@Aggregates' {} a -> s {minimum = a} :: Aggregates)

-- | The standard deviation of the time series over a time interval window.
aggregates_standardDeviation :: Lens.Lens' Aggregates (Prelude.Maybe Prelude.Double)
aggregates_standardDeviation = Lens.lens (\Aggregates' {standardDeviation} -> standardDeviation) (\s@Aggregates' {} a -> s {standardDeviation = a} :: Aggregates)

-- | The sum of the time series over a time interval window.
aggregates_sum :: Lens.Lens' Aggregates (Prelude.Maybe Prelude.Double)
aggregates_sum = Lens.lens (\Aggregates' {sum} -> sum) (\s@Aggregates' {} a -> s {sum = a} :: Aggregates)

instance Core.FromJSON Aggregates where
  parseJSON =
    Core.withObject
      "Aggregates"
      ( \x ->
          Aggregates'
            Prelude.<$> (x Core..:? "maximum")
            Prelude.<*> (x Core..:? "average")
            Prelude.<*> (x Core..:? "count")
            Prelude.<*> (x Core..:? "minimum")
            Prelude.<*> (x Core..:? "standardDeviation")
            Prelude.<*> (x Core..:? "sum")
      )

instance Prelude.Hashable Aggregates

instance Prelude.NFData Aggregates