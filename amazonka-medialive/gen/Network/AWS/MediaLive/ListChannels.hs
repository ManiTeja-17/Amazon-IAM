{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.ListChannels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Produces list of channels that have been created
--
-- This operation returns paginated results.
module Network.AWS.MediaLive.ListChannels
  ( -- * Creating a Request
    ListChannels (..),
    newListChannels,

    -- * Request Lenses
    listChannels_nextToken,
    listChannels_maxResults,

    -- * Destructuring the Response
    ListChannelsResponse (..),
    newListChannelsResponse,

    -- * Response Lenses
    listChannelsResponse_nextToken,
    listChannelsResponse_channels,
    listChannelsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Placeholder documentation for ListChannelsRequest
--
-- /See:/ 'newListChannels' smart constructor.
data ListChannels = ListChannels'
  { nextToken :: Core.Maybe Core.Text,
    maxResults :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListChannels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannels_nextToken' - Undocumented member.
--
-- 'maxResults', 'listChannels_maxResults' - Undocumented member.
newListChannels ::
  ListChannels
newListChannels =
  ListChannels'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing
    }

-- | Undocumented member.
listChannels_nextToken :: Lens.Lens' ListChannels (Core.Maybe Core.Text)
listChannels_nextToken = Lens.lens (\ListChannels' {nextToken} -> nextToken) (\s@ListChannels' {} a -> s {nextToken = a} :: ListChannels)

-- | Undocumented member.
listChannels_maxResults :: Lens.Lens' ListChannels (Core.Maybe Core.Natural)
listChannels_maxResults = Lens.lens (\ListChannels' {maxResults} -> maxResults) (\s@ListChannels' {} a -> s {maxResults = a} :: ListChannels)

instance Core.AWSPager ListChannels where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listChannelsResponse_nextToken Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listChannelsResponse_channels Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listChannels_nextToken
          Lens..~ rs
          Lens.^? listChannelsResponse_nextToken Core.. Lens._Just

instance Core.AWSRequest ListChannels where
  type AWSResponse ListChannels = ListChannelsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListChannelsResponse'
            Core.<$> (x Core..?> "nextToken")
            Core.<*> (x Core..?> "channels" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListChannels

instance Core.NFData ListChannels

instance Core.ToHeaders ListChannels where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath ListChannels where
  toPath = Core.const "/prod/channels"

instance Core.ToQuery ListChannels where
  toQuery ListChannels' {..} =
    Core.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | Placeholder documentation for ListChannelsResponse
--
-- /See:/ 'newListChannelsResponse' smart constructor.
data ListChannelsResponse = ListChannelsResponse'
  { nextToken :: Core.Maybe Core.Text,
    channels :: Core.Maybe [ChannelSummary],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListChannelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listChannelsResponse_nextToken' - Undocumented member.
--
-- 'channels', 'listChannelsResponse_channels' - Undocumented member.
--
-- 'httpStatus', 'listChannelsResponse_httpStatus' - The response's http status code.
newListChannelsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListChannelsResponse
newListChannelsResponse pHttpStatus_ =
  ListChannelsResponse'
    { nextToken = Core.Nothing,
      channels = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listChannelsResponse_nextToken :: Lens.Lens' ListChannelsResponse (Core.Maybe Core.Text)
listChannelsResponse_nextToken = Lens.lens (\ListChannelsResponse' {nextToken} -> nextToken) (\s@ListChannelsResponse' {} a -> s {nextToken = a} :: ListChannelsResponse)

-- | Undocumented member.
listChannelsResponse_channels :: Lens.Lens' ListChannelsResponse (Core.Maybe [ChannelSummary])
listChannelsResponse_channels = Lens.lens (\ListChannelsResponse' {channels} -> channels) (\s@ListChannelsResponse' {} a -> s {channels = a} :: ListChannelsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listChannelsResponse_httpStatus :: Lens.Lens' ListChannelsResponse Core.Int
listChannelsResponse_httpStatus = Lens.lens (\ListChannelsResponse' {httpStatus} -> httpStatus) (\s@ListChannelsResponse' {} a -> s {httpStatus = a} :: ListChannelsResponse)

instance Core.NFData ListChannelsResponse
