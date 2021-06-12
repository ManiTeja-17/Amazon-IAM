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
-- Module      : Network.AWS.EC2.Types.InstanceMarketOptionsRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceMarketOptionsRequest where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.MarketType
import Network.AWS.EC2.Types.SpotMarketOptions
import qualified Network.AWS.Lens as Lens

-- | Describes the market (purchasing) option for the instances.
--
-- /See:/ 'newInstanceMarketOptionsRequest' smart constructor.
data InstanceMarketOptionsRequest = InstanceMarketOptionsRequest'
  { -- | The market type.
    marketType :: Core.Maybe MarketType,
    -- | The options for Spot Instances.
    spotOptions :: Core.Maybe SpotMarketOptions
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'InstanceMarketOptionsRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marketType', 'instanceMarketOptionsRequest_marketType' - The market type.
--
-- 'spotOptions', 'instanceMarketOptionsRequest_spotOptions' - The options for Spot Instances.
newInstanceMarketOptionsRequest ::
  InstanceMarketOptionsRequest
newInstanceMarketOptionsRequest =
  InstanceMarketOptionsRequest'
    { marketType =
        Core.Nothing,
      spotOptions = Core.Nothing
    }

-- | The market type.
instanceMarketOptionsRequest_marketType :: Lens.Lens' InstanceMarketOptionsRequest (Core.Maybe MarketType)
instanceMarketOptionsRequest_marketType = Lens.lens (\InstanceMarketOptionsRequest' {marketType} -> marketType) (\s@InstanceMarketOptionsRequest' {} a -> s {marketType = a} :: InstanceMarketOptionsRequest)

-- | The options for Spot Instances.
instanceMarketOptionsRequest_spotOptions :: Lens.Lens' InstanceMarketOptionsRequest (Core.Maybe SpotMarketOptions)
instanceMarketOptionsRequest_spotOptions = Lens.lens (\InstanceMarketOptionsRequest' {spotOptions} -> spotOptions) (\s@InstanceMarketOptionsRequest' {} a -> s {spotOptions = a} :: InstanceMarketOptionsRequest)

instance Core.Hashable InstanceMarketOptionsRequest

instance Core.NFData InstanceMarketOptionsRequest

instance Core.ToQuery InstanceMarketOptionsRequest where
  toQuery InstanceMarketOptionsRequest' {..} =
    Core.mconcat
      [ "MarketType" Core.=: marketType,
        "SpotOptions" Core.=: spotOptions
      ]
