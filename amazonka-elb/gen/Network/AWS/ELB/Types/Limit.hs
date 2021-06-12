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
-- Module      : Network.AWS.ELB.Types.Limit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.Limit where

import qualified Network.AWS.Core as Core
import Network.AWS.ELB.Internal
import qualified Network.AWS.Lens as Lens

-- | Information about an Elastic Load Balancing resource limit for your AWS
-- account.
--
-- /See:/ 'newLimit' smart constructor.
data Limit = Limit'
  { -- | The name of the limit. The possible values are:
    --
    -- -   classic-listeners
    --
    -- -   classic-load-balancers
    --
    -- -   classic-registered-instances
    name :: Core.Maybe Core.Text,
    -- | The maximum value of the limit.
    max :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Limit' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'limit_name' - The name of the limit. The possible values are:
--
-- -   classic-listeners
--
-- -   classic-load-balancers
--
-- -   classic-registered-instances
--
-- 'max', 'limit_max' - The maximum value of the limit.
newLimit ::
  Limit
newLimit =
  Limit' {name = Core.Nothing, max = Core.Nothing}

-- | The name of the limit. The possible values are:
--
-- -   classic-listeners
--
-- -   classic-load-balancers
--
-- -   classic-registered-instances
limit_name :: Lens.Lens' Limit (Core.Maybe Core.Text)
limit_name = Lens.lens (\Limit' {name} -> name) (\s@Limit' {} a -> s {name = a} :: Limit)

-- | The maximum value of the limit.
limit_max :: Lens.Lens' Limit (Core.Maybe Core.Text)
limit_max = Lens.lens (\Limit' {max} -> max) (\s@Limit' {} a -> s {max = a} :: Limit)

instance Core.FromXML Limit where
  parseXML x =
    Limit'
      Core.<$> (x Core..@? "Name") Core.<*> (x Core..@? "Max")

instance Core.Hashable Limit

instance Core.NFData Limit
