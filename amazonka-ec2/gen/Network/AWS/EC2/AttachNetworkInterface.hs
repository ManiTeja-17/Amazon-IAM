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
-- Module      : Network.AWS.EC2.AttachNetworkInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches a network interface to an instance.
module Network.AWS.EC2.AttachNetworkInterface
  ( -- * Creating a Request
    AttachNetworkInterface (..),
    newAttachNetworkInterface,

    -- * Request Lenses
    attachNetworkInterface_dryRun,
    attachNetworkInterface_networkCardIndex,
    attachNetworkInterface_deviceIndex,
    attachNetworkInterface_instanceId,
    attachNetworkInterface_networkInterfaceId,

    -- * Destructuring the Response
    AttachNetworkInterfaceResponse (..),
    newAttachNetworkInterfaceResponse,

    -- * Response Lenses
    attachNetworkInterfaceResponse_attachmentId,
    attachNetworkInterfaceResponse_networkCardIndex,
    attachNetworkInterfaceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for AttachNetworkInterface.
--
-- /See:/ 'newAttachNetworkInterface' smart constructor.
data AttachNetworkInterface = AttachNetworkInterface'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | The index of the network card. Some instance types support multiple
    -- network cards. The primary network interface must be assigned to network
    -- card index 0. The default is network card index 0.
    networkCardIndex :: Core.Maybe Core.Int,
    -- | The index of the device for the network interface attachment.
    deviceIndex :: Core.Int,
    -- | The ID of the instance.
    instanceId :: Core.Text,
    -- | The ID of the network interface.
    networkInterfaceId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AttachNetworkInterface' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'attachNetworkInterface_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'networkCardIndex', 'attachNetworkInterface_networkCardIndex' - The index of the network card. Some instance types support multiple
-- network cards. The primary network interface must be assigned to network
-- card index 0. The default is network card index 0.
--
-- 'deviceIndex', 'attachNetworkInterface_deviceIndex' - The index of the device for the network interface attachment.
--
-- 'instanceId', 'attachNetworkInterface_instanceId' - The ID of the instance.
--
-- 'networkInterfaceId', 'attachNetworkInterface_networkInterfaceId' - The ID of the network interface.
newAttachNetworkInterface ::
  -- | 'deviceIndex'
  Core.Int ->
  -- | 'instanceId'
  Core.Text ->
  -- | 'networkInterfaceId'
  Core.Text ->
  AttachNetworkInterface
newAttachNetworkInterface
  pDeviceIndex_
  pInstanceId_
  pNetworkInterfaceId_ =
    AttachNetworkInterface'
      { dryRun = Core.Nothing,
        networkCardIndex = Core.Nothing,
        deviceIndex = pDeviceIndex_,
        instanceId = pInstanceId_,
        networkInterfaceId = pNetworkInterfaceId_
      }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
attachNetworkInterface_dryRun :: Lens.Lens' AttachNetworkInterface (Core.Maybe Core.Bool)
attachNetworkInterface_dryRun = Lens.lens (\AttachNetworkInterface' {dryRun} -> dryRun) (\s@AttachNetworkInterface' {} a -> s {dryRun = a} :: AttachNetworkInterface)

-- | The index of the network card. Some instance types support multiple
-- network cards. The primary network interface must be assigned to network
-- card index 0. The default is network card index 0.
attachNetworkInterface_networkCardIndex :: Lens.Lens' AttachNetworkInterface (Core.Maybe Core.Int)
attachNetworkInterface_networkCardIndex = Lens.lens (\AttachNetworkInterface' {networkCardIndex} -> networkCardIndex) (\s@AttachNetworkInterface' {} a -> s {networkCardIndex = a} :: AttachNetworkInterface)

-- | The index of the device for the network interface attachment.
attachNetworkInterface_deviceIndex :: Lens.Lens' AttachNetworkInterface Core.Int
attachNetworkInterface_deviceIndex = Lens.lens (\AttachNetworkInterface' {deviceIndex} -> deviceIndex) (\s@AttachNetworkInterface' {} a -> s {deviceIndex = a} :: AttachNetworkInterface)

-- | The ID of the instance.
attachNetworkInterface_instanceId :: Lens.Lens' AttachNetworkInterface Core.Text
attachNetworkInterface_instanceId = Lens.lens (\AttachNetworkInterface' {instanceId} -> instanceId) (\s@AttachNetworkInterface' {} a -> s {instanceId = a} :: AttachNetworkInterface)

-- | The ID of the network interface.
attachNetworkInterface_networkInterfaceId :: Lens.Lens' AttachNetworkInterface Core.Text
attachNetworkInterface_networkInterfaceId = Lens.lens (\AttachNetworkInterface' {networkInterfaceId} -> networkInterfaceId) (\s@AttachNetworkInterface' {} a -> s {networkInterfaceId = a} :: AttachNetworkInterface)

instance Core.AWSRequest AttachNetworkInterface where
  type
    AWSResponse AttachNetworkInterface =
      AttachNetworkInterfaceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          AttachNetworkInterfaceResponse'
            Core.<$> (x Core..@? "attachmentId")
            Core.<*> (x Core..@? "networkCardIndex")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable AttachNetworkInterface

instance Core.NFData AttachNetworkInterface

instance Core.ToHeaders AttachNetworkInterface where
  toHeaders = Core.const Core.mempty

instance Core.ToPath AttachNetworkInterface where
  toPath = Core.const "/"

instance Core.ToQuery AttachNetworkInterface where
  toQuery AttachNetworkInterface' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("AttachNetworkInterface" :: Core.ByteString),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        "DryRun" Core.=: dryRun,
        "NetworkCardIndex" Core.=: networkCardIndex,
        "DeviceIndex" Core.=: deviceIndex,
        "InstanceId" Core.=: instanceId,
        "NetworkInterfaceId" Core.=: networkInterfaceId
      ]

-- | Contains the output of AttachNetworkInterface.
--
-- /See:/ 'newAttachNetworkInterfaceResponse' smart constructor.
data AttachNetworkInterfaceResponse = AttachNetworkInterfaceResponse'
  { -- | The ID of the network interface attachment.
    attachmentId :: Core.Maybe Core.Text,
    -- | The index of the network card.
    networkCardIndex :: Core.Maybe Core.Int,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AttachNetworkInterfaceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attachmentId', 'attachNetworkInterfaceResponse_attachmentId' - The ID of the network interface attachment.
--
-- 'networkCardIndex', 'attachNetworkInterfaceResponse_networkCardIndex' - The index of the network card.
--
-- 'httpStatus', 'attachNetworkInterfaceResponse_httpStatus' - The response's http status code.
newAttachNetworkInterfaceResponse ::
  -- | 'httpStatus'
  Core.Int ->
  AttachNetworkInterfaceResponse
newAttachNetworkInterfaceResponse pHttpStatus_ =
  AttachNetworkInterfaceResponse'
    { attachmentId =
        Core.Nothing,
      networkCardIndex = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the network interface attachment.
attachNetworkInterfaceResponse_attachmentId :: Lens.Lens' AttachNetworkInterfaceResponse (Core.Maybe Core.Text)
attachNetworkInterfaceResponse_attachmentId = Lens.lens (\AttachNetworkInterfaceResponse' {attachmentId} -> attachmentId) (\s@AttachNetworkInterfaceResponse' {} a -> s {attachmentId = a} :: AttachNetworkInterfaceResponse)

-- | The index of the network card.
attachNetworkInterfaceResponse_networkCardIndex :: Lens.Lens' AttachNetworkInterfaceResponse (Core.Maybe Core.Int)
attachNetworkInterfaceResponse_networkCardIndex = Lens.lens (\AttachNetworkInterfaceResponse' {networkCardIndex} -> networkCardIndex) (\s@AttachNetworkInterfaceResponse' {} a -> s {networkCardIndex = a} :: AttachNetworkInterfaceResponse)

-- | The response's http status code.
attachNetworkInterfaceResponse_httpStatus :: Lens.Lens' AttachNetworkInterfaceResponse Core.Int
attachNetworkInterfaceResponse_httpStatus = Lens.lens (\AttachNetworkInterfaceResponse' {httpStatus} -> httpStatus) (\s@AttachNetworkInterfaceResponse' {} a -> s {httpStatus = a} :: AttachNetworkInterfaceResponse)

instance Core.NFData AttachNetworkInterfaceResponse
