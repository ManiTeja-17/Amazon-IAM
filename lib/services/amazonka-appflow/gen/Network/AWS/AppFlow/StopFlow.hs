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
-- Module      : Network.AWS.AppFlow.StopFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deactivates the existing flow. For on-demand flows, this operation
-- returns an @unsupportedOperationException@ error message. For schedule
-- and event-triggered flows, this operation deactivates the flow.
module Network.AWS.AppFlow.StopFlow
  ( -- * Creating a Request
    StopFlow (..),
    newStopFlow,

    -- * Request Lenses
    stopFlow_flowName,

    -- * Destructuring the Response
    StopFlowResponse (..),
    newStopFlowResponse,

    -- * Response Lenses
    stopFlowResponse_flowArn,
    stopFlowResponse_flowStatus,
    stopFlowResponse_httpStatus,
  )
where

import Network.AWS.AppFlow.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStopFlow' smart constructor.
data StopFlow = StopFlow'
  { -- | The specified name of the flow. Spaces are not allowed. Use underscores
    -- (_) or hyphens (-) only.
    flowName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowName', 'stopFlow_flowName' - The specified name of the flow. Spaces are not allowed. Use underscores
-- (_) or hyphens (-) only.
newStopFlow ::
  -- | 'flowName'
  Prelude.Text ->
  StopFlow
newStopFlow pFlowName_ =
  StopFlow' {flowName = pFlowName_}

-- | The specified name of the flow. Spaces are not allowed. Use underscores
-- (_) or hyphens (-) only.
stopFlow_flowName :: Lens.Lens' StopFlow Prelude.Text
stopFlow_flowName = Lens.lens (\StopFlow' {flowName} -> flowName) (\s@StopFlow' {} a -> s {flowName = a} :: StopFlow)

instance Core.AWSRequest StopFlow where
  type AWSResponse StopFlow = StopFlowResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StopFlowResponse'
            Prelude.<$> (x Core..?> "flowArn")
            Prelude.<*> (x Core..?> "flowStatus")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopFlow

instance Prelude.NFData StopFlow

instance Core.ToHeaders StopFlow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopFlow where
  toJSON StopFlow' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("flowName" Core..= flowName)]
      )

instance Core.ToPath StopFlow where
  toPath = Prelude.const "/stop-flow"

instance Core.ToQuery StopFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopFlowResponse' smart constructor.
data StopFlowResponse = StopFlowResponse'
  { -- | The flow\'s Amazon Resource Name (ARN).
    flowArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates the current status of the flow.
    flowStatus :: Prelude.Maybe FlowStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowArn', 'stopFlowResponse_flowArn' - The flow\'s Amazon Resource Name (ARN).
--
-- 'flowStatus', 'stopFlowResponse_flowStatus' - Indicates the current status of the flow.
--
-- 'httpStatus', 'stopFlowResponse_httpStatus' - The response's http status code.
newStopFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopFlowResponse
newStopFlowResponse pHttpStatus_ =
  StopFlowResponse'
    { flowArn = Prelude.Nothing,
      flowStatus = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The flow\'s Amazon Resource Name (ARN).
stopFlowResponse_flowArn :: Lens.Lens' StopFlowResponse (Prelude.Maybe Prelude.Text)
stopFlowResponse_flowArn = Lens.lens (\StopFlowResponse' {flowArn} -> flowArn) (\s@StopFlowResponse' {} a -> s {flowArn = a} :: StopFlowResponse)

-- | Indicates the current status of the flow.
stopFlowResponse_flowStatus :: Lens.Lens' StopFlowResponse (Prelude.Maybe FlowStatus)
stopFlowResponse_flowStatus = Lens.lens (\StopFlowResponse' {flowStatus} -> flowStatus) (\s@StopFlowResponse' {} a -> s {flowStatus = a} :: StopFlowResponse)

-- | The response's http status code.
stopFlowResponse_httpStatus :: Lens.Lens' StopFlowResponse Prelude.Int
stopFlowResponse_httpStatus = Lens.lens (\StopFlowResponse' {httpStatus} -> httpStatus) (\s@StopFlowResponse' {} a -> s {httpStatus = a} :: StopFlowResponse)

instance Prelude.NFData StopFlowResponse