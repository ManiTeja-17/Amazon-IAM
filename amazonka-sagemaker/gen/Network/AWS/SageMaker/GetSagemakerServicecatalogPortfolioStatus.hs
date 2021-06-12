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
-- Module      : Network.AWS.SageMaker.GetSagemakerServicecatalogPortfolioStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of Service Catalog in SageMaker. Service Catalog is used
-- to create SageMaker projects.
module Network.AWS.SageMaker.GetSagemakerServicecatalogPortfolioStatus
  ( -- * Creating a Request
    GetSagemakerServicecatalogPortfolioStatus (..),
    newGetSagemakerServicecatalogPortfolioStatus,

    -- * Destructuring the Response
    GetSagemakerServicecatalogPortfolioStatusResponse (..),
    newGetSagemakerServicecatalogPortfolioStatusResponse,

    -- * Response Lenses
    getSagemakerServicecatalogPortfolioStatusResponse_status,
    getSagemakerServicecatalogPortfolioStatusResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newGetSagemakerServicecatalogPortfolioStatus' smart constructor.
data GetSagemakerServicecatalogPortfolioStatus = GetSagemakerServicecatalogPortfolioStatus'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetSagemakerServicecatalogPortfolioStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetSagemakerServicecatalogPortfolioStatus ::
  GetSagemakerServicecatalogPortfolioStatus
newGetSagemakerServicecatalogPortfolioStatus =
  GetSagemakerServicecatalogPortfolioStatus'

instance
  Core.AWSRequest
    GetSagemakerServicecatalogPortfolioStatus
  where
  type
    AWSResponse
      GetSagemakerServicecatalogPortfolioStatus =
      GetSagemakerServicecatalogPortfolioStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSagemakerServicecatalogPortfolioStatusResponse'
            Core.<$> (x Core..?> "Status")
              Core.<*> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    GetSagemakerServicecatalogPortfolioStatus

instance
  Core.NFData
    GetSagemakerServicecatalogPortfolioStatus

instance
  Core.ToHeaders
    GetSagemakerServicecatalogPortfolioStatus
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.GetSagemakerServicecatalogPortfolioStatus" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance
  Core.ToJSON
    GetSagemakerServicecatalogPortfolioStatus
  where
  toJSON = Core.const (Core.Object Core.mempty)

instance
  Core.ToPath
    GetSagemakerServicecatalogPortfolioStatus
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    GetSagemakerServicecatalogPortfolioStatus
  where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetSagemakerServicecatalogPortfolioStatusResponse' smart constructor.
data GetSagemakerServicecatalogPortfolioStatusResponse = GetSagemakerServicecatalogPortfolioStatusResponse'
  { -- | Whether Service Catalog is enabled or disabled in SageMaker.
    status :: Core.Maybe SagemakerServicecatalogStatus,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetSagemakerServicecatalogPortfolioStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'getSagemakerServicecatalogPortfolioStatusResponse_status' - Whether Service Catalog is enabled or disabled in SageMaker.
--
-- 'httpStatus', 'getSagemakerServicecatalogPortfolioStatusResponse_httpStatus' - The response's http status code.
newGetSagemakerServicecatalogPortfolioStatusResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetSagemakerServicecatalogPortfolioStatusResponse
newGetSagemakerServicecatalogPortfolioStatusResponse
  pHttpStatus_ =
    GetSagemakerServicecatalogPortfolioStatusResponse'
      { status =
          Core.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Whether Service Catalog is enabled or disabled in SageMaker.
getSagemakerServicecatalogPortfolioStatusResponse_status :: Lens.Lens' GetSagemakerServicecatalogPortfolioStatusResponse (Core.Maybe SagemakerServicecatalogStatus)
getSagemakerServicecatalogPortfolioStatusResponse_status = Lens.lens (\GetSagemakerServicecatalogPortfolioStatusResponse' {status} -> status) (\s@GetSagemakerServicecatalogPortfolioStatusResponse' {} a -> s {status = a} :: GetSagemakerServicecatalogPortfolioStatusResponse)

-- | The response's http status code.
getSagemakerServicecatalogPortfolioStatusResponse_httpStatus :: Lens.Lens' GetSagemakerServicecatalogPortfolioStatusResponse Core.Int
getSagemakerServicecatalogPortfolioStatusResponse_httpStatus = Lens.lens (\GetSagemakerServicecatalogPortfolioStatusResponse' {httpStatus} -> httpStatus) (\s@GetSagemakerServicecatalogPortfolioStatusResponse' {} a -> s {httpStatus = a} :: GetSagemakerServicecatalogPortfolioStatusResponse)

instance
  Core.NFData
    GetSagemakerServicecatalogPortfolioStatusResponse
