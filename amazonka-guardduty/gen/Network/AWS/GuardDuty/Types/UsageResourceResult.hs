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
-- Module      : Network.AWS.GuardDuty.Types.UsageResourceResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.UsageResourceResult where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types.Total
import qualified Network.AWS.Lens as Lens

-- | Contains information on the sum of usage based on an AWS resource.
--
-- /See:/ 'newUsageResourceResult' smart constructor.
data UsageResourceResult = UsageResourceResult'
  { -- | Represents the sum total of usage for the specified resource type.
    total :: Core.Maybe Total,
    -- | The AWS resource that generated usage.
    resource :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UsageResourceResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'total', 'usageResourceResult_total' - Represents the sum total of usage for the specified resource type.
--
-- 'resource', 'usageResourceResult_resource' - The AWS resource that generated usage.
newUsageResourceResult ::
  UsageResourceResult
newUsageResourceResult =
  UsageResourceResult'
    { total = Core.Nothing,
      resource = Core.Nothing
    }

-- | Represents the sum total of usage for the specified resource type.
usageResourceResult_total :: Lens.Lens' UsageResourceResult (Core.Maybe Total)
usageResourceResult_total = Lens.lens (\UsageResourceResult' {total} -> total) (\s@UsageResourceResult' {} a -> s {total = a} :: UsageResourceResult)

-- | The AWS resource that generated usage.
usageResourceResult_resource :: Lens.Lens' UsageResourceResult (Core.Maybe Core.Text)
usageResourceResult_resource = Lens.lens (\UsageResourceResult' {resource} -> resource) (\s@UsageResourceResult' {} a -> s {resource = a} :: UsageResourceResult)

instance Core.FromJSON UsageResourceResult where
  parseJSON =
    Core.withObject
      "UsageResourceResult"
      ( \x ->
          UsageResourceResult'
            Core.<$> (x Core..:? "total")
            Core.<*> (x Core..:? "resource")
      )

instance Core.Hashable UsageResourceResult

instance Core.NFData UsageResourceResult
