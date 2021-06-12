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
-- Module      : Network.AWS.CostExplorer.Types.RedshiftInstanceDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RedshiftInstanceDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Details about the Amazon Redshift instances that AWS recommends that you
-- purchase.
--
-- /See:/ 'newRedshiftInstanceDetails' smart constructor.
data RedshiftInstanceDetails = RedshiftInstanceDetails'
  { -- | Whether the recommendation is for a current-generation instance.
    currentGeneration :: Core.Maybe Core.Bool,
    -- | Whether the recommended reservation is size flexible.
    sizeFlexEligible :: Core.Maybe Core.Bool,
    -- | The instance family of the recommended reservation.
    family :: Core.Maybe Core.Text,
    -- | The type of node that AWS recommends.
    nodeType :: Core.Maybe Core.Text,
    -- | The AWS Region of the recommended reservation.
    region :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RedshiftInstanceDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'currentGeneration', 'redshiftInstanceDetails_currentGeneration' - Whether the recommendation is for a current-generation instance.
--
-- 'sizeFlexEligible', 'redshiftInstanceDetails_sizeFlexEligible' - Whether the recommended reservation is size flexible.
--
-- 'family', 'redshiftInstanceDetails_family' - The instance family of the recommended reservation.
--
-- 'nodeType', 'redshiftInstanceDetails_nodeType' - The type of node that AWS recommends.
--
-- 'region', 'redshiftInstanceDetails_region' - The AWS Region of the recommended reservation.
newRedshiftInstanceDetails ::
  RedshiftInstanceDetails
newRedshiftInstanceDetails =
  RedshiftInstanceDetails'
    { currentGeneration =
        Core.Nothing,
      sizeFlexEligible = Core.Nothing,
      family = Core.Nothing,
      nodeType = Core.Nothing,
      region = Core.Nothing
    }

-- | Whether the recommendation is for a current-generation instance.
redshiftInstanceDetails_currentGeneration :: Lens.Lens' RedshiftInstanceDetails (Core.Maybe Core.Bool)
redshiftInstanceDetails_currentGeneration = Lens.lens (\RedshiftInstanceDetails' {currentGeneration} -> currentGeneration) (\s@RedshiftInstanceDetails' {} a -> s {currentGeneration = a} :: RedshiftInstanceDetails)

-- | Whether the recommended reservation is size flexible.
redshiftInstanceDetails_sizeFlexEligible :: Lens.Lens' RedshiftInstanceDetails (Core.Maybe Core.Bool)
redshiftInstanceDetails_sizeFlexEligible = Lens.lens (\RedshiftInstanceDetails' {sizeFlexEligible} -> sizeFlexEligible) (\s@RedshiftInstanceDetails' {} a -> s {sizeFlexEligible = a} :: RedshiftInstanceDetails)

-- | The instance family of the recommended reservation.
redshiftInstanceDetails_family :: Lens.Lens' RedshiftInstanceDetails (Core.Maybe Core.Text)
redshiftInstanceDetails_family = Lens.lens (\RedshiftInstanceDetails' {family} -> family) (\s@RedshiftInstanceDetails' {} a -> s {family = a} :: RedshiftInstanceDetails)

-- | The type of node that AWS recommends.
redshiftInstanceDetails_nodeType :: Lens.Lens' RedshiftInstanceDetails (Core.Maybe Core.Text)
redshiftInstanceDetails_nodeType = Lens.lens (\RedshiftInstanceDetails' {nodeType} -> nodeType) (\s@RedshiftInstanceDetails' {} a -> s {nodeType = a} :: RedshiftInstanceDetails)

-- | The AWS Region of the recommended reservation.
redshiftInstanceDetails_region :: Lens.Lens' RedshiftInstanceDetails (Core.Maybe Core.Text)
redshiftInstanceDetails_region = Lens.lens (\RedshiftInstanceDetails' {region} -> region) (\s@RedshiftInstanceDetails' {} a -> s {region = a} :: RedshiftInstanceDetails)

instance Core.FromJSON RedshiftInstanceDetails where
  parseJSON =
    Core.withObject
      "RedshiftInstanceDetails"
      ( \x ->
          RedshiftInstanceDetails'
            Core.<$> (x Core..:? "CurrentGeneration")
            Core.<*> (x Core..:? "SizeFlexEligible")
            Core.<*> (x Core..:? "Family")
            Core.<*> (x Core..:? "NodeType")
            Core.<*> (x Core..:? "Region")
      )

instance Core.Hashable RedshiftInstanceDetails

instance Core.NFData RedshiftInstanceDetails
