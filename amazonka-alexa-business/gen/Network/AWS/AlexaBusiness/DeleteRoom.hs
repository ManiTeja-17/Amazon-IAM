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
-- Module      : Network.AWS.AlexaBusiness.DeleteRoom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a room by the room ARN.
module Network.AWS.AlexaBusiness.DeleteRoom
  ( -- * Creating a Request
    DeleteRoom (..),
    newDeleteRoom,

    -- * Request Lenses
    deleteRoom_roomArn,

    -- * Destructuring the Response
    DeleteRoomResponse (..),
    newDeleteRoomResponse,

    -- * Response Lenses
    deleteRoomResponse_httpStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteRoom' smart constructor.
data DeleteRoom = DeleteRoom'
  { -- | The ARN of the room to delete. Required.
    roomArn :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteRoom' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roomArn', 'deleteRoom_roomArn' - The ARN of the room to delete. Required.
newDeleteRoom ::
  DeleteRoom
newDeleteRoom = DeleteRoom' {roomArn = Core.Nothing}

-- | The ARN of the room to delete. Required.
deleteRoom_roomArn :: Lens.Lens' DeleteRoom (Core.Maybe Core.Text)
deleteRoom_roomArn = Lens.lens (\DeleteRoom' {roomArn} -> roomArn) (\s@DeleteRoom' {} a -> s {roomArn = a} :: DeleteRoom)

instance Core.AWSRequest DeleteRoom where
  type AWSResponse DeleteRoom = DeleteRoomResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteRoomResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteRoom

instance Core.NFData DeleteRoom

instance Core.ToHeaders DeleteRoom where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AlexaForBusiness.DeleteRoom" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteRoom where
  toJSON DeleteRoom' {..} =
    Core.object
      ( Core.catMaybes
          [("RoomArn" Core..=) Core.<$> roomArn]
      )

instance Core.ToPath DeleteRoom where
  toPath = Core.const "/"

instance Core.ToQuery DeleteRoom where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteRoomResponse' smart constructor.
data DeleteRoomResponse = DeleteRoomResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteRoomResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteRoomResponse_httpStatus' - The response's http status code.
newDeleteRoomResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteRoomResponse
newDeleteRoomResponse pHttpStatus_ =
  DeleteRoomResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteRoomResponse_httpStatus :: Lens.Lens' DeleteRoomResponse Core.Int
deleteRoomResponse_httpStatus = Lens.lens (\DeleteRoomResponse' {httpStatus} -> httpStatus) (\s@DeleteRoomResponse' {} a -> s {httpStatus = a} :: DeleteRoomResponse)

instance Core.NFData DeleteRoomResponse
