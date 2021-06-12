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
-- Module      : Network.AWS.MediaConvert.Types.NoiseReducer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NoiseReducer where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConvert.Types.NoiseReducerFilter
import Network.AWS.MediaConvert.Types.NoiseReducerFilterSettings
import Network.AWS.MediaConvert.Types.NoiseReducerSpatialFilterSettings
import Network.AWS.MediaConvert.Types.NoiseReducerTemporalFilterSettings

-- | Enable the Noise reducer (NoiseReducer) feature to remove noise from
-- your video output if necessary. Enable or disable this feature for each
-- output individually. This setting is disabled by default. When you
-- enable Noise reducer (NoiseReducer), you must also select a value for
-- Noise reducer filter (NoiseReducerFilter).
--
-- /See:/ 'newNoiseReducer' smart constructor.
data NoiseReducer = NoiseReducer'
  { -- | Noise reducer filter settings for spatial filter.
    spatialFilterSettings :: Core.Maybe NoiseReducerSpatialFilterSettings,
    -- | Noise reducer filter settings for temporal filter.
    temporalFilterSettings :: Core.Maybe NoiseReducerTemporalFilterSettings,
    -- | Settings for a noise reducer filter
    filterSettings :: Core.Maybe NoiseReducerFilterSettings,
    -- | Use Noise reducer filter (NoiseReducerFilter) to select one of the
    -- following spatial image filtering functions. To use this setting, you
    -- must also enable Noise reducer (NoiseReducer). * Bilateral preserves
    -- edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and
    -- Sharpen (sharpest) do convolution filtering. * Conserve does min\/max
    -- noise reduction. * Spatial does frequency-domain filtering based on JND
    -- principles. * Temporal optimizes video quality for complex motion.
    filter' :: Core.Maybe NoiseReducerFilter
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'NoiseReducer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'spatialFilterSettings', 'noiseReducer_spatialFilterSettings' - Noise reducer filter settings for spatial filter.
--
-- 'temporalFilterSettings', 'noiseReducer_temporalFilterSettings' - Noise reducer filter settings for temporal filter.
--
-- 'filterSettings', 'noiseReducer_filterSettings' - Settings for a noise reducer filter
--
-- 'filter'', 'noiseReducer_filter' - Use Noise reducer filter (NoiseReducerFilter) to select one of the
-- following spatial image filtering functions. To use this setting, you
-- must also enable Noise reducer (NoiseReducer). * Bilateral preserves
-- edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and
-- Sharpen (sharpest) do convolution filtering. * Conserve does min\/max
-- noise reduction. * Spatial does frequency-domain filtering based on JND
-- principles. * Temporal optimizes video quality for complex motion.
newNoiseReducer ::
  NoiseReducer
newNoiseReducer =
  NoiseReducer'
    { spatialFilterSettings = Core.Nothing,
      temporalFilterSettings = Core.Nothing,
      filterSettings = Core.Nothing,
      filter' = Core.Nothing
    }

-- | Noise reducer filter settings for spatial filter.
noiseReducer_spatialFilterSettings :: Lens.Lens' NoiseReducer (Core.Maybe NoiseReducerSpatialFilterSettings)
noiseReducer_spatialFilterSettings = Lens.lens (\NoiseReducer' {spatialFilterSettings} -> spatialFilterSettings) (\s@NoiseReducer' {} a -> s {spatialFilterSettings = a} :: NoiseReducer)

-- | Noise reducer filter settings for temporal filter.
noiseReducer_temporalFilterSettings :: Lens.Lens' NoiseReducer (Core.Maybe NoiseReducerTemporalFilterSettings)
noiseReducer_temporalFilterSettings = Lens.lens (\NoiseReducer' {temporalFilterSettings} -> temporalFilterSettings) (\s@NoiseReducer' {} a -> s {temporalFilterSettings = a} :: NoiseReducer)

-- | Settings for a noise reducer filter
noiseReducer_filterSettings :: Lens.Lens' NoiseReducer (Core.Maybe NoiseReducerFilterSettings)
noiseReducer_filterSettings = Lens.lens (\NoiseReducer' {filterSettings} -> filterSettings) (\s@NoiseReducer' {} a -> s {filterSettings = a} :: NoiseReducer)

-- | Use Noise reducer filter (NoiseReducerFilter) to select one of the
-- following spatial image filtering functions. To use this setting, you
-- must also enable Noise reducer (NoiseReducer). * Bilateral preserves
-- edges while reducing noise. * Mean (softest), Gaussian, Lanczos, and
-- Sharpen (sharpest) do convolution filtering. * Conserve does min\/max
-- noise reduction. * Spatial does frequency-domain filtering based on JND
-- principles. * Temporal optimizes video quality for complex motion.
noiseReducer_filter :: Lens.Lens' NoiseReducer (Core.Maybe NoiseReducerFilter)
noiseReducer_filter = Lens.lens (\NoiseReducer' {filter'} -> filter') (\s@NoiseReducer' {} a -> s {filter' = a} :: NoiseReducer)

instance Core.FromJSON NoiseReducer where
  parseJSON =
    Core.withObject
      "NoiseReducer"
      ( \x ->
          NoiseReducer'
            Core.<$> (x Core..:? "spatialFilterSettings")
            Core.<*> (x Core..:? "temporalFilterSettings")
            Core.<*> (x Core..:? "filterSettings")
            Core.<*> (x Core..:? "filter")
      )

instance Core.Hashable NoiseReducer

instance Core.NFData NoiseReducer

instance Core.ToJSON NoiseReducer where
  toJSON NoiseReducer' {..} =
    Core.object
      ( Core.catMaybes
          [ ("spatialFilterSettings" Core..=)
              Core.<$> spatialFilterSettings,
            ("temporalFilterSettings" Core..=)
              Core.<$> temporalFilterSettings,
            ("filterSettings" Core..=) Core.<$> filterSettings,
            ("filter" Core..=) Core.<$> filter'
          ]
      )
