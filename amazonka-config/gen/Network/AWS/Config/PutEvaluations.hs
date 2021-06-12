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
-- Module      : Network.AWS.Config.PutEvaluations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by an AWS Lambda function to deliver evaluation results to AWS
-- Config. This action is required in every AWS Lambda function that is
-- invoked by an AWS Config rule.
module Network.AWS.Config.PutEvaluations
  ( -- * Creating a Request
    PutEvaluations (..),
    newPutEvaluations,

    -- * Request Lenses
    putEvaluations_testMode,
    putEvaluations_evaluations,
    putEvaluations_resultToken,

    -- * Destructuring the Response
    PutEvaluationsResponse (..),
    newPutEvaluationsResponse,

    -- * Response Lenses
    putEvaluationsResponse_failedEvaluations,
    putEvaluationsResponse_httpStatus,
  )
where

import Network.AWS.Config.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newPutEvaluations' smart constructor.
data PutEvaluations = PutEvaluations'
  { -- | Use this parameter to specify a test run for @PutEvaluations@. You can
    -- verify whether your AWS Lambda function will deliver evaluation results
    -- to AWS Config. No updates occur to your existing evaluations, and
    -- evaluation results are not sent to AWS Config.
    --
    -- When @TestMode@ is @true@, @PutEvaluations@ doesn\'t require a valid
    -- value for the @ResultToken@ parameter, but the value cannot be null.
    testMode :: Core.Maybe Core.Bool,
    -- | The assessments that the AWS Lambda function performs. Each evaluation
    -- identifies an AWS resource and indicates whether it complies with the
    -- AWS Config rule that invokes the AWS Lambda function.
    evaluations :: Core.Maybe [Evaluation],
    -- | An encrypted token that associates an evaluation with an AWS Config
    -- rule. Identifies the rule and the event that triggered the evaluation.
    resultToken :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutEvaluations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'testMode', 'putEvaluations_testMode' - Use this parameter to specify a test run for @PutEvaluations@. You can
-- verify whether your AWS Lambda function will deliver evaluation results
-- to AWS Config. No updates occur to your existing evaluations, and
-- evaluation results are not sent to AWS Config.
--
-- When @TestMode@ is @true@, @PutEvaluations@ doesn\'t require a valid
-- value for the @ResultToken@ parameter, but the value cannot be null.
--
-- 'evaluations', 'putEvaluations_evaluations' - The assessments that the AWS Lambda function performs. Each evaluation
-- identifies an AWS resource and indicates whether it complies with the
-- AWS Config rule that invokes the AWS Lambda function.
--
-- 'resultToken', 'putEvaluations_resultToken' - An encrypted token that associates an evaluation with an AWS Config
-- rule. Identifies the rule and the event that triggered the evaluation.
newPutEvaluations ::
  -- | 'resultToken'
  Core.Text ->
  PutEvaluations
newPutEvaluations pResultToken_ =
  PutEvaluations'
    { testMode = Core.Nothing,
      evaluations = Core.Nothing,
      resultToken = pResultToken_
    }

-- | Use this parameter to specify a test run for @PutEvaluations@. You can
-- verify whether your AWS Lambda function will deliver evaluation results
-- to AWS Config. No updates occur to your existing evaluations, and
-- evaluation results are not sent to AWS Config.
--
-- When @TestMode@ is @true@, @PutEvaluations@ doesn\'t require a valid
-- value for the @ResultToken@ parameter, but the value cannot be null.
putEvaluations_testMode :: Lens.Lens' PutEvaluations (Core.Maybe Core.Bool)
putEvaluations_testMode = Lens.lens (\PutEvaluations' {testMode} -> testMode) (\s@PutEvaluations' {} a -> s {testMode = a} :: PutEvaluations)

-- | The assessments that the AWS Lambda function performs. Each evaluation
-- identifies an AWS resource and indicates whether it complies with the
-- AWS Config rule that invokes the AWS Lambda function.
putEvaluations_evaluations :: Lens.Lens' PutEvaluations (Core.Maybe [Evaluation])
putEvaluations_evaluations = Lens.lens (\PutEvaluations' {evaluations} -> evaluations) (\s@PutEvaluations' {} a -> s {evaluations = a} :: PutEvaluations) Core.. Lens.mapping Lens._Coerce

-- | An encrypted token that associates an evaluation with an AWS Config
-- rule. Identifies the rule and the event that triggered the evaluation.
putEvaluations_resultToken :: Lens.Lens' PutEvaluations Core.Text
putEvaluations_resultToken = Lens.lens (\PutEvaluations' {resultToken} -> resultToken) (\s@PutEvaluations' {} a -> s {resultToken = a} :: PutEvaluations)

instance Core.AWSRequest PutEvaluations where
  type
    AWSResponse PutEvaluations =
      PutEvaluationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutEvaluationsResponse'
            Core.<$> (x Core..?> "FailedEvaluations" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable PutEvaluations

instance Core.NFData PutEvaluations

instance Core.ToHeaders PutEvaluations where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StarlingDoveService.PutEvaluations" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON PutEvaluations where
  toJSON PutEvaluations' {..} =
    Core.object
      ( Core.catMaybes
          [ ("TestMode" Core..=) Core.<$> testMode,
            ("Evaluations" Core..=) Core.<$> evaluations,
            Core.Just ("ResultToken" Core..= resultToken)
          ]
      )

instance Core.ToPath PutEvaluations where
  toPath = Core.const "/"

instance Core.ToQuery PutEvaluations where
  toQuery = Core.const Core.mempty

-- |
--
-- /See:/ 'newPutEvaluationsResponse' smart constructor.
data PutEvaluationsResponse = PutEvaluationsResponse'
  { -- | Requests that failed because of a client or server error.
    failedEvaluations :: Core.Maybe [Evaluation],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutEvaluationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failedEvaluations', 'putEvaluationsResponse_failedEvaluations' - Requests that failed because of a client or server error.
--
-- 'httpStatus', 'putEvaluationsResponse_httpStatus' - The response's http status code.
newPutEvaluationsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  PutEvaluationsResponse
newPutEvaluationsResponse pHttpStatus_ =
  PutEvaluationsResponse'
    { failedEvaluations =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Requests that failed because of a client or server error.
putEvaluationsResponse_failedEvaluations :: Lens.Lens' PutEvaluationsResponse (Core.Maybe [Evaluation])
putEvaluationsResponse_failedEvaluations = Lens.lens (\PutEvaluationsResponse' {failedEvaluations} -> failedEvaluations) (\s@PutEvaluationsResponse' {} a -> s {failedEvaluations = a} :: PutEvaluationsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
putEvaluationsResponse_httpStatus :: Lens.Lens' PutEvaluationsResponse Core.Int
putEvaluationsResponse_httpStatus = Lens.lens (\PutEvaluationsResponse' {httpStatus} -> httpStatus) (\s@PutEvaluationsResponse' {} a -> s {httpStatus = a} :: PutEvaluationsResponse)

instance Core.NFData PutEvaluationsResponse
