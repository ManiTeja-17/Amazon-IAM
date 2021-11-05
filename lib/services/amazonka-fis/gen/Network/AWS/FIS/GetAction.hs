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
-- Module      : Network.AWS.FIS.GetAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified AWS FIS action.
module Network.AWS.FIS.GetAction
  ( -- * Creating a Request
    GetAction (..),
    newGetAction,

    -- * Request Lenses
    getAction_id,

    -- * Destructuring the Response
    GetActionResponse (..),
    newGetActionResponse,

    -- * Response Lenses
    getActionResponse_action,
    getActionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FIS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAction' smart constructor.
data GetAction = GetAction'
  { -- | The ID of the action.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'getAction_id' - The ID of the action.
newGetAction ::
  -- | 'id'
  Prelude.Text ->
  GetAction
newGetAction pId_ = GetAction' {id = pId_}

-- | The ID of the action.
getAction_id :: Lens.Lens' GetAction Prelude.Text
getAction_id = Lens.lens (\GetAction' {id} -> id) (\s@GetAction' {} a -> s {id = a} :: GetAction)

instance Core.AWSRequest GetAction where
  type AWSResponse GetAction = GetActionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetActionResponse'
            Prelude.<$> (x Core..?> "action")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAction

instance Prelude.NFData GetAction

instance Core.ToHeaders GetAction where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAction where
  toPath GetAction' {..} =
    Prelude.mconcat ["/actions/", Core.toBS id]

instance Core.ToQuery GetAction where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetActionResponse' smart constructor.
data GetActionResponse = GetActionResponse'
  { -- | Information about the action.
    action :: Prelude.Maybe Action,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetActionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'action', 'getActionResponse_action' - Information about the action.
--
-- 'httpStatus', 'getActionResponse_httpStatus' - The response's http status code.
newGetActionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetActionResponse
newGetActionResponse pHttpStatus_ =
  GetActionResponse'
    { action = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the action.
getActionResponse_action :: Lens.Lens' GetActionResponse (Prelude.Maybe Action)
getActionResponse_action = Lens.lens (\GetActionResponse' {action} -> action) (\s@GetActionResponse' {} a -> s {action = a} :: GetActionResponse)

-- | The response's http status code.
getActionResponse_httpStatus :: Lens.Lens' GetActionResponse Prelude.Int
getActionResponse_httpStatus = Lens.lens (\GetActionResponse' {httpStatus} -> httpStatus) (\s@GetActionResponse' {} a -> s {httpStatus = a} :: GetActionResponse)

instance Prelude.NFData GetActionResponse