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
-- Module      : Network.AWS.EC2.Types.PriceScheduleSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PriceScheduleSpecification where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CurrencyCodeValues
import qualified Network.AWS.Lens as Lens

-- | Describes the price for a Reserved Instance.
--
-- /See:/ 'newPriceScheduleSpecification' smart constructor.
data PriceScheduleSpecification = PriceScheduleSpecification'
  { -- | The currency for transacting the Reserved Instance resale. At this time,
    -- the only supported currency is @USD@.
    currencyCode :: Core.Maybe CurrencyCodeValues,
    -- | The number of months remaining in the reservation. For example, 2 is the
    -- second to the last month before the capacity reservation expires.
    term :: Core.Maybe Core.Integer,
    -- | The fixed price for the term.
    price :: Core.Maybe Core.Double
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PriceScheduleSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'currencyCode', 'priceScheduleSpecification_currencyCode' - The currency for transacting the Reserved Instance resale. At this time,
-- the only supported currency is @USD@.
--
-- 'term', 'priceScheduleSpecification_term' - The number of months remaining in the reservation. For example, 2 is the
-- second to the last month before the capacity reservation expires.
--
-- 'price', 'priceScheduleSpecification_price' - The fixed price for the term.
newPriceScheduleSpecification ::
  PriceScheduleSpecification
newPriceScheduleSpecification =
  PriceScheduleSpecification'
    { currencyCode =
        Core.Nothing,
      term = Core.Nothing,
      price = Core.Nothing
    }

-- | The currency for transacting the Reserved Instance resale. At this time,
-- the only supported currency is @USD@.
priceScheduleSpecification_currencyCode :: Lens.Lens' PriceScheduleSpecification (Core.Maybe CurrencyCodeValues)
priceScheduleSpecification_currencyCode = Lens.lens (\PriceScheduleSpecification' {currencyCode} -> currencyCode) (\s@PriceScheduleSpecification' {} a -> s {currencyCode = a} :: PriceScheduleSpecification)

-- | The number of months remaining in the reservation. For example, 2 is the
-- second to the last month before the capacity reservation expires.
priceScheduleSpecification_term :: Lens.Lens' PriceScheduleSpecification (Core.Maybe Core.Integer)
priceScheduleSpecification_term = Lens.lens (\PriceScheduleSpecification' {term} -> term) (\s@PriceScheduleSpecification' {} a -> s {term = a} :: PriceScheduleSpecification)

-- | The fixed price for the term.
priceScheduleSpecification_price :: Lens.Lens' PriceScheduleSpecification (Core.Maybe Core.Double)
priceScheduleSpecification_price = Lens.lens (\PriceScheduleSpecification' {price} -> price) (\s@PriceScheduleSpecification' {} a -> s {price = a} :: PriceScheduleSpecification)

instance Core.Hashable PriceScheduleSpecification

instance Core.NFData PriceScheduleSpecification

instance Core.ToQuery PriceScheduleSpecification where
  toQuery PriceScheduleSpecification' {..} =
    Core.mconcat
      [ "CurrencyCode" Core.=: currencyCode,
        "Term" Core.=: term,
        "Price" Core.=: price
      ]
