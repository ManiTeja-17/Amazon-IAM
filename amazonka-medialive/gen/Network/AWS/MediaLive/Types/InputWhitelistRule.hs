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
-- Module      : Network.AWS.MediaLive.Types.InputWhitelistRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputWhitelistRule where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Whitelist rule
--
-- /See:/ 'newInputWhitelistRule' smart constructor.
data InputWhitelistRule = InputWhitelistRule'
  { -- | The IPv4 CIDR that\'s whitelisted.
    cidr :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'InputWhitelistRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cidr', 'inputWhitelistRule_cidr' - The IPv4 CIDR that\'s whitelisted.
newInputWhitelistRule ::
  InputWhitelistRule
newInputWhitelistRule =
  InputWhitelistRule' {cidr = Core.Nothing}

-- | The IPv4 CIDR that\'s whitelisted.
inputWhitelistRule_cidr :: Lens.Lens' InputWhitelistRule (Core.Maybe Core.Text)
inputWhitelistRule_cidr = Lens.lens (\InputWhitelistRule' {cidr} -> cidr) (\s@InputWhitelistRule' {} a -> s {cidr = a} :: InputWhitelistRule)

instance Core.FromJSON InputWhitelistRule where
  parseJSON =
    Core.withObject
      "InputWhitelistRule"
      ( \x ->
          InputWhitelistRule' Core.<$> (x Core..:? "cidr")
      )

instance Core.Hashable InputWhitelistRule

instance Core.NFData InputWhitelistRule
