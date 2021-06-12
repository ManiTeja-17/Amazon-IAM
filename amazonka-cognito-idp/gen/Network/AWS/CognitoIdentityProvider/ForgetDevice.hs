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
-- Module      : Network.AWS.CognitoIdentityProvider.ForgetDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forgets the specified device.
module Network.AWS.CognitoIdentityProvider.ForgetDevice
  ( -- * Creating a Request
    ForgetDevice (..),
    newForgetDevice,

    -- * Request Lenses
    forgetDevice_accessToken,
    forgetDevice_deviceKey,

    -- * Destructuring the Response
    ForgetDeviceResponse (..),
    newForgetDeviceResponse,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to forget the device.
--
-- /See:/ 'newForgetDevice' smart constructor.
data ForgetDevice = ForgetDevice'
  { -- | The access token for the forgotten device request.
    accessToken :: Core.Maybe (Core.Sensitive Core.Text),
    -- | The device key.
    deviceKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'ForgetDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessToken', 'forgetDevice_accessToken' - The access token for the forgotten device request.
--
-- 'deviceKey', 'forgetDevice_deviceKey' - The device key.
newForgetDevice ::
  -- | 'deviceKey'
  Core.Text ->
  ForgetDevice
newForgetDevice pDeviceKey_ =
  ForgetDevice'
    { accessToken = Core.Nothing,
      deviceKey = pDeviceKey_
    }

-- | The access token for the forgotten device request.
forgetDevice_accessToken :: Lens.Lens' ForgetDevice (Core.Maybe Core.Text)
forgetDevice_accessToken = Lens.lens (\ForgetDevice' {accessToken} -> accessToken) (\s@ForgetDevice' {} a -> s {accessToken = a} :: ForgetDevice) Core.. Lens.mapping Core._Sensitive

-- | The device key.
forgetDevice_deviceKey :: Lens.Lens' ForgetDevice Core.Text
forgetDevice_deviceKey = Lens.lens (\ForgetDevice' {deviceKey} -> deviceKey) (\s@ForgetDevice' {} a -> s {deviceKey = a} :: ForgetDevice)

instance Core.AWSRequest ForgetDevice where
  type AWSResponse ForgetDevice = ForgetDeviceResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull ForgetDeviceResponse'

instance Core.Hashable ForgetDevice

instance Core.NFData ForgetDevice

instance Core.ToHeaders ForgetDevice where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.ForgetDevice" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ForgetDevice where
  toJSON ForgetDevice' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AccessToken" Core..=) Core.<$> accessToken,
            Core.Just ("DeviceKey" Core..= deviceKey)
          ]
      )

instance Core.ToPath ForgetDevice where
  toPath = Core.const "/"

instance Core.ToQuery ForgetDevice where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newForgetDeviceResponse' smart constructor.
data ForgetDeviceResponse = ForgetDeviceResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ForgetDeviceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newForgetDeviceResponse ::
  ForgetDeviceResponse
newForgetDeviceResponse = ForgetDeviceResponse'

instance Core.NFData ForgetDeviceResponse
