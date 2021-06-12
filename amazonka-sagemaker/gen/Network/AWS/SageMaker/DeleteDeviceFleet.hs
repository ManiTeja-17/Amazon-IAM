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
-- Module      : Network.AWS.SageMaker.DeleteDeviceFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a fleet.
module Network.AWS.SageMaker.DeleteDeviceFleet
  ( -- * Creating a Request
    DeleteDeviceFleet (..),
    newDeleteDeviceFleet,

    -- * Request Lenses
    deleteDeviceFleet_deviceFleetName,

    -- * Destructuring the Response
    DeleteDeviceFleetResponse (..),
    newDeleteDeviceFleetResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newDeleteDeviceFleet' smart constructor.
data DeleteDeviceFleet = DeleteDeviceFleet'
  { -- | The name of the fleet to delete.
    deviceFleetName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDeviceFleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceFleetName', 'deleteDeviceFleet_deviceFleetName' - The name of the fleet to delete.
newDeleteDeviceFleet ::
  -- | 'deviceFleetName'
  Core.Text ->
  DeleteDeviceFleet
newDeleteDeviceFleet pDeviceFleetName_ =
  DeleteDeviceFleet'
    { deviceFleetName =
        pDeviceFleetName_
    }

-- | The name of the fleet to delete.
deleteDeviceFleet_deviceFleetName :: Lens.Lens' DeleteDeviceFleet Core.Text
deleteDeviceFleet_deviceFleetName = Lens.lens (\DeleteDeviceFleet' {deviceFleetName} -> deviceFleetName) (\s@DeleteDeviceFleet' {} a -> s {deviceFleetName = a} :: DeleteDeviceFleet)

instance Core.AWSRequest DeleteDeviceFleet where
  type
    AWSResponse DeleteDeviceFleet =
      DeleteDeviceFleetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteDeviceFleetResponse'

instance Core.Hashable DeleteDeviceFleet

instance Core.NFData DeleteDeviceFleet

instance Core.ToHeaders DeleteDeviceFleet where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.DeleteDeviceFleet" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteDeviceFleet where
  toJSON DeleteDeviceFleet' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("DeviceFleetName" Core..= deviceFleetName)
          ]
      )

instance Core.ToPath DeleteDeviceFleet where
  toPath = Core.const "/"

instance Core.ToQuery DeleteDeviceFleet where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteDeviceFleetResponse' smart constructor.
data DeleteDeviceFleetResponse = DeleteDeviceFleetResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDeviceFleetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDeviceFleetResponse ::
  DeleteDeviceFleetResponse
newDeleteDeviceFleetResponse =
  DeleteDeviceFleetResponse'

instance Core.NFData DeleteDeviceFleetResponse
