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
-- Module      : Network.AWS.Forecast.Types.PredictorExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.PredictorExecution where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types.TestWindowSummary
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The algorithm used to perform a backtest and the status of those tests.
--
-- /See:/ 'newPredictorExecution' smart constructor.
data PredictorExecution = PredictorExecution'
  { -- | The ARN of the algorithm used to test the predictor.
    algorithmArn :: Prelude.Maybe Prelude.Text,
    -- | An array of test windows used to evaluate the algorithm. The
    -- @NumberOfBacktestWindows@ from the object determines the number of
    -- windows in the array.
    testWindows :: Prelude.Maybe [TestWindowSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PredictorExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'algorithmArn', 'predictorExecution_algorithmArn' - The ARN of the algorithm used to test the predictor.
--
-- 'testWindows', 'predictorExecution_testWindows' - An array of test windows used to evaluate the algorithm. The
-- @NumberOfBacktestWindows@ from the object determines the number of
-- windows in the array.
newPredictorExecution ::
  PredictorExecution
newPredictorExecution =
  PredictorExecution'
    { algorithmArn = Prelude.Nothing,
      testWindows = Prelude.Nothing
    }

-- | The ARN of the algorithm used to test the predictor.
predictorExecution_algorithmArn :: Lens.Lens' PredictorExecution (Prelude.Maybe Prelude.Text)
predictorExecution_algorithmArn = Lens.lens (\PredictorExecution' {algorithmArn} -> algorithmArn) (\s@PredictorExecution' {} a -> s {algorithmArn = a} :: PredictorExecution)

-- | An array of test windows used to evaluate the algorithm. The
-- @NumberOfBacktestWindows@ from the object determines the number of
-- windows in the array.
predictorExecution_testWindows :: Lens.Lens' PredictorExecution (Prelude.Maybe [TestWindowSummary])
predictorExecution_testWindows = Lens.lens (\PredictorExecution' {testWindows} -> testWindows) (\s@PredictorExecution' {} a -> s {testWindows = a} :: PredictorExecution) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON PredictorExecution where
  parseJSON =
    Core.withObject
      "PredictorExecution"
      ( \x ->
          PredictorExecution'
            Prelude.<$> (x Core..:? "AlgorithmArn")
            Prelude.<*> (x Core..:? "TestWindows" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable PredictorExecution

instance Prelude.NFData PredictorExecution