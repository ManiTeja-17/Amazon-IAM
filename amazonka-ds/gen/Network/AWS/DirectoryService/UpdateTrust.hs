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
-- Module      : Network.AWS.DirectoryService.UpdateTrust
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the trust that has been set up between your AWS Managed
-- Microsoft AD directory and an on-premises Active Directory.
module Network.AWS.DirectoryService.UpdateTrust
  ( -- * Creating a Request
    UpdateTrust (..),
    newUpdateTrust,

    -- * Request Lenses
    updateTrust_selectiveAuth,
    updateTrust_trustId,

    -- * Destructuring the Response
    UpdateTrustResponse (..),
    newUpdateTrustResponse,

    -- * Response Lenses
    updateTrustResponse_trustId,
    updateTrustResponse_requestId,
    updateTrustResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectoryService.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateTrust' smart constructor.
data UpdateTrust = UpdateTrust'
  { -- | Updates selective authentication for the trust.
    selectiveAuth :: Core.Maybe SelectiveAuth,
    -- | Identifier of the trust relationship.
    trustId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateTrust' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'selectiveAuth', 'updateTrust_selectiveAuth' - Updates selective authentication for the trust.
--
-- 'trustId', 'updateTrust_trustId' - Identifier of the trust relationship.
newUpdateTrust ::
  -- | 'trustId'
  Core.Text ->
  UpdateTrust
newUpdateTrust pTrustId_ =
  UpdateTrust'
    { selectiveAuth = Core.Nothing,
      trustId = pTrustId_
    }

-- | Updates selective authentication for the trust.
updateTrust_selectiveAuth :: Lens.Lens' UpdateTrust (Core.Maybe SelectiveAuth)
updateTrust_selectiveAuth = Lens.lens (\UpdateTrust' {selectiveAuth} -> selectiveAuth) (\s@UpdateTrust' {} a -> s {selectiveAuth = a} :: UpdateTrust)

-- | Identifier of the trust relationship.
updateTrust_trustId :: Lens.Lens' UpdateTrust Core.Text
updateTrust_trustId = Lens.lens (\UpdateTrust' {trustId} -> trustId) (\s@UpdateTrust' {} a -> s {trustId = a} :: UpdateTrust)

instance Core.AWSRequest UpdateTrust where
  type AWSResponse UpdateTrust = UpdateTrustResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTrustResponse'
            Core.<$> (x Core..?> "TrustId")
            Core.<*> (x Core..?> "RequestId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateTrust

instance Core.NFData UpdateTrust

instance Core.ToHeaders UpdateTrust where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DirectoryService_20150416.UpdateTrust" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateTrust where
  toJSON UpdateTrust' {..} =
    Core.object
      ( Core.catMaybes
          [ ("SelectiveAuth" Core..=) Core.<$> selectiveAuth,
            Core.Just ("TrustId" Core..= trustId)
          ]
      )

instance Core.ToPath UpdateTrust where
  toPath = Core.const "/"

instance Core.ToQuery UpdateTrust where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateTrustResponse' smart constructor.
data UpdateTrustResponse = UpdateTrustResponse'
  { -- | Identifier of the trust relationship.
    trustId :: Core.Maybe Core.Text,
    requestId :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateTrustResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'trustId', 'updateTrustResponse_trustId' - Identifier of the trust relationship.
--
-- 'requestId', 'updateTrustResponse_requestId' - Undocumented member.
--
-- 'httpStatus', 'updateTrustResponse_httpStatus' - The response's http status code.
newUpdateTrustResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateTrustResponse
newUpdateTrustResponse pHttpStatus_ =
  UpdateTrustResponse'
    { trustId = Core.Nothing,
      requestId = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Identifier of the trust relationship.
updateTrustResponse_trustId :: Lens.Lens' UpdateTrustResponse (Core.Maybe Core.Text)
updateTrustResponse_trustId = Lens.lens (\UpdateTrustResponse' {trustId} -> trustId) (\s@UpdateTrustResponse' {} a -> s {trustId = a} :: UpdateTrustResponse)

-- | Undocumented member.
updateTrustResponse_requestId :: Lens.Lens' UpdateTrustResponse (Core.Maybe Core.Text)
updateTrustResponse_requestId = Lens.lens (\UpdateTrustResponse' {requestId} -> requestId) (\s@UpdateTrustResponse' {} a -> s {requestId = a} :: UpdateTrustResponse)

-- | The response's http status code.
updateTrustResponse_httpStatus :: Lens.Lens' UpdateTrustResponse Core.Int
updateTrustResponse_httpStatus = Lens.lens (\UpdateTrustResponse' {httpStatus} -> httpStatus) (\s@UpdateTrustResponse' {} a -> s {httpStatus = a} :: UpdateTrustResponse)

instance Core.NFData UpdateTrustResponse
