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
-- Module      : Network.AWS.MediaLive.UpdateReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update reservation.
module Network.AWS.MediaLive.UpdateReservation
  ( -- * Creating a Request
    UpdateReservation' (..),
    newUpdateReservation',

    -- * Request Lenses
    updateReservation'_name,
    updateReservation'_reservationId,

    -- * Destructuring the Response
    UpdateReservationResponse (..),
    newUpdateReservationResponse,

    -- * Response Lenses
    updateReservationResponse_reservation,
    updateReservationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Request to update a reservation
--
-- /See:/ 'newUpdateReservation'' smart constructor.
data UpdateReservation' = UpdateReservation''
  { -- | Name of the reservation
    name :: Core.Maybe Core.Text,
    -- | Unique reservation ID, e.g. \'1234567\'
    reservationId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateReservation'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateReservation'_name' - Name of the reservation
--
-- 'reservationId', 'updateReservation'_reservationId' - Unique reservation ID, e.g. \'1234567\'
newUpdateReservation' ::
  -- | 'reservationId'
  Core.Text ->
  UpdateReservation'
newUpdateReservation' pReservationId_ =
  UpdateReservation''
    { name = Core.Nothing,
      reservationId = pReservationId_
    }

-- | Name of the reservation
updateReservation'_name :: Lens.Lens' UpdateReservation' (Core.Maybe Core.Text)
updateReservation'_name = Lens.lens (\UpdateReservation'' {name} -> name) (\s@UpdateReservation'' {} a -> s {name = a} :: UpdateReservation')

-- | Unique reservation ID, e.g. \'1234567\'
updateReservation'_reservationId :: Lens.Lens' UpdateReservation' Core.Text
updateReservation'_reservationId = Lens.lens (\UpdateReservation'' {reservationId} -> reservationId) (\s@UpdateReservation'' {} a -> s {reservationId = a} :: UpdateReservation')

instance Core.AWSRequest UpdateReservation' where
  type
    AWSResponse UpdateReservation' =
      UpdateReservationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateReservationResponse'
            Core.<$> (x Core..?> "reservation")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateReservation'

instance Core.NFData UpdateReservation'

instance Core.ToHeaders UpdateReservation' where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateReservation' where
  toJSON UpdateReservation'' {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

instance Core.ToPath UpdateReservation' where
  toPath UpdateReservation'' {..} =
    Core.mconcat
      ["/prod/reservations/", Core.toBS reservationId]

instance Core.ToQuery UpdateReservation' where
  toQuery = Core.const Core.mempty

-- | Placeholder documentation for UpdateReservationResponse
--
-- /See:/ 'newUpdateReservationResponse' smart constructor.
data UpdateReservationResponse = UpdateReservationResponse'
  { reservation :: Core.Maybe Reservation,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateReservationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservation', 'updateReservationResponse_reservation' - Undocumented member.
--
-- 'httpStatus', 'updateReservationResponse_httpStatus' - The response's http status code.
newUpdateReservationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateReservationResponse
newUpdateReservationResponse pHttpStatus_ =
  UpdateReservationResponse'
    { reservation =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateReservationResponse_reservation :: Lens.Lens' UpdateReservationResponse (Core.Maybe Reservation)
updateReservationResponse_reservation = Lens.lens (\UpdateReservationResponse' {reservation} -> reservation) (\s@UpdateReservationResponse' {} a -> s {reservation = a} :: UpdateReservationResponse)

-- | The response's http status code.
updateReservationResponse_httpStatus :: Lens.Lens' UpdateReservationResponse Core.Int
updateReservationResponse_httpStatus = Lens.lens (\UpdateReservationResponse' {httpStatus} -> httpStatus) (\s@UpdateReservationResponse' {} a -> s {httpStatus = a} :: UpdateReservationResponse)

instance Core.NFData UpdateReservationResponse
