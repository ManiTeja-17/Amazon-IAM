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
-- Module      : Network.AWS.EC2.Types.ClientVpnConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVpnConnectionStatus where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ClientVpnConnectionStatusCode
import qualified Network.AWS.Lens as Lens

-- | Describes the status of a client connection.
--
-- /See:/ 'newClientVpnConnectionStatus' smart constructor.
data ClientVpnConnectionStatus = ClientVpnConnectionStatus'
  { -- | A message about the status of the client connection, if applicable.
    message :: Core.Maybe Core.Text,
    -- | The state of the client connection.
    code :: Core.Maybe ClientVpnConnectionStatusCode
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ClientVpnConnectionStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'clientVpnConnectionStatus_message' - A message about the status of the client connection, if applicable.
--
-- 'code', 'clientVpnConnectionStatus_code' - The state of the client connection.
newClientVpnConnectionStatus ::
  ClientVpnConnectionStatus
newClientVpnConnectionStatus =
  ClientVpnConnectionStatus'
    { message = Core.Nothing,
      code = Core.Nothing
    }

-- | A message about the status of the client connection, if applicable.
clientVpnConnectionStatus_message :: Lens.Lens' ClientVpnConnectionStatus (Core.Maybe Core.Text)
clientVpnConnectionStatus_message = Lens.lens (\ClientVpnConnectionStatus' {message} -> message) (\s@ClientVpnConnectionStatus' {} a -> s {message = a} :: ClientVpnConnectionStatus)

-- | The state of the client connection.
clientVpnConnectionStatus_code :: Lens.Lens' ClientVpnConnectionStatus (Core.Maybe ClientVpnConnectionStatusCode)
clientVpnConnectionStatus_code = Lens.lens (\ClientVpnConnectionStatus' {code} -> code) (\s@ClientVpnConnectionStatus' {} a -> s {code = a} :: ClientVpnConnectionStatus)

instance Core.FromXML ClientVpnConnectionStatus where
  parseXML x =
    ClientVpnConnectionStatus'
      Core.<$> (x Core..@? "message") Core.<*> (x Core..@? "code")

instance Core.Hashable ClientVpnConnectionStatus

instance Core.NFData ClientVpnConnectionStatus
