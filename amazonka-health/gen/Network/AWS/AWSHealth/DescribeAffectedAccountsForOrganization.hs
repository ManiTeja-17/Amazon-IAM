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
-- Module      : Network.AWS.AWSHealth.DescribeAffectedAccountsForOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of accounts in the organization from AWS Organizations
-- that are affected by the provided event. For more information about the
-- different types of AWS Health events, see
-- <https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html Event>.
--
-- Before you can call this operation, you must first enable AWS Health to
-- work with AWS Organizations. To do this, call the
-- <https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html EnableHealthServiceAccessForOrganization>
-- operation from your organization\'s management account.
--
-- This API operation uses pagination. Specify the @nextToken@ parameter in
-- the next request to return more results.
--
-- This operation returns paginated results.
module Network.AWS.AWSHealth.DescribeAffectedAccountsForOrganization
  ( -- * Creating a Request
    DescribeAffectedAccountsForOrganization (..),
    newDescribeAffectedAccountsForOrganization,

    -- * Request Lenses
    describeAffectedAccountsForOrganization_nextToken,
    describeAffectedAccountsForOrganization_maxResults,
    describeAffectedAccountsForOrganization_eventArn,

    -- * Destructuring the Response
    DescribeAffectedAccountsForOrganizationResponse (..),
    newDescribeAffectedAccountsForOrganizationResponse,

    -- * Response Lenses
    describeAffectedAccountsForOrganizationResponse_nextToken,
    describeAffectedAccountsForOrganizationResponse_eventScopeCode,
    describeAffectedAccountsForOrganizationResponse_affectedAccounts,
    describeAffectedAccountsForOrganizationResponse_httpStatus,
  )
where

import Network.AWS.AWSHealth.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAffectedAccountsForOrganization' smart constructor.
data DescribeAffectedAccountsForOrganization = DescribeAffectedAccountsForOrganization'
  { -- | If the results of a search are large, only a portion of the results are
    -- returned, and a @nextToken@ pagination token is returned in the
    -- response. To retrieve the next batch of results, reissue the search
    -- request and include the returned token. When all results have been
    -- returned, the response does not contain a pagination token value.
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of items to return in one batch, between 10 and 100,
    -- inclusive.
    maxResults :: Core.Maybe Core.Natural,
    -- | The unique identifier for the event. Format:
    -- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
    -- Example:
    -- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
    eventArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeAffectedAccountsForOrganization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAffectedAccountsForOrganization_nextToken' - If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next batch of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
--
-- 'maxResults', 'describeAffectedAccountsForOrganization_maxResults' - The maximum number of items to return in one batch, between 10 and 100,
-- inclusive.
--
-- 'eventArn', 'describeAffectedAccountsForOrganization_eventArn' - The unique identifier for the event. Format:
-- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
-- Example:
-- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
newDescribeAffectedAccountsForOrganization ::
  -- | 'eventArn'
  Core.Text ->
  DescribeAffectedAccountsForOrganization
newDescribeAffectedAccountsForOrganization pEventArn_ =
  DescribeAffectedAccountsForOrganization'
    { nextToken =
        Core.Nothing,
      maxResults = Core.Nothing,
      eventArn = pEventArn_
    }

-- | If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next batch of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
describeAffectedAccountsForOrganization_nextToken :: Lens.Lens' DescribeAffectedAccountsForOrganization (Core.Maybe Core.Text)
describeAffectedAccountsForOrganization_nextToken = Lens.lens (\DescribeAffectedAccountsForOrganization' {nextToken} -> nextToken) (\s@DescribeAffectedAccountsForOrganization' {} a -> s {nextToken = a} :: DescribeAffectedAccountsForOrganization)

-- | The maximum number of items to return in one batch, between 10 and 100,
-- inclusive.
describeAffectedAccountsForOrganization_maxResults :: Lens.Lens' DescribeAffectedAccountsForOrganization (Core.Maybe Core.Natural)
describeAffectedAccountsForOrganization_maxResults = Lens.lens (\DescribeAffectedAccountsForOrganization' {maxResults} -> maxResults) (\s@DescribeAffectedAccountsForOrganization' {} a -> s {maxResults = a} :: DescribeAffectedAccountsForOrganization)

-- | The unique identifier for the event. Format:
-- @arn:aws:health:event-region::event\/SERVICE\/EVENT_TYPE_CODE\/EVENT_TYPE_PLUS_ID @.
-- Example:
-- @Example: arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456@
describeAffectedAccountsForOrganization_eventArn :: Lens.Lens' DescribeAffectedAccountsForOrganization Core.Text
describeAffectedAccountsForOrganization_eventArn = Lens.lens (\DescribeAffectedAccountsForOrganization' {eventArn} -> eventArn) (\s@DescribeAffectedAccountsForOrganization' {} a -> s {eventArn = a} :: DescribeAffectedAccountsForOrganization)

instance
  Core.AWSPager
    DescribeAffectedAccountsForOrganization
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeAffectedAccountsForOrganizationResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeAffectedAccountsForOrganizationResponse_affectedAccounts
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeAffectedAccountsForOrganization_nextToken
          Lens..~ rs
            Lens.^? describeAffectedAccountsForOrganizationResponse_nextToken
              Core.. Lens._Just

instance
  Core.AWSRequest
    DescribeAffectedAccountsForOrganization
  where
  type
    AWSResponse
      DescribeAffectedAccountsForOrganization =
      DescribeAffectedAccountsForOrganizationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAffectedAccountsForOrganizationResponse'
            Core.<$> (x Core..?> "nextToken")
              Core.<*> (x Core..?> "eventScopeCode")
              Core.<*> (x Core..?> "affectedAccounts" Core..!@ Core.mempty)
              Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    DescribeAffectedAccountsForOrganization

instance
  Core.NFData
    DescribeAffectedAccountsForOrganization

instance
  Core.ToHeaders
    DescribeAffectedAccountsForOrganization
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHealth_20160804.DescribeAffectedAccountsForOrganization" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance
  Core.ToJSON
    DescribeAffectedAccountsForOrganization
  where
  toJSON DescribeAffectedAccountsForOrganization' {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextToken" Core..=) Core.<$> nextToken,
            ("maxResults" Core..=) Core.<$> maxResults,
            Core.Just ("eventArn" Core..= eventArn)
          ]
      )

instance
  Core.ToPath
    DescribeAffectedAccountsForOrganization
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    DescribeAffectedAccountsForOrganization
  where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeAffectedAccountsForOrganizationResponse' smart constructor.
data DescribeAffectedAccountsForOrganizationResponse = DescribeAffectedAccountsForOrganizationResponse'
  { -- | If the results of a search are large, only a portion of the results are
    -- returned, and a @nextToken@ pagination token is returned in the
    -- response. To retrieve the next batch of results, reissue the search
    -- request and include the returned token. When all results have been
    -- returned, the response does not contain a pagination token value.
    nextToken :: Core.Maybe Core.Text,
    -- | This parameter specifies if the AWS Health event is a public AWS service
    -- event or an account-specific event.
    --
    -- -   If the @eventScopeCode@ value is @PUBLIC@, then the
    --     @affectedAccounts@ value is always empty.
    --
    -- -   If the @eventScopeCode@ value is @ACCOUNT_SPECIFIC@, then the
    --     @affectedAccounts@ value lists the affected AWS accounts in your
    --     organization. For example, if an event affects a service such as
    --     Amazon Elastic Compute Cloud and you have AWS accounts that use that
    --     service, those account IDs appear in the response.
    --
    -- -   If the @eventScopeCode@ value is @NONE@, then the @eventArn@ that
    --     you specified in the request is invalid or doesn\'t exist.
    eventScopeCode :: Core.Maybe EventScopeCode,
    -- | A JSON set of elements of the affected accounts.
    affectedAccounts :: Core.Maybe [Core.Text],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeAffectedAccountsForOrganizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeAffectedAccountsForOrganizationResponse_nextToken' - If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next batch of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
--
-- 'eventScopeCode', 'describeAffectedAccountsForOrganizationResponse_eventScopeCode' - This parameter specifies if the AWS Health event is a public AWS service
-- event or an account-specific event.
--
-- -   If the @eventScopeCode@ value is @PUBLIC@, then the
--     @affectedAccounts@ value is always empty.
--
-- -   If the @eventScopeCode@ value is @ACCOUNT_SPECIFIC@, then the
--     @affectedAccounts@ value lists the affected AWS accounts in your
--     organization. For example, if an event affects a service such as
--     Amazon Elastic Compute Cloud and you have AWS accounts that use that
--     service, those account IDs appear in the response.
--
-- -   If the @eventScopeCode@ value is @NONE@, then the @eventArn@ that
--     you specified in the request is invalid or doesn\'t exist.
--
-- 'affectedAccounts', 'describeAffectedAccountsForOrganizationResponse_affectedAccounts' - A JSON set of elements of the affected accounts.
--
-- 'httpStatus', 'describeAffectedAccountsForOrganizationResponse_httpStatus' - The response's http status code.
newDescribeAffectedAccountsForOrganizationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeAffectedAccountsForOrganizationResponse
newDescribeAffectedAccountsForOrganizationResponse
  pHttpStatus_ =
    DescribeAffectedAccountsForOrganizationResponse'
      { nextToken =
          Core.Nothing,
        eventScopeCode =
          Core.Nothing,
        affectedAccounts =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | If the results of a search are large, only a portion of the results are
-- returned, and a @nextToken@ pagination token is returned in the
-- response. To retrieve the next batch of results, reissue the search
-- request and include the returned token. When all results have been
-- returned, the response does not contain a pagination token value.
describeAffectedAccountsForOrganizationResponse_nextToken :: Lens.Lens' DescribeAffectedAccountsForOrganizationResponse (Core.Maybe Core.Text)
describeAffectedAccountsForOrganizationResponse_nextToken = Lens.lens (\DescribeAffectedAccountsForOrganizationResponse' {nextToken} -> nextToken) (\s@DescribeAffectedAccountsForOrganizationResponse' {} a -> s {nextToken = a} :: DescribeAffectedAccountsForOrganizationResponse)

-- | This parameter specifies if the AWS Health event is a public AWS service
-- event or an account-specific event.
--
-- -   If the @eventScopeCode@ value is @PUBLIC@, then the
--     @affectedAccounts@ value is always empty.
--
-- -   If the @eventScopeCode@ value is @ACCOUNT_SPECIFIC@, then the
--     @affectedAccounts@ value lists the affected AWS accounts in your
--     organization. For example, if an event affects a service such as
--     Amazon Elastic Compute Cloud and you have AWS accounts that use that
--     service, those account IDs appear in the response.
--
-- -   If the @eventScopeCode@ value is @NONE@, then the @eventArn@ that
--     you specified in the request is invalid or doesn\'t exist.
describeAffectedAccountsForOrganizationResponse_eventScopeCode :: Lens.Lens' DescribeAffectedAccountsForOrganizationResponse (Core.Maybe EventScopeCode)
describeAffectedAccountsForOrganizationResponse_eventScopeCode = Lens.lens (\DescribeAffectedAccountsForOrganizationResponse' {eventScopeCode} -> eventScopeCode) (\s@DescribeAffectedAccountsForOrganizationResponse' {} a -> s {eventScopeCode = a} :: DescribeAffectedAccountsForOrganizationResponse)

-- | A JSON set of elements of the affected accounts.
describeAffectedAccountsForOrganizationResponse_affectedAccounts :: Lens.Lens' DescribeAffectedAccountsForOrganizationResponse (Core.Maybe [Core.Text])
describeAffectedAccountsForOrganizationResponse_affectedAccounts = Lens.lens (\DescribeAffectedAccountsForOrganizationResponse' {affectedAccounts} -> affectedAccounts) (\s@DescribeAffectedAccountsForOrganizationResponse' {} a -> s {affectedAccounts = a} :: DescribeAffectedAccountsForOrganizationResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeAffectedAccountsForOrganizationResponse_httpStatus :: Lens.Lens' DescribeAffectedAccountsForOrganizationResponse Core.Int
describeAffectedAccountsForOrganizationResponse_httpStatus = Lens.lens (\DescribeAffectedAccountsForOrganizationResponse' {httpStatus} -> httpStatus) (\s@DescribeAffectedAccountsForOrganizationResponse' {} a -> s {httpStatus = a} :: DescribeAffectedAccountsForOrganizationResponse)

instance
  Core.NFData
    DescribeAffectedAccountsForOrganizationResponse
