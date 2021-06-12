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
-- Module      : Network.AWS.SNS.Types.Endpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SNS.Types.Endpoint where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Endpoint for mobile app and device.
--
-- /See:/ 'newEndpoint' smart constructor.
data Endpoint = Endpoint'
  { -- | Attributes for endpoint.
    attributes :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | EndpointArn for mobile app and device.
    endpointArn :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Endpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'endpoint_attributes' - Attributes for endpoint.
--
-- 'endpointArn', 'endpoint_endpointArn' - EndpointArn for mobile app and device.
newEndpoint ::
  Endpoint
newEndpoint =
  Endpoint'
    { attributes = Core.Nothing,
      endpointArn = Core.Nothing
    }

-- | Attributes for endpoint.
endpoint_attributes :: Lens.Lens' Endpoint (Core.Maybe (Core.HashMap Core.Text Core.Text))
endpoint_attributes = Lens.lens (\Endpoint' {attributes} -> attributes) (\s@Endpoint' {} a -> s {attributes = a} :: Endpoint) Core.. Lens.mapping Lens._Coerce

-- | EndpointArn for mobile app and device.
endpoint_endpointArn :: Lens.Lens' Endpoint (Core.Maybe Core.Text)
endpoint_endpointArn = Lens.lens (\Endpoint' {endpointArn} -> endpointArn) (\s@Endpoint' {} a -> s {endpointArn = a} :: Endpoint)

instance Core.FromXML Endpoint where
  parseXML x =
    Endpoint'
      Core.<$> ( x Core..@? "Attributes" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLMap "entry" "key" "value")
               )
      Core.<*> (x Core..@? "EndpointArn")

instance Core.Hashable Endpoint

instance Core.NFData Endpoint
