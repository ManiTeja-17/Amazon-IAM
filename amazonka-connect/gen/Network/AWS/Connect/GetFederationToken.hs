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
-- Module      : Network.AWS.Connect.GetFederationToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a token for federation.
module Network.AWS.Connect.GetFederationToken
  ( -- * Creating a Request
    GetFederationToken (..),
    newGetFederationToken,

    -- * Request Lenses
    getFederationToken_instanceId,

    -- * Destructuring the Response
    GetFederationTokenResponse (..),
    newGetFederationTokenResponse,

    -- * Response Lenses
    getFederationTokenResponse_credentials,
    getFederationTokenResponse_httpStatus,
  )
where

import Network.AWS.Connect.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetFederationToken' smart constructor.
data GetFederationToken = GetFederationToken'
  { -- | The identifier of the Amazon Connect instance.
    instanceId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetFederationToken' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'getFederationToken_instanceId' - The identifier of the Amazon Connect instance.
newGetFederationToken ::
  -- | 'instanceId'
  Core.Text ->
  GetFederationToken
newGetFederationToken pInstanceId_ =
  GetFederationToken' {instanceId = pInstanceId_}

-- | The identifier of the Amazon Connect instance.
getFederationToken_instanceId :: Lens.Lens' GetFederationToken Core.Text
getFederationToken_instanceId = Lens.lens (\GetFederationToken' {instanceId} -> instanceId) (\s@GetFederationToken' {} a -> s {instanceId = a} :: GetFederationToken)

instance Core.AWSRequest GetFederationToken where
  type
    AWSResponse GetFederationToken =
      GetFederationTokenResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFederationTokenResponse'
            Core.<$> (x Core..?> "Credentials")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetFederationToken

instance Core.NFData GetFederationToken

instance Core.ToHeaders GetFederationToken where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath GetFederationToken where
  toPath GetFederationToken' {..} =
    Core.mconcat
      ["/user/federate/", Core.toBS instanceId]

instance Core.ToQuery GetFederationToken where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetFederationTokenResponse' smart constructor.
data GetFederationTokenResponse = GetFederationTokenResponse'
  { -- | The credentials to use for federation.
    credentials :: Core.Maybe Credentials,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetFederationTokenResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'credentials', 'getFederationTokenResponse_credentials' - The credentials to use for federation.
--
-- 'httpStatus', 'getFederationTokenResponse_httpStatus' - The response's http status code.
newGetFederationTokenResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetFederationTokenResponse
newGetFederationTokenResponse pHttpStatus_ =
  GetFederationTokenResponse'
    { credentials =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The credentials to use for federation.
getFederationTokenResponse_credentials :: Lens.Lens' GetFederationTokenResponse (Core.Maybe Credentials)
getFederationTokenResponse_credentials = Lens.lens (\GetFederationTokenResponse' {credentials} -> credentials) (\s@GetFederationTokenResponse' {} a -> s {credentials = a} :: GetFederationTokenResponse)

-- | The response's http status code.
getFederationTokenResponse_httpStatus :: Lens.Lens' GetFederationTokenResponse Core.Int
getFederationTokenResponse_httpStatus = Lens.lens (\GetFederationTokenResponse' {httpStatus} -> httpStatus) (\s@GetFederationTokenResponse' {} a -> s {httpStatus = a} :: GetFederationTokenResponse)

instance Core.NFData GetFederationTokenResponse
