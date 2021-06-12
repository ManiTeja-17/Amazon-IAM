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
-- Module      : Network.AWS.Snowball.Types.WirelessConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.WirelessConnection where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Configures the wireless connection on an AWS Snowcone device.
--
-- /See:/ 'newWirelessConnection' smart constructor.
data WirelessConnection = WirelessConnection'
  { -- | Enables the Wi-Fi adapter on an AWS Snowcone device.
    isWifiEnabled :: Core.Maybe Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'WirelessConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isWifiEnabled', 'wirelessConnection_isWifiEnabled' - Enables the Wi-Fi adapter on an AWS Snowcone device.
newWirelessConnection ::
  WirelessConnection
newWirelessConnection =
  WirelessConnection' {isWifiEnabled = Core.Nothing}

-- | Enables the Wi-Fi adapter on an AWS Snowcone device.
wirelessConnection_isWifiEnabled :: Lens.Lens' WirelessConnection (Core.Maybe Core.Bool)
wirelessConnection_isWifiEnabled = Lens.lens (\WirelessConnection' {isWifiEnabled} -> isWifiEnabled) (\s@WirelessConnection' {} a -> s {isWifiEnabled = a} :: WirelessConnection)

instance Core.FromJSON WirelessConnection where
  parseJSON =
    Core.withObject
      "WirelessConnection"
      ( \x ->
          WirelessConnection'
            Core.<$> (x Core..:? "IsWifiEnabled")
      )

instance Core.Hashable WirelessConnection

instance Core.NFData WirelessConnection

instance Core.ToJSON WirelessConnection where
  toJSON WirelessConnection' {..} =
    Core.object
      ( Core.catMaybes
          [("IsWifiEnabled" Core..=) Core.<$> isWifiEnabled]
      )
