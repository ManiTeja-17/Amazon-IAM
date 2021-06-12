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
-- Module      : Network.AWS.SES.DeleteReceiptRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified receipt rule.
--
-- For information about managing receipt rules, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html Amazon SES Developer Guide>.
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.DeleteReceiptRule
  ( -- * Creating a Request
    DeleteReceiptRule (..),
    newDeleteReceiptRule,

    -- * Request Lenses
    deleteReceiptRule_ruleSetName,
    deleteReceiptRule_ruleName,

    -- * Destructuring the Response
    DeleteReceiptRuleResponse (..),
    newDeleteReceiptRuleResponse,

    -- * Response Lenses
    deleteReceiptRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SES.Types

-- | Represents a request to delete a receipt rule. You use receipt rules to
-- receive email with Amazon SES. For more information, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide>.
--
-- /See:/ 'newDeleteReceiptRule' smart constructor.
data DeleteReceiptRule = DeleteReceiptRule'
  { -- | The name of the receipt rule set that contains the receipt rule to
    -- delete.
    ruleSetName :: Core.Text,
    -- | The name of the receipt rule to delete.
    ruleName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteReceiptRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleSetName', 'deleteReceiptRule_ruleSetName' - The name of the receipt rule set that contains the receipt rule to
-- delete.
--
-- 'ruleName', 'deleteReceiptRule_ruleName' - The name of the receipt rule to delete.
newDeleteReceiptRule ::
  -- | 'ruleSetName'
  Core.Text ->
  -- | 'ruleName'
  Core.Text ->
  DeleteReceiptRule
newDeleteReceiptRule pRuleSetName_ pRuleName_ =
  DeleteReceiptRule'
    { ruleSetName = pRuleSetName_,
      ruleName = pRuleName_
    }

-- | The name of the receipt rule set that contains the receipt rule to
-- delete.
deleteReceiptRule_ruleSetName :: Lens.Lens' DeleteReceiptRule Core.Text
deleteReceiptRule_ruleSetName = Lens.lens (\DeleteReceiptRule' {ruleSetName} -> ruleSetName) (\s@DeleteReceiptRule' {} a -> s {ruleSetName = a} :: DeleteReceiptRule)

-- | The name of the receipt rule to delete.
deleteReceiptRule_ruleName :: Lens.Lens' DeleteReceiptRule Core.Text
deleteReceiptRule_ruleName = Lens.lens (\DeleteReceiptRule' {ruleName} -> ruleName) (\s@DeleteReceiptRule' {} a -> s {ruleName = a} :: DeleteReceiptRule)

instance Core.AWSRequest DeleteReceiptRule where
  type
    AWSResponse DeleteReceiptRule =
      DeleteReceiptRuleResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteReceiptRuleResult"
      ( \s h x ->
          DeleteReceiptRuleResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteReceiptRule

instance Core.NFData DeleteReceiptRule

instance Core.ToHeaders DeleteReceiptRule where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteReceiptRule where
  toPath = Core.const "/"

instance Core.ToQuery DeleteReceiptRule where
  toQuery DeleteReceiptRule' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DeleteReceiptRule" :: Core.ByteString),
        "Version" Core.=: ("2010-12-01" :: Core.ByteString),
        "RuleSetName" Core.=: ruleSetName,
        "RuleName" Core.=: ruleName
      ]

-- | An empty element returned on a successful request.
--
-- /See:/ 'newDeleteReceiptRuleResponse' smart constructor.
data DeleteReceiptRuleResponse = DeleteReceiptRuleResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteReceiptRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteReceiptRuleResponse_httpStatus' - The response's http status code.
newDeleteReceiptRuleResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteReceiptRuleResponse
newDeleteReceiptRuleResponse pHttpStatus_ =
  DeleteReceiptRuleResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteReceiptRuleResponse_httpStatus :: Lens.Lens' DeleteReceiptRuleResponse Core.Int
deleteReceiptRuleResponse_httpStatus = Lens.lens (\DeleteReceiptRuleResponse' {httpStatus} -> httpStatus) (\s@DeleteReceiptRuleResponse' {} a -> s {httpStatus = a} :: DeleteReceiptRuleResponse)

instance Core.NFData DeleteReceiptRuleResponse
