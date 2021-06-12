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
-- Module      : Network.AWS.CodeCommit.Types.ApprovalRuleEventMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ApprovalRuleEventMetadata where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Returns information about an event for an approval rule.
--
-- /See:/ 'newApprovalRuleEventMetadata' smart constructor.
data ApprovalRuleEventMetadata = ApprovalRuleEventMetadata'
  { -- | The content of the approval rule.
    approvalRuleContent :: Core.Maybe Core.Text,
    -- | The system-generated ID of the approval rule.
    approvalRuleId :: Core.Maybe Core.Text,
    -- | The name of the approval rule.
    approvalRuleName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ApprovalRuleEventMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'approvalRuleContent', 'approvalRuleEventMetadata_approvalRuleContent' - The content of the approval rule.
--
-- 'approvalRuleId', 'approvalRuleEventMetadata_approvalRuleId' - The system-generated ID of the approval rule.
--
-- 'approvalRuleName', 'approvalRuleEventMetadata_approvalRuleName' - The name of the approval rule.
newApprovalRuleEventMetadata ::
  ApprovalRuleEventMetadata
newApprovalRuleEventMetadata =
  ApprovalRuleEventMetadata'
    { approvalRuleContent =
        Core.Nothing,
      approvalRuleId = Core.Nothing,
      approvalRuleName = Core.Nothing
    }

-- | The content of the approval rule.
approvalRuleEventMetadata_approvalRuleContent :: Lens.Lens' ApprovalRuleEventMetadata (Core.Maybe Core.Text)
approvalRuleEventMetadata_approvalRuleContent = Lens.lens (\ApprovalRuleEventMetadata' {approvalRuleContent} -> approvalRuleContent) (\s@ApprovalRuleEventMetadata' {} a -> s {approvalRuleContent = a} :: ApprovalRuleEventMetadata)

-- | The system-generated ID of the approval rule.
approvalRuleEventMetadata_approvalRuleId :: Lens.Lens' ApprovalRuleEventMetadata (Core.Maybe Core.Text)
approvalRuleEventMetadata_approvalRuleId = Lens.lens (\ApprovalRuleEventMetadata' {approvalRuleId} -> approvalRuleId) (\s@ApprovalRuleEventMetadata' {} a -> s {approvalRuleId = a} :: ApprovalRuleEventMetadata)

-- | The name of the approval rule.
approvalRuleEventMetadata_approvalRuleName :: Lens.Lens' ApprovalRuleEventMetadata (Core.Maybe Core.Text)
approvalRuleEventMetadata_approvalRuleName = Lens.lens (\ApprovalRuleEventMetadata' {approvalRuleName} -> approvalRuleName) (\s@ApprovalRuleEventMetadata' {} a -> s {approvalRuleName = a} :: ApprovalRuleEventMetadata)

instance Core.FromJSON ApprovalRuleEventMetadata where
  parseJSON =
    Core.withObject
      "ApprovalRuleEventMetadata"
      ( \x ->
          ApprovalRuleEventMetadata'
            Core.<$> (x Core..:? "approvalRuleContent")
            Core.<*> (x Core..:? "approvalRuleId")
            Core.<*> (x Core..:? "approvalRuleName")
      )

instance Core.Hashable ApprovalRuleEventMetadata

instance Core.NFData ApprovalRuleEventMetadata
