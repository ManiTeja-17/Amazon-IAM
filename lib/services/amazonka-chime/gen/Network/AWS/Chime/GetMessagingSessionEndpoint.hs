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
-- Module      : Network.AWS.Chime.GetMessagingSessionEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The details of the endpoint for the messaging session.
module Network.AWS.Chime.GetMessagingSessionEndpoint
  ( -- * Creating a Request
    GetMessagingSessionEndpoint (..),
    newGetMessagingSessionEndpoint,

    -- * Destructuring the Response
    GetMessagingSessionEndpointResponse (..),
    newGetMessagingSessionEndpointResponse,

    -- * Response Lenses
    getMessagingSessionEndpointResponse_endpoint,
    getMessagingSessionEndpointResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetMessagingSessionEndpoint' smart constructor.
data GetMessagingSessionEndpoint = GetMessagingSessionEndpoint'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMessagingSessionEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetMessagingSessionEndpoint ::
  GetMessagingSessionEndpoint
newGetMessagingSessionEndpoint =
  GetMessagingSessionEndpoint'

instance Core.AWSRequest GetMessagingSessionEndpoint where
  type
    AWSResponse GetMessagingSessionEndpoint =
      GetMessagingSessionEndpointResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMessagingSessionEndpointResponse'
            Prelude.<$> (x Core..?> "Endpoint")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMessagingSessionEndpoint

instance Prelude.NFData GetMessagingSessionEndpoint

instance Core.ToHeaders GetMessagingSessionEndpoint where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetMessagingSessionEndpoint where
  toPath = Prelude.const "/endpoints/messaging-session"

instance Core.ToQuery GetMessagingSessionEndpoint where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMessagingSessionEndpointResponse' smart constructor.
data GetMessagingSessionEndpointResponse = GetMessagingSessionEndpointResponse'
  { -- | The endpoint returned in the response.
    endpoint :: Prelude.Maybe MessagingSessionEndpoint,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMessagingSessionEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpoint', 'getMessagingSessionEndpointResponse_endpoint' - The endpoint returned in the response.
--
-- 'httpStatus', 'getMessagingSessionEndpointResponse_httpStatus' - The response's http status code.
newGetMessagingSessionEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMessagingSessionEndpointResponse
newGetMessagingSessionEndpointResponse pHttpStatus_ =
  GetMessagingSessionEndpointResponse'
    { endpoint =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The endpoint returned in the response.
getMessagingSessionEndpointResponse_endpoint :: Lens.Lens' GetMessagingSessionEndpointResponse (Prelude.Maybe MessagingSessionEndpoint)
getMessagingSessionEndpointResponse_endpoint = Lens.lens (\GetMessagingSessionEndpointResponse' {endpoint} -> endpoint) (\s@GetMessagingSessionEndpointResponse' {} a -> s {endpoint = a} :: GetMessagingSessionEndpointResponse)

-- | The response's http status code.
getMessagingSessionEndpointResponse_httpStatus :: Lens.Lens' GetMessagingSessionEndpointResponse Prelude.Int
getMessagingSessionEndpointResponse_httpStatus = Lens.lens (\GetMessagingSessionEndpointResponse' {httpStatus} -> httpStatus) (\s@GetMessagingSessionEndpointResponse' {} a -> s {httpStatus = a} :: GetMessagingSessionEndpointResponse)

instance
  Prelude.NFData
    GetMessagingSessionEndpointResponse