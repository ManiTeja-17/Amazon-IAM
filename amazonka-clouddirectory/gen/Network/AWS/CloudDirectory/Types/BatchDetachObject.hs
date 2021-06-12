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
-- Module      : Network.AWS.CloudDirectory.Types.BatchDetachObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchDetachObject where

import Network.AWS.CloudDirectory.Types.ObjectReference
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Represents the output of a DetachObject operation.
--
-- /See:/ 'newBatchDetachObject' smart constructor.
data BatchDetachObject = BatchDetachObject'
  { -- | The batch reference name. See
    -- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html Transaction Support>
    -- for more information.
    batchReferenceName :: Core.Maybe Core.Text,
    -- | Parent reference from which the object with the specified link name is
    -- detached.
    parentReference :: ObjectReference,
    -- | The name of the link.
    linkName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchDetachObject' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'batchReferenceName', 'batchDetachObject_batchReferenceName' - The batch reference name. See
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html Transaction Support>
-- for more information.
--
-- 'parentReference', 'batchDetachObject_parentReference' - Parent reference from which the object with the specified link name is
-- detached.
--
-- 'linkName', 'batchDetachObject_linkName' - The name of the link.
newBatchDetachObject ::
  -- | 'parentReference'
  ObjectReference ->
  -- | 'linkName'
  Core.Text ->
  BatchDetachObject
newBatchDetachObject pParentReference_ pLinkName_ =
  BatchDetachObject'
    { batchReferenceName =
        Core.Nothing,
      parentReference = pParentReference_,
      linkName = pLinkName_
    }

-- | The batch reference name. See
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html Transaction Support>
-- for more information.
batchDetachObject_batchReferenceName :: Lens.Lens' BatchDetachObject (Core.Maybe Core.Text)
batchDetachObject_batchReferenceName = Lens.lens (\BatchDetachObject' {batchReferenceName} -> batchReferenceName) (\s@BatchDetachObject' {} a -> s {batchReferenceName = a} :: BatchDetachObject)

-- | Parent reference from which the object with the specified link name is
-- detached.
batchDetachObject_parentReference :: Lens.Lens' BatchDetachObject ObjectReference
batchDetachObject_parentReference = Lens.lens (\BatchDetachObject' {parentReference} -> parentReference) (\s@BatchDetachObject' {} a -> s {parentReference = a} :: BatchDetachObject)

-- | The name of the link.
batchDetachObject_linkName :: Lens.Lens' BatchDetachObject Core.Text
batchDetachObject_linkName = Lens.lens (\BatchDetachObject' {linkName} -> linkName) (\s@BatchDetachObject' {} a -> s {linkName = a} :: BatchDetachObject)

instance Core.Hashable BatchDetachObject

instance Core.NFData BatchDetachObject

instance Core.ToJSON BatchDetachObject where
  toJSON BatchDetachObject' {..} =
    Core.object
      ( Core.catMaybes
          [ ("BatchReferenceName" Core..=)
              Core.<$> batchReferenceName,
            Core.Just
              ("ParentReference" Core..= parentReference),
            Core.Just ("LinkName" Core..= linkName)
          ]
      )
