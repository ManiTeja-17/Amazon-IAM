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
-- Module      : Network.AWS.Pinpoint.DeleteApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an application.
module Network.AWS.Pinpoint.DeleteApp
  ( -- * Creating a Request
    DeleteApp (..),
    newDeleteApp,

    -- * Request Lenses
    deleteApp_applicationId,

    -- * Destructuring the Response
    DeleteAppResponse (..),
    newDeleteAppResponse,

    -- * Response Lenses
    deleteAppResponse_httpStatus,
    deleteAppResponse_applicationResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteApp' smart constructor.
data DeleteApp = DeleteApp'
  { -- | The unique identifier for the application. This identifier is displayed
    -- as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteApp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'deleteApp_applicationId' - The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
newDeleteApp ::
  -- | 'applicationId'
  Core.Text ->
  DeleteApp
newDeleteApp pApplicationId_ =
  DeleteApp' {applicationId = pApplicationId_}

-- | The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
deleteApp_applicationId :: Lens.Lens' DeleteApp Core.Text
deleteApp_applicationId = Lens.lens (\DeleteApp' {applicationId} -> applicationId) (\s@DeleteApp' {} a -> s {applicationId = a} :: DeleteApp)

instance Core.AWSRequest DeleteApp where
  type AWSResponse DeleteApp = DeleteAppResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteAppResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (Core.eitherParseJSON x)
      )

instance Core.Hashable DeleteApp

instance Core.NFData DeleteApp

instance Core.ToHeaders DeleteApp where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath DeleteApp where
  toPath DeleteApp' {..} =
    Core.mconcat ["/v1/apps/", Core.toBS applicationId]

instance Core.ToQuery DeleteApp where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteAppResponse' smart constructor.
data DeleteAppResponse = DeleteAppResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    applicationResponse :: ApplicationResponse
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteAppResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteAppResponse_httpStatus' - The response's http status code.
--
-- 'applicationResponse', 'deleteAppResponse_applicationResponse' - Undocumented member.
newDeleteAppResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'applicationResponse'
  ApplicationResponse ->
  DeleteAppResponse
newDeleteAppResponse
  pHttpStatus_
  pApplicationResponse_ =
    DeleteAppResponse'
      { httpStatus = pHttpStatus_,
        applicationResponse = pApplicationResponse_
      }

-- | The response's http status code.
deleteAppResponse_httpStatus :: Lens.Lens' DeleteAppResponse Core.Int
deleteAppResponse_httpStatus = Lens.lens (\DeleteAppResponse' {httpStatus} -> httpStatus) (\s@DeleteAppResponse' {} a -> s {httpStatus = a} :: DeleteAppResponse)

-- | Undocumented member.
deleteAppResponse_applicationResponse :: Lens.Lens' DeleteAppResponse ApplicationResponse
deleteAppResponse_applicationResponse = Lens.lens (\DeleteAppResponse' {applicationResponse} -> applicationResponse) (\s@DeleteAppResponse' {} a -> s {applicationResponse = a} :: DeleteAppResponse)

instance Core.NFData DeleteAppResponse
