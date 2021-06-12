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
-- Module      : Network.AWS.Lightsail.Types.DistributionBundle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.DistributionBundle where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Describes the specifications of a distribution bundle.
--
-- /See:/ 'newDistributionBundle' smart constructor.
data DistributionBundle = DistributionBundle'
  { -- | The ID of the bundle.
    bundleId :: Core.Maybe Core.Text,
    -- | Indicates whether the bundle is active, and can be specified for a new
    -- distribution.
    isActive :: Core.Maybe Core.Bool,
    -- | The name of the distribution bundle.
    name :: Core.Maybe Core.Text,
    -- | The monthly network transfer quota of the bundle.
    transferPerMonthInGb :: Core.Maybe Core.Int,
    -- | The monthly price, in US dollars, of the bundle.
    price :: Core.Maybe Core.Double
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DistributionBundle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bundleId', 'distributionBundle_bundleId' - The ID of the bundle.
--
-- 'isActive', 'distributionBundle_isActive' - Indicates whether the bundle is active, and can be specified for a new
-- distribution.
--
-- 'name', 'distributionBundle_name' - The name of the distribution bundle.
--
-- 'transferPerMonthInGb', 'distributionBundle_transferPerMonthInGb' - The monthly network transfer quota of the bundle.
--
-- 'price', 'distributionBundle_price' - The monthly price, in US dollars, of the bundle.
newDistributionBundle ::
  DistributionBundle
newDistributionBundle =
  DistributionBundle'
    { bundleId = Core.Nothing,
      isActive = Core.Nothing,
      name = Core.Nothing,
      transferPerMonthInGb = Core.Nothing,
      price = Core.Nothing
    }

-- | The ID of the bundle.
distributionBundle_bundleId :: Lens.Lens' DistributionBundle (Core.Maybe Core.Text)
distributionBundle_bundleId = Lens.lens (\DistributionBundle' {bundleId} -> bundleId) (\s@DistributionBundle' {} a -> s {bundleId = a} :: DistributionBundle)

-- | Indicates whether the bundle is active, and can be specified for a new
-- distribution.
distributionBundle_isActive :: Lens.Lens' DistributionBundle (Core.Maybe Core.Bool)
distributionBundle_isActive = Lens.lens (\DistributionBundle' {isActive} -> isActive) (\s@DistributionBundle' {} a -> s {isActive = a} :: DistributionBundle)

-- | The name of the distribution bundle.
distributionBundle_name :: Lens.Lens' DistributionBundle (Core.Maybe Core.Text)
distributionBundle_name = Lens.lens (\DistributionBundle' {name} -> name) (\s@DistributionBundle' {} a -> s {name = a} :: DistributionBundle)

-- | The monthly network transfer quota of the bundle.
distributionBundle_transferPerMonthInGb :: Lens.Lens' DistributionBundle (Core.Maybe Core.Int)
distributionBundle_transferPerMonthInGb = Lens.lens (\DistributionBundle' {transferPerMonthInGb} -> transferPerMonthInGb) (\s@DistributionBundle' {} a -> s {transferPerMonthInGb = a} :: DistributionBundle)

-- | The monthly price, in US dollars, of the bundle.
distributionBundle_price :: Lens.Lens' DistributionBundle (Core.Maybe Core.Double)
distributionBundle_price = Lens.lens (\DistributionBundle' {price} -> price) (\s@DistributionBundle' {} a -> s {price = a} :: DistributionBundle)

instance Core.FromJSON DistributionBundle where
  parseJSON =
    Core.withObject
      "DistributionBundle"
      ( \x ->
          DistributionBundle'
            Core.<$> (x Core..:? "bundleId")
            Core.<*> (x Core..:? "isActive")
            Core.<*> (x Core..:? "name")
            Core.<*> (x Core..:? "transferPerMonthInGb")
            Core.<*> (x Core..:? "price")
      )

instance Core.Hashable DistributionBundle

instance Core.NFData DistributionBundle
