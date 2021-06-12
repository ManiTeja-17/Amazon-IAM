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
-- Module      : Network.AWS.MediaLive.Types.Mp2Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mp2Settings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.Mp2CodingMode

-- | Mp2 Settings
--
-- /See:/ 'newMp2Settings' smart constructor.
data Mp2Settings = Mp2Settings'
  { -- | The MPEG2 Audio coding mode. Valid values are codingMode10 (for mono) or
    -- codingMode20 (for stereo).
    codingMode :: Core.Maybe Mp2CodingMode,
    -- | Sample rate in Hz.
    sampleRate :: Core.Maybe Core.Double,
    -- | Average bitrate in bits\/second.
    bitrate :: Core.Maybe Core.Double
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Mp2Settings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'codingMode', 'mp2Settings_codingMode' - The MPEG2 Audio coding mode. Valid values are codingMode10 (for mono) or
-- codingMode20 (for stereo).
--
-- 'sampleRate', 'mp2Settings_sampleRate' - Sample rate in Hz.
--
-- 'bitrate', 'mp2Settings_bitrate' - Average bitrate in bits\/second.
newMp2Settings ::
  Mp2Settings
newMp2Settings =
  Mp2Settings'
    { codingMode = Core.Nothing,
      sampleRate = Core.Nothing,
      bitrate = Core.Nothing
    }

-- | The MPEG2 Audio coding mode. Valid values are codingMode10 (for mono) or
-- codingMode20 (for stereo).
mp2Settings_codingMode :: Lens.Lens' Mp2Settings (Core.Maybe Mp2CodingMode)
mp2Settings_codingMode = Lens.lens (\Mp2Settings' {codingMode} -> codingMode) (\s@Mp2Settings' {} a -> s {codingMode = a} :: Mp2Settings)

-- | Sample rate in Hz.
mp2Settings_sampleRate :: Lens.Lens' Mp2Settings (Core.Maybe Core.Double)
mp2Settings_sampleRate = Lens.lens (\Mp2Settings' {sampleRate} -> sampleRate) (\s@Mp2Settings' {} a -> s {sampleRate = a} :: Mp2Settings)

-- | Average bitrate in bits\/second.
mp2Settings_bitrate :: Lens.Lens' Mp2Settings (Core.Maybe Core.Double)
mp2Settings_bitrate = Lens.lens (\Mp2Settings' {bitrate} -> bitrate) (\s@Mp2Settings' {} a -> s {bitrate = a} :: Mp2Settings)

instance Core.FromJSON Mp2Settings where
  parseJSON =
    Core.withObject
      "Mp2Settings"
      ( \x ->
          Mp2Settings'
            Core.<$> (x Core..:? "codingMode")
            Core.<*> (x Core..:? "sampleRate")
            Core.<*> (x Core..:? "bitrate")
      )

instance Core.Hashable Mp2Settings

instance Core.NFData Mp2Settings

instance Core.ToJSON Mp2Settings where
  toJSON Mp2Settings' {..} =
    Core.object
      ( Core.catMaybes
          [ ("codingMode" Core..=) Core.<$> codingMode,
            ("sampleRate" Core..=) Core.<$> sampleRate,
            ("bitrate" Core..=) Core.<$> bitrate
          ]
      )
