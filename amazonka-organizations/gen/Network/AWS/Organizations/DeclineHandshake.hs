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
-- Module      : Network.AWS.Organizations.DeclineHandshake
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Declines a handshake request. This sets the handshake state to
-- @DECLINED@ and effectively deactivates the request.
--
-- This operation can be called only from the account that received the
-- handshake. The originator of the handshake can use CancelHandshake
-- instead. The originator can\'t reactivate a declined request, but can
-- reinitiate the process with a new handshake request.
--
-- After you decline a handshake, it continues to appear in the results of
-- relevant APIs for only 30 days. After that, it\'s deleted.
module Network.AWS.Organizations.DeclineHandshake
  ( -- * Creating a Request
    DeclineHandshake (..),
    newDeclineHandshake,

    -- * Request Lenses
    declineHandshake_handshakeId,

    -- * Destructuring the Response
    DeclineHandshakeResponse (..),
    newDeclineHandshakeResponse,

    -- * Response Lenses
    declineHandshakeResponse_handshake,
    declineHandshakeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Organizations.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeclineHandshake' smart constructor.
data DeclineHandshake = DeclineHandshake'
  { -- | The unique identifier (ID) of the handshake that you want to decline.
    -- You can get the ID from the ListHandshakesForAccount operation.
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID
    -- string requires \"h-\" followed by from 8 to 32 lowercase letters or
    -- digits.
    handshakeId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeclineHandshake' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'handshakeId', 'declineHandshake_handshakeId' - The unique identifier (ID) of the handshake that you want to decline.
-- You can get the ID from the ListHandshakesForAccount operation.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID
-- string requires \"h-\" followed by from 8 to 32 lowercase letters or
-- digits.
newDeclineHandshake ::
  -- | 'handshakeId'
  Core.Text ->
  DeclineHandshake
newDeclineHandshake pHandshakeId_ =
  DeclineHandshake' {handshakeId = pHandshakeId_}

-- | The unique identifier (ID) of the handshake that you want to decline.
-- You can get the ID from the ListHandshakesForAccount operation.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for handshake ID
-- string requires \"h-\" followed by from 8 to 32 lowercase letters or
-- digits.
declineHandshake_handshakeId :: Lens.Lens' DeclineHandshake Core.Text
declineHandshake_handshakeId = Lens.lens (\DeclineHandshake' {handshakeId} -> handshakeId) (\s@DeclineHandshake' {} a -> s {handshakeId = a} :: DeclineHandshake)

instance Core.AWSRequest DeclineHandshake where
  type
    AWSResponse DeclineHandshake =
      DeclineHandshakeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeclineHandshakeResponse'
            Core.<$> (x Core..?> "Handshake")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeclineHandshake

instance Core.NFData DeclineHandshake

instance Core.ToHeaders DeclineHandshake where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSOrganizationsV20161128.DeclineHandshake" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeclineHandshake where
  toJSON DeclineHandshake' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("HandshakeId" Core..= handshakeId)]
      )

instance Core.ToPath DeclineHandshake where
  toPath = Core.const "/"

instance Core.ToQuery DeclineHandshake where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeclineHandshakeResponse' smart constructor.
data DeclineHandshakeResponse = DeclineHandshakeResponse'
  { -- | A structure that contains details about the declined handshake. The
    -- state is updated to show the value @DECLINED@.
    handshake :: Core.Maybe Handshake,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeclineHandshakeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'handshake', 'declineHandshakeResponse_handshake' - A structure that contains details about the declined handshake. The
-- state is updated to show the value @DECLINED@.
--
-- 'httpStatus', 'declineHandshakeResponse_httpStatus' - The response's http status code.
newDeclineHandshakeResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeclineHandshakeResponse
newDeclineHandshakeResponse pHttpStatus_ =
  DeclineHandshakeResponse'
    { handshake = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A structure that contains details about the declined handshake. The
-- state is updated to show the value @DECLINED@.
declineHandshakeResponse_handshake :: Lens.Lens' DeclineHandshakeResponse (Core.Maybe Handshake)
declineHandshakeResponse_handshake = Lens.lens (\DeclineHandshakeResponse' {handshake} -> handshake) (\s@DeclineHandshakeResponse' {} a -> s {handshake = a} :: DeclineHandshakeResponse)

-- | The response's http status code.
declineHandshakeResponse_httpStatus :: Lens.Lens' DeclineHandshakeResponse Core.Int
declineHandshakeResponse_httpStatus = Lens.lens (\DeclineHandshakeResponse' {httpStatus} -> httpStatus) (\s@DeclineHandshakeResponse' {} a -> s {httpStatus = a} :: DeclineHandshakeResponse)

instance Core.NFData DeclineHandshakeResponse
