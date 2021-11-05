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
-- Module      : Network.AWS.Chime.UpdateSipMediaApplicationCall
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows you to trigger a Lambda function at any time while a call is
-- active, and replace the current actions with new actions returned by the
-- invocation.
module Network.AWS.Chime.UpdateSipMediaApplicationCall
  ( -- * Creating a Request
    UpdateSipMediaApplicationCall (..),
    newUpdateSipMediaApplicationCall,

    -- * Request Lenses
    updateSipMediaApplicationCall_sipMediaApplicationId,
    updateSipMediaApplicationCall_transactionId,
    updateSipMediaApplicationCall_arguments,

    -- * Destructuring the Response
    UpdateSipMediaApplicationCallResponse (..),
    newUpdateSipMediaApplicationCallResponse,

    -- * Response Lenses
    updateSipMediaApplicationCallResponse_sipMediaApplicationCall,
    updateSipMediaApplicationCallResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateSipMediaApplicationCall' smart constructor.
data UpdateSipMediaApplicationCall = UpdateSipMediaApplicationCall'
  { -- | The ID of the SIP media application handling the call.
    sipMediaApplicationId :: Prelude.Text,
    -- | The ID of the call transaction.
    transactionId :: Prelude.Text,
    -- | Arguments made available to the Lambda function as part of the
    -- @CALL_UPDATE_REQUESTED@ event. Can contain 0-20 key-value pairs.
    arguments :: Prelude.HashMap Prelude.Text (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSipMediaApplicationCall' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipMediaApplicationId', 'updateSipMediaApplicationCall_sipMediaApplicationId' - The ID of the SIP media application handling the call.
--
-- 'transactionId', 'updateSipMediaApplicationCall_transactionId' - The ID of the call transaction.
--
-- 'arguments', 'updateSipMediaApplicationCall_arguments' - Arguments made available to the Lambda function as part of the
-- @CALL_UPDATE_REQUESTED@ event. Can contain 0-20 key-value pairs.
newUpdateSipMediaApplicationCall ::
  -- | 'sipMediaApplicationId'
  Prelude.Text ->
  -- | 'transactionId'
  Prelude.Text ->
  UpdateSipMediaApplicationCall
newUpdateSipMediaApplicationCall
  pSipMediaApplicationId_
  pTransactionId_ =
    UpdateSipMediaApplicationCall'
      { sipMediaApplicationId =
          pSipMediaApplicationId_,
        transactionId = pTransactionId_,
        arguments = Prelude.mempty
      }

-- | The ID of the SIP media application handling the call.
updateSipMediaApplicationCall_sipMediaApplicationId :: Lens.Lens' UpdateSipMediaApplicationCall Prelude.Text
updateSipMediaApplicationCall_sipMediaApplicationId = Lens.lens (\UpdateSipMediaApplicationCall' {sipMediaApplicationId} -> sipMediaApplicationId) (\s@UpdateSipMediaApplicationCall' {} a -> s {sipMediaApplicationId = a} :: UpdateSipMediaApplicationCall)

-- | The ID of the call transaction.
updateSipMediaApplicationCall_transactionId :: Lens.Lens' UpdateSipMediaApplicationCall Prelude.Text
updateSipMediaApplicationCall_transactionId = Lens.lens (\UpdateSipMediaApplicationCall' {transactionId} -> transactionId) (\s@UpdateSipMediaApplicationCall' {} a -> s {transactionId = a} :: UpdateSipMediaApplicationCall)

-- | Arguments made available to the Lambda function as part of the
-- @CALL_UPDATE_REQUESTED@ event. Can contain 0-20 key-value pairs.
updateSipMediaApplicationCall_arguments :: Lens.Lens' UpdateSipMediaApplicationCall (Prelude.HashMap Prelude.Text Prelude.Text)
updateSipMediaApplicationCall_arguments = Lens.lens (\UpdateSipMediaApplicationCall' {arguments} -> arguments) (\s@UpdateSipMediaApplicationCall' {} a -> s {arguments = a} :: UpdateSipMediaApplicationCall) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    UpdateSipMediaApplicationCall
  where
  type
    AWSResponse UpdateSipMediaApplicationCall =
      UpdateSipMediaApplicationCallResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateSipMediaApplicationCallResponse'
            Prelude.<$> (x Core..?> "SipMediaApplicationCall")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateSipMediaApplicationCall

instance Prelude.NFData UpdateSipMediaApplicationCall

instance Core.ToHeaders UpdateSipMediaApplicationCall where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateSipMediaApplicationCall where
  toJSON UpdateSipMediaApplicationCall' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Arguments" Core..= arguments)]
      )

instance Core.ToPath UpdateSipMediaApplicationCall where
  toPath UpdateSipMediaApplicationCall' {..} =
    Prelude.mconcat
      [ "/sip-media-applications/",
        Core.toBS sipMediaApplicationId,
        "/calls/",
        Core.toBS transactionId
      ]

instance Core.ToQuery UpdateSipMediaApplicationCall where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateSipMediaApplicationCallResponse' smart constructor.
data UpdateSipMediaApplicationCallResponse = UpdateSipMediaApplicationCallResponse'
  { sipMediaApplicationCall :: Prelude.Maybe SipMediaApplicationCall,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSipMediaApplicationCallResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipMediaApplicationCall', 'updateSipMediaApplicationCallResponse_sipMediaApplicationCall' - Undocumented member.
--
-- 'httpStatus', 'updateSipMediaApplicationCallResponse_httpStatus' - The response's http status code.
newUpdateSipMediaApplicationCallResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateSipMediaApplicationCallResponse
newUpdateSipMediaApplicationCallResponse pHttpStatus_ =
  UpdateSipMediaApplicationCallResponse'
    { sipMediaApplicationCall =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateSipMediaApplicationCallResponse_sipMediaApplicationCall :: Lens.Lens' UpdateSipMediaApplicationCallResponse (Prelude.Maybe SipMediaApplicationCall)
updateSipMediaApplicationCallResponse_sipMediaApplicationCall = Lens.lens (\UpdateSipMediaApplicationCallResponse' {sipMediaApplicationCall} -> sipMediaApplicationCall) (\s@UpdateSipMediaApplicationCallResponse' {} a -> s {sipMediaApplicationCall = a} :: UpdateSipMediaApplicationCallResponse)

-- | The response's http status code.
updateSipMediaApplicationCallResponse_httpStatus :: Lens.Lens' UpdateSipMediaApplicationCallResponse Prelude.Int
updateSipMediaApplicationCallResponse_httpStatus = Lens.lens (\UpdateSipMediaApplicationCallResponse' {httpStatus} -> httpStatus) (\s@UpdateSipMediaApplicationCallResponse' {} a -> s {httpStatus = a} :: UpdateSipMediaApplicationCallResponse)

instance
  Prelude.NFData
    UpdateSipMediaApplicationCallResponse