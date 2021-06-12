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
-- Module      : Network.AWS.Organizations.ListHandshakesForOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the handshakes that are associated with the organization that the
-- requesting user is part of. The @ListHandshakesForOrganization@
-- operation returns a list of handshake structures. Each structure
-- contains details and status about a handshake.
--
-- Handshakes that are @ACCEPTED@, @DECLINED@, or @CANCELED@ appear in the
-- results of this API for only 30 days after changing to that state. After
-- that, they\'re deleted and no longer accessible.
--
-- Always check the @NextToken@ response parameter for a @null@ value when
-- calling a @List*@ operation. These operations can occasionally return an
-- empty set of results even when there are more results available. The
-- @NextToken@ response parameter value is @null@ /only/ when there are no
-- more results to display.
--
-- This operation can be called only from the organization\'s management
-- account or by a member account that is a delegated administrator for an
-- AWS service.
--
-- This operation returns paginated results.
module Network.AWS.Organizations.ListHandshakesForOrganization
  ( -- * Creating a Request
    ListHandshakesForOrganization (..),
    newListHandshakesForOrganization,

    -- * Request Lenses
    listHandshakesForOrganization_nextToken,
    listHandshakesForOrganization_maxResults,
    listHandshakesForOrganization_filter,

    -- * Destructuring the Response
    ListHandshakesForOrganizationResponse (..),
    newListHandshakesForOrganizationResponse,

    -- * Response Lenses
    listHandshakesForOrganizationResponse_handshakes,
    listHandshakesForOrganizationResponse_nextToken,
    listHandshakesForOrganizationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Organizations.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListHandshakesForOrganization' smart constructor.
data ListHandshakesForOrganization = ListHandshakesForOrganization'
  { -- | The parameter for receiving additional results if you receive a
    -- @NextToken@ response in a previous request. A @NextToken@ response
    -- indicates that more output is available. Set this parameter to the value
    -- of the previous call\'s @NextToken@ response to indicate where the
    -- output should continue from.
    nextToken :: Core.Maybe Core.Text,
    -- | The total number of results that you want included on each page of the
    -- response. If you do not include this parameter, it defaults to a value
    -- that is specific to the operation. If additional items exist beyond the
    -- maximum you specify, the @NextToken@ response element is present and has
    -- a value (is not null). Include that value as the @NextToken@ request
    -- parameter in the next call to the operation to get the next part of the
    -- results. Note that Organizations might return fewer results than the
    -- maximum even when there are more results available. You should check
    -- @NextToken@ after every operation to ensure that you receive all of the
    -- results.
    maxResults :: Core.Maybe Core.Natural,
    -- | A filter of the handshakes that you want included in the response. The
    -- default is all types. Use the @ActionType@ element to limit the output
    -- to only a specified type, such as @INVITE@, @ENABLE-ALL-FEATURES@, or
    -- @APPROVE-ALL-FEATURES@. Alternatively, for the @ENABLE-ALL-FEATURES@
    -- handshake that generates a separate child handshake for each member
    -- account, you can specify the @ParentHandshakeId@ to see only the
    -- handshakes that were generated by that parent request.
    filter' :: Core.Maybe HandshakeFilter
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListHandshakesForOrganization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listHandshakesForOrganization_nextToken' - The parameter for receiving additional results if you receive a
-- @NextToken@ response in a previous request. A @NextToken@ response
-- indicates that more output is available. Set this parameter to the value
-- of the previous call\'s @NextToken@ response to indicate where the
-- output should continue from.
--
-- 'maxResults', 'listHandshakesForOrganization_maxResults' - The total number of results that you want included on each page of the
-- response. If you do not include this parameter, it defaults to a value
-- that is specific to the operation. If additional items exist beyond the
-- maximum you specify, the @NextToken@ response element is present and has
-- a value (is not null). Include that value as the @NextToken@ request
-- parameter in the next call to the operation to get the next part of the
-- results. Note that Organizations might return fewer results than the
-- maximum even when there are more results available. You should check
-- @NextToken@ after every operation to ensure that you receive all of the
-- results.
--
-- 'filter'', 'listHandshakesForOrganization_filter' - A filter of the handshakes that you want included in the response. The
-- default is all types. Use the @ActionType@ element to limit the output
-- to only a specified type, such as @INVITE@, @ENABLE-ALL-FEATURES@, or
-- @APPROVE-ALL-FEATURES@. Alternatively, for the @ENABLE-ALL-FEATURES@
-- handshake that generates a separate child handshake for each member
-- account, you can specify the @ParentHandshakeId@ to see only the
-- handshakes that were generated by that parent request.
newListHandshakesForOrganization ::
  ListHandshakesForOrganization
newListHandshakesForOrganization =
  ListHandshakesForOrganization'
    { nextToken =
        Core.Nothing,
      maxResults = Core.Nothing,
      filter' = Core.Nothing
    }

-- | The parameter for receiving additional results if you receive a
-- @NextToken@ response in a previous request. A @NextToken@ response
-- indicates that more output is available. Set this parameter to the value
-- of the previous call\'s @NextToken@ response to indicate where the
-- output should continue from.
listHandshakesForOrganization_nextToken :: Lens.Lens' ListHandshakesForOrganization (Core.Maybe Core.Text)
listHandshakesForOrganization_nextToken = Lens.lens (\ListHandshakesForOrganization' {nextToken} -> nextToken) (\s@ListHandshakesForOrganization' {} a -> s {nextToken = a} :: ListHandshakesForOrganization)

-- | The total number of results that you want included on each page of the
-- response. If you do not include this parameter, it defaults to a value
-- that is specific to the operation. If additional items exist beyond the
-- maximum you specify, the @NextToken@ response element is present and has
-- a value (is not null). Include that value as the @NextToken@ request
-- parameter in the next call to the operation to get the next part of the
-- results. Note that Organizations might return fewer results than the
-- maximum even when there are more results available. You should check
-- @NextToken@ after every operation to ensure that you receive all of the
-- results.
listHandshakesForOrganization_maxResults :: Lens.Lens' ListHandshakesForOrganization (Core.Maybe Core.Natural)
listHandshakesForOrganization_maxResults = Lens.lens (\ListHandshakesForOrganization' {maxResults} -> maxResults) (\s@ListHandshakesForOrganization' {} a -> s {maxResults = a} :: ListHandshakesForOrganization)

-- | A filter of the handshakes that you want included in the response. The
-- default is all types. Use the @ActionType@ element to limit the output
-- to only a specified type, such as @INVITE@, @ENABLE-ALL-FEATURES@, or
-- @APPROVE-ALL-FEATURES@. Alternatively, for the @ENABLE-ALL-FEATURES@
-- handshake that generates a separate child handshake for each member
-- account, you can specify the @ParentHandshakeId@ to see only the
-- handshakes that were generated by that parent request.
listHandshakesForOrganization_filter :: Lens.Lens' ListHandshakesForOrganization (Core.Maybe HandshakeFilter)
listHandshakesForOrganization_filter = Lens.lens (\ListHandshakesForOrganization' {filter'} -> filter') (\s@ListHandshakesForOrganization' {} a -> s {filter' = a} :: ListHandshakesForOrganization)

instance Core.AWSPager ListHandshakesForOrganization where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listHandshakesForOrganizationResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listHandshakesForOrganizationResponse_handshakes
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listHandshakesForOrganization_nextToken
          Lens..~ rs
          Lens.^? listHandshakesForOrganizationResponse_nextToken
            Core.. Lens._Just

instance
  Core.AWSRequest
    ListHandshakesForOrganization
  where
  type
    AWSResponse ListHandshakesForOrganization =
      ListHandshakesForOrganizationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListHandshakesForOrganizationResponse'
            Core.<$> (x Core..?> "Handshakes" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "NextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListHandshakesForOrganization

instance Core.NFData ListHandshakesForOrganization

instance Core.ToHeaders ListHandshakesForOrganization where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSOrganizationsV20161128.ListHandshakesForOrganization" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListHandshakesForOrganization where
  toJSON ListHandshakesForOrganization' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("Filter" Core..=) Core.<$> filter'
          ]
      )

instance Core.ToPath ListHandshakesForOrganization where
  toPath = Core.const "/"

instance Core.ToQuery ListHandshakesForOrganization where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListHandshakesForOrganizationResponse' smart constructor.
data ListHandshakesForOrganizationResponse = ListHandshakesForOrganizationResponse'
  { -- | A list of Handshake objects with details about each of the handshakes
    -- that are associated with an organization.
    handshakes :: Core.Maybe [Handshake],
    -- | If present, indicates that more output is available than is included in
    -- the current response. Use this value in the @NextToken@ request
    -- parameter in a subsequent call to the operation to get the next part of
    -- the output. You should repeat this until the @NextToken@ response
    -- element comes back as @null@.
    nextToken :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListHandshakesForOrganizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'handshakes', 'listHandshakesForOrganizationResponse_handshakes' - A list of Handshake objects with details about each of the handshakes
-- that are associated with an organization.
--
-- 'nextToken', 'listHandshakesForOrganizationResponse_nextToken' - If present, indicates that more output is available than is included in
-- the current response. Use this value in the @NextToken@ request
-- parameter in a subsequent call to the operation to get the next part of
-- the output. You should repeat this until the @NextToken@ response
-- element comes back as @null@.
--
-- 'httpStatus', 'listHandshakesForOrganizationResponse_httpStatus' - The response's http status code.
newListHandshakesForOrganizationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListHandshakesForOrganizationResponse
newListHandshakesForOrganizationResponse pHttpStatus_ =
  ListHandshakesForOrganizationResponse'
    { handshakes =
        Core.Nothing,
      nextToken = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of Handshake objects with details about each of the handshakes
-- that are associated with an organization.
listHandshakesForOrganizationResponse_handshakes :: Lens.Lens' ListHandshakesForOrganizationResponse (Core.Maybe [Handshake])
listHandshakesForOrganizationResponse_handshakes = Lens.lens (\ListHandshakesForOrganizationResponse' {handshakes} -> handshakes) (\s@ListHandshakesForOrganizationResponse' {} a -> s {handshakes = a} :: ListHandshakesForOrganizationResponse) Core.. Lens.mapping Lens._Coerce

-- | If present, indicates that more output is available than is included in
-- the current response. Use this value in the @NextToken@ request
-- parameter in a subsequent call to the operation to get the next part of
-- the output. You should repeat this until the @NextToken@ response
-- element comes back as @null@.
listHandshakesForOrganizationResponse_nextToken :: Lens.Lens' ListHandshakesForOrganizationResponse (Core.Maybe Core.Text)
listHandshakesForOrganizationResponse_nextToken = Lens.lens (\ListHandshakesForOrganizationResponse' {nextToken} -> nextToken) (\s@ListHandshakesForOrganizationResponse' {} a -> s {nextToken = a} :: ListHandshakesForOrganizationResponse)

-- | The response's http status code.
listHandshakesForOrganizationResponse_httpStatus :: Lens.Lens' ListHandshakesForOrganizationResponse Core.Int
listHandshakesForOrganizationResponse_httpStatus = Lens.lens (\ListHandshakesForOrganizationResponse' {httpStatus} -> httpStatus) (\s@ListHandshakesForOrganizationResponse' {} a -> s {httpStatus = a} :: ListHandshakesForOrganizationResponse)

instance
  Core.NFData
    ListHandshakesForOrganizationResponse
