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
-- Module      : Network.AWS.EC2.Types.AssociatedTargetNetwork
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AssociatedTargetNetwork where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AssociatedNetworkType
import qualified Network.AWS.Lens as Lens

-- | Describes a target network that is associated with a Client VPN
-- endpoint. A target network is a subnet in a VPC.
--
-- /See:/ 'newAssociatedTargetNetwork' smart constructor.
data AssociatedTargetNetwork = AssociatedTargetNetwork'
  { -- | The target network type.
    networkType :: Core.Maybe AssociatedNetworkType,
    -- | The ID of the subnet.
    networkId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AssociatedTargetNetwork' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkType', 'associatedTargetNetwork_networkType' - The target network type.
--
-- 'networkId', 'associatedTargetNetwork_networkId' - The ID of the subnet.
newAssociatedTargetNetwork ::
  AssociatedTargetNetwork
newAssociatedTargetNetwork =
  AssociatedTargetNetwork'
    { networkType =
        Core.Nothing,
      networkId = Core.Nothing
    }

-- | The target network type.
associatedTargetNetwork_networkType :: Lens.Lens' AssociatedTargetNetwork (Core.Maybe AssociatedNetworkType)
associatedTargetNetwork_networkType = Lens.lens (\AssociatedTargetNetwork' {networkType} -> networkType) (\s@AssociatedTargetNetwork' {} a -> s {networkType = a} :: AssociatedTargetNetwork)

-- | The ID of the subnet.
associatedTargetNetwork_networkId :: Lens.Lens' AssociatedTargetNetwork (Core.Maybe Core.Text)
associatedTargetNetwork_networkId = Lens.lens (\AssociatedTargetNetwork' {networkId} -> networkId) (\s@AssociatedTargetNetwork' {} a -> s {networkId = a} :: AssociatedTargetNetwork)

instance Core.FromXML AssociatedTargetNetwork where
  parseXML x =
    AssociatedTargetNetwork'
      Core.<$> (x Core..@? "networkType")
      Core.<*> (x Core..@? "networkId")

instance Core.Hashable AssociatedTargetNetwork

instance Core.NFData AssociatedTargetNetwork
