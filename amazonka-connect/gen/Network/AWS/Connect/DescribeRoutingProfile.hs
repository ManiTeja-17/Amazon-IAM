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
-- Module      : Network.AWS.Connect.DescribeRoutingProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified routing profile.
module Network.AWS.Connect.DescribeRoutingProfile
  ( -- * Creating a Request
    DescribeRoutingProfile (..),
    newDescribeRoutingProfile,

    -- * Request Lenses
    describeRoutingProfile_instanceId,
    describeRoutingProfile_routingProfileId,

    -- * Destructuring the Response
    DescribeRoutingProfileResponse (..),
    newDescribeRoutingProfileResponse,

    -- * Response Lenses
    describeRoutingProfileResponse_routingProfile,
    describeRoutingProfileResponse_httpStatus,
  )
where

import Network.AWS.Connect.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeRoutingProfile' smart constructor.
data DescribeRoutingProfile = DescribeRoutingProfile'
  { -- | The identifier of the Amazon Connect instance.
    instanceId :: Core.Text,
    -- | The identifier of the routing profile.
    routingProfileId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeRoutingProfile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'describeRoutingProfile_instanceId' - The identifier of the Amazon Connect instance.
--
-- 'routingProfileId', 'describeRoutingProfile_routingProfileId' - The identifier of the routing profile.
newDescribeRoutingProfile ::
  -- | 'instanceId'
  Core.Text ->
  -- | 'routingProfileId'
  Core.Text ->
  DescribeRoutingProfile
newDescribeRoutingProfile
  pInstanceId_
  pRoutingProfileId_ =
    DescribeRoutingProfile'
      { instanceId = pInstanceId_,
        routingProfileId = pRoutingProfileId_
      }

-- | The identifier of the Amazon Connect instance.
describeRoutingProfile_instanceId :: Lens.Lens' DescribeRoutingProfile Core.Text
describeRoutingProfile_instanceId = Lens.lens (\DescribeRoutingProfile' {instanceId} -> instanceId) (\s@DescribeRoutingProfile' {} a -> s {instanceId = a} :: DescribeRoutingProfile)

-- | The identifier of the routing profile.
describeRoutingProfile_routingProfileId :: Lens.Lens' DescribeRoutingProfile Core.Text
describeRoutingProfile_routingProfileId = Lens.lens (\DescribeRoutingProfile' {routingProfileId} -> routingProfileId) (\s@DescribeRoutingProfile' {} a -> s {routingProfileId = a} :: DescribeRoutingProfile)

instance Core.AWSRequest DescribeRoutingProfile where
  type
    AWSResponse DescribeRoutingProfile =
      DescribeRoutingProfileResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRoutingProfileResponse'
            Core.<$> (x Core..?> "RoutingProfile")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeRoutingProfile

instance Core.NFData DescribeRoutingProfile

instance Core.ToHeaders DescribeRoutingProfile where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath DescribeRoutingProfile where
  toPath DescribeRoutingProfile' {..} =
    Core.mconcat
      [ "/routing-profiles/",
        Core.toBS instanceId,
        "/",
        Core.toBS routingProfileId
      ]

instance Core.ToQuery DescribeRoutingProfile where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeRoutingProfileResponse' smart constructor.
data DescribeRoutingProfileResponse = DescribeRoutingProfileResponse'
  { -- | The routing profile.
    routingProfile :: Core.Maybe RoutingProfile,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeRoutingProfileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'routingProfile', 'describeRoutingProfileResponse_routingProfile' - The routing profile.
--
-- 'httpStatus', 'describeRoutingProfileResponse_httpStatus' - The response's http status code.
newDescribeRoutingProfileResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeRoutingProfileResponse
newDescribeRoutingProfileResponse pHttpStatus_ =
  DescribeRoutingProfileResponse'
    { routingProfile =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The routing profile.
describeRoutingProfileResponse_routingProfile :: Lens.Lens' DescribeRoutingProfileResponse (Core.Maybe RoutingProfile)
describeRoutingProfileResponse_routingProfile = Lens.lens (\DescribeRoutingProfileResponse' {routingProfile} -> routingProfile) (\s@DescribeRoutingProfileResponse' {} a -> s {routingProfile = a} :: DescribeRoutingProfileResponse)

-- | The response's http status code.
describeRoutingProfileResponse_httpStatus :: Lens.Lens' DescribeRoutingProfileResponse Core.Int
describeRoutingProfileResponse_httpStatus = Lens.lens (\DescribeRoutingProfileResponse' {httpStatus} -> httpStatus) (\s@DescribeRoutingProfileResponse' {} a -> s {httpStatus = a} :: DescribeRoutingProfileResponse)

instance Core.NFData DescribeRoutingProfileResponse
