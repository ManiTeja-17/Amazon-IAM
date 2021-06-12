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
-- Module      : Network.AWS.Glue.UpdateUserDefinedFunction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing function definition in the Data Catalog.
module Network.AWS.Glue.UpdateUserDefinedFunction
  ( -- * Creating a Request
    UpdateUserDefinedFunction (..),
    newUpdateUserDefinedFunction,

    -- * Request Lenses
    updateUserDefinedFunction_catalogId,
    updateUserDefinedFunction_databaseName,
    updateUserDefinedFunction_functionName,
    updateUserDefinedFunction_functionInput,

    -- * Destructuring the Response
    UpdateUserDefinedFunctionResponse (..),
    newUpdateUserDefinedFunctionResponse,

    -- * Response Lenses
    updateUserDefinedFunctionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateUserDefinedFunction' smart constructor.
data UpdateUserDefinedFunction = UpdateUserDefinedFunction'
  { -- | The ID of the Data Catalog where the function to be updated is located.
    -- If none is provided, the AWS account ID is used by default.
    catalogId :: Core.Maybe Core.Text,
    -- | The name of the catalog database where the function to be updated is
    -- located.
    databaseName :: Core.Text,
    -- | The name of the function.
    functionName :: Core.Text,
    -- | A @FunctionInput@ object that redefines the function in the Data
    -- Catalog.
    functionInput :: UserDefinedFunctionInput
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateUserDefinedFunction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'updateUserDefinedFunction_catalogId' - The ID of the Data Catalog where the function to be updated is located.
-- If none is provided, the AWS account ID is used by default.
--
-- 'databaseName', 'updateUserDefinedFunction_databaseName' - The name of the catalog database where the function to be updated is
-- located.
--
-- 'functionName', 'updateUserDefinedFunction_functionName' - The name of the function.
--
-- 'functionInput', 'updateUserDefinedFunction_functionInput' - A @FunctionInput@ object that redefines the function in the Data
-- Catalog.
newUpdateUserDefinedFunction ::
  -- | 'databaseName'
  Core.Text ->
  -- | 'functionName'
  Core.Text ->
  -- | 'functionInput'
  UserDefinedFunctionInput ->
  UpdateUserDefinedFunction
newUpdateUserDefinedFunction
  pDatabaseName_
  pFunctionName_
  pFunctionInput_ =
    UpdateUserDefinedFunction'
      { catalogId =
          Core.Nothing,
        databaseName = pDatabaseName_,
        functionName = pFunctionName_,
        functionInput = pFunctionInput_
      }

-- | The ID of the Data Catalog where the function to be updated is located.
-- If none is provided, the AWS account ID is used by default.
updateUserDefinedFunction_catalogId :: Lens.Lens' UpdateUserDefinedFunction (Core.Maybe Core.Text)
updateUserDefinedFunction_catalogId = Lens.lens (\UpdateUserDefinedFunction' {catalogId} -> catalogId) (\s@UpdateUserDefinedFunction' {} a -> s {catalogId = a} :: UpdateUserDefinedFunction)

-- | The name of the catalog database where the function to be updated is
-- located.
updateUserDefinedFunction_databaseName :: Lens.Lens' UpdateUserDefinedFunction Core.Text
updateUserDefinedFunction_databaseName = Lens.lens (\UpdateUserDefinedFunction' {databaseName} -> databaseName) (\s@UpdateUserDefinedFunction' {} a -> s {databaseName = a} :: UpdateUserDefinedFunction)

-- | The name of the function.
updateUserDefinedFunction_functionName :: Lens.Lens' UpdateUserDefinedFunction Core.Text
updateUserDefinedFunction_functionName = Lens.lens (\UpdateUserDefinedFunction' {functionName} -> functionName) (\s@UpdateUserDefinedFunction' {} a -> s {functionName = a} :: UpdateUserDefinedFunction)

-- | A @FunctionInput@ object that redefines the function in the Data
-- Catalog.
updateUserDefinedFunction_functionInput :: Lens.Lens' UpdateUserDefinedFunction UserDefinedFunctionInput
updateUserDefinedFunction_functionInput = Lens.lens (\UpdateUserDefinedFunction' {functionInput} -> functionInput) (\s@UpdateUserDefinedFunction' {} a -> s {functionInput = a} :: UpdateUserDefinedFunction)

instance Core.AWSRequest UpdateUserDefinedFunction where
  type
    AWSResponse UpdateUserDefinedFunction =
      UpdateUserDefinedFunctionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateUserDefinedFunctionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateUserDefinedFunction

instance Core.NFData UpdateUserDefinedFunction

instance Core.ToHeaders UpdateUserDefinedFunction where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSGlue.UpdateUserDefinedFunction" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateUserDefinedFunction where
  toJSON UpdateUserDefinedFunction' {..} =
    Core.object
      ( Core.catMaybes
          [ ("CatalogId" Core..=) Core.<$> catalogId,
            Core.Just ("DatabaseName" Core..= databaseName),
            Core.Just ("FunctionName" Core..= functionName),
            Core.Just ("FunctionInput" Core..= functionInput)
          ]
      )

instance Core.ToPath UpdateUserDefinedFunction where
  toPath = Core.const "/"

instance Core.ToQuery UpdateUserDefinedFunction where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateUserDefinedFunctionResponse' smart constructor.
data UpdateUserDefinedFunctionResponse = UpdateUserDefinedFunctionResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateUserDefinedFunctionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateUserDefinedFunctionResponse_httpStatus' - The response's http status code.
newUpdateUserDefinedFunctionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateUserDefinedFunctionResponse
newUpdateUserDefinedFunctionResponse pHttpStatus_ =
  UpdateUserDefinedFunctionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateUserDefinedFunctionResponse_httpStatus :: Lens.Lens' UpdateUserDefinedFunctionResponse Core.Int
updateUserDefinedFunctionResponse_httpStatus = Lens.lens (\UpdateUserDefinedFunctionResponse' {httpStatus} -> httpStatus) (\s@UpdateUserDefinedFunctionResponse' {} a -> s {httpStatus = a} :: UpdateUserDefinedFunctionResponse)

instance
  Core.NFData
    UpdateUserDefinedFunctionResponse
