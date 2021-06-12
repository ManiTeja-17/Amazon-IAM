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
-- Module      : Network.AWS.SSM.Types.DocumentMetadataResponseInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentMetadataResponseInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SSM.Types.DocumentReviewerResponseSource

-- | Details about the response to a document review request.
--
-- /See:/ 'newDocumentMetadataResponseInfo' smart constructor.
data DocumentMetadataResponseInfo = DocumentMetadataResponseInfo'
  { -- | Details about a reviewer\'s response to a document review request.
    reviewerResponse :: Core.Maybe [DocumentReviewerResponseSource]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DocumentMetadataResponseInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reviewerResponse', 'documentMetadataResponseInfo_reviewerResponse' - Details about a reviewer\'s response to a document review request.
newDocumentMetadataResponseInfo ::
  DocumentMetadataResponseInfo
newDocumentMetadataResponseInfo =
  DocumentMetadataResponseInfo'
    { reviewerResponse =
        Core.Nothing
    }

-- | Details about a reviewer\'s response to a document review request.
documentMetadataResponseInfo_reviewerResponse :: Lens.Lens' DocumentMetadataResponseInfo (Core.Maybe [DocumentReviewerResponseSource])
documentMetadataResponseInfo_reviewerResponse = Lens.lens (\DocumentMetadataResponseInfo' {reviewerResponse} -> reviewerResponse) (\s@DocumentMetadataResponseInfo' {} a -> s {reviewerResponse = a} :: DocumentMetadataResponseInfo) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON DocumentMetadataResponseInfo where
  parseJSON =
    Core.withObject
      "DocumentMetadataResponseInfo"
      ( \x ->
          DocumentMetadataResponseInfo'
            Core.<$> (x Core..:? "ReviewerResponse" Core..!= Core.mempty)
      )

instance Core.Hashable DocumentMetadataResponseInfo

instance Core.NFData DocumentMetadataResponseInfo
