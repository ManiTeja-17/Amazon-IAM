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
-- Module      : Network.AWS.GlobalAccelerator.DeleteListener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a listener from an accelerator.
module Network.AWS.GlobalAccelerator.DeleteListener
  ( -- * Creating a Request
    DeleteListener (..),
    newDeleteListener,

    -- * Request Lenses
    deleteListener_listenerArn,

    -- * Destructuring the Response
    DeleteListenerResponse (..),
    newDeleteListenerResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteListener' smart constructor.
data DeleteListener = DeleteListener'
  { -- | The Amazon Resource Name (ARN) of the listener.
    listenerArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

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
  Prelude.Text ->
  DeleteListener
newDeleteListener pListenerArn_ =
  DeleteListener' {listenerArn = pListenerArn_}

-- | The Amazon Resource Name (ARN) of the listener.
deleteListener_listenerArn :: Lens.Lens' DeleteListener Prelude.Text
deleteListener_listenerArn = Lens.lens (\DeleteListener' {listenerArn} -> listenerArn) (\s@DeleteListener' {} a -> s {listenerArn = a} :: DeleteListener)

instance Core.AWSRequest DeleteListener where
  type
    AWSResponse DeleteListener =
      DeleteListenerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteListenerResponse'

instance Prelude.Hashable DeleteListener

instance Prelude.NFData DeleteListener

instance Core.ToHeaders DeleteListener where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.DeleteListener" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteListener where
  toJSON DeleteListener' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ListenerArn" Core..= listenerArn)]
      )

instance Core.ToPath DeleteListener where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteListener where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteListenerResponse' smart constructor.
data DeleteListenerResponse = DeleteListenerResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteListenerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteListenerResponse ::
  DeleteListenerResponse
newDeleteListenerResponse = DeleteListenerResponse'

instance Prelude.NFData DeleteListenerResponse