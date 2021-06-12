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
-- Module      : Network.AWS.CloudFront.Types.CookieNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CookieNames where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Contains a list of cookie names.
--
-- /See:/ 'newCookieNames' smart constructor.
data CookieNames = CookieNames'
  { -- | A list of cookie names.
    items :: Core.Maybe [Core.Text],
    -- | The number of cookie names in the @Items@ list.
    quantity :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CookieNames' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'cookieNames_items' - A list of cookie names.
--
-- 'quantity', 'cookieNames_quantity' - The number of cookie names in the @Items@ list.
newCookieNames ::
  -- | 'quantity'
  Core.Int ->
  CookieNames
newCookieNames pQuantity_ =
  CookieNames'
    { items = Core.Nothing,
      quantity = pQuantity_
    }

-- | A list of cookie names.
cookieNames_items :: Lens.Lens' CookieNames (Core.Maybe [Core.Text])
cookieNames_items = Lens.lens (\CookieNames' {items} -> items) (\s@CookieNames' {} a -> s {items = a} :: CookieNames) Core.. Lens.mapping Lens._Coerce

-- | The number of cookie names in the @Items@ list.
cookieNames_quantity :: Lens.Lens' CookieNames Core.Int
cookieNames_quantity = Lens.lens (\CookieNames' {quantity} -> quantity) (\s@CookieNames' {} a -> s {quantity = a} :: CookieNames)

instance Core.FromXML CookieNames where
  parseXML x =
    CookieNames'
      Core.<$> ( x Core..@? "Items" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "Name")
               )
      Core.<*> (x Core..@ "Quantity")

instance Core.Hashable CookieNames

instance Core.NFData CookieNames

instance Core.ToXML CookieNames where
  toXML CookieNames' {..} =
    Core.mconcat
      [ "Items"
          Core.@= Core.toXML (Core.toXMLList "Name" Core.<$> items),
        "Quantity" Core.@= quantity
      ]
