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
-- Module      : Network.AWS.EC2.Types.TransitGatewayConnectOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayConnectOptions where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ProtocolValue
import qualified Network.AWS.Lens as Lens

-- | Describes the Connect attachment options.
--
-- /See:/ 'newTransitGatewayConnectOptions' smart constructor.
data TransitGatewayConnectOptions = TransitGatewayConnectOptions'
  { -- | The tunnel protocol.
    protocol :: Core.Maybe ProtocolValue
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TransitGatewayConnectOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'protocol', 'transitGatewayConnectOptions_protocol' - The tunnel protocol.
newTransitGatewayConnectOptions ::
  TransitGatewayConnectOptions
newTransitGatewayConnectOptions =
  TransitGatewayConnectOptions'
    { protocol =
        Core.Nothing
    }

-- | The tunnel protocol.
transitGatewayConnectOptions_protocol :: Lens.Lens' TransitGatewayConnectOptions (Core.Maybe ProtocolValue)
transitGatewayConnectOptions_protocol = Lens.lens (\TransitGatewayConnectOptions' {protocol} -> protocol) (\s@TransitGatewayConnectOptions' {} a -> s {protocol = a} :: TransitGatewayConnectOptions)

instance Core.FromXML TransitGatewayConnectOptions where
  parseXML x =
    TransitGatewayConnectOptions'
      Core.<$> (x Core..@? "protocol")

instance Core.Hashable TransitGatewayConnectOptions

instance Core.NFData TransitGatewayConnectOptions
