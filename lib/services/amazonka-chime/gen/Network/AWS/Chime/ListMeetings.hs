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
-- Module      : Network.AWS.Chime.ListMeetings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists up to 100 active Amazon Chime SDK meetings. For more information
-- about the Amazon Chime SDK, see
-- <https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html Using the Amazon Chime SDK>
-- in the /Amazon Chime Developer Guide/.
module Network.AWS.Chime.ListMeetings
  ( -- * Creating a Request
    ListMeetings (..),
    newListMeetings,

    -- * Request Lenses
    listMeetings_nextToken,
    listMeetings_maxResults,

    -- * Destructuring the Response
    ListMeetingsResponse (..),
    newListMeetingsResponse,

    -- * Response Lenses
    listMeetingsResponse_meetings,
    listMeetingsResponse_nextToken,
    listMeetingsResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListMeetings' smart constructor.
data ListMeetings = ListMeetings'
  { -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMeetings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMeetings_nextToken' - The token to use to retrieve the next page of results.
--
-- 'maxResults', 'listMeetings_maxResults' - The maximum number of results to return in a single call.
newListMeetings ::
  ListMeetings
newListMeetings =
  ListMeetings'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to use to retrieve the next page of results.
listMeetings_nextToken :: Lens.Lens' ListMeetings (Prelude.Maybe Prelude.Text)
listMeetings_nextToken = Lens.lens (\ListMeetings' {nextToken} -> nextToken) (\s@ListMeetings' {} a -> s {nextToken = a} :: ListMeetings)

-- | The maximum number of results to return in a single call.
listMeetings_maxResults :: Lens.Lens' ListMeetings (Prelude.Maybe Prelude.Natural)
listMeetings_maxResults = Lens.lens (\ListMeetings' {maxResults} -> maxResults) (\s@ListMeetings' {} a -> s {maxResults = a} :: ListMeetings)

instance Core.AWSRequest ListMeetings where
  type AWSResponse ListMeetings = ListMeetingsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMeetingsResponse'
            Prelude.<$> (x Core..?> "Meetings" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListMeetings

instance Prelude.NFData ListMeetings

instance Core.ToHeaders ListMeetings where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListMeetings where
  toPath = Prelude.const "/meetings"

instance Core.ToQuery ListMeetings where
  toQuery ListMeetings' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListMeetingsResponse' smart constructor.
data ListMeetingsResponse = ListMeetingsResponse'
  { -- | The Amazon Chime SDK meeting information.
    meetings :: Prelude.Maybe [Meeting],
    -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMeetingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meetings', 'listMeetingsResponse_meetings' - The Amazon Chime SDK meeting information.
--
-- 'nextToken', 'listMeetingsResponse_nextToken' - The token to use to retrieve the next page of results.
--
-- 'httpStatus', 'listMeetingsResponse_httpStatus' - The response's http status code.
newListMeetingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListMeetingsResponse
newListMeetingsResponse pHttpStatus_ =
  ListMeetingsResponse'
    { meetings = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Chime SDK meeting information.
listMeetingsResponse_meetings :: Lens.Lens' ListMeetingsResponse (Prelude.Maybe [Meeting])
listMeetingsResponse_meetings = Lens.lens (\ListMeetingsResponse' {meetings} -> meetings) (\s@ListMeetingsResponse' {} a -> s {meetings = a} :: ListMeetingsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use to retrieve the next page of results.
listMeetingsResponse_nextToken :: Lens.Lens' ListMeetingsResponse (Prelude.Maybe Prelude.Text)
listMeetingsResponse_nextToken = Lens.lens (\ListMeetingsResponse' {nextToken} -> nextToken) (\s@ListMeetingsResponse' {} a -> s {nextToken = a} :: ListMeetingsResponse)

-- | The response's http status code.
listMeetingsResponse_httpStatus :: Lens.Lens' ListMeetingsResponse Prelude.Int
listMeetingsResponse_httpStatus = Lens.lens (\ListMeetingsResponse' {httpStatus} -> httpStatus) (\s@ListMeetingsResponse' {} a -> s {httpStatus = a} :: ListMeetingsResponse)

instance Prelude.NFData ListMeetingsResponse
