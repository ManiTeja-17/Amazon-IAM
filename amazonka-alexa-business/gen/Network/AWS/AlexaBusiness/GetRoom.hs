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
-- Module      : Network.AWS.AlexaBusiness.GetRoom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets room details by room ARN.
module Network.AWS.AlexaBusiness.GetRoom
  ( -- * Creating a Request
    GetRoom (..),
    newGetRoom,

    -- * Request Lenses
    getRoom_roomArn,

    -- * Destructuring the Response
    GetRoomResponse (..),
    newGetRoomResponse,

    -- * Response Lenses
    getRoomResponse_room,
    getRoomResponse_httpStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetRoom' smart constructor.
data GetRoom = GetRoom'
  { -- | The ARN of the room for which to request details. Required.
    roomArn :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetRoom' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roomArn', 'getRoom_roomArn' - The ARN of the room for which to request details. Required.
newGetRoom ::
  GetRoom
newGetRoom = GetRoom' {roomArn = Core.Nothing}

-- | The ARN of the room for which to request details. Required.
getRoom_roomArn :: Lens.Lens' GetRoom (Core.Maybe Core.Text)
getRoom_roomArn = Lens.lens (\GetRoom' {roomArn} -> roomArn) (\s@GetRoom' {} a -> s {roomArn = a} :: GetRoom)

instance Core.AWSRequest GetRoom where
  type AWSResponse GetRoom = GetRoomResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRoomResponse'
            Core.<$> (x Core..?> "Room")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetRoom

instance Core.NFData GetRoom

instance Core.ToHeaders GetRoom where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AlexaForBusiness.GetRoom" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetRoom where
  toJSON GetRoom' {..} =
    Core.object
      ( Core.catMaybes
          [("RoomArn" Core..=) Core.<$> roomArn]
      )

instance Core.ToPath GetRoom where
  toPath = Core.const "/"

instance Core.ToQuery GetRoom where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetRoomResponse' smart constructor.
data GetRoomResponse = GetRoomResponse'
  { -- | The details of the room requested.
    room :: Core.Maybe Room,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetRoomResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'room', 'getRoomResponse_room' - The details of the room requested.
--
-- 'httpStatus', 'getRoomResponse_httpStatus' - The response's http status code.
newGetRoomResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetRoomResponse
newGetRoomResponse pHttpStatus_ =
  GetRoomResponse'
    { room = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The details of the room requested.
getRoomResponse_room :: Lens.Lens' GetRoomResponse (Core.Maybe Room)
getRoomResponse_room = Lens.lens (\GetRoomResponse' {room} -> room) (\s@GetRoomResponse' {} a -> s {room = a} :: GetRoomResponse)

-- | The response's http status code.
getRoomResponse_httpStatus :: Lens.Lens' GetRoomResponse Core.Int
getRoomResponse_httpStatus = Lens.lens (\GetRoomResponse' {httpStatus} -> httpStatus) (\s@GetRoomResponse' {} a -> s {httpStatus = a} :: GetRoomResponse)

instance Core.NFData GetRoomResponse
