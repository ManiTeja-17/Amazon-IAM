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
-- Module      : Network.AWS.Pinpoint.Types.JourneysResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneysResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.JourneyResponse

-- | Provides information about the status, configuration, and other settings
-- for all the journeys that are associated with an application.
--
-- /See:/ 'newJourneysResponse' smart constructor.
data JourneysResponse = JourneysResponse'
  { -- | The string to use in a subsequent request to get the next page of
    -- results in a paginated response. This value is null if there are no
    -- additional pages.
    nextToken :: Core.Maybe Core.Text,
    -- | An array of responses, one for each journey that\'s associated with the
    -- application.
    item :: [JourneyResponse]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'JourneysResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'journeysResponse_nextToken' - The string to use in a subsequent request to get the next page of
-- results in a paginated response. This value is null if there are no
-- additional pages.
--
-- 'item', 'journeysResponse_item' - An array of responses, one for each journey that\'s associated with the
-- application.
newJourneysResponse ::
  JourneysResponse
newJourneysResponse =
  JourneysResponse'
    { nextToken = Core.Nothing,
      item = Core.mempty
    }

-- | The string to use in a subsequent request to get the next page of
-- results in a paginated response. This value is null if there are no
-- additional pages.
journeysResponse_nextToken :: Lens.Lens' JourneysResponse (Core.Maybe Core.Text)
journeysResponse_nextToken = Lens.lens (\JourneysResponse' {nextToken} -> nextToken) (\s@JourneysResponse' {} a -> s {nextToken = a} :: JourneysResponse)

-- | An array of responses, one for each journey that\'s associated with the
-- application.
journeysResponse_item :: Lens.Lens' JourneysResponse [JourneyResponse]
journeysResponse_item = Lens.lens (\JourneysResponse' {item} -> item) (\s@JourneysResponse' {} a -> s {item = a} :: JourneysResponse) Core.. Lens._Coerce

instance Core.FromJSON JourneysResponse where
  parseJSON =
    Core.withObject
      "JourneysResponse"
      ( \x ->
          JourneysResponse'
            Core.<$> (x Core..:? "NextToken")
            Core.<*> (x Core..:? "Item" Core..!= Core.mempty)
      )

instance Core.Hashable JourneysResponse

instance Core.NFData JourneysResponse
