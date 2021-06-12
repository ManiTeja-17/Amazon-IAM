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
-- Module      : Network.AWS.MediaConvert.Types.NielsenConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NielsenConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Settings for your Nielsen configuration. If you don\'t do Nielsen
-- measurement and analytics, ignore these settings. When you enable
-- Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM
-- to ID3 tagging for all outputs in the job. To enable Nielsen
-- configuration programmatically, include an instance of
-- nielsenConfiguration in your JSON job specification. Even if you don\'t
-- include any children of nielsenConfiguration, you still enable the
-- setting.
--
-- /See:/ 'newNielsenConfiguration' smart constructor.
data NielsenConfiguration = NielsenConfiguration'
  { -- | Nielsen has discontinued the use of breakout code functionality. If you
    -- must include this property, set the value to zero.
    breakoutCode :: Core.Maybe Core.Natural,
    -- | Use Distributor ID (DistributorID) to specify the distributor ID that is
    -- assigned to your organization by Neilsen.
    distributorId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'NielsenConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'breakoutCode', 'nielsenConfiguration_breakoutCode' - Nielsen has discontinued the use of breakout code functionality. If you
-- must include this property, set the value to zero.
--
-- 'distributorId', 'nielsenConfiguration_distributorId' - Use Distributor ID (DistributorID) to specify the distributor ID that is
-- assigned to your organization by Neilsen.
newNielsenConfiguration ::
  NielsenConfiguration
newNielsenConfiguration =
  NielsenConfiguration'
    { breakoutCode = Core.Nothing,
      distributorId = Core.Nothing
    }

-- | Nielsen has discontinued the use of breakout code functionality. If you
-- must include this property, set the value to zero.
nielsenConfiguration_breakoutCode :: Lens.Lens' NielsenConfiguration (Core.Maybe Core.Natural)
nielsenConfiguration_breakoutCode = Lens.lens (\NielsenConfiguration' {breakoutCode} -> breakoutCode) (\s@NielsenConfiguration' {} a -> s {breakoutCode = a} :: NielsenConfiguration)

-- | Use Distributor ID (DistributorID) to specify the distributor ID that is
-- assigned to your organization by Neilsen.
nielsenConfiguration_distributorId :: Lens.Lens' NielsenConfiguration (Core.Maybe Core.Text)
nielsenConfiguration_distributorId = Lens.lens (\NielsenConfiguration' {distributorId} -> distributorId) (\s@NielsenConfiguration' {} a -> s {distributorId = a} :: NielsenConfiguration)

instance Core.FromJSON NielsenConfiguration where
  parseJSON =
    Core.withObject
      "NielsenConfiguration"
      ( \x ->
          NielsenConfiguration'
            Core.<$> (x Core..:? "breakoutCode")
            Core.<*> (x Core..:? "distributorId")
      )

instance Core.Hashable NielsenConfiguration

instance Core.NFData NielsenConfiguration

instance Core.ToJSON NielsenConfiguration where
  toJSON NielsenConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("breakoutCode" Core..=) Core.<$> breakoutCode,
            ("distributorId" Core..=) Core.<$> distributorId
          ]
      )
