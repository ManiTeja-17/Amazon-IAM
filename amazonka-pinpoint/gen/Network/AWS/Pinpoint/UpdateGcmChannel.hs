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
-- Module      : Network.AWS.Pinpoint.UpdateGcmChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the GCM channel for an application or updates the status and
-- settings of the GCM channel for an application.
module Network.AWS.Pinpoint.UpdateGcmChannel
  ( -- * Creating a Request
    UpdateGcmChannel (..),
    newUpdateGcmChannel,

    -- * Request Lenses
    updateGcmChannel_applicationId,
    updateGcmChannel_gCMChannelRequest,

    -- * Destructuring the Response
    UpdateGcmChannelResponse (..),
    newUpdateGcmChannelResponse,

    -- * Response Lenses
    updateGcmChannelResponse_httpStatus,
    updateGcmChannelResponse_gCMChannelResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateGcmChannel' smart constructor.
data UpdateGcmChannel = UpdateGcmChannel'
  { -- | The unique identifier for the application. This identifier is displayed
    -- as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Core.Text,
    gCMChannelRequest :: GCMChannelRequest
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateGcmChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'updateGcmChannel_applicationId' - The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
--
-- 'gCMChannelRequest', 'updateGcmChannel_gCMChannelRequest' - Undocumented member.
newUpdateGcmChannel ::
  -- | 'applicationId'
  Core.Text ->
  -- | 'gCMChannelRequest'
  GCMChannelRequest ->
  UpdateGcmChannel
newUpdateGcmChannel
  pApplicationId_
  pGCMChannelRequest_ =
    UpdateGcmChannel'
      { applicationId = pApplicationId_,
        gCMChannelRequest = pGCMChannelRequest_
      }

-- | The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
updateGcmChannel_applicationId :: Lens.Lens' UpdateGcmChannel Core.Text
updateGcmChannel_applicationId = Lens.lens (\UpdateGcmChannel' {applicationId} -> applicationId) (\s@UpdateGcmChannel' {} a -> s {applicationId = a} :: UpdateGcmChannel)

-- | Undocumented member.
updateGcmChannel_gCMChannelRequest :: Lens.Lens' UpdateGcmChannel GCMChannelRequest
updateGcmChannel_gCMChannelRequest = Lens.lens (\UpdateGcmChannel' {gCMChannelRequest} -> gCMChannelRequest) (\s@UpdateGcmChannel' {} a -> s {gCMChannelRequest = a} :: UpdateGcmChannel)

instance Core.AWSRequest UpdateGcmChannel where
  type
    AWSResponse UpdateGcmChannel =
      UpdateGcmChannelResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateGcmChannelResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (Core.eitherParseJSON x)
      )

instance Core.Hashable UpdateGcmChannel

instance Core.NFData UpdateGcmChannel

instance Core.ToHeaders UpdateGcmChannel where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateGcmChannel where
  toJSON UpdateGcmChannel' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("GCMChannelRequest" Core..= gCMChannelRequest)
          ]
      )

instance Core.ToPath UpdateGcmChannel where
  toPath UpdateGcmChannel' {..} =
    Core.mconcat
      [ "/v1/apps/",
        Core.toBS applicationId,
        "/channels/gcm"
      ]

instance Core.ToQuery UpdateGcmChannel where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateGcmChannelResponse' smart constructor.
data UpdateGcmChannelResponse = UpdateGcmChannelResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    gCMChannelResponse :: GCMChannelResponse
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateGcmChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateGcmChannelResponse_httpStatus' - The response's http status code.
--
-- 'gCMChannelResponse', 'updateGcmChannelResponse_gCMChannelResponse' - Undocumented member.
newUpdateGcmChannelResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'gCMChannelResponse'
  GCMChannelResponse ->
  UpdateGcmChannelResponse
newUpdateGcmChannelResponse
  pHttpStatus_
  pGCMChannelResponse_ =
    UpdateGcmChannelResponse'
      { httpStatus =
          pHttpStatus_,
        gCMChannelResponse = pGCMChannelResponse_
      }

-- | The response's http status code.
updateGcmChannelResponse_httpStatus :: Lens.Lens' UpdateGcmChannelResponse Core.Int
updateGcmChannelResponse_httpStatus = Lens.lens (\UpdateGcmChannelResponse' {httpStatus} -> httpStatus) (\s@UpdateGcmChannelResponse' {} a -> s {httpStatus = a} :: UpdateGcmChannelResponse)

-- | Undocumented member.
updateGcmChannelResponse_gCMChannelResponse :: Lens.Lens' UpdateGcmChannelResponse GCMChannelResponse
updateGcmChannelResponse_gCMChannelResponse = Lens.lens (\UpdateGcmChannelResponse' {gCMChannelResponse} -> gCMChannelResponse) (\s@UpdateGcmChannelResponse' {} a -> s {gCMChannelResponse = a} :: UpdateGcmChannelResponse)

instance Core.NFData UpdateGcmChannelResponse
