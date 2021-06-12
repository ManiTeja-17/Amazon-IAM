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
-- Module      : Network.AWS.SageMaker.Types.Parent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Parent where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The trial that a trial component is associated with and the experiment
-- the trial is part of. A component might not be associated with a trial.
-- A component can be associated with multiple trials.
--
-- /See:/ 'newParent' smart constructor.
data Parent = Parent'
  { -- | The name of the experiment.
    experimentName :: Core.Maybe Core.Text,
    -- | The name of the trial.
    trialName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Parent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'experimentName', 'parent_experimentName' - The name of the experiment.
--
-- 'trialName', 'parent_trialName' - The name of the trial.
newParent ::
  Parent
newParent =
  Parent'
    { experimentName = Core.Nothing,
      trialName = Core.Nothing
    }

-- | The name of the experiment.
parent_experimentName :: Lens.Lens' Parent (Core.Maybe Core.Text)
parent_experimentName = Lens.lens (\Parent' {experimentName} -> experimentName) (\s@Parent' {} a -> s {experimentName = a} :: Parent)

-- | The name of the trial.
parent_trialName :: Lens.Lens' Parent (Core.Maybe Core.Text)
parent_trialName = Lens.lens (\Parent' {trialName} -> trialName) (\s@Parent' {} a -> s {trialName = a} :: Parent)

instance Core.FromJSON Parent where
  parseJSON =
    Core.withObject
      "Parent"
      ( \x ->
          Parent'
            Core.<$> (x Core..:? "ExperimentName")
            Core.<*> (x Core..:? "TrialName")
      )

instance Core.Hashable Parent

instance Core.NFData Parent
