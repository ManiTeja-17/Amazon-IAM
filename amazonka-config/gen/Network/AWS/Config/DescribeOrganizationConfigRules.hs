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
-- Module      : Network.AWS.Config.DescribeOrganizationConfigRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of organization config rules.
--
-- When you specify the limit and the next token, you receive a paginated
-- response. Limit and next token are not applicable if you specify
-- organization config rule names. It is only applicable, when you request
-- all the organization config rules.
module Network.AWS.Config.DescribeOrganizationConfigRules
  ( -- * Creating a Request
    DescribeOrganizationConfigRules (..),
    newDescribeOrganizationConfigRules,

    -- * Request Lenses
    describeOrganizationConfigRules_nextToken,
    describeOrganizationConfigRules_organizationConfigRuleNames,
    describeOrganizationConfigRules_limit,

    -- * Destructuring the Response
    DescribeOrganizationConfigRulesResponse (..),
    newDescribeOrganizationConfigRulesResponse,

    -- * Response Lenses
    describeOrganizationConfigRulesResponse_nextToken,
    describeOrganizationConfigRulesResponse_organizationConfigRules,
    describeOrganizationConfigRulesResponse_httpStatus,
  )
where

import Network.AWS.Config.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeOrganizationConfigRules' smart constructor.
data DescribeOrganizationConfigRules = DescribeOrganizationConfigRules'
  { -- | The @nextToken@ string returned on a previous page that you use to get
    -- the next page of results in a paginated response.
    nextToken :: Core.Maybe Core.Text,
    -- | The names of organization config rules for which you want details. If
    -- you do not specify any names, AWS Config returns details for all your
    -- organization config rules.
    organizationConfigRuleNames :: Core.Maybe [Core.Text],
    -- | The maximum number of organization config rules returned on each page.
    -- If you do no specify a number, AWS Config uses the default. The default
    -- is 100.
    limit :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeOrganizationConfigRules' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeOrganizationConfigRules_nextToken' - The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
--
-- 'organizationConfigRuleNames', 'describeOrganizationConfigRules_organizationConfigRuleNames' - The names of organization config rules for which you want details. If
-- you do not specify any names, AWS Config returns details for all your
-- organization config rules.
--
-- 'limit', 'describeOrganizationConfigRules_limit' - The maximum number of organization config rules returned on each page.
-- If you do no specify a number, AWS Config uses the default. The default
-- is 100.
newDescribeOrganizationConfigRules ::
  DescribeOrganizationConfigRules
newDescribeOrganizationConfigRules =
  DescribeOrganizationConfigRules'
    { nextToken =
        Core.Nothing,
      organizationConfigRuleNames = Core.Nothing,
      limit = Core.Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
describeOrganizationConfigRules_nextToken :: Lens.Lens' DescribeOrganizationConfigRules (Core.Maybe Core.Text)
describeOrganizationConfigRules_nextToken = Lens.lens (\DescribeOrganizationConfigRules' {nextToken} -> nextToken) (\s@DescribeOrganizationConfigRules' {} a -> s {nextToken = a} :: DescribeOrganizationConfigRules)

-- | The names of organization config rules for which you want details. If
-- you do not specify any names, AWS Config returns details for all your
-- organization config rules.
describeOrganizationConfigRules_organizationConfigRuleNames :: Lens.Lens' DescribeOrganizationConfigRules (Core.Maybe [Core.Text])
describeOrganizationConfigRules_organizationConfigRuleNames = Lens.lens (\DescribeOrganizationConfigRules' {organizationConfigRuleNames} -> organizationConfigRuleNames) (\s@DescribeOrganizationConfigRules' {} a -> s {organizationConfigRuleNames = a} :: DescribeOrganizationConfigRules) Core.. Lens.mapping Lens._Coerce

-- | The maximum number of organization config rules returned on each page.
-- If you do no specify a number, AWS Config uses the default. The default
-- is 100.
describeOrganizationConfigRules_limit :: Lens.Lens' DescribeOrganizationConfigRules (Core.Maybe Core.Natural)
describeOrganizationConfigRules_limit = Lens.lens (\DescribeOrganizationConfigRules' {limit} -> limit) (\s@DescribeOrganizationConfigRules' {} a -> s {limit = a} :: DescribeOrganizationConfigRules)

instance
  Core.AWSRequest
    DescribeOrganizationConfigRules
  where
  type
    AWSResponse DescribeOrganizationConfigRules =
      DescribeOrganizationConfigRulesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeOrganizationConfigRulesResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> ( x Core..?> "OrganizationConfigRules"
                         Core..!@ Core.mempty
                     )
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    DescribeOrganizationConfigRules

instance Core.NFData DescribeOrganizationConfigRules

instance
  Core.ToHeaders
    DescribeOrganizationConfigRules
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StarlingDoveService.DescribeOrganizationConfigRules" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeOrganizationConfigRules where
  toJSON DescribeOrganizationConfigRules' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("OrganizationConfigRuleNames" Core..=)
              Core.<$> organizationConfigRuleNames,
            ("Limit" Core..=) Core.<$> limit
          ]
      )

instance Core.ToPath DescribeOrganizationConfigRules where
  toPath = Core.const "/"

instance Core.ToQuery DescribeOrganizationConfigRules where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeOrganizationConfigRulesResponse' smart constructor.
data DescribeOrganizationConfigRulesResponse = DescribeOrganizationConfigRulesResponse'
  { -- | The @nextToken@ string returned on a previous page that you use to get
    -- the next page of results in a paginated response.
    nextToken :: Core.Maybe Core.Text,
    -- | Returns a list of @OrganizationConfigRule@ objects.
    organizationConfigRules :: Core.Maybe [OrganizationConfigRule],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeOrganizationConfigRulesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeOrganizationConfigRulesResponse_nextToken' - The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
--
-- 'organizationConfigRules', 'describeOrganizationConfigRulesResponse_organizationConfigRules' - Returns a list of @OrganizationConfigRule@ objects.
--
-- 'httpStatus', 'describeOrganizationConfigRulesResponse_httpStatus' - The response's http status code.
newDescribeOrganizationConfigRulesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeOrganizationConfigRulesResponse
newDescribeOrganizationConfigRulesResponse
  pHttpStatus_ =
    DescribeOrganizationConfigRulesResponse'
      { nextToken =
          Core.Nothing,
        organizationConfigRules =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get
-- the next page of results in a paginated response.
describeOrganizationConfigRulesResponse_nextToken :: Lens.Lens' DescribeOrganizationConfigRulesResponse (Core.Maybe Core.Text)
describeOrganizationConfigRulesResponse_nextToken = Lens.lens (\DescribeOrganizationConfigRulesResponse' {nextToken} -> nextToken) (\s@DescribeOrganizationConfigRulesResponse' {} a -> s {nextToken = a} :: DescribeOrganizationConfigRulesResponse)

-- | Returns a list of @OrganizationConfigRule@ objects.
describeOrganizationConfigRulesResponse_organizationConfigRules :: Lens.Lens' DescribeOrganizationConfigRulesResponse (Core.Maybe [OrganizationConfigRule])
describeOrganizationConfigRulesResponse_organizationConfigRules = Lens.lens (\DescribeOrganizationConfigRulesResponse' {organizationConfigRules} -> organizationConfigRules) (\s@DescribeOrganizationConfigRulesResponse' {} a -> s {organizationConfigRules = a} :: DescribeOrganizationConfigRulesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeOrganizationConfigRulesResponse_httpStatus :: Lens.Lens' DescribeOrganizationConfigRulesResponse Core.Int
describeOrganizationConfigRulesResponse_httpStatus = Lens.lens (\DescribeOrganizationConfigRulesResponse' {httpStatus} -> httpStatus) (\s@DescribeOrganizationConfigRulesResponse' {} a -> s {httpStatus = a} :: DescribeOrganizationConfigRulesResponse)

instance
  Core.NFData
    DescribeOrganizationConfigRulesResponse
