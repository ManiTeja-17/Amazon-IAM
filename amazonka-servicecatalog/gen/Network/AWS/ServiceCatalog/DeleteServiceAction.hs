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
-- Module      : Network.AWS.ServiceCatalog.DeleteServiceAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a self-service action.
module Network.AWS.ServiceCatalog.DeleteServiceAction
  ( -- * Creating a Request
    DeleteServiceAction (..),
    newDeleteServiceAction,

    -- * Request Lenses
    deleteServiceAction_acceptLanguage,
    deleteServiceAction_id,

    -- * Destructuring the Response
    DeleteServiceActionResponse (..),
    newDeleteServiceActionResponse,

    -- * Response Lenses
    deleteServiceActionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'newDeleteServiceAction' smart constructor.
data DeleteServiceAction = DeleteServiceAction'
  { -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Core.Maybe Core.Text,
    -- | The self-service action identifier. For example, @act-fs7abcd89wxyz@.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteServiceAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceptLanguage', 'deleteServiceAction_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'id', 'deleteServiceAction_id' - The self-service action identifier. For example, @act-fs7abcd89wxyz@.
newDeleteServiceAction ::
  -- | 'id'
  Core.Text ->
  DeleteServiceAction
newDeleteServiceAction pId_ =
  DeleteServiceAction'
    { acceptLanguage = Core.Nothing,
      id = pId_
    }

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
deleteServiceAction_acceptLanguage :: Lens.Lens' DeleteServiceAction (Core.Maybe Core.Text)
deleteServiceAction_acceptLanguage = Lens.lens (\DeleteServiceAction' {acceptLanguage} -> acceptLanguage) (\s@DeleteServiceAction' {} a -> s {acceptLanguage = a} :: DeleteServiceAction)

-- | The self-service action identifier. For example, @act-fs7abcd89wxyz@.
deleteServiceAction_id :: Lens.Lens' DeleteServiceAction Core.Text
deleteServiceAction_id = Lens.lens (\DeleteServiceAction' {id} -> id) (\s@DeleteServiceAction' {} a -> s {id = a} :: DeleteServiceAction)

instance Core.AWSRequest DeleteServiceAction where
  type
    AWSResponse DeleteServiceAction =
      DeleteServiceActionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteServiceActionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteServiceAction

instance Core.NFData DeleteServiceAction

instance Core.ToHeaders DeleteServiceAction where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.DeleteServiceAction" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteServiceAction where
  toJSON DeleteServiceAction' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AcceptLanguage" Core..=) Core.<$> acceptLanguage,
            Core.Just ("Id" Core..= id)
          ]
      )

instance Core.ToPath DeleteServiceAction where
  toPath = Core.const "/"

instance Core.ToQuery DeleteServiceAction where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteServiceActionResponse' smart constructor.
data DeleteServiceActionResponse = DeleteServiceActionResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteServiceActionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteServiceActionResponse_httpStatus' - The response's http status code.
newDeleteServiceActionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteServiceActionResponse
newDeleteServiceActionResponse pHttpStatus_ =
  DeleteServiceActionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteServiceActionResponse_httpStatus :: Lens.Lens' DeleteServiceActionResponse Core.Int
deleteServiceActionResponse_httpStatus = Lens.lens (\DeleteServiceActionResponse' {httpStatus} -> httpStatus) (\s@DeleteServiceActionResponse' {} a -> s {httpStatus = a} :: DeleteServiceActionResponse)

instance Core.NFData DeleteServiceActionResponse
