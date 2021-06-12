{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VpcAttachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VpcAttachment where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.AttachmentStatus
import qualified Network.AWS.Lens as Lens

-- | Describes an attachment between a virtual private gateway and a VPC.
--
-- /See:/ 'newVpcAttachment' smart constructor.
data VpcAttachment = VpcAttachment'
  { -- | The current state of the attachment.
    state :: Core.Maybe AttachmentStatus,
    -- | The ID of the VPC.
    vpcId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'VpcAttachment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'vpcAttachment_state' - The current state of the attachment.
--
-- 'vpcId', 'vpcAttachment_vpcId' - The ID of the VPC.
newVpcAttachment ::
  VpcAttachment
newVpcAttachment =
  VpcAttachment'
    { state = Core.Nothing,
      vpcId = Core.Nothing
    }

-- | The current state of the attachment.
vpcAttachment_state :: Lens.Lens' VpcAttachment (Core.Maybe AttachmentStatus)
vpcAttachment_state = Lens.lens (\VpcAttachment' {state} -> state) (\s@VpcAttachment' {} a -> s {state = a} :: VpcAttachment)

-- | The ID of the VPC.
vpcAttachment_vpcId :: Lens.Lens' VpcAttachment (Core.Maybe Core.Text)
vpcAttachment_vpcId = Lens.lens (\VpcAttachment' {vpcId} -> vpcId) (\s@VpcAttachment' {} a -> s {vpcId = a} :: VpcAttachment)

instance Core.FromXML VpcAttachment where
  parseXML x =
    VpcAttachment'
      Core.<$> (x Core..@? "state") Core.<*> (x Core..@? "vpcId")

instance Core.Hashable VpcAttachment

instance Core.NFData VpcAttachment
