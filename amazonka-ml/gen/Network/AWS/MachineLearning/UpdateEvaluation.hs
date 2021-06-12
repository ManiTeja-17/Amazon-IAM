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
-- Module      : Network.AWS.MachineLearning.UpdateEvaluation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the @EvaluationName@ of an @Evaluation@.
--
-- You can use the @GetEvaluation@ operation to view the contents of the
-- updated data element.
module Network.AWS.MachineLearning.UpdateEvaluation
  ( -- * Creating a Request
    UpdateEvaluation (..),
    newUpdateEvaluation,

    -- * Request Lenses
    updateEvaluation_evaluationId,
    updateEvaluation_evaluationName,

    -- * Destructuring the Response
    UpdateEvaluationResponse (..),
    newUpdateEvaluationResponse,

    -- * Response Lenses
    updateEvaluationResponse_evaluationId,
    updateEvaluationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MachineLearning.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateEvaluation' smart constructor.
data UpdateEvaluation = UpdateEvaluation'
  { -- | The ID assigned to the @Evaluation@ during creation.
    evaluationId :: Core.Text,
    -- | A new user-supplied name or description of the @Evaluation@ that will
    -- replace the current content.
    evaluationName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateEvaluation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evaluationId', 'updateEvaluation_evaluationId' - The ID assigned to the @Evaluation@ during creation.
--
-- 'evaluationName', 'updateEvaluation_evaluationName' - A new user-supplied name or description of the @Evaluation@ that will
-- replace the current content.
newUpdateEvaluation ::
  -- | 'evaluationId'
  Core.Text ->
  -- | 'evaluationName'
  Core.Text ->
  UpdateEvaluation
newUpdateEvaluation pEvaluationId_ pEvaluationName_ =
  UpdateEvaluation'
    { evaluationId = pEvaluationId_,
      evaluationName = pEvaluationName_
    }

-- | The ID assigned to the @Evaluation@ during creation.
updateEvaluation_evaluationId :: Lens.Lens' UpdateEvaluation Core.Text
updateEvaluation_evaluationId = Lens.lens (\UpdateEvaluation' {evaluationId} -> evaluationId) (\s@UpdateEvaluation' {} a -> s {evaluationId = a} :: UpdateEvaluation)

-- | A new user-supplied name or description of the @Evaluation@ that will
-- replace the current content.
updateEvaluation_evaluationName :: Lens.Lens' UpdateEvaluation Core.Text
updateEvaluation_evaluationName = Lens.lens (\UpdateEvaluation' {evaluationName} -> evaluationName) (\s@UpdateEvaluation' {} a -> s {evaluationName = a} :: UpdateEvaluation)

instance Core.AWSRequest UpdateEvaluation where
  type
    AWSResponse UpdateEvaluation =
      UpdateEvaluationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateEvaluationResponse'
            Core.<$> (x Core..?> "EvaluationId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateEvaluation

instance Core.NFData UpdateEvaluation

instance Core.ToHeaders UpdateEvaluation where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonML_20141212.UpdateEvaluation" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateEvaluation where
  toJSON UpdateEvaluation' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("EvaluationId" Core..= evaluationId),
            Core.Just ("EvaluationName" Core..= evaluationName)
          ]
      )

instance Core.ToPath UpdateEvaluation where
  toPath = Core.const "/"

instance Core.ToQuery UpdateEvaluation where
  toQuery = Core.const Core.mempty

-- | Represents the output of an @UpdateEvaluation@ operation.
--
-- You can see the updated content by using the @GetEvaluation@ operation.
--
-- /See:/ 'newUpdateEvaluationResponse' smart constructor.
data UpdateEvaluationResponse = UpdateEvaluationResponse'
  { -- | The ID assigned to the @Evaluation@ during creation. This value should
    -- be identical to the value of the @Evaluation@ in the request.
    evaluationId :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateEvaluationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evaluationId', 'updateEvaluationResponse_evaluationId' - The ID assigned to the @Evaluation@ during creation. This value should
-- be identical to the value of the @Evaluation@ in the request.
--
-- 'httpStatus', 'updateEvaluationResponse_httpStatus' - The response's http status code.
newUpdateEvaluationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateEvaluationResponse
newUpdateEvaluationResponse pHttpStatus_ =
  UpdateEvaluationResponse'
    { evaluationId =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID assigned to the @Evaluation@ during creation. This value should
-- be identical to the value of the @Evaluation@ in the request.
updateEvaluationResponse_evaluationId :: Lens.Lens' UpdateEvaluationResponse (Core.Maybe Core.Text)
updateEvaluationResponse_evaluationId = Lens.lens (\UpdateEvaluationResponse' {evaluationId} -> evaluationId) (\s@UpdateEvaluationResponse' {} a -> s {evaluationId = a} :: UpdateEvaluationResponse)

-- | The response's http status code.
updateEvaluationResponse_httpStatus :: Lens.Lens' UpdateEvaluationResponse Core.Int
updateEvaluationResponse_httpStatus = Lens.lens (\UpdateEvaluationResponse' {httpStatus} -> httpStatus) (\s@UpdateEvaluationResponse' {} a -> s {httpStatus = a} :: UpdateEvaluationResponse)

instance Core.NFData UpdateEvaluationResponse
