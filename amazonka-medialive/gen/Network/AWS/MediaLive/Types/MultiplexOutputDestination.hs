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
-- Module      : Network.AWS.MediaLive.Types.MultiplexOutputDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MultiplexOutputDestination where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.MultiplexMediaConnectOutputDestinationSettings

-- | Multiplex output destination settings
--
-- /See:/ 'newMultiplexOutputDestination' smart constructor.
data MultiplexOutputDestination = MultiplexOutputDestination'
  { -- | Multiplex MediaConnect output destination settings.
    mediaConnectSettings :: Core.Maybe MultiplexMediaConnectOutputDestinationSettings
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'MultiplexOutputDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mediaConnectSettings', 'multiplexOutputDestination_mediaConnectSettings' - Multiplex MediaConnect output destination settings.
newMultiplexOutputDestination ::
  MultiplexOutputDestination
newMultiplexOutputDestination =
  MultiplexOutputDestination'
    { mediaConnectSettings =
        Core.Nothing
    }

-- | Multiplex MediaConnect output destination settings.
multiplexOutputDestination_mediaConnectSettings :: Lens.Lens' MultiplexOutputDestination (Core.Maybe MultiplexMediaConnectOutputDestinationSettings)
multiplexOutputDestination_mediaConnectSettings = Lens.lens (\MultiplexOutputDestination' {mediaConnectSettings} -> mediaConnectSettings) (\s@MultiplexOutputDestination' {} a -> s {mediaConnectSettings = a} :: MultiplexOutputDestination)

instance Core.FromJSON MultiplexOutputDestination where
  parseJSON =
    Core.withObject
      "MultiplexOutputDestination"
      ( \x ->
          MultiplexOutputDestination'
            Core.<$> (x Core..:? "mediaConnectSettings")
      )

instance Core.Hashable MultiplexOutputDestination

instance Core.NFData MultiplexOutputDestination
