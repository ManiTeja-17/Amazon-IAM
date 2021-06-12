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
-- Module      : Network.AWS.AutoScaling.SetInstanceProtection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the instance protection settings of the specified instances.
--
-- For more information about preventing instances that are part of an Auto
-- Scaling group from terminating on scale in, see
-- <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection Instance scale-in protection>
-- in the /Amazon EC2 Auto Scaling User Guide/.
--
-- If you exceed your maximum limit of instance IDs, which is 50 per Auto
-- Scaling group, the call fails.
module Network.AWS.AutoScaling.SetInstanceProtection
  ( -- * Creating a Request
    SetInstanceProtection (..),
    newSetInstanceProtection,

    -- * Request Lenses
    setInstanceProtection_instanceIds,
    setInstanceProtection_autoScalingGroupName,
    setInstanceProtection_protectedFromScaleIn,

    -- * Destructuring the Response
    SetInstanceProtectionResponse (..),
    newSetInstanceProtectionResponse,

    -- * Response Lenses
    setInstanceProtectionResponse_httpStatus,
  )
where

import Network.AWS.AutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSetInstanceProtection' smart constructor.
data SetInstanceProtection = SetInstanceProtection'
  { -- | One or more instance IDs. You can specify up to 50 instances.
    instanceIds :: [Core.Text],
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Core.Text,
    -- | Indicates whether the instance is protected from termination by Amazon
    -- EC2 Auto Scaling when scaling in.
    protectedFromScaleIn :: Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SetInstanceProtection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceIds', 'setInstanceProtection_instanceIds' - One or more instance IDs. You can specify up to 50 instances.
--
-- 'autoScalingGroupName', 'setInstanceProtection_autoScalingGroupName' - The name of the Auto Scaling group.
--
-- 'protectedFromScaleIn', 'setInstanceProtection_protectedFromScaleIn' - Indicates whether the instance is protected from termination by Amazon
-- EC2 Auto Scaling when scaling in.
newSetInstanceProtection ::
  -- | 'autoScalingGroupName'
  Core.Text ->
  -- | 'protectedFromScaleIn'
  Core.Bool ->
  SetInstanceProtection
newSetInstanceProtection
  pAutoScalingGroupName_
  pProtectedFromScaleIn_ =
    SetInstanceProtection'
      { instanceIds = Core.mempty,
        autoScalingGroupName = pAutoScalingGroupName_,
        protectedFromScaleIn = pProtectedFromScaleIn_
      }

-- | One or more instance IDs. You can specify up to 50 instances.
setInstanceProtection_instanceIds :: Lens.Lens' SetInstanceProtection [Core.Text]
setInstanceProtection_instanceIds = Lens.lens (\SetInstanceProtection' {instanceIds} -> instanceIds) (\s@SetInstanceProtection' {} a -> s {instanceIds = a} :: SetInstanceProtection) Core.. Lens._Coerce

-- | The name of the Auto Scaling group.
setInstanceProtection_autoScalingGroupName :: Lens.Lens' SetInstanceProtection Core.Text
setInstanceProtection_autoScalingGroupName = Lens.lens (\SetInstanceProtection' {autoScalingGroupName} -> autoScalingGroupName) (\s@SetInstanceProtection' {} a -> s {autoScalingGroupName = a} :: SetInstanceProtection)

-- | Indicates whether the instance is protected from termination by Amazon
-- EC2 Auto Scaling when scaling in.
setInstanceProtection_protectedFromScaleIn :: Lens.Lens' SetInstanceProtection Core.Bool
setInstanceProtection_protectedFromScaleIn = Lens.lens (\SetInstanceProtection' {protectedFromScaleIn} -> protectedFromScaleIn) (\s@SetInstanceProtection' {} a -> s {protectedFromScaleIn = a} :: SetInstanceProtection)

instance Core.AWSRequest SetInstanceProtection where
  type
    AWSResponse SetInstanceProtection =
      SetInstanceProtectionResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "SetInstanceProtectionResult"
      ( \s h x ->
          SetInstanceProtectionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable SetInstanceProtection

instance Core.NFData SetInstanceProtection

instance Core.ToHeaders SetInstanceProtection where
  toHeaders = Core.const Core.mempty

instance Core.ToPath SetInstanceProtection where
  toPath = Core.const "/"

instance Core.ToQuery SetInstanceProtection where
  toQuery SetInstanceProtection' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("SetInstanceProtection" :: Core.ByteString),
        "Version" Core.=: ("2011-01-01" :: Core.ByteString),
        "InstanceIds"
          Core.=: Core.toQueryList "member" instanceIds,
        "AutoScalingGroupName" Core.=: autoScalingGroupName,
        "ProtectedFromScaleIn" Core.=: protectedFromScaleIn
      ]

-- | /See:/ 'newSetInstanceProtectionResponse' smart constructor.
data SetInstanceProtectionResponse = SetInstanceProtectionResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SetInstanceProtectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'setInstanceProtectionResponse_httpStatus' - The response's http status code.
newSetInstanceProtectionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  SetInstanceProtectionResponse
newSetInstanceProtectionResponse pHttpStatus_ =
  SetInstanceProtectionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
setInstanceProtectionResponse_httpStatus :: Lens.Lens' SetInstanceProtectionResponse Core.Int
setInstanceProtectionResponse_httpStatus = Lens.lens (\SetInstanceProtectionResponse' {httpStatus} -> httpStatus) (\s@SetInstanceProtectionResponse' {} a -> s {httpStatus = a} :: SetInstanceProtectionResponse)

instance Core.NFData SetInstanceProtectionResponse
