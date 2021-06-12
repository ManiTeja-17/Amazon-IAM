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
-- Module      : Network.AWS.CloudWatchEvents.RemovePermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes the permission of another AWS account to be able to put events
-- to the specified event bus. Specify the account to revoke by the
-- @StatementId@ value that you associated with the account when you
-- granted it permission with @PutPermission@. You can find the
-- @StatementId@ by using DescribeEventBus.
module Network.AWS.CloudWatchEvents.RemovePermission
  ( -- * Creating a Request
    RemovePermission (..),
    newRemovePermission,

    -- * Request Lenses
    removePermission_statementId,
    removePermission_eventBusName,
    removePermission_removeAllPermissions,

    -- * Destructuring the Response
    RemovePermissionResponse (..),
    newRemovePermissionResponse,
  )
where

import Network.AWS.CloudWatchEvents.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRemovePermission' smart constructor.
data RemovePermission = RemovePermission'
  { -- | The statement ID corresponding to the account that is no longer allowed
    -- to put events to the default event bus.
    statementId :: Core.Maybe Core.Text,
    -- | The name of the event bus to revoke permissions for. If you omit this,
    -- the default event bus is used.
    eventBusName :: Core.Maybe Core.Text,
    -- | Specifies whether to remove all permissions.
    removeAllPermissions :: Core.Maybe Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RemovePermission' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statementId', 'removePermission_statementId' - The statement ID corresponding to the account that is no longer allowed
-- to put events to the default event bus.
--
-- 'eventBusName', 'removePermission_eventBusName' - The name of the event bus to revoke permissions for. If you omit this,
-- the default event bus is used.
--
-- 'removeAllPermissions', 'removePermission_removeAllPermissions' - Specifies whether to remove all permissions.
newRemovePermission ::
  RemovePermission
newRemovePermission =
  RemovePermission'
    { statementId = Core.Nothing,
      eventBusName = Core.Nothing,
      removeAllPermissions = Core.Nothing
    }

-- | The statement ID corresponding to the account that is no longer allowed
-- to put events to the default event bus.
removePermission_statementId :: Lens.Lens' RemovePermission (Core.Maybe Core.Text)
removePermission_statementId = Lens.lens (\RemovePermission' {statementId} -> statementId) (\s@RemovePermission' {} a -> s {statementId = a} :: RemovePermission)

-- | The name of the event bus to revoke permissions for. If you omit this,
-- the default event bus is used.
removePermission_eventBusName :: Lens.Lens' RemovePermission (Core.Maybe Core.Text)
removePermission_eventBusName = Lens.lens (\RemovePermission' {eventBusName} -> eventBusName) (\s@RemovePermission' {} a -> s {eventBusName = a} :: RemovePermission)

-- | Specifies whether to remove all permissions.
removePermission_removeAllPermissions :: Lens.Lens' RemovePermission (Core.Maybe Core.Bool)
removePermission_removeAllPermissions = Lens.lens (\RemovePermission' {removeAllPermissions} -> removeAllPermissions) (\s@RemovePermission' {} a -> s {removeAllPermissions = a} :: RemovePermission)

instance Core.AWSRequest RemovePermission where
  type
    AWSResponse RemovePermission =
      RemovePermissionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull RemovePermissionResponse'

instance Core.Hashable RemovePermission

instance Core.NFData RemovePermission

instance Core.ToHeaders RemovePermission where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSEvents.RemovePermission" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON RemovePermission where
  toJSON RemovePermission' {..} =
    Core.object
      ( Core.catMaybes
          [ ("StatementId" Core..=) Core.<$> statementId,
            ("EventBusName" Core..=) Core.<$> eventBusName,
            ("RemoveAllPermissions" Core..=)
              Core.<$> removeAllPermissions
          ]
      )

instance Core.ToPath RemovePermission where
  toPath = Core.const "/"

instance Core.ToQuery RemovePermission where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newRemovePermissionResponse' smart constructor.
data RemovePermissionResponse = RemovePermissionResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RemovePermissionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRemovePermissionResponse ::
  RemovePermissionResponse
newRemovePermissionResponse =
  RemovePermissionResponse'

instance Core.NFData RemovePermissionResponse
