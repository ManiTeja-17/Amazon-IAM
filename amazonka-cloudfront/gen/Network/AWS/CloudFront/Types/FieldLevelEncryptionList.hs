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
-- Module      : Network.AWS.CloudFront.Types.FieldLevelEncryptionList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.FieldLevelEncryptionList where

import Network.AWS.CloudFront.Types.FieldLevelEncryptionSummary
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | List of field-level encrpytion configurations.
--
-- /See:/ 'newFieldLevelEncryptionList' smart constructor.
data FieldLevelEncryptionList = FieldLevelEncryptionList'
  { -- | An array of field-level encryption items.
    items :: Core.Maybe [FieldLevelEncryptionSummary],
    -- | If there are more elements to be listed, this element is present and
    -- contains the value that you can use for the @Marker@ request parameter
    -- to continue listing your configurations where you left off.
    nextMarker :: Core.Maybe Core.Text,
    -- | The maximum number of elements you want in the response body.
    maxItems :: Core.Int,
    -- | The number of field-level encryption items.
    quantity :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'FieldLevelEncryptionList' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'fieldLevelEncryptionList_items' - An array of field-level encryption items.
--
-- 'nextMarker', 'fieldLevelEncryptionList_nextMarker' - If there are more elements to be listed, this element is present and
-- contains the value that you can use for the @Marker@ request parameter
-- to continue listing your configurations where you left off.
--
-- 'maxItems', 'fieldLevelEncryptionList_maxItems' - The maximum number of elements you want in the response body.
--
-- 'quantity', 'fieldLevelEncryptionList_quantity' - The number of field-level encryption items.
newFieldLevelEncryptionList ::
  -- | 'maxItems'
  Core.Int ->
  -- | 'quantity'
  Core.Int ->
  FieldLevelEncryptionList
newFieldLevelEncryptionList pMaxItems_ pQuantity_ =
  FieldLevelEncryptionList'
    { items = Core.Nothing,
      nextMarker = Core.Nothing,
      maxItems = pMaxItems_,
      quantity = pQuantity_
    }

-- | An array of field-level encryption items.
fieldLevelEncryptionList_items :: Lens.Lens' FieldLevelEncryptionList (Core.Maybe [FieldLevelEncryptionSummary])
fieldLevelEncryptionList_items = Lens.lens (\FieldLevelEncryptionList' {items} -> items) (\s@FieldLevelEncryptionList' {} a -> s {items = a} :: FieldLevelEncryptionList) Core.. Lens.mapping Lens._Coerce

-- | If there are more elements to be listed, this element is present and
-- contains the value that you can use for the @Marker@ request parameter
-- to continue listing your configurations where you left off.
fieldLevelEncryptionList_nextMarker :: Lens.Lens' FieldLevelEncryptionList (Core.Maybe Core.Text)
fieldLevelEncryptionList_nextMarker = Lens.lens (\FieldLevelEncryptionList' {nextMarker} -> nextMarker) (\s@FieldLevelEncryptionList' {} a -> s {nextMarker = a} :: FieldLevelEncryptionList)

-- | The maximum number of elements you want in the response body.
fieldLevelEncryptionList_maxItems :: Lens.Lens' FieldLevelEncryptionList Core.Int
fieldLevelEncryptionList_maxItems = Lens.lens (\FieldLevelEncryptionList' {maxItems} -> maxItems) (\s@FieldLevelEncryptionList' {} a -> s {maxItems = a} :: FieldLevelEncryptionList)

-- | The number of field-level encryption items.
fieldLevelEncryptionList_quantity :: Lens.Lens' FieldLevelEncryptionList Core.Int
fieldLevelEncryptionList_quantity = Lens.lens (\FieldLevelEncryptionList' {quantity} -> quantity) (\s@FieldLevelEncryptionList' {} a -> s {quantity = a} :: FieldLevelEncryptionList)

instance Core.FromXML FieldLevelEncryptionList where
  parseXML x =
    FieldLevelEncryptionList'
      Core.<$> ( x Core..@? "Items" Core..!@ Core.mempty
                   Core.>>= Core.may
                     (Core.parseXMLList "FieldLevelEncryptionSummary")
               )
      Core.<*> (x Core..@? "NextMarker")
      Core.<*> (x Core..@ "MaxItems")
      Core.<*> (x Core..@ "Quantity")

instance Core.Hashable FieldLevelEncryptionList

instance Core.NFData FieldLevelEncryptionList
