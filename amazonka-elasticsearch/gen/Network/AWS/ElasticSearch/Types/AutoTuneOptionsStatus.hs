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
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneOptionsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneOptionsStatus where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticSearch.Types.AutoTuneOptions
import Network.AWS.ElasticSearch.Types.AutoTuneStatus
import qualified Network.AWS.Lens as Lens

-- | Specifies the status of Auto-Tune options for the specified
-- Elasticsearch domain.
--
-- /See:/ 'newAutoTuneOptionsStatus' smart constructor.
data AutoTuneOptionsStatus = AutoTuneOptionsStatus'
  { -- | Specifies Status of the Auto-Tune options for the specified
    -- Elasticsearch domain.
    status :: Core.Maybe AutoTuneStatus,
    -- | Specifies Auto-Tune options for the specified Elasticsearch domain.
    options :: Core.Maybe AutoTuneOptions
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AutoTuneOptionsStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'autoTuneOptionsStatus_status' - Specifies Status of the Auto-Tune options for the specified
-- Elasticsearch domain.
--
-- 'options', 'autoTuneOptionsStatus_options' - Specifies Auto-Tune options for the specified Elasticsearch domain.
newAutoTuneOptionsStatus ::
  AutoTuneOptionsStatus
newAutoTuneOptionsStatus =
  AutoTuneOptionsStatus'
    { status = Core.Nothing,
      options = Core.Nothing
    }

-- | Specifies Status of the Auto-Tune options for the specified
-- Elasticsearch domain.
autoTuneOptionsStatus_status :: Lens.Lens' AutoTuneOptionsStatus (Core.Maybe AutoTuneStatus)
autoTuneOptionsStatus_status = Lens.lens (\AutoTuneOptionsStatus' {status} -> status) (\s@AutoTuneOptionsStatus' {} a -> s {status = a} :: AutoTuneOptionsStatus)

-- | Specifies Auto-Tune options for the specified Elasticsearch domain.
autoTuneOptionsStatus_options :: Lens.Lens' AutoTuneOptionsStatus (Core.Maybe AutoTuneOptions)
autoTuneOptionsStatus_options = Lens.lens (\AutoTuneOptionsStatus' {options} -> options) (\s@AutoTuneOptionsStatus' {} a -> s {options = a} :: AutoTuneOptionsStatus)

instance Core.FromJSON AutoTuneOptionsStatus where
  parseJSON =
    Core.withObject
      "AutoTuneOptionsStatus"
      ( \x ->
          AutoTuneOptionsStatus'
            Core.<$> (x Core..:? "Status")
            Core.<*> (x Core..:? "Options")
      )

instance Core.Hashable AutoTuneOptionsStatus

instance Core.NFData AutoTuneOptionsStatus
