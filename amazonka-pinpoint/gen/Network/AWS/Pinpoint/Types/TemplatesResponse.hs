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
-- Module      : Network.AWS.Pinpoint.Types.TemplatesResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.TemplatesResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.TemplateResponse

-- | Provides information about all the message templates that are associated
-- with your Amazon Pinpoint account.
--
-- /See:/ 'newTemplatesResponse' smart constructor.
data TemplatesResponse = TemplatesResponse'
  { -- | The string to use in a subsequent request to get the next page of
    -- results in a paginated response. This value is null if there are no
    -- additional pages.
    nextToken :: Core.Maybe Core.Text,
    -- | An array of responses, one for each message template that\'s associated
    -- with your Amazon Pinpoint account and meets any filter criteria that you
    -- specified in the request.
    item :: [TemplateResponse]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TemplatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'templatesResponse_nextToken' - The string to use in a subsequent request to get the next page of
-- results in a paginated response. This value is null if there are no
-- additional pages.
--
-- 'item', 'templatesResponse_item' - An array of responses, one for each message template that\'s associated
-- with your Amazon Pinpoint account and meets any filter criteria that you
-- specified in the request.
newTemplatesResponse ::
  TemplatesResponse
newTemplatesResponse =
  TemplatesResponse'
    { nextToken = Core.Nothing,
      item = Core.mempty
    }

-- | The string to use in a subsequent request to get the next page of
-- results in a paginated response. This value is null if there are no
-- additional pages.
templatesResponse_nextToken :: Lens.Lens' TemplatesResponse (Core.Maybe Core.Text)
templatesResponse_nextToken = Lens.lens (\TemplatesResponse' {nextToken} -> nextToken) (\s@TemplatesResponse' {} a -> s {nextToken = a} :: TemplatesResponse)

-- | An array of responses, one for each message template that\'s associated
-- with your Amazon Pinpoint account and meets any filter criteria that you
-- specified in the request.
templatesResponse_item :: Lens.Lens' TemplatesResponse [TemplateResponse]
templatesResponse_item = Lens.lens (\TemplatesResponse' {item} -> item) (\s@TemplatesResponse' {} a -> s {item = a} :: TemplatesResponse) Core.. Lens._Coerce

instance Core.FromJSON TemplatesResponse where
  parseJSON =
    Core.withObject
      "TemplatesResponse"
      ( \x ->
          TemplatesResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "Item" Core..!= Core.mempty)
      )

instance Core.Hashable TemplatesResponse

instance Core.NFData TemplatesResponse
