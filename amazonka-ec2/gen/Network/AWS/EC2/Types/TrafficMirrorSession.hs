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
-- Module      : Network.AWS.EC2.Types.TrafficMirrorSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorSession where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import qualified Network.AWS.Lens as Lens

-- | Describes a Traffic Mirror session.
--
-- /See:/ 'newTrafficMirrorSession' smart constructor.
data TrafficMirrorSession = TrafficMirrorSession'
  { -- | The ID of the account that owns the Traffic Mirror session.
    ownerId :: Core.Maybe Core.Text,
    -- | The ID for the Traffic Mirror session.
    trafficMirrorSessionId :: Core.Maybe Core.Text,
    -- | The number of bytes in each packet to mirror. These are the bytes after
    -- the VXLAN header. To mirror a subset, set this to the length (in bytes)
    -- to mirror. For example, if you set this value to 100, then the first 100
    -- bytes that meet the filter criteria are copied to the target. Do not
    -- specify this parameter when you want to mirror the entire packet
    packetLength :: Core.Maybe Core.Int,
    -- | The tags assigned to the Traffic Mirror session.
    tags :: Core.Maybe [Tag],
    -- | The ID of the Traffic Mirror filter.
    trafficMirrorFilterId :: Core.Maybe Core.Text,
    -- | The ID of the Traffic Mirror session\'s network interface.
    networkInterfaceId :: Core.Maybe Core.Text,
    -- | The description of the Traffic Mirror session.
    description :: Core.Maybe Core.Text,
    -- | The ID of the Traffic Mirror target.
    trafficMirrorTargetId :: Core.Maybe Core.Text,
    -- | The session number determines the order in which sessions are evaluated
    -- when an interface is used by multiple sessions. The first session with a
    -- matching filter is the one that mirrors the packets.
    --
    -- Valid values are 1-32766.
    sessionNumber :: Core.Maybe Core.Int,
    -- | The virtual network ID associated with the Traffic Mirror session.
    virtualNetworkId :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TrafficMirrorSession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ownerId', 'trafficMirrorSession_ownerId' - The ID of the account that owns the Traffic Mirror session.
--
-- 'trafficMirrorSessionId', 'trafficMirrorSession_trafficMirrorSessionId' - The ID for the Traffic Mirror session.
--
-- 'packetLength', 'trafficMirrorSession_packetLength' - The number of bytes in each packet to mirror. These are the bytes after
-- the VXLAN header. To mirror a subset, set this to the length (in bytes)
-- to mirror. For example, if you set this value to 100, then the first 100
-- bytes that meet the filter criteria are copied to the target. Do not
-- specify this parameter when you want to mirror the entire packet
--
-- 'tags', 'trafficMirrorSession_tags' - The tags assigned to the Traffic Mirror session.
--
-- 'trafficMirrorFilterId', 'trafficMirrorSession_trafficMirrorFilterId' - The ID of the Traffic Mirror filter.
--
-- 'networkInterfaceId', 'trafficMirrorSession_networkInterfaceId' - The ID of the Traffic Mirror session\'s network interface.
--
-- 'description', 'trafficMirrorSession_description' - The description of the Traffic Mirror session.
--
-- 'trafficMirrorTargetId', 'trafficMirrorSession_trafficMirrorTargetId' - The ID of the Traffic Mirror target.
--
-- 'sessionNumber', 'trafficMirrorSession_sessionNumber' - The session number determines the order in which sessions are evaluated
-- when an interface is used by multiple sessions. The first session with a
-- matching filter is the one that mirrors the packets.
--
-- Valid values are 1-32766.
--
-- 'virtualNetworkId', 'trafficMirrorSession_virtualNetworkId' - The virtual network ID associated with the Traffic Mirror session.
newTrafficMirrorSession ::
  TrafficMirrorSession
newTrafficMirrorSession =
  TrafficMirrorSession'
    { ownerId = Core.Nothing,
      trafficMirrorSessionId = Core.Nothing,
      packetLength = Core.Nothing,
      tags = Core.Nothing,
      trafficMirrorFilterId = Core.Nothing,
      networkInterfaceId = Core.Nothing,
      description = Core.Nothing,
      trafficMirrorTargetId = Core.Nothing,
      sessionNumber = Core.Nothing,
      virtualNetworkId = Core.Nothing
    }

-- | The ID of the account that owns the Traffic Mirror session.
trafficMirrorSession_ownerId :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Text)
trafficMirrorSession_ownerId = Lens.lens (\TrafficMirrorSession' {ownerId} -> ownerId) (\s@TrafficMirrorSession' {} a -> s {ownerId = a} :: TrafficMirrorSession)

-- | The ID for the Traffic Mirror session.
trafficMirrorSession_trafficMirrorSessionId :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Text)
trafficMirrorSession_trafficMirrorSessionId = Lens.lens (\TrafficMirrorSession' {trafficMirrorSessionId} -> trafficMirrorSessionId) (\s@TrafficMirrorSession' {} a -> s {trafficMirrorSessionId = a} :: TrafficMirrorSession)

-- | The number of bytes in each packet to mirror. These are the bytes after
-- the VXLAN header. To mirror a subset, set this to the length (in bytes)
-- to mirror. For example, if you set this value to 100, then the first 100
-- bytes that meet the filter criteria are copied to the target. Do not
-- specify this parameter when you want to mirror the entire packet
trafficMirrorSession_packetLength :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Int)
trafficMirrorSession_packetLength = Lens.lens (\TrafficMirrorSession' {packetLength} -> packetLength) (\s@TrafficMirrorSession' {} a -> s {packetLength = a} :: TrafficMirrorSession)

-- | The tags assigned to the Traffic Mirror session.
trafficMirrorSession_tags :: Lens.Lens' TrafficMirrorSession (Core.Maybe [Tag])
trafficMirrorSession_tags = Lens.lens (\TrafficMirrorSession' {tags} -> tags) (\s@TrafficMirrorSession' {} a -> s {tags = a} :: TrafficMirrorSession) Core.. Lens.mapping Lens._Coerce

-- | The ID of the Traffic Mirror filter.
trafficMirrorSession_trafficMirrorFilterId :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Text)
trafficMirrorSession_trafficMirrorFilterId = Lens.lens (\TrafficMirrorSession' {trafficMirrorFilterId} -> trafficMirrorFilterId) (\s@TrafficMirrorSession' {} a -> s {trafficMirrorFilterId = a} :: TrafficMirrorSession)

-- | The ID of the Traffic Mirror session\'s network interface.
trafficMirrorSession_networkInterfaceId :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Text)
trafficMirrorSession_networkInterfaceId = Lens.lens (\TrafficMirrorSession' {networkInterfaceId} -> networkInterfaceId) (\s@TrafficMirrorSession' {} a -> s {networkInterfaceId = a} :: TrafficMirrorSession)

-- | The description of the Traffic Mirror session.
trafficMirrorSession_description :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Text)
trafficMirrorSession_description = Lens.lens (\TrafficMirrorSession' {description} -> description) (\s@TrafficMirrorSession' {} a -> s {description = a} :: TrafficMirrorSession)

-- | The ID of the Traffic Mirror target.
trafficMirrorSession_trafficMirrorTargetId :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Text)
trafficMirrorSession_trafficMirrorTargetId = Lens.lens (\TrafficMirrorSession' {trafficMirrorTargetId} -> trafficMirrorTargetId) (\s@TrafficMirrorSession' {} a -> s {trafficMirrorTargetId = a} :: TrafficMirrorSession)

-- | The session number determines the order in which sessions are evaluated
-- when an interface is used by multiple sessions. The first session with a
-- matching filter is the one that mirrors the packets.
--
-- Valid values are 1-32766.
trafficMirrorSession_sessionNumber :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Int)
trafficMirrorSession_sessionNumber = Lens.lens (\TrafficMirrorSession' {sessionNumber} -> sessionNumber) (\s@TrafficMirrorSession' {} a -> s {sessionNumber = a} :: TrafficMirrorSession)

-- | The virtual network ID associated with the Traffic Mirror session.
trafficMirrorSession_virtualNetworkId :: Lens.Lens' TrafficMirrorSession (Core.Maybe Core.Int)
trafficMirrorSession_virtualNetworkId = Lens.lens (\TrafficMirrorSession' {virtualNetworkId} -> virtualNetworkId) (\s@TrafficMirrorSession' {} a -> s {virtualNetworkId = a} :: TrafficMirrorSession)

instance Core.FromXML TrafficMirrorSession where
  parseXML x =
    TrafficMirrorSession'
      Core.<$> (x Core..@? "ownerId")
      Core.<*> (x Core..@? "trafficMirrorSessionId")
      Core.<*> (x Core..@? "packetLength")
      Core.<*> ( x Core..@? "tagSet" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "item")
               )
      Core.<*> (x Core..@? "trafficMirrorFilterId")
      Core.<*> (x Core..@? "networkInterfaceId")
      Core.<*> (x Core..@? "description")
      Core.<*> (x Core..@? "trafficMirrorTargetId")
      Core.<*> (x Core..@? "sessionNumber")
      Core.<*> (x Core..@? "virtualNetworkId")

instance Core.Hashable TrafficMirrorSession

instance Core.NFData TrafficMirrorSession
