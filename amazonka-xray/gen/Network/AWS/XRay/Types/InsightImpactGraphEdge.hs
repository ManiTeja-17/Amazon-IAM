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
-- Module      : Network.AWS.XRay.Types.InsightImpactGraphEdge
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.InsightImpactGraphEdge where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The connection between two service in an insight impact graph.
--
-- /See:/ 'newInsightImpactGraphEdge' smart constructor.
data InsightImpactGraphEdge = InsightImpactGraphEdge'
  { -- | Identifier of the edge. Unique within a service map.
    referenceId :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'InsightImpactGraphEdge' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'referenceId', 'insightImpactGraphEdge_referenceId' - Identifier of the edge. Unique within a service map.
newInsightImpactGraphEdge ::
  InsightImpactGraphEdge
newInsightImpactGraphEdge =
  InsightImpactGraphEdge' {referenceId = Core.Nothing}

-- | Identifier of the edge. Unique within a service map.
insightImpactGraphEdge_referenceId :: Lens.Lens' InsightImpactGraphEdge (Core.Maybe Core.Int)
insightImpactGraphEdge_referenceId = Lens.lens (\InsightImpactGraphEdge' {referenceId} -> referenceId) (\s@InsightImpactGraphEdge' {} a -> s {referenceId = a} :: InsightImpactGraphEdge)

instance Core.FromJSON InsightImpactGraphEdge where
  parseJSON =
    Core.withObject
      "InsightImpactGraphEdge"
      ( \x ->
          InsightImpactGraphEdge'
            Core.<$> (x Core..:? "ReferenceId")
      )

instance Core.Hashable InsightImpactGraphEdge

instance Core.NFData InsightImpactGraphEdge
