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
-- Module      : Network.AWS.SES.CloneReceiptRuleSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a receipt rule set by cloning an existing one. All receipt rules
-- and configurations are copied to the new receipt rule set and are
-- completely independent of the source rule set.
--
-- For information about setting up rule sets, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html Amazon SES Developer Guide>.
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.CloneReceiptRuleSet
  ( -- * Creating a Request
    CloneReceiptRuleSet (..),
    newCloneReceiptRuleSet,

    -- * Request Lenses
    cloneReceiptRuleSet_ruleSetName,
    cloneReceiptRuleSet_originalRuleSetName,

    -- * Destructuring the Response
    CloneReceiptRuleSetResponse (..),
    newCloneReceiptRuleSetResponse,

    -- * Response Lenses
    cloneReceiptRuleSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SES.Types

-- | Represents a request to create a receipt rule set by cloning an existing
-- one. You use receipt rule sets to receive email with Amazon SES. For
-- more information, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide>.
--
-- /See:/ 'newCloneReceiptRuleSet' smart constructor.
data CloneReceiptRuleSet = CloneReceiptRuleSet'
  { -- | The name of the rule set to create. The name must:
    --
    -- -   This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    --     underscores (_), or dashes (-).
    --
    -- -   Start and end with a letter or number.
    --
    -- -   Contain less than 64 characters.
    ruleSetName :: Core.Text,
    -- | The name of the rule set to clone.
    originalRuleSetName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CloneReceiptRuleSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleSetName', 'cloneReceiptRuleSet_ruleSetName' - The name of the rule set to create. The name must:
--
-- -   This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
--     underscores (_), or dashes (-).
--
-- -   Start and end with a letter or number.
--
-- -   Contain less than 64 characters.
--
-- 'originalRuleSetName', 'cloneReceiptRuleSet_originalRuleSetName' - The name of the rule set to clone.
newCloneReceiptRuleSet ::
  -- | 'ruleSetName'
  Core.Text ->
  -- | 'originalRuleSetName'
  Core.Text ->
  CloneReceiptRuleSet
newCloneReceiptRuleSet
  pRuleSetName_
  pOriginalRuleSetName_ =
    CloneReceiptRuleSet'
      { ruleSetName = pRuleSetName_,
        originalRuleSetName = pOriginalRuleSetName_
      }

-- | The name of the rule set to create. The name must:
--
-- -   This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
--     underscores (_), or dashes (-).
--
-- -   Start and end with a letter or number.
--
-- -   Contain less than 64 characters.
cloneReceiptRuleSet_ruleSetName :: Lens.Lens' CloneReceiptRuleSet Core.Text
cloneReceiptRuleSet_ruleSetName = Lens.lens (\CloneReceiptRuleSet' {ruleSetName} -> ruleSetName) (\s@CloneReceiptRuleSet' {} a -> s {ruleSetName = a} :: CloneReceiptRuleSet)

-- | The name of the rule set to clone.
cloneReceiptRuleSet_originalRuleSetName :: Lens.Lens' CloneReceiptRuleSet Core.Text
cloneReceiptRuleSet_originalRuleSetName = Lens.lens (\CloneReceiptRuleSet' {originalRuleSetName} -> originalRuleSetName) (\s@CloneReceiptRuleSet' {} a -> s {originalRuleSetName = a} :: CloneReceiptRuleSet)

instance Core.AWSRequest CloneReceiptRuleSet where
  type
    AWSResponse CloneReceiptRuleSet =
      CloneReceiptRuleSetResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CloneReceiptRuleSetResult"
      ( \s h x ->
          CloneReceiptRuleSetResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CloneReceiptRuleSet

instance Core.NFData CloneReceiptRuleSet

instance Core.ToHeaders CloneReceiptRuleSet where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CloneReceiptRuleSet where
  toPath = Core.const "/"

instance Core.ToQuery CloneReceiptRuleSet where
  toQuery CloneReceiptRuleSet' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("CloneReceiptRuleSet" :: Core.ByteString),
        "Version" Core.=: ("2010-12-01" :: Core.ByteString),
        "RuleSetName" Core.=: ruleSetName,
        "OriginalRuleSetName" Core.=: originalRuleSetName
      ]

-- | An empty element returned on a successful request.
--
-- /See:/ 'newCloneReceiptRuleSetResponse' smart constructor.
data CloneReceiptRuleSetResponse = CloneReceiptRuleSetResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CloneReceiptRuleSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cloneReceiptRuleSetResponse_httpStatus' - The response's http status code.
newCloneReceiptRuleSetResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CloneReceiptRuleSetResponse
newCloneReceiptRuleSetResponse pHttpStatus_ =
  CloneReceiptRuleSetResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
cloneReceiptRuleSetResponse_httpStatus :: Lens.Lens' CloneReceiptRuleSetResponse Core.Int
cloneReceiptRuleSetResponse_httpStatus = Lens.lens (\CloneReceiptRuleSetResponse' {httpStatus} -> httpStatus) (\s@CloneReceiptRuleSetResponse' {} a -> s {httpStatus = a} :: CloneReceiptRuleSetResponse)

instance Core.NFData CloneReceiptRuleSetResponse
