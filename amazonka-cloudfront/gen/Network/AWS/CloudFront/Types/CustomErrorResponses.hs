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
-- Module      : Network.AWS.CloudFront.Types.CustomErrorResponses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CustomErrorResponses where

import Network.AWS.CloudFront.Types.CustomErrorResponse
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | A complex type that controls:
--
-- -   Whether CloudFront replaces HTTP status codes in the 4xx and 5xx
--     range with custom error messages before returning the response to
--     the viewer.
--
-- -   How long CloudFront caches HTTP status codes in the 4xx and 5xx
--     range.
--
-- For more information about custom error pages, see
-- <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html Customizing Error Responses>
-- in the /Amazon CloudFront Developer Guide/.
--
-- /See:/ 'newCustomErrorResponses' smart constructor.
data CustomErrorResponses = CustomErrorResponses'
  { -- | A complex type that contains a @CustomErrorResponse@ element for each
    -- HTTP status code for which you want to specify a custom error page
    -- and\/or a caching duration.
    items :: Core.Maybe [CustomErrorResponse],
    -- | The number of HTTP status codes for which you want to specify a custom
    -- error page and\/or a caching duration. If @Quantity@ is @0@, you can
    -- omit @Items@.
    quantity :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CustomErrorResponses' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'customErrorResponses_items' - A complex type that contains a @CustomErrorResponse@ element for each
-- HTTP status code for which you want to specify a custom error page
-- and\/or a caching duration.
--
-- 'quantity', 'customErrorResponses_quantity' - The number of HTTP status codes for which you want to specify a custom
-- error page and\/or a caching duration. If @Quantity@ is @0@, you can
-- omit @Items@.
newCustomErrorResponses ::
  -- | 'quantity'
  Core.Int ->
  CustomErrorResponses
newCustomErrorResponses pQuantity_ =
  CustomErrorResponses'
    { items = Core.Nothing,
      quantity = pQuantity_
    }

-- | A complex type that contains a @CustomErrorResponse@ element for each
-- HTTP status code for which you want to specify a custom error page
-- and\/or a caching duration.
customErrorResponses_items :: Lens.Lens' CustomErrorResponses (Core.Maybe [CustomErrorResponse])
customErrorResponses_items = Lens.lens (\CustomErrorResponses' {items} -> items) (\s@CustomErrorResponses' {} a -> s {items = a} :: CustomErrorResponses) Core.. Lens.mapping Lens._Coerce

-- | The number of HTTP status codes for which you want to specify a custom
-- error page and\/or a caching duration. If @Quantity@ is @0@, you can
-- omit @Items@.
customErrorResponses_quantity :: Lens.Lens' CustomErrorResponses Core.Int
customErrorResponses_quantity = Lens.lens (\CustomErrorResponses' {quantity} -> quantity) (\s@CustomErrorResponses' {} a -> s {quantity = a} :: CustomErrorResponses)

instance Core.FromXML CustomErrorResponses where
  parseXML x =
    CustomErrorResponses'
      Core.<$> ( x Core..@? "Items" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "CustomErrorResponse")
               )
      Core.<*> (x Core..@ "Quantity")

instance Core.Hashable CustomErrorResponses

instance Core.NFData CustomErrorResponses

instance Core.ToXML CustomErrorResponses where
  toXML CustomErrorResponses' {..} =
    Core.mconcat
      [ "Items"
          Core.@= Core.toXML
            ( Core.toXMLList "CustomErrorResponse"
                Core.<$> items
            ),
        "Quantity" Core.@= quantity
      ]
