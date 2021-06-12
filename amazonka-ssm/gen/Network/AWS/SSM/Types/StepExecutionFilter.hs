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
-- Module      : Network.AWS.SSM.Types.StepExecutionFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.StepExecutionFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SSM.Types.StepExecutionFilterKey

-- | A filter to limit the amount of step execution information returned by
-- the call.
--
-- /See:/ 'newStepExecutionFilter' smart constructor.
data StepExecutionFilter = StepExecutionFilter'
  { -- | One or more keys to limit the results. Valid filter keys include the
    -- following: StepName, Action, StepExecutionId, StepExecutionStatus,
    -- StartTimeBefore, StartTimeAfter.
    key :: StepExecutionFilterKey,
    -- | The values of the filter key.
    values :: Core.NonEmpty Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StepExecutionFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'stepExecutionFilter_key' - One or more keys to limit the results. Valid filter keys include the
-- following: StepName, Action, StepExecutionId, StepExecutionStatus,
-- StartTimeBefore, StartTimeAfter.
--
-- 'values', 'stepExecutionFilter_values' - The values of the filter key.
newStepExecutionFilter ::
  -- | 'key'
  StepExecutionFilterKey ->
  -- | 'values'
  Core.NonEmpty Core.Text ->
  StepExecutionFilter
newStepExecutionFilter pKey_ pValues_ =
  StepExecutionFilter'
    { key = pKey_,
      values = Lens._Coerce Lens.# pValues_
    }

-- | One or more keys to limit the results. Valid filter keys include the
-- following: StepName, Action, StepExecutionId, StepExecutionStatus,
-- StartTimeBefore, StartTimeAfter.
stepExecutionFilter_key :: Lens.Lens' StepExecutionFilter StepExecutionFilterKey
stepExecutionFilter_key = Lens.lens (\StepExecutionFilter' {key} -> key) (\s@StepExecutionFilter' {} a -> s {key = a} :: StepExecutionFilter)

-- | The values of the filter key.
stepExecutionFilter_values :: Lens.Lens' StepExecutionFilter (Core.NonEmpty Core.Text)
stepExecutionFilter_values = Lens.lens (\StepExecutionFilter' {values} -> values) (\s@StepExecutionFilter' {} a -> s {values = a} :: StepExecutionFilter) Core.. Lens._Coerce

instance Core.Hashable StepExecutionFilter

instance Core.NFData StepExecutionFilter

instance Core.ToJSON StepExecutionFilter where
  toJSON StepExecutionFilter' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Key" Core..= key),
            Core.Just ("Values" Core..= values)
          ]
      )
