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
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneOptionsOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneOptionsOutput where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticSearch.Types.AutoTuneState
import qualified Network.AWS.Lens as Lens

-- | Specifies the Auto-Tune options: the Auto-Tune desired state for the
-- domain and list of maintenance schedules.
--
-- /See:/ 'newAutoTuneOptionsOutput' smart constructor.
data AutoTuneOptionsOutput = AutoTuneOptionsOutput'
  { -- | Specifies the @AutoTuneState@ for the Elasticsearch domain.
    state :: Core.Maybe AutoTuneState,
    -- | Specifies the error message while enabling or disabling the Auto-Tune.
    errorMessage :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AutoTuneOptionsOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'autoTuneOptionsOutput_state' - Specifies the @AutoTuneState@ for the Elasticsearch domain.
--
-- 'errorMessage', 'autoTuneOptionsOutput_errorMessage' - Specifies the error message while enabling or disabling the Auto-Tune.
newAutoTuneOptionsOutput ::
  AutoTuneOptionsOutput
newAutoTuneOptionsOutput =
  AutoTuneOptionsOutput'
    { state = Core.Nothing,
      errorMessage = Core.Nothing
    }

-- | Specifies the @AutoTuneState@ for the Elasticsearch domain.
autoTuneOptionsOutput_state :: Lens.Lens' AutoTuneOptionsOutput (Core.Maybe AutoTuneState)
autoTuneOptionsOutput_state = Lens.lens (\AutoTuneOptionsOutput' {state} -> state) (\s@AutoTuneOptionsOutput' {} a -> s {state = a} :: AutoTuneOptionsOutput)

-- | Specifies the error message while enabling or disabling the Auto-Tune.
autoTuneOptionsOutput_errorMessage :: Lens.Lens' AutoTuneOptionsOutput (Core.Maybe Core.Text)
autoTuneOptionsOutput_errorMessage = Lens.lens (\AutoTuneOptionsOutput' {errorMessage} -> errorMessage) (\s@AutoTuneOptionsOutput' {} a -> s {errorMessage = a} :: AutoTuneOptionsOutput)

instance Core.FromJSON AutoTuneOptionsOutput where
  parseJSON =
    Core.withObject
      "AutoTuneOptionsOutput"
      ( \x ->
          AutoTuneOptionsOutput'
            Core.<$> (x Core..:? "State")
            Core.<*> (x Core..:? "ErrorMessage")
      )

instance Core.Hashable AutoTuneOptionsOutput

instance Core.NFData AutoTuneOptionsOutput
