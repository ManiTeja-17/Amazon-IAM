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
-- Module      : Network.AWS.Route53.UpdateTrafficPolicyInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the resource record sets in a specified hosted zone that were
-- created based on the settings in a specified traffic policy version.
--
-- When you update a traffic policy instance, Amazon Route 53 continues to
-- respond to DNS queries for the root resource record set name (such as
-- example.com) while it replaces one group of resource record sets with
-- another. Route 53 performs the following operations:
--
-- 1.  Route 53 creates a new group of resource record sets based on the
--     specified traffic policy. This is true regardless of how significant
--     the differences are between the existing resource record sets and
--     the new resource record sets.
--
-- 2.  When all of the new resource record sets have been created, Route 53
--     starts to respond to DNS queries for the root resource record set
--     name (such as example.com) by using the new resource record sets.
--
-- 3.  Route 53 deletes the old group of resource record sets that are
--     associated with the root resource record set name.
module Network.AWS.Route53.UpdateTrafficPolicyInstance
  ( -- * Creating a Request
    UpdateTrafficPolicyInstance (..),
    newUpdateTrafficPolicyInstance,

    -- * Request Lenses
    updateTrafficPolicyInstance_id,
    updateTrafficPolicyInstance_ttl,
    updateTrafficPolicyInstance_trafficPolicyId,
    updateTrafficPolicyInstance_trafficPolicyVersion,

    -- * Destructuring the Response
    UpdateTrafficPolicyInstanceResponse (..),
    newUpdateTrafficPolicyInstanceResponse,

    -- * Response Lenses
    updateTrafficPolicyInstanceResponse_httpStatus,
    updateTrafficPolicyInstanceResponse_trafficPolicyInstance,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53.Types

-- | A complex type that contains information about the resource record sets
-- that you want to update based on a specified traffic policy instance.
--
-- /See:/ 'newUpdateTrafficPolicyInstance' smart constructor.
data UpdateTrafficPolicyInstance = UpdateTrafficPolicyInstance'
  { -- | The ID of the traffic policy instance that you want to update.
    id :: Core.Text,
    -- | The TTL that you want Amazon Route 53 to assign to all of the updated
    -- resource record sets.
    ttl :: Core.Natural,
    -- | The ID of the traffic policy that you want Amazon Route 53 to use to
    -- update resource record sets for the specified traffic policy instance.
    trafficPolicyId :: Core.Text,
    -- | The version of the traffic policy that you want Amazon Route 53 to use
    -- to update resource record sets for the specified traffic policy
    -- instance.
    trafficPolicyVersion :: Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateTrafficPolicyInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'updateTrafficPolicyInstance_id' - The ID of the traffic policy instance that you want to update.
--
-- 'ttl', 'updateTrafficPolicyInstance_ttl' - The TTL that you want Amazon Route 53 to assign to all of the updated
-- resource record sets.
--
-- 'trafficPolicyId', 'updateTrafficPolicyInstance_trafficPolicyId' - The ID of the traffic policy that you want Amazon Route 53 to use to
-- update resource record sets for the specified traffic policy instance.
--
-- 'trafficPolicyVersion', 'updateTrafficPolicyInstance_trafficPolicyVersion' - The version of the traffic policy that you want Amazon Route 53 to use
-- to update resource record sets for the specified traffic policy
-- instance.
newUpdateTrafficPolicyInstance ::
  -- | 'id'
  Core.Text ->
  -- | 'ttl'
  Core.Natural ->
  -- | 'trafficPolicyId'
  Core.Text ->
  -- | 'trafficPolicyVersion'
  Core.Natural ->
  UpdateTrafficPolicyInstance
newUpdateTrafficPolicyInstance
  pId_
  pTTL_
  pTrafficPolicyId_
  pTrafficPolicyVersion_ =
    UpdateTrafficPolicyInstance'
      { id = pId_,
        ttl = pTTL_,
        trafficPolicyId = pTrafficPolicyId_,
        trafficPolicyVersion = pTrafficPolicyVersion_
      }

-- | The ID of the traffic policy instance that you want to update.
updateTrafficPolicyInstance_id :: Lens.Lens' UpdateTrafficPolicyInstance Core.Text
updateTrafficPolicyInstance_id = Lens.lens (\UpdateTrafficPolicyInstance' {id} -> id) (\s@UpdateTrafficPolicyInstance' {} a -> s {id = a} :: UpdateTrafficPolicyInstance)

-- | The TTL that you want Amazon Route 53 to assign to all of the updated
-- resource record sets.
updateTrafficPolicyInstance_ttl :: Lens.Lens' UpdateTrafficPolicyInstance Core.Natural
updateTrafficPolicyInstance_ttl = Lens.lens (\UpdateTrafficPolicyInstance' {ttl} -> ttl) (\s@UpdateTrafficPolicyInstance' {} a -> s {ttl = a} :: UpdateTrafficPolicyInstance)

-- | The ID of the traffic policy that you want Amazon Route 53 to use to
-- update resource record sets for the specified traffic policy instance.
updateTrafficPolicyInstance_trafficPolicyId :: Lens.Lens' UpdateTrafficPolicyInstance Core.Text
updateTrafficPolicyInstance_trafficPolicyId = Lens.lens (\UpdateTrafficPolicyInstance' {trafficPolicyId} -> trafficPolicyId) (\s@UpdateTrafficPolicyInstance' {} a -> s {trafficPolicyId = a} :: UpdateTrafficPolicyInstance)

-- | The version of the traffic policy that you want Amazon Route 53 to use
-- to update resource record sets for the specified traffic policy
-- instance.
updateTrafficPolicyInstance_trafficPolicyVersion :: Lens.Lens' UpdateTrafficPolicyInstance Core.Natural
updateTrafficPolicyInstance_trafficPolicyVersion = Lens.lens (\UpdateTrafficPolicyInstance' {trafficPolicyVersion} -> trafficPolicyVersion) (\s@UpdateTrafficPolicyInstance' {} a -> s {trafficPolicyVersion = a} :: UpdateTrafficPolicyInstance)

instance Core.AWSRequest UpdateTrafficPolicyInstance where
  type
    AWSResponse UpdateTrafficPolicyInstance =
      UpdateTrafficPolicyInstanceResponse
  request = Request.postXML defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          UpdateTrafficPolicyInstanceResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..@ "TrafficPolicyInstance")
      )

instance Core.Hashable UpdateTrafficPolicyInstance

instance Core.NFData UpdateTrafficPolicyInstance

instance Core.ToElement UpdateTrafficPolicyInstance where
  toElement =
    Core.mkElement
      "{https://route53.amazonaws.com/doc/2013-04-01/}UpdateTrafficPolicyInstanceRequest"

instance Core.ToHeaders UpdateTrafficPolicyInstance where
  toHeaders = Core.const Core.mempty

instance Core.ToPath UpdateTrafficPolicyInstance where
  toPath UpdateTrafficPolicyInstance' {..} =
    Core.mconcat
      ["/2013-04-01/trafficpolicyinstance/", Core.toBS id]

instance Core.ToQuery UpdateTrafficPolicyInstance where
  toQuery = Core.const Core.mempty

instance Core.ToXML UpdateTrafficPolicyInstance where
  toXML UpdateTrafficPolicyInstance' {..} =
    Core.mconcat
      [ "TTL" Core.@= ttl,
        "TrafficPolicyId" Core.@= trafficPolicyId,
        "TrafficPolicyVersion" Core.@= trafficPolicyVersion
      ]

-- | A complex type that contains information about the resource record sets
-- that Amazon Route 53 created based on a specified traffic policy.
--
-- /See:/ 'newUpdateTrafficPolicyInstanceResponse' smart constructor.
data UpdateTrafficPolicyInstanceResponse = UpdateTrafficPolicyInstanceResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | A complex type that contains settings for the updated traffic policy
    -- instance.
    trafficPolicyInstance :: TrafficPolicyInstance
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateTrafficPolicyInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateTrafficPolicyInstanceResponse_httpStatus' - The response's http status code.
--
-- 'trafficPolicyInstance', 'updateTrafficPolicyInstanceResponse_trafficPolicyInstance' - A complex type that contains settings for the updated traffic policy
-- instance.
newUpdateTrafficPolicyInstanceResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'trafficPolicyInstance'
  TrafficPolicyInstance ->
  UpdateTrafficPolicyInstanceResponse
newUpdateTrafficPolicyInstanceResponse
  pHttpStatus_
  pTrafficPolicyInstance_ =
    UpdateTrafficPolicyInstanceResponse'
      { httpStatus =
          pHttpStatus_,
        trafficPolicyInstance =
          pTrafficPolicyInstance_
      }

-- | The response's http status code.
updateTrafficPolicyInstanceResponse_httpStatus :: Lens.Lens' UpdateTrafficPolicyInstanceResponse Core.Int
updateTrafficPolicyInstanceResponse_httpStatus = Lens.lens (\UpdateTrafficPolicyInstanceResponse' {httpStatus} -> httpStatus) (\s@UpdateTrafficPolicyInstanceResponse' {} a -> s {httpStatus = a} :: UpdateTrafficPolicyInstanceResponse)

-- | A complex type that contains settings for the updated traffic policy
-- instance.
updateTrafficPolicyInstanceResponse_trafficPolicyInstance :: Lens.Lens' UpdateTrafficPolicyInstanceResponse TrafficPolicyInstance
updateTrafficPolicyInstanceResponse_trafficPolicyInstance = Lens.lens (\UpdateTrafficPolicyInstanceResponse' {trafficPolicyInstance} -> trafficPolicyInstance) (\s@UpdateTrafficPolicyInstanceResponse' {} a -> s {trafficPolicyInstance = a} :: UpdateTrafficPolicyInstanceResponse)

instance
  Core.NFData
    UpdateTrafficPolicyInstanceResponse
