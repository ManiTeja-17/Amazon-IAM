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
-- Module      : Network.AWS.MediaConvert.Types.DvbNitSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbNitSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Inserts DVB Network Information Table (NIT) at the specified table
-- repetition interval.
--
-- /See:/ 'newDvbNitSettings' smart constructor.
data DvbNitSettings = DvbNitSettings'
  { -- | The number of milliseconds between instances of this table in the output
    -- transport stream.
    nitInterval :: Core.Maybe Core.Natural,
    -- | The network name text placed in the network_name_descriptor inside the
    -- Network Information Table. Maximum length is 256 characters.
    networkName :: Core.Maybe Core.Text,
    -- | The numeric value placed in the Network Information Table (NIT).
    networkId :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DvbNitSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nitInterval', 'dvbNitSettings_nitInterval' - The number of milliseconds between instances of this table in the output
-- transport stream.
--
-- 'networkName', 'dvbNitSettings_networkName' - The network name text placed in the network_name_descriptor inside the
-- Network Information Table. Maximum length is 256 characters.
--
-- 'networkId', 'dvbNitSettings_networkId' - The numeric value placed in the Network Information Table (NIT).
newDvbNitSettings ::
  DvbNitSettings
newDvbNitSettings =
  DvbNitSettings'
    { nitInterval = Core.Nothing,
      networkName = Core.Nothing,
      networkId = Core.Nothing
    }

-- | The number of milliseconds between instances of this table in the output
-- transport stream.
dvbNitSettings_nitInterval :: Lens.Lens' DvbNitSettings (Core.Maybe Core.Natural)
dvbNitSettings_nitInterval = Lens.lens (\DvbNitSettings' {nitInterval} -> nitInterval) (\s@DvbNitSettings' {} a -> s {nitInterval = a} :: DvbNitSettings)

-- | The network name text placed in the network_name_descriptor inside the
-- Network Information Table. Maximum length is 256 characters.
dvbNitSettings_networkName :: Lens.Lens' DvbNitSettings (Core.Maybe Core.Text)
dvbNitSettings_networkName = Lens.lens (\DvbNitSettings' {networkName} -> networkName) (\s@DvbNitSettings' {} a -> s {networkName = a} :: DvbNitSettings)

-- | The numeric value placed in the Network Information Table (NIT).
dvbNitSettings_networkId :: Lens.Lens' DvbNitSettings (Core.Maybe Core.Natural)
dvbNitSettings_networkId = Lens.lens (\DvbNitSettings' {networkId} -> networkId) (\s@DvbNitSettings' {} a -> s {networkId = a} :: DvbNitSettings)

instance Core.FromJSON DvbNitSettings where
  parseJSON =
    Core.withObject
      "DvbNitSettings"
      ( \x ->
          DvbNitSettings'
            Core.<$> (x Core..:? "nitInterval")
            Core.<*> (x Core..:? "networkName")
            Core.<*> (x Core..:? "networkId")
      )

instance Core.Hashable DvbNitSettings

instance Core.NFData DvbNitSettings

instance Core.ToJSON DvbNitSettings where
  toJSON DvbNitSettings' {..} =
    Core.object
      ( Core.catMaybes
          [ ("nitInterval" Core..=) Core.<$> nitInterval,
            ("networkName" Core..=) Core.<$> networkName,
            ("networkId" Core..=) Core.<$> networkId
          ]
      )
