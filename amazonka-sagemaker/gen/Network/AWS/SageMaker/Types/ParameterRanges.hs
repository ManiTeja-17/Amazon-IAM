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
-- Module      : Network.AWS.SageMaker.Types.ParameterRanges
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ParameterRanges where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SageMaker.Types.CategoricalParameterRange
import Network.AWS.SageMaker.Types.ContinuousParameterRange
import Network.AWS.SageMaker.Types.IntegerParameterRange

-- | Specifies ranges of integer, continuous, and categorical hyperparameters
-- that a hyperparameter tuning job searches. The hyperparameter tuning job
-- launches training jobs with hyperparameter values within these ranges to
-- find the combination of values that result in the training job with the
-- best performance as measured by the objective metric of the
-- hyperparameter tuning job.
--
-- You can specify a maximum of 20 hyperparameters that a hyperparameter
-- tuning job can search over. Every possible value of a categorical
-- parameter range counts against this limit.
--
-- /See:/ 'newParameterRanges' smart constructor.
data ParameterRanges = ParameterRanges'
  { -- | The array of IntegerParameterRange objects that specify ranges of
    -- integer hyperparameters that a hyperparameter tuning job searches.
    integerParameterRanges :: Core.Maybe [IntegerParameterRange],
    -- | The array of CategoricalParameterRange objects that specify ranges of
    -- categorical hyperparameters that a hyperparameter tuning job searches.
    categoricalParameterRanges :: Core.Maybe [CategoricalParameterRange],
    -- | The array of ContinuousParameterRange objects that specify ranges of
    -- continuous hyperparameters that a hyperparameter tuning job searches.
    continuousParameterRanges :: Core.Maybe [ContinuousParameterRange]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ParameterRanges' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'integerParameterRanges', 'parameterRanges_integerParameterRanges' - The array of IntegerParameterRange objects that specify ranges of
-- integer hyperparameters that a hyperparameter tuning job searches.
--
-- 'categoricalParameterRanges', 'parameterRanges_categoricalParameterRanges' - The array of CategoricalParameterRange objects that specify ranges of
-- categorical hyperparameters that a hyperparameter tuning job searches.
--
-- 'continuousParameterRanges', 'parameterRanges_continuousParameterRanges' - The array of ContinuousParameterRange objects that specify ranges of
-- continuous hyperparameters that a hyperparameter tuning job searches.
newParameterRanges ::
  ParameterRanges
newParameterRanges =
  ParameterRanges'
    { integerParameterRanges =
        Core.Nothing,
      categoricalParameterRanges = Core.Nothing,
      continuousParameterRanges = Core.Nothing
    }

-- | The array of IntegerParameterRange objects that specify ranges of
-- integer hyperparameters that a hyperparameter tuning job searches.
parameterRanges_integerParameterRanges :: Lens.Lens' ParameterRanges (Core.Maybe [IntegerParameterRange])
parameterRanges_integerParameterRanges = Lens.lens (\ParameterRanges' {integerParameterRanges} -> integerParameterRanges) (\s@ParameterRanges' {} a -> s {integerParameterRanges = a} :: ParameterRanges) Core.. Lens.mapping Lens._Coerce

-- | The array of CategoricalParameterRange objects that specify ranges of
-- categorical hyperparameters that a hyperparameter tuning job searches.
parameterRanges_categoricalParameterRanges :: Lens.Lens' ParameterRanges (Core.Maybe [CategoricalParameterRange])
parameterRanges_categoricalParameterRanges = Lens.lens (\ParameterRanges' {categoricalParameterRanges} -> categoricalParameterRanges) (\s@ParameterRanges' {} a -> s {categoricalParameterRanges = a} :: ParameterRanges) Core.. Lens.mapping Lens._Coerce

-- | The array of ContinuousParameterRange objects that specify ranges of
-- continuous hyperparameters that a hyperparameter tuning job searches.
parameterRanges_continuousParameterRanges :: Lens.Lens' ParameterRanges (Core.Maybe [ContinuousParameterRange])
parameterRanges_continuousParameterRanges = Lens.lens (\ParameterRanges' {continuousParameterRanges} -> continuousParameterRanges) (\s@ParameterRanges' {} a -> s {continuousParameterRanges = a} :: ParameterRanges) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON ParameterRanges where
  parseJSON =
    Core.withObject
      "ParameterRanges"
      ( \x ->
          ParameterRanges'
            Core.<$> ( x Core..:? "IntegerParameterRanges"
                         Core..!= Core.mempty
                     )
            Core.<*> ( x Core..:? "CategoricalParameterRanges"
                         Core..!= Core.mempty
                     )
            Core.<*> ( x Core..:? "ContinuousParameterRanges"
                         Core..!= Core.mempty
                     )
      )

instance Core.Hashable ParameterRanges

instance Core.NFData ParameterRanges

instance Core.ToJSON ParameterRanges where
  toJSON ParameterRanges' {..} =
    Core.object
      ( Core.catMaybes
          [ ("IntegerParameterRanges" Core..=)
              Core.<$> integerParameterRanges,
            ("CategoricalParameterRanges" Core..=)
              Core.<$> categoricalParameterRanges,
            ("ContinuousParameterRanges" Core..=)
              Core.<$> continuousParameterRanges
          ]
      )
