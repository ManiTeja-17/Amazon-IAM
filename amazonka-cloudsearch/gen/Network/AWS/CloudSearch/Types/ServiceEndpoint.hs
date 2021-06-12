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
-- Module      : Network.AWS.CloudSearch.Types.ServiceEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.ServiceEndpoint where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The endpoint to which service requests can be submitted.
--
-- /See:/ 'newServiceEndpoint' smart constructor.
data ServiceEndpoint = ServiceEndpoint'
  { endpoint :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ServiceEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpoint', 'serviceEndpoint_endpoint' - Undocumented member.
newServiceEndpoint ::
  ServiceEndpoint
newServiceEndpoint =
  ServiceEndpoint' {endpoint = Core.Nothing}

-- | Undocumented member.
serviceEndpoint_endpoint :: Lens.Lens' ServiceEndpoint (Core.Maybe Core.Text)
serviceEndpoint_endpoint = Lens.lens (\ServiceEndpoint' {endpoint} -> endpoint) (\s@ServiceEndpoint' {} a -> s {endpoint = a} :: ServiceEndpoint)

instance Core.FromXML ServiceEndpoint where
  parseXML x =
    ServiceEndpoint' Core.<$> (x Core..@? "Endpoint")

instance Core.Hashable ServiceEndpoint

instance Core.NFData ServiceEndpoint
