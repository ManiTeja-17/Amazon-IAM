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
-- Module      : Network.AWS.CodeCommit.UpdateApprovalRuleTemplateDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the description for a specified approval rule template.
module Network.AWS.CodeCommit.UpdateApprovalRuleTemplateDescription
  ( -- * Creating a Request
    UpdateApprovalRuleTemplateDescription (..),
    newUpdateApprovalRuleTemplateDescription,

    -- * Request Lenses
    updateApprovalRuleTemplateDescription_approvalRuleTemplateName,
    updateApprovalRuleTemplateDescription_approvalRuleTemplateDescription,

    -- * Destructuring the Response
    UpdateApprovalRuleTemplateDescriptionResponse (..),
    newUpdateApprovalRuleTemplateDescriptionResponse,

    -- * Response Lenses
    updateApprovalRuleTemplateDescriptionResponse_httpStatus,
    updateApprovalRuleTemplateDescriptionResponse_approvalRuleTemplate,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateApprovalRuleTemplateDescription' smart constructor.
data UpdateApprovalRuleTemplateDescription = UpdateApprovalRuleTemplateDescription'
  { -- | The name of the template for which you want to update the description.
    approvalRuleTemplateName :: Core.Text,
    -- | The updated description of the approval rule template.
    approvalRuleTemplateDescription :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateApprovalRuleTemplateDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'approvalRuleTemplateName', 'updateApprovalRuleTemplateDescription_approvalRuleTemplateName' - The name of the template for which you want to update the description.
--
-- 'approvalRuleTemplateDescription', 'updateApprovalRuleTemplateDescription_approvalRuleTemplateDescription' - The updated description of the approval rule template.
newUpdateApprovalRuleTemplateDescription ::
  -- | 'approvalRuleTemplateName'
  Core.Text ->
  -- | 'approvalRuleTemplateDescription'
  Core.Text ->
  UpdateApprovalRuleTemplateDescription
newUpdateApprovalRuleTemplateDescription
  pApprovalRuleTemplateName_
  pApprovalRuleTemplateDescription_ =
    UpdateApprovalRuleTemplateDescription'
      { approvalRuleTemplateName =
          pApprovalRuleTemplateName_,
        approvalRuleTemplateDescription =
          pApprovalRuleTemplateDescription_
      }

-- | The name of the template for which you want to update the description.
updateApprovalRuleTemplateDescription_approvalRuleTemplateName :: Lens.Lens' UpdateApprovalRuleTemplateDescription Core.Text
updateApprovalRuleTemplateDescription_approvalRuleTemplateName = Lens.lens (\UpdateApprovalRuleTemplateDescription' {approvalRuleTemplateName} -> approvalRuleTemplateName) (\s@UpdateApprovalRuleTemplateDescription' {} a -> s {approvalRuleTemplateName = a} :: UpdateApprovalRuleTemplateDescription)

-- | The updated description of the approval rule template.
updateApprovalRuleTemplateDescription_approvalRuleTemplateDescription :: Lens.Lens' UpdateApprovalRuleTemplateDescription Core.Text
updateApprovalRuleTemplateDescription_approvalRuleTemplateDescription = Lens.lens (\UpdateApprovalRuleTemplateDescription' {approvalRuleTemplateDescription} -> approvalRuleTemplateDescription) (\s@UpdateApprovalRuleTemplateDescription' {} a -> s {approvalRuleTemplateDescription = a} :: UpdateApprovalRuleTemplateDescription)

instance
  Core.AWSRequest
    UpdateApprovalRuleTemplateDescription
  where
  type
    AWSResponse
      UpdateApprovalRuleTemplateDescription =
      UpdateApprovalRuleTemplateDescriptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateApprovalRuleTemplateDescriptionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
              Core.<*> (x Core..:> "approvalRuleTemplate")
      )

instance
  Core.Hashable
    UpdateApprovalRuleTemplateDescription

instance
  Core.NFData
    UpdateApprovalRuleTemplateDescription

instance
  Core.ToHeaders
    UpdateApprovalRuleTemplateDescription
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeCommit_20150413.UpdateApprovalRuleTemplateDescription" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance
  Core.ToJSON
    UpdateApprovalRuleTemplateDescription
  where
  toJSON UpdateApprovalRuleTemplateDescription' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "approvalRuleTemplateName"
                  Core..= approvalRuleTemplateName
              ),
            Core.Just
              ( "approvalRuleTemplateDescription"
                  Core..= approvalRuleTemplateDescription
              )
          ]
      )

instance
  Core.ToPath
    UpdateApprovalRuleTemplateDescription
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    UpdateApprovalRuleTemplateDescription
  where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateApprovalRuleTemplateDescriptionResponse' smart constructor.
data UpdateApprovalRuleTemplateDescriptionResponse = UpdateApprovalRuleTemplateDescriptionResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | The structure and content of the updated approval rule template.
    approvalRuleTemplate :: ApprovalRuleTemplate
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateApprovalRuleTemplateDescriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateApprovalRuleTemplateDescriptionResponse_httpStatus' - The response's http status code.
--
-- 'approvalRuleTemplate', 'updateApprovalRuleTemplateDescriptionResponse_approvalRuleTemplate' - The structure and content of the updated approval rule template.
newUpdateApprovalRuleTemplateDescriptionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'approvalRuleTemplate'
  ApprovalRuleTemplate ->
  UpdateApprovalRuleTemplateDescriptionResponse
newUpdateApprovalRuleTemplateDescriptionResponse
  pHttpStatus_
  pApprovalRuleTemplate_ =
    UpdateApprovalRuleTemplateDescriptionResponse'
      { httpStatus =
          pHttpStatus_,
        approvalRuleTemplate =
          pApprovalRuleTemplate_
      }

-- | The response's http status code.
updateApprovalRuleTemplateDescriptionResponse_httpStatus :: Lens.Lens' UpdateApprovalRuleTemplateDescriptionResponse Core.Int
updateApprovalRuleTemplateDescriptionResponse_httpStatus = Lens.lens (\UpdateApprovalRuleTemplateDescriptionResponse' {httpStatus} -> httpStatus) (\s@UpdateApprovalRuleTemplateDescriptionResponse' {} a -> s {httpStatus = a} :: UpdateApprovalRuleTemplateDescriptionResponse)

-- | The structure and content of the updated approval rule template.
updateApprovalRuleTemplateDescriptionResponse_approvalRuleTemplate :: Lens.Lens' UpdateApprovalRuleTemplateDescriptionResponse ApprovalRuleTemplate
updateApprovalRuleTemplateDescriptionResponse_approvalRuleTemplate = Lens.lens (\UpdateApprovalRuleTemplateDescriptionResponse' {approvalRuleTemplate} -> approvalRuleTemplate) (\s@UpdateApprovalRuleTemplateDescriptionResponse' {} a -> s {approvalRuleTemplate = a} :: UpdateApprovalRuleTemplateDescriptionResponse)

instance
  Core.NFData
    UpdateApprovalRuleTemplateDescriptionResponse
