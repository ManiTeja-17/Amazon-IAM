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
-- Module      : Network.AWS.EC2.DisableVpcClassicLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC
-- that has EC2-Classic instances linked to it.
module Network.AWS.EC2.DisableVpcClassicLink
  ( -- * Creating a Request
    DisableVpcClassicLink (..),
    newDisableVpcClassicLink,

    -- * Request Lenses
    disableVpcClassicLink_dryRun,
    disableVpcClassicLink_vpcId,

    -- * Destructuring the Response
    DisableVpcClassicLinkResponse (..),
    newDisableVpcClassicLinkResponse,

    -- * Response Lenses
    disableVpcClassicLinkResponse_return,
    disableVpcClassicLinkResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisableVpcClassicLink' smart constructor.
data DisableVpcClassicLink = DisableVpcClassicLink'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | The ID of the VPC.
    vpcId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisableVpcClassicLink' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'disableVpcClassicLink_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'vpcId', 'disableVpcClassicLink_vpcId' - The ID of the VPC.
newDisableVpcClassicLink ::
  -- | 'vpcId'
  Core.Text ->
  DisableVpcClassicLink
newDisableVpcClassicLink pVpcId_ =
  DisableVpcClassicLink'
    { dryRun = Core.Nothing,
      vpcId = pVpcId_
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
disableVpcClassicLink_dryRun :: Lens.Lens' DisableVpcClassicLink (Core.Maybe Core.Bool)
disableVpcClassicLink_dryRun = Lens.lens (\DisableVpcClassicLink' {dryRun} -> dryRun) (\s@DisableVpcClassicLink' {} a -> s {dryRun = a} :: DisableVpcClassicLink)

-- | The ID of the VPC.
disableVpcClassicLink_vpcId :: Lens.Lens' DisableVpcClassicLink Core.Text
disableVpcClassicLink_vpcId = Lens.lens (\DisableVpcClassicLink' {vpcId} -> vpcId) (\s@DisableVpcClassicLink' {} a -> s {vpcId = a} :: DisableVpcClassicLink)

instance Core.AWSRequest DisableVpcClassicLink where
  type
    AWSResponse DisableVpcClassicLink =
      DisableVpcClassicLinkResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DisableVpcClassicLinkResponse'
            Core.<$> (x Core..@? "return")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DisableVpcClassicLink

instance Core.NFData DisableVpcClassicLink

instance Core.ToHeaders DisableVpcClassicLink where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DisableVpcClassicLink where
  toPath = Core.const "/"

instance Core.ToQuery DisableVpcClassicLink where
  toQuery DisableVpcClassicLink' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DisableVpcClassicLink" :: Core.ByteString),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        "DryRun" Core.=: dryRun,
        "VpcId" Core.=: vpcId
      ]

-- | /See:/ 'newDisableVpcClassicLinkResponse' smart constructor.
data DisableVpcClassicLinkResponse = DisableVpcClassicLinkResponse'
  { -- | Returns @true@ if the request succeeds; otherwise, it returns an error.
    return' :: Core.Maybe Core.Bool,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisableVpcClassicLinkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'return'', 'disableVpcClassicLinkResponse_return' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- 'httpStatus', 'disableVpcClassicLinkResponse_httpStatus' - The response's http status code.
newDisableVpcClassicLinkResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DisableVpcClassicLinkResponse
newDisableVpcClassicLinkResponse pHttpStatus_ =
  DisableVpcClassicLinkResponse'
    { return' =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
disableVpcClassicLinkResponse_return :: Lens.Lens' DisableVpcClassicLinkResponse (Core.Maybe Core.Bool)
disableVpcClassicLinkResponse_return = Lens.lens (\DisableVpcClassicLinkResponse' {return'} -> return') (\s@DisableVpcClassicLinkResponse' {} a -> s {return' = a} :: DisableVpcClassicLinkResponse)

-- | The response's http status code.
disableVpcClassicLinkResponse_httpStatus :: Lens.Lens' DisableVpcClassicLinkResponse Core.Int
disableVpcClassicLinkResponse_httpStatus = Lens.lens (\DisableVpcClassicLinkResponse' {httpStatus} -> httpStatus) (\s@DisableVpcClassicLinkResponse' {} a -> s {httpStatus = a} :: DisableVpcClassicLinkResponse)

instance Core.NFData DisableVpcClassicLinkResponse
