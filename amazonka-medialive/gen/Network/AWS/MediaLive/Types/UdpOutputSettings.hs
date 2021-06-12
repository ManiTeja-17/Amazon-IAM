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
-- Module      : Network.AWS.MediaLive.Types.UdpOutputSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.UdpOutputSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.FecOutputSettings
import Network.AWS.MediaLive.Types.OutputLocationRef
import Network.AWS.MediaLive.Types.UdpContainerSettings

-- | Udp Output Settings
--
-- /See:/ 'newUdpOutputSettings' smart constructor.
data UdpOutputSettings = UdpOutputSettings'
  { -- | UDP output buffering in milliseconds. Larger values increase latency
    -- through the transcoder but simultaneously assist the transcoder in
    -- maintaining a constant, low-jitter UDP\/RTP output while accommodating
    -- clock recovery, input switching, input disruptions, picture reordering,
    -- etc.
    bufferMsec :: Core.Maybe Core.Natural,
    -- | Settings for enabling and adjusting Forward Error Correction on UDP
    -- outputs.
    fecOutputSettings :: Core.Maybe FecOutputSettings,
    -- | Destination address and port number for RTP or UDP packets. Can be
    -- unicast or multicast RTP or UDP (eg. rtp:\/\/239.10.10.10:5001 or
    -- udp:\/\/10.100.100.100:5002).
    destination :: OutputLocationRef,
    containerSettings :: UdpContainerSettings
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UdpOutputSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bufferMsec', 'udpOutputSettings_bufferMsec' - UDP output buffering in milliseconds. Larger values increase latency
-- through the transcoder but simultaneously assist the transcoder in
-- maintaining a constant, low-jitter UDP\/RTP output while accommodating
-- clock recovery, input switching, input disruptions, picture reordering,
-- etc.
--
-- 'fecOutputSettings', 'udpOutputSettings_fecOutputSettings' - Settings for enabling and adjusting Forward Error Correction on UDP
-- outputs.
--
-- 'destination', 'udpOutputSettings_destination' - Destination address and port number for RTP or UDP packets. Can be
-- unicast or multicast RTP or UDP (eg. rtp:\/\/239.10.10.10:5001 or
-- udp:\/\/10.100.100.100:5002).
--
-- 'containerSettings', 'udpOutputSettings_containerSettings' - Undocumented member.
newUdpOutputSettings ::
  -- | 'destination'
  OutputLocationRef ->
  -- | 'containerSettings'
  UdpContainerSettings ->
  UdpOutputSettings
newUdpOutputSettings
  pDestination_
  pContainerSettings_ =
    UdpOutputSettings'
      { bufferMsec = Core.Nothing,
        fecOutputSettings = Core.Nothing,
        destination = pDestination_,
        containerSettings = pContainerSettings_
      }

-- | UDP output buffering in milliseconds. Larger values increase latency
-- through the transcoder but simultaneously assist the transcoder in
-- maintaining a constant, low-jitter UDP\/RTP output while accommodating
-- clock recovery, input switching, input disruptions, picture reordering,
-- etc.
udpOutputSettings_bufferMsec :: Lens.Lens' UdpOutputSettings (Core.Maybe Core.Natural)
udpOutputSettings_bufferMsec = Lens.lens (\UdpOutputSettings' {bufferMsec} -> bufferMsec) (\s@UdpOutputSettings' {} a -> s {bufferMsec = a} :: UdpOutputSettings)

-- | Settings for enabling and adjusting Forward Error Correction on UDP
-- outputs.
udpOutputSettings_fecOutputSettings :: Lens.Lens' UdpOutputSettings (Core.Maybe FecOutputSettings)
udpOutputSettings_fecOutputSettings = Lens.lens (\UdpOutputSettings' {fecOutputSettings} -> fecOutputSettings) (\s@UdpOutputSettings' {} a -> s {fecOutputSettings = a} :: UdpOutputSettings)

-- | Destination address and port number for RTP or UDP packets. Can be
-- unicast or multicast RTP or UDP (eg. rtp:\/\/239.10.10.10:5001 or
-- udp:\/\/10.100.100.100:5002).
udpOutputSettings_destination :: Lens.Lens' UdpOutputSettings OutputLocationRef
udpOutputSettings_destination = Lens.lens (\UdpOutputSettings' {destination} -> destination) (\s@UdpOutputSettings' {} a -> s {destination = a} :: UdpOutputSettings)

-- | Undocumented member.
udpOutputSettings_containerSettings :: Lens.Lens' UdpOutputSettings UdpContainerSettings
udpOutputSettings_containerSettings = Lens.lens (\UdpOutputSettings' {containerSettings} -> containerSettings) (\s@UdpOutputSettings' {} a -> s {containerSettings = a} :: UdpOutputSettings)

instance Core.FromJSON UdpOutputSettings where
  parseJSON =
    Core.withObject
      "UdpOutputSettings"
      ( \x ->
          UdpOutputSettings'
            Core.<$> (x Core..:? "bufferMsec")
            Core.<*> (x Core..:? "fecOutputSettings")
            Core.<*> (x Core..: "destination")
            Core.<*> (x Core..: "containerSettings")
      )

instance Core.Hashable UdpOutputSettings

instance Core.NFData UdpOutputSettings

instance Core.ToJSON UdpOutputSettings where
  toJSON UdpOutputSettings' {..} =
    Core.object
      ( Core.catMaybes
          [ ("bufferMsec" Core..=) Core.<$> bufferMsec,
            ("fecOutputSettings" Core..=)
              Core.<$> fecOutputSettings,
            Core.Just ("destination" Core..= destination),
            Core.Just
              ("containerSettings" Core..= containerSettings)
          ]
      )
