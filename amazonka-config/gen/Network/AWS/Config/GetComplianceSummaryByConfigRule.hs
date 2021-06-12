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
-- Module      : Network.AWS.Config.GetComplianceSummaryByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the number of AWS Config rules that are compliant and
-- noncompliant, up to a maximum of 25 for each.
module Network.AWS.Config.GetComplianceSummaryByConfigRule
  ( -- * Creating a Request
    GetComplianceSummaryByConfigRule (..),
    newGetComplianceSummaryByConfigRule,

    -- * Destructuring the Response
    GetComplianceSummaryByConfigRuleResponse (..),
    newGetComplianceSummaryByConfigRuleResponse,

    -- * Response Lenses
    getComplianceSummaryByConfigRuleResponse_complianceSummary,
    getComplianceSummaryByConfigRuleResponse_httpStatus,
  )
where

import Network.AWS.Config.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetComplianceSummaryByConfigRule' smart constructor.
data GetComplianceSummaryByConfigRule = GetComplianceSummaryByConfigRule'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetComplianceSummaryByConfigRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetComplianceSummaryByConfigRule ::
  GetComplianceSummaryByConfigRule
newGetComplianceSummaryByConfigRule =
  GetComplianceSummaryByConfigRule'

instance
  Core.AWSRequest
    GetComplianceSummaryByConfigRule
  where
  type
    AWSResponse GetComplianceSummaryByConfigRule =
      GetComplianceSummaryByConfigRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetComplianceSummaryByConfigRuleResponse'
            Core.<$> (x Core..?> "ComplianceSummary")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    GetComplianceSummaryByConfigRule

instance Core.NFData GetComplianceSummaryByConfigRule

instance
  Core.ToHeaders
    GetComplianceSummaryByConfigRule
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StarlingDoveService.GetComplianceSummaryByConfigRule" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetComplianceSummaryByConfigRule where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath GetComplianceSummaryByConfigRule where
  toPath = Core.const "/"

instance
  Core.ToQuery
    GetComplianceSummaryByConfigRule
  where
  toQuery = Core.const Core.mempty

-- |
--
-- /See:/ 'newGetComplianceSummaryByConfigRuleResponse' smart constructor.
data GetComplianceSummaryByConfigRuleResponse = GetComplianceSummaryByConfigRuleResponse'
  { -- | The number of AWS Config rules that are compliant and the number that
    -- are noncompliant, up to a maximum of 25 for each.
    complianceSummary :: Core.Maybe ComplianceSummary,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetComplianceSummaryByConfigRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'complianceSummary', 'getComplianceSummaryByConfigRuleResponse_complianceSummary' - The number of AWS Config rules that are compliant and the number that
-- are noncompliant, up to a maximum of 25 for each.
--
-- 'httpStatus', 'getComplianceSummaryByConfigRuleResponse_httpStatus' - The response's http status code.
newGetComplianceSummaryByConfigRuleResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetComplianceSummaryByConfigRuleResponse
newGetComplianceSummaryByConfigRuleResponse
  pHttpStatus_ =
    GetComplianceSummaryByConfigRuleResponse'
      { complianceSummary =
          Core.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The number of AWS Config rules that are compliant and the number that
-- are noncompliant, up to a maximum of 25 for each.
getComplianceSummaryByConfigRuleResponse_complianceSummary :: Lens.Lens' GetComplianceSummaryByConfigRuleResponse (Core.Maybe ComplianceSummary)
getComplianceSummaryByConfigRuleResponse_complianceSummary = Lens.lens (\GetComplianceSummaryByConfigRuleResponse' {complianceSummary} -> complianceSummary) (\s@GetComplianceSummaryByConfigRuleResponse' {} a -> s {complianceSummary = a} :: GetComplianceSummaryByConfigRuleResponse)

-- | The response's http status code.
getComplianceSummaryByConfigRuleResponse_httpStatus :: Lens.Lens' GetComplianceSummaryByConfigRuleResponse Core.Int
getComplianceSummaryByConfigRuleResponse_httpStatus = Lens.lens (\GetComplianceSummaryByConfigRuleResponse' {httpStatus} -> httpStatus) (\s@GetComplianceSummaryByConfigRuleResponse' {} a -> s {httpStatus = a} :: GetComplianceSummaryByConfigRuleResponse)

instance
  Core.NFData
    GetComplianceSummaryByConfigRuleResponse
