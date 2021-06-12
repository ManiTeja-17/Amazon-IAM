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
-- Module      : Network.AWS.AutoScaling.DeleteLifecycleHook
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified lifecycle hook.
--
-- If there are any outstanding lifecycle actions, they are completed first
-- (@ABANDON@ for launching instances, @CONTINUE@ for terminating
-- instances).
module Network.AWS.AutoScaling.DeleteLifecycleHook
  ( -- * Creating a Request
    DeleteLifecycleHook (..),
    newDeleteLifecycleHook,

    -- * Request Lenses
    deleteLifecycleHook_lifecycleHookName,
    deleteLifecycleHook_autoScalingGroupName,

    -- * Destructuring the Response
    DeleteLifecycleHookResponse (..),
    newDeleteLifecycleHookResponse,

    -- * Response Lenses
    deleteLifecycleHookResponse_httpStatus,
  )
where

import Network.AWS.AutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteLifecycleHook' smart constructor.
data DeleteLifecycleHook = DeleteLifecycleHook'
  { -- | The name of the lifecycle hook.
    lifecycleHookName :: Core.Text,
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteLifecycleHook' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lifecycleHookName', 'deleteLifecycleHook_lifecycleHookName' - The name of the lifecycle hook.
--
-- 'autoScalingGroupName', 'deleteLifecycleHook_autoScalingGroupName' - The name of the Auto Scaling group.
newDeleteLifecycleHook ::
  -- | 'lifecycleHookName'
  Core.Text ->
  -- | 'autoScalingGroupName'
  Core.Text ->
  DeleteLifecycleHook
newDeleteLifecycleHook
  pLifecycleHookName_
  pAutoScalingGroupName_ =
    DeleteLifecycleHook'
      { lifecycleHookName =
          pLifecycleHookName_,
        autoScalingGroupName = pAutoScalingGroupName_
      }

-- | The name of the lifecycle hook.
deleteLifecycleHook_lifecycleHookName :: Lens.Lens' DeleteLifecycleHook Core.Text
deleteLifecycleHook_lifecycleHookName = Lens.lens (\DeleteLifecycleHook' {lifecycleHookName} -> lifecycleHookName) (\s@DeleteLifecycleHook' {} a -> s {lifecycleHookName = a} :: DeleteLifecycleHook)

-- | The name of the Auto Scaling group.
deleteLifecycleHook_autoScalingGroupName :: Lens.Lens' DeleteLifecycleHook Core.Text
deleteLifecycleHook_autoScalingGroupName = Lens.lens (\DeleteLifecycleHook' {autoScalingGroupName} -> autoScalingGroupName) (\s@DeleteLifecycleHook' {} a -> s {autoScalingGroupName = a} :: DeleteLifecycleHook)

instance Core.AWSRequest DeleteLifecycleHook where
  type
    AWSResponse DeleteLifecycleHook =
      DeleteLifecycleHookResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteLifecycleHookResult"
      ( \s h x ->
          DeleteLifecycleHookResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteLifecycleHook

instance Core.NFData DeleteLifecycleHook

instance Core.ToHeaders DeleteLifecycleHook where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteLifecycleHook where
  toPath = Core.const "/"

instance Core.ToQuery DeleteLifecycleHook where
  toQuery DeleteLifecycleHook' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DeleteLifecycleHook" :: Core.ByteString),
        "Version" Core.=: ("2011-01-01" :: Core.ByteString),
        "LifecycleHookName" Core.=: lifecycleHookName,
        "AutoScalingGroupName" Core.=: autoScalingGroupName
      ]

-- | /See:/ 'newDeleteLifecycleHookResponse' smart constructor.
data DeleteLifecycleHookResponse = DeleteLifecycleHookResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteLifecycleHookResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteLifecycleHookResponse_httpStatus' - The response's http status code.
newDeleteLifecycleHookResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteLifecycleHookResponse
newDeleteLifecycleHookResponse pHttpStatus_ =
  DeleteLifecycleHookResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteLifecycleHookResponse_httpStatus :: Lens.Lens' DeleteLifecycleHookResponse Core.Int
deleteLifecycleHookResponse_httpStatus = Lens.lens (\DeleteLifecycleHookResponse' {httpStatus} -> httpStatus) (\s@DeleteLifecycleHookResponse' {} a -> s {httpStatus = a} :: DeleteLifecycleHookResponse)

instance Core.NFData DeleteLifecycleHookResponse
