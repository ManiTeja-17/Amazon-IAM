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
-- Module      : Network.AWS.ELBv2.DeleteListener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified listener.
--
-- Alternatively, your listener is deleted when you delete the load
-- balancer to which it is attached.
module Network.AWS.ELBv2.DeleteListener
  ( -- * Creating a Request
    DeleteListener (..),
    newDeleteListener,

    -- * Request Lenses
    deleteListener_listenerArn,

    -- * Destructuring the Response
    DeleteListenerResponse (..),
    newDeleteListenerResponse,

    -- * Response Lenses
    deleteListenerResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ELBv2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteListener' smart constructor.
data DeleteListener = DeleteListener'
  { -- | The Amazon Resource Name (ARN) of the listener.
    listenerArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteListener' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'listenerArn', 'deleteListener_listenerArn' - The Amazon Resource Name (ARN) of the listener.
newDeleteListener ::
  -- | 'listenerArn'
  Core.Text ->
  DeleteListener
newDeleteListener pListenerArn_ =
  DeleteListener' {listenerArn = pListenerArn_}

-- | The Amazon Resource Name (ARN) of the listener.
deleteListener_listenerArn :: Lens.Lens' DeleteListener Core.Text
deleteListener_listenerArn = Lens.lens (\DeleteListener' {listenerArn} -> listenerArn) (\s@DeleteListener' {} a -> s {listenerArn = a} :: DeleteListener)

instance Core.AWSRequest DeleteListener where
  type
    AWSResponse DeleteListener =
      DeleteListenerResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteListenerResult"
      ( \s h x ->
          DeleteListenerResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteListener

instance Core.NFData DeleteListener

instance Core.ToHeaders DeleteListener where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteListener where
  toPath = Core.const "/"

instance Core.ToQuery DeleteListener where
  toQuery DeleteListener' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DeleteListener" :: Core.ByteString),
        "Version" Core.=: ("2015-12-01" :: Core.ByteString),
        "ListenerArn" Core.=: listenerArn
      ]

-- | /See:/ 'newDeleteListenerResponse' smart constructor.
data DeleteListenerResponse = DeleteListenerResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteListenerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteListenerResponse_httpStatus' - The response's http status code.
newDeleteListenerResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteListenerResponse
newDeleteListenerResponse pHttpStatus_ =
  DeleteListenerResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteListenerResponse_httpStatus :: Lens.Lens' DeleteListenerResponse Core.Int
deleteListenerResponse_httpStatus = Lens.lens (\DeleteListenerResponse' {httpStatus} -> httpStatus) (\s@DeleteListenerResponse' {} a -> s {httpStatus = a} :: DeleteListenerResponse)

instance Core.NFData DeleteListenerResponse
