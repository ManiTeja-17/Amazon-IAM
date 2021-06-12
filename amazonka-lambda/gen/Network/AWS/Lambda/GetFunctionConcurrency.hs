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
-- Module      : Network.AWS.Lambda.GetFunctionConcurrency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about the reserved concurrency configuration for a
-- function. To set a concurrency limit for a function, use
-- PutFunctionConcurrency.
module Network.AWS.Lambda.GetFunctionConcurrency
  ( -- * Creating a Request
    GetFunctionConcurrency (..),
    newGetFunctionConcurrency,

    -- * Request Lenses
    getFunctionConcurrency_functionName,

    -- * Destructuring the Response
    GetFunctionConcurrencyResponse (..),
    newGetFunctionConcurrencyResponse,

    -- * Response Lenses
    getFunctionConcurrencyResponse_reservedConcurrentExecutions,
    getFunctionConcurrencyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Lambda.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetFunctionConcurrency' smart constructor.
data GetFunctionConcurrency = GetFunctionConcurrency'
  { -- | The name of the Lambda function.
    --
    -- __Name formats__
    --
    -- -   __Function name__ - @my-function@.
    --
    -- -   __Function ARN__ -
    --     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
    --
    -- -   __Partial ARN__ - @123456789012:function:my-function@.
    --
    -- The length constraint applies only to the full ARN. If you specify only
    -- the function name, it is limited to 64 characters in length.
    functionName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetFunctionConcurrency' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'functionName', 'getFunctionConcurrency_functionName' - The name of the Lambda function.
--
-- __Name formats__
--
-- -   __Function name__ - @my-function@.
--
-- -   __Function ARN__ -
--     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
--
-- -   __Partial ARN__ - @123456789012:function:my-function@.
--
-- The length constraint applies only to the full ARN. If you specify only
-- the function name, it is limited to 64 characters in length.
newGetFunctionConcurrency ::
  -- | 'functionName'
  Core.Text ->
  GetFunctionConcurrency
newGetFunctionConcurrency pFunctionName_ =
  GetFunctionConcurrency'
    { functionName =
        pFunctionName_
    }

-- | The name of the Lambda function.
--
-- __Name formats__
--
-- -   __Function name__ - @my-function@.
--
-- -   __Function ARN__ -
--     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
--
-- -   __Partial ARN__ - @123456789012:function:my-function@.
--
-- The length constraint applies only to the full ARN. If you specify only
-- the function name, it is limited to 64 characters in length.
getFunctionConcurrency_functionName :: Lens.Lens' GetFunctionConcurrency Core.Text
getFunctionConcurrency_functionName = Lens.lens (\GetFunctionConcurrency' {functionName} -> functionName) (\s@GetFunctionConcurrency' {} a -> s {functionName = a} :: GetFunctionConcurrency)

instance Core.AWSRequest GetFunctionConcurrency where
  type
    AWSResponse GetFunctionConcurrency =
      GetFunctionConcurrencyResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFunctionConcurrencyResponse'
            Core.<$> (x Core..?> "ReservedConcurrentExecutions")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetFunctionConcurrency

instance Core.NFData GetFunctionConcurrency

instance Core.ToHeaders GetFunctionConcurrency where
  toHeaders = Core.const Core.mempty

instance Core.ToPath GetFunctionConcurrency where
  toPath GetFunctionConcurrency' {..} =
    Core.mconcat
      [ "/2019-09-30/functions/",
        Core.toBS functionName,
        "/concurrency"
      ]

instance Core.ToQuery GetFunctionConcurrency where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetFunctionConcurrencyResponse' smart constructor.
data GetFunctionConcurrencyResponse = GetFunctionConcurrencyResponse'
  { -- | The number of simultaneous executions that are reserved for the
    -- function.
    reservedConcurrentExecutions :: Core.Maybe Core.Natural,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetFunctionConcurrencyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservedConcurrentExecutions', 'getFunctionConcurrencyResponse_reservedConcurrentExecutions' - The number of simultaneous executions that are reserved for the
-- function.
--
-- 'httpStatus', 'getFunctionConcurrencyResponse_httpStatus' - The response's http status code.
newGetFunctionConcurrencyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetFunctionConcurrencyResponse
newGetFunctionConcurrencyResponse pHttpStatus_ =
  GetFunctionConcurrencyResponse'
    { reservedConcurrentExecutions =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The number of simultaneous executions that are reserved for the
-- function.
getFunctionConcurrencyResponse_reservedConcurrentExecutions :: Lens.Lens' GetFunctionConcurrencyResponse (Core.Maybe Core.Natural)
getFunctionConcurrencyResponse_reservedConcurrentExecutions = Lens.lens (\GetFunctionConcurrencyResponse' {reservedConcurrentExecutions} -> reservedConcurrentExecutions) (\s@GetFunctionConcurrencyResponse' {} a -> s {reservedConcurrentExecutions = a} :: GetFunctionConcurrencyResponse)

-- | The response's http status code.
getFunctionConcurrencyResponse_httpStatus :: Lens.Lens' GetFunctionConcurrencyResponse Core.Int
getFunctionConcurrencyResponse_httpStatus = Lens.lens (\GetFunctionConcurrencyResponse' {httpStatus} -> httpStatus) (\s@GetFunctionConcurrencyResponse' {} a -> s {httpStatus = a} :: GetFunctionConcurrencyResponse)

instance Core.NFData GetFunctionConcurrencyResponse
