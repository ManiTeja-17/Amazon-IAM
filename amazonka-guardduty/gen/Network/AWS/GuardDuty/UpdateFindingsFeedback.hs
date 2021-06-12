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
-- Module      : Network.AWS.GuardDuty.UpdateFindingsFeedback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks the specified GuardDuty findings as useful or not useful.
module Network.AWS.GuardDuty.UpdateFindingsFeedback
  ( -- * Creating a Request
    UpdateFindingsFeedback (..),
    newUpdateFindingsFeedback,

    -- * Request Lenses
    updateFindingsFeedback_comments,
    updateFindingsFeedback_detectorId,
    updateFindingsFeedback_findingIds,
    updateFindingsFeedback_feedback,

    -- * Destructuring the Response
    UpdateFindingsFeedbackResponse (..),
    newUpdateFindingsFeedbackResponse,

    -- * Response Lenses
    updateFindingsFeedbackResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateFindingsFeedback' smart constructor.
data UpdateFindingsFeedback = UpdateFindingsFeedback'
  { -- | Additional feedback about the GuardDuty findings.
    comments :: Core.Maybe Core.Text,
    -- | The ID of the detector associated with the findings to update feedback
    -- for.
    detectorId :: Core.Text,
    -- | The IDs of the findings that you want to mark as useful or not useful.
    findingIds :: [Core.Text],
    -- | The feedback for the finding.
    feedback :: Feedback
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateFindingsFeedback' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'comments', 'updateFindingsFeedback_comments' - Additional feedback about the GuardDuty findings.
--
-- 'detectorId', 'updateFindingsFeedback_detectorId' - The ID of the detector associated with the findings to update feedback
-- for.
--
-- 'findingIds', 'updateFindingsFeedback_findingIds' - The IDs of the findings that you want to mark as useful or not useful.
--
-- 'feedback', 'updateFindingsFeedback_feedback' - The feedback for the finding.
newUpdateFindingsFeedback ::
  -- | 'detectorId'
  Core.Text ->
  -- | 'feedback'
  Feedback ->
  UpdateFindingsFeedback
newUpdateFindingsFeedback pDetectorId_ pFeedback_ =
  UpdateFindingsFeedback'
    { comments = Core.Nothing,
      detectorId = pDetectorId_,
      findingIds = Core.mempty,
      feedback = pFeedback_
    }

-- | Additional feedback about the GuardDuty findings.
updateFindingsFeedback_comments :: Lens.Lens' UpdateFindingsFeedback (Core.Maybe Core.Text)
updateFindingsFeedback_comments = Lens.lens (\UpdateFindingsFeedback' {comments} -> comments) (\s@UpdateFindingsFeedback' {} a -> s {comments = a} :: UpdateFindingsFeedback)

-- | The ID of the detector associated with the findings to update feedback
-- for.
updateFindingsFeedback_detectorId :: Lens.Lens' UpdateFindingsFeedback Core.Text
updateFindingsFeedback_detectorId = Lens.lens (\UpdateFindingsFeedback' {detectorId} -> detectorId) (\s@UpdateFindingsFeedback' {} a -> s {detectorId = a} :: UpdateFindingsFeedback)

-- | The IDs of the findings that you want to mark as useful or not useful.
updateFindingsFeedback_findingIds :: Lens.Lens' UpdateFindingsFeedback [Core.Text]
updateFindingsFeedback_findingIds = Lens.lens (\UpdateFindingsFeedback' {findingIds} -> findingIds) (\s@UpdateFindingsFeedback' {} a -> s {findingIds = a} :: UpdateFindingsFeedback) Core.. Lens._Coerce

-- | The feedback for the finding.
updateFindingsFeedback_feedback :: Lens.Lens' UpdateFindingsFeedback Feedback
updateFindingsFeedback_feedback = Lens.lens (\UpdateFindingsFeedback' {feedback} -> feedback) (\s@UpdateFindingsFeedback' {} a -> s {feedback = a} :: UpdateFindingsFeedback)

instance Core.AWSRequest UpdateFindingsFeedback where
  type
    AWSResponse UpdateFindingsFeedback =
      UpdateFindingsFeedbackResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateFindingsFeedbackResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateFindingsFeedback

instance Core.NFData UpdateFindingsFeedback

instance Core.ToHeaders UpdateFindingsFeedback where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateFindingsFeedback where
  toJSON UpdateFindingsFeedback' {..} =
    Core.object
      ( Core.catMaybes
          [ ("comments" Core..=) Core.<$> comments,
            Core.Just ("findingIds" Core..= findingIds),
            Core.Just ("feedback" Core..= feedback)
          ]
      )

instance Core.ToPath UpdateFindingsFeedback where
  toPath UpdateFindingsFeedback' {..} =
    Core.mconcat
      [ "/detector/",
        Core.toBS detectorId,
        "/findings/feedback"
      ]

instance Core.ToQuery UpdateFindingsFeedback where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateFindingsFeedbackResponse' smart constructor.
data UpdateFindingsFeedbackResponse = UpdateFindingsFeedbackResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateFindingsFeedbackResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateFindingsFeedbackResponse_httpStatus' - The response's http status code.
newUpdateFindingsFeedbackResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateFindingsFeedbackResponse
newUpdateFindingsFeedbackResponse pHttpStatus_ =
  UpdateFindingsFeedbackResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateFindingsFeedbackResponse_httpStatus :: Lens.Lens' UpdateFindingsFeedbackResponse Core.Int
updateFindingsFeedbackResponse_httpStatus = Lens.lens (\UpdateFindingsFeedbackResponse' {httpStatus} -> httpStatus) (\s@UpdateFindingsFeedbackResponse' {} a -> s {httpStatus = a} :: UpdateFindingsFeedbackResponse)

instance Core.NFData UpdateFindingsFeedbackResponse
