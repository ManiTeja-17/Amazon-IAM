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
-- Module      : Network.AWS.CodeBuild.Types.ReportGroupTrendStats
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportGroupTrendStats where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Contains trend statistics for a set of reports. The actual values depend
-- on the type of trend being collected. For more information, see .
--
-- /See:/ 'newReportGroupTrendStats' smart constructor.
data ReportGroupTrendStats = ReportGroupTrendStats'
  { -- | Contains the minimum value analyzed.
    min :: Core.Maybe Core.Text,
    -- | Contains the maximum value analyzed.
    max :: Core.Maybe Core.Text,
    -- | Contains the average of all values analyzed.
    average :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ReportGroupTrendStats' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'min', 'reportGroupTrendStats_min' - Contains the minimum value analyzed.
--
-- 'max', 'reportGroupTrendStats_max' - Contains the maximum value analyzed.
--
-- 'average', 'reportGroupTrendStats_average' - Contains the average of all values analyzed.
newReportGroupTrendStats ::
  ReportGroupTrendStats
newReportGroupTrendStats =
  ReportGroupTrendStats'
    { min = Core.Nothing,
      max = Core.Nothing,
      average = Core.Nothing
    }

-- | Contains the minimum value analyzed.
reportGroupTrendStats_min :: Lens.Lens' ReportGroupTrendStats (Core.Maybe Core.Text)
reportGroupTrendStats_min = Lens.lens (\ReportGroupTrendStats' {min} -> min) (\s@ReportGroupTrendStats' {} a -> s {min = a} :: ReportGroupTrendStats)

-- | Contains the maximum value analyzed.
reportGroupTrendStats_max :: Lens.Lens' ReportGroupTrendStats (Core.Maybe Core.Text)
reportGroupTrendStats_max = Lens.lens (\ReportGroupTrendStats' {max} -> max) (\s@ReportGroupTrendStats' {} a -> s {max = a} :: ReportGroupTrendStats)

-- | Contains the average of all values analyzed.
reportGroupTrendStats_average :: Lens.Lens' ReportGroupTrendStats (Core.Maybe Core.Text)
reportGroupTrendStats_average = Lens.lens (\ReportGroupTrendStats' {average} -> average) (\s@ReportGroupTrendStats' {} a -> s {average = a} :: ReportGroupTrendStats)

instance Core.FromJSON ReportGroupTrendStats where
  parseJSON =
    Core.withObject
      "ReportGroupTrendStats"
      ( \x ->
          ReportGroupTrendStats'
            Core.<$> (x Core..:? "min")
            Core.<*> (x Core..:? "max")
            Core.<*> (x Core..:? "average")
      )

instance Core.Hashable ReportGroupTrendStats

instance Core.NFData ReportGroupTrendStats
