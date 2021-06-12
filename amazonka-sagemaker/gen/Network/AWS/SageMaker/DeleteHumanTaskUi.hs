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
-- Module      : Network.AWS.SageMaker.DeleteHumanTaskUi
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this operation to delete a human task user interface (worker task
-- template).
--
-- To see a list of human task user interfaces (work task templates) in
-- your account, use . When you delete a worker task template, it no longer
-- appears when you call @ListHumanTaskUis@.
module Network.AWS.SageMaker.DeleteHumanTaskUi
  ( -- * Creating a Request
    DeleteHumanTaskUi (..),
    newDeleteHumanTaskUi,

    -- * Request Lenses
    deleteHumanTaskUi_humanTaskUiName,

    -- * Destructuring the Response
    DeleteHumanTaskUiResponse (..),
    newDeleteHumanTaskUiResponse,

    -- * Response Lenses
    deleteHumanTaskUiResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newDeleteHumanTaskUi' smart constructor.
data DeleteHumanTaskUi = DeleteHumanTaskUi'
  { -- | The name of the human task user interface (work task template) you want
    -- to delete.
    humanTaskUiName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteHumanTaskUi' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'humanTaskUiName', 'deleteHumanTaskUi_humanTaskUiName' - The name of the human task user interface (work task template) you want
-- to delete.
newDeleteHumanTaskUi ::
  -- | 'humanTaskUiName'
  Core.Text ->
  DeleteHumanTaskUi
newDeleteHumanTaskUi pHumanTaskUiName_ =
  DeleteHumanTaskUi'
    { humanTaskUiName =
        pHumanTaskUiName_
    }

-- | The name of the human task user interface (work task template) you want
-- to delete.
deleteHumanTaskUi_humanTaskUiName :: Lens.Lens' DeleteHumanTaskUi Core.Text
deleteHumanTaskUi_humanTaskUiName = Lens.lens (\DeleteHumanTaskUi' {humanTaskUiName} -> humanTaskUiName) (\s@DeleteHumanTaskUi' {} a -> s {humanTaskUiName = a} :: DeleteHumanTaskUi)

instance Core.AWSRequest DeleteHumanTaskUi where
  type
    AWSResponse DeleteHumanTaskUi =
      DeleteHumanTaskUiResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteHumanTaskUiResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteHumanTaskUi

instance Core.NFData DeleteHumanTaskUi

instance Core.ToHeaders DeleteHumanTaskUi where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.DeleteHumanTaskUi" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteHumanTaskUi where
  toJSON DeleteHumanTaskUi' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("HumanTaskUiName" Core..= humanTaskUiName)
          ]
      )

instance Core.ToPath DeleteHumanTaskUi where
  toPath = Core.const "/"

instance Core.ToQuery DeleteHumanTaskUi where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteHumanTaskUiResponse' smart constructor.
data DeleteHumanTaskUiResponse = DeleteHumanTaskUiResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteHumanTaskUiResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteHumanTaskUiResponse_httpStatus' - The response's http status code.
newDeleteHumanTaskUiResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteHumanTaskUiResponse
newDeleteHumanTaskUiResponse pHttpStatus_ =
  DeleteHumanTaskUiResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteHumanTaskUiResponse_httpStatus :: Lens.Lens' DeleteHumanTaskUiResponse Core.Int
deleteHumanTaskUiResponse_httpStatus = Lens.lens (\DeleteHumanTaskUiResponse' {httpStatus} -> httpStatus) (\s@DeleteHumanTaskUiResponse' {} a -> s {httpStatus = a} :: DeleteHumanTaskUiResponse)

instance Core.NFData DeleteHumanTaskUiResponse
