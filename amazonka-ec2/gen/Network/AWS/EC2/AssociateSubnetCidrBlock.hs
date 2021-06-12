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
-- Module      : Network.AWS.EC2.AssociateSubnetCidrBlock
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a CIDR block with your subnet. You can only associate a
-- single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a
-- prefix length of \/64.
module Network.AWS.EC2.AssociateSubnetCidrBlock
  ( -- * Creating a Request
    AssociateSubnetCidrBlock (..),
    newAssociateSubnetCidrBlock,

    -- * Request Lenses
    associateSubnetCidrBlock_ipv6CidrBlock,
    associateSubnetCidrBlock_subnetId,

    -- * Destructuring the Response
    AssociateSubnetCidrBlockResponse (..),
    newAssociateSubnetCidrBlockResponse,

    -- * Response Lenses
    associateSubnetCidrBlockResponse_ipv6CidrBlockAssociation,
    associateSubnetCidrBlockResponse_subnetId,
    associateSubnetCidrBlockResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateSubnetCidrBlock' smart constructor.
data AssociateSubnetCidrBlock = AssociateSubnetCidrBlock'
  { -- | The IPv6 CIDR block for your subnet. The subnet must have a \/64 prefix
    -- length.
    ipv6CidrBlock :: Core.Text,
    -- | The ID of your subnet.
    subnetId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AssociateSubnetCidrBlock' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ipv6CidrBlock', 'associateSubnetCidrBlock_ipv6CidrBlock' - The IPv6 CIDR block for your subnet. The subnet must have a \/64 prefix
-- length.
--
-- 'subnetId', 'associateSubnetCidrBlock_subnetId' - The ID of your subnet.
newAssociateSubnetCidrBlock ::
  -- | 'ipv6CidrBlock'
  Core.Text ->
  -- | 'subnetId'
  Core.Text ->
  AssociateSubnetCidrBlock
newAssociateSubnetCidrBlock
  pIpv6CidrBlock_
  pSubnetId_ =
    AssociateSubnetCidrBlock'
      { ipv6CidrBlock =
          pIpv6CidrBlock_,
        subnetId = pSubnetId_
      }

-- | The IPv6 CIDR block for your subnet. The subnet must have a \/64 prefix
-- length.
associateSubnetCidrBlock_ipv6CidrBlock :: Lens.Lens' AssociateSubnetCidrBlock Core.Text
associateSubnetCidrBlock_ipv6CidrBlock = Lens.lens (\AssociateSubnetCidrBlock' {ipv6CidrBlock} -> ipv6CidrBlock) (\s@AssociateSubnetCidrBlock' {} a -> s {ipv6CidrBlock = a} :: AssociateSubnetCidrBlock)

-- | The ID of your subnet.
associateSubnetCidrBlock_subnetId :: Lens.Lens' AssociateSubnetCidrBlock Core.Text
associateSubnetCidrBlock_subnetId = Lens.lens (\AssociateSubnetCidrBlock' {subnetId} -> subnetId) (\s@AssociateSubnetCidrBlock' {} a -> s {subnetId = a} :: AssociateSubnetCidrBlock)

instance Core.AWSRequest AssociateSubnetCidrBlock where
  type
    AWSResponse AssociateSubnetCidrBlock =
      AssociateSubnetCidrBlockResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          AssociateSubnetCidrBlockResponse'
            Core.<$> (x Core..@? "ipv6CidrBlockAssociation")
            Core.<*> (x Core..@? "subnetId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable AssociateSubnetCidrBlock

instance Core.NFData AssociateSubnetCidrBlock

instance Core.ToHeaders AssociateSubnetCidrBlock where
  toHeaders = Core.const Core.mempty

instance Core.ToPath AssociateSubnetCidrBlock where
  toPath = Core.const "/"

instance Core.ToQuery AssociateSubnetCidrBlock where
  toQuery AssociateSubnetCidrBlock' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("AssociateSubnetCidrBlock" :: Core.ByteString),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        "Ipv6CidrBlock" Core.=: ipv6CidrBlock,
        "SubnetId" Core.=: subnetId
      ]

-- | /See:/ 'newAssociateSubnetCidrBlockResponse' smart constructor.
data AssociateSubnetCidrBlockResponse = AssociateSubnetCidrBlockResponse'
  { -- | Information about the IPv6 CIDR block association.
    ipv6CidrBlockAssociation :: Core.Maybe SubnetIpv6CidrBlockAssociation,
    -- | The ID of the subnet.
    subnetId :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AssociateSubnetCidrBlockResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ipv6CidrBlockAssociation', 'associateSubnetCidrBlockResponse_ipv6CidrBlockAssociation' - Information about the IPv6 CIDR block association.
--
-- 'subnetId', 'associateSubnetCidrBlockResponse_subnetId' - The ID of the subnet.
--
-- 'httpStatus', 'associateSubnetCidrBlockResponse_httpStatus' - The response's http status code.
newAssociateSubnetCidrBlockResponse ::
  -- | 'httpStatus'
  Core.Int ->
  AssociateSubnetCidrBlockResponse
newAssociateSubnetCidrBlockResponse pHttpStatus_ =
  AssociateSubnetCidrBlockResponse'
    { ipv6CidrBlockAssociation =
        Core.Nothing,
      subnetId = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the IPv6 CIDR block association.
associateSubnetCidrBlockResponse_ipv6CidrBlockAssociation :: Lens.Lens' AssociateSubnetCidrBlockResponse (Core.Maybe SubnetIpv6CidrBlockAssociation)
associateSubnetCidrBlockResponse_ipv6CidrBlockAssociation = Lens.lens (\AssociateSubnetCidrBlockResponse' {ipv6CidrBlockAssociation} -> ipv6CidrBlockAssociation) (\s@AssociateSubnetCidrBlockResponse' {} a -> s {ipv6CidrBlockAssociation = a} :: AssociateSubnetCidrBlockResponse)

-- | The ID of the subnet.
associateSubnetCidrBlockResponse_subnetId :: Lens.Lens' AssociateSubnetCidrBlockResponse (Core.Maybe Core.Text)
associateSubnetCidrBlockResponse_subnetId = Lens.lens (\AssociateSubnetCidrBlockResponse' {subnetId} -> subnetId) (\s@AssociateSubnetCidrBlockResponse' {} a -> s {subnetId = a} :: AssociateSubnetCidrBlockResponse)

-- | The response's http status code.
associateSubnetCidrBlockResponse_httpStatus :: Lens.Lens' AssociateSubnetCidrBlockResponse Core.Int
associateSubnetCidrBlockResponse_httpStatus = Lens.lens (\AssociateSubnetCidrBlockResponse' {httpStatus} -> httpStatus) (\s@AssociateSubnetCidrBlockResponse' {} a -> s {httpStatus = a} :: AssociateSubnetCidrBlockResponse)

instance Core.NFData AssociateSubnetCidrBlockResponse
