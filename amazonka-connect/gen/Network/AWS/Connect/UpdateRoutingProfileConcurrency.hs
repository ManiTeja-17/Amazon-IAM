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
-- Module      : Network.AWS.Connect.UpdateRoutingProfileConcurrency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the channels that agents can handle in the Contact Control Panel
-- (CCP) for a routing profile.
module Network.AWS.Connect.UpdateRoutingProfileConcurrency
  ( -- * Creating a Request
    UpdateRoutingProfileConcurrency (..),
    newUpdateRoutingProfileConcurrency,

    -- * Request Lenses
    updateRoutingProfileConcurrency_instanceId,
    updateRoutingProfileConcurrency_routingProfileId,
    updateRoutingProfileConcurrency_mediaConcurrencies,

    -- * Destructuring the Response
    UpdateRoutingProfileConcurrencyResponse (..),
    newUpdateRoutingProfileConcurrencyResponse,
  )
where

import Network.AWS.Connect.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateRoutingProfileConcurrency' smart constructor.
data UpdateRoutingProfileConcurrency = UpdateRoutingProfileConcurrency'
  { -- | The identifier of the Amazon Connect instance.
    instanceId :: Core.Text,
    -- | The identifier of the routing profile.
    routingProfileId :: Core.Text,
    -- | The channels that agents can handle in the Contact Control Panel (CCP).
    mediaConcurrencies :: [MediaConcurrency]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateRoutingProfileConcurrency' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'updateRoutingProfileConcurrency_instanceId' - The identifier of the Amazon Connect instance.
--
-- 'routingProfileId', 'updateRoutingProfileConcurrency_routingProfileId' - The identifier of the routing profile.
--
-- 'mediaConcurrencies', 'updateRoutingProfileConcurrency_mediaConcurrencies' - The channels that agents can handle in the Contact Control Panel (CCP).
newUpdateRoutingProfileConcurrency ::
  -- | 'instanceId'
  Core.Text ->
  -- | 'routingProfileId'
  Core.Text ->
  UpdateRoutingProfileConcurrency
newUpdateRoutingProfileConcurrency
  pInstanceId_
  pRoutingProfileId_ =
    UpdateRoutingProfileConcurrency'
      { instanceId =
          pInstanceId_,
        routingProfileId = pRoutingProfileId_,
        mediaConcurrencies = Core.mempty
      }

-- | The identifier of the Amazon Connect instance.
updateRoutingProfileConcurrency_instanceId :: Lens.Lens' UpdateRoutingProfileConcurrency Core.Text
updateRoutingProfileConcurrency_instanceId = Lens.lens (\UpdateRoutingProfileConcurrency' {instanceId} -> instanceId) (\s@UpdateRoutingProfileConcurrency' {} a -> s {instanceId = a} :: UpdateRoutingProfileConcurrency)

-- | The identifier of the routing profile.
updateRoutingProfileConcurrency_routingProfileId :: Lens.Lens' UpdateRoutingProfileConcurrency Core.Text
updateRoutingProfileConcurrency_routingProfileId = Lens.lens (\UpdateRoutingProfileConcurrency' {routingProfileId} -> routingProfileId) (\s@UpdateRoutingProfileConcurrency' {} a -> s {routingProfileId = a} :: UpdateRoutingProfileConcurrency)

-- | The channels that agents can handle in the Contact Control Panel (CCP).
updateRoutingProfileConcurrency_mediaConcurrencies :: Lens.Lens' UpdateRoutingProfileConcurrency [MediaConcurrency]
updateRoutingProfileConcurrency_mediaConcurrencies = Lens.lens (\UpdateRoutingProfileConcurrency' {mediaConcurrencies} -> mediaConcurrencies) (\s@UpdateRoutingProfileConcurrency' {} a -> s {mediaConcurrencies = a} :: UpdateRoutingProfileConcurrency) Core.. Lens._Coerce

instance
  Core.AWSRequest
    UpdateRoutingProfileConcurrency
  where
  type
    AWSResponse UpdateRoutingProfileConcurrency =
      UpdateRoutingProfileConcurrencyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      UpdateRoutingProfileConcurrencyResponse'

instance
  Core.Hashable
    UpdateRoutingProfileConcurrency

instance Core.NFData UpdateRoutingProfileConcurrency

instance
  Core.ToHeaders
    UpdateRoutingProfileConcurrency
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateRoutingProfileConcurrency where
  toJSON UpdateRoutingProfileConcurrency' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("MediaConcurrencies" Core..= mediaConcurrencies)
          ]
      )

instance Core.ToPath UpdateRoutingProfileConcurrency where
  toPath UpdateRoutingProfileConcurrency' {..} =
    Core.mconcat
      [ "/routing-profiles/",
        Core.toBS instanceId,
        "/",
        Core.toBS routingProfileId,
        "/concurrency"
      ]

instance Core.ToQuery UpdateRoutingProfileConcurrency where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateRoutingProfileConcurrencyResponse' smart constructor.
data UpdateRoutingProfileConcurrencyResponse = UpdateRoutingProfileConcurrencyResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateRoutingProfileConcurrencyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateRoutingProfileConcurrencyResponse ::
  UpdateRoutingProfileConcurrencyResponse
newUpdateRoutingProfileConcurrencyResponse =
  UpdateRoutingProfileConcurrencyResponse'

instance
  Core.NFData
    UpdateRoutingProfileConcurrencyResponse
