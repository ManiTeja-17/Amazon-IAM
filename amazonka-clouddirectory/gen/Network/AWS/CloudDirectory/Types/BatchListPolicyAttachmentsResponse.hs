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
-- Module      : Network.AWS.CloudDirectory.Types.BatchListPolicyAttachmentsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchListPolicyAttachmentsResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Represents the output of a ListPolicyAttachments response operation.
--
-- /See:/ 'newBatchListPolicyAttachmentsResponse' smart constructor.
data BatchListPolicyAttachmentsResponse = BatchListPolicyAttachmentsResponse'
  { -- | The pagination token.
    nextToken :: Core.Maybe Core.Text,
    -- | A list of @ObjectIdentifiers@ to which the policy is attached.
    objectIdentifiers :: Core.Maybe [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchListPolicyAttachmentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'batchListPolicyAttachmentsResponse_nextToken' - The pagination token.
--
-- 'objectIdentifiers', 'batchListPolicyAttachmentsResponse_objectIdentifiers' - A list of @ObjectIdentifiers@ to which the policy is attached.
newBatchListPolicyAttachmentsResponse ::
  BatchListPolicyAttachmentsResponse
newBatchListPolicyAttachmentsResponse =
  BatchListPolicyAttachmentsResponse'
    { nextToken =
        Core.Nothing,
      objectIdentifiers = Core.Nothing
    }

-- | The pagination token.
batchListPolicyAttachmentsResponse_nextToken :: Lens.Lens' BatchListPolicyAttachmentsResponse (Core.Maybe Core.Text)
batchListPolicyAttachmentsResponse_nextToken = Lens.lens (\BatchListPolicyAttachmentsResponse' {nextToken} -> nextToken) (\s@BatchListPolicyAttachmentsResponse' {} a -> s {nextToken = a} :: BatchListPolicyAttachmentsResponse)

-- | A list of @ObjectIdentifiers@ to which the policy is attached.
batchListPolicyAttachmentsResponse_objectIdentifiers :: Lens.Lens' BatchListPolicyAttachmentsResponse (Core.Maybe [Core.Text])
batchListPolicyAttachmentsResponse_objectIdentifiers = Lens.lens (\BatchListPolicyAttachmentsResponse' {objectIdentifiers} -> objectIdentifiers) (\s@BatchListPolicyAttachmentsResponse' {} a -> s {objectIdentifiers = a} :: BatchListPolicyAttachmentsResponse) Core.. Lens.mapping Lens._Coerce

instance
  Core.FromJSON
    BatchListPolicyAttachmentsResponse
  where
  parseJSON =
    Core.withObject
      "BatchListPolicyAttachmentsResponse"
      ( \x ->
          BatchListPolicyAttachmentsResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> ( x Core..:? "ObjectIdentifiers"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.Hashable
    BatchListPolicyAttachmentsResponse

instance
  Core.NFData
    BatchListPolicyAttachmentsResponse
