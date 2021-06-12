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
-- Module      : Network.AWS.SageMaker.DeleteFlowDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified flow definition.
module Network.AWS.SageMaker.DeleteFlowDefinition
  ( -- * Creating a Request
    DeleteFlowDefinition (..),
    newDeleteFlowDefinition,

    -- * Request Lenses
    deleteFlowDefinition_flowDefinitionName,

    -- * Destructuring the Response
    DeleteFlowDefinitionResponse (..),
    newDeleteFlowDefinitionResponse,

    -- * Response Lenses
    deleteFlowDefinitionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newDeleteFlowDefinition' smart constructor.
data DeleteFlowDefinition = DeleteFlowDefinition'
  { -- | The name of the flow definition you are deleting.
    flowDefinitionName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteFlowDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowDefinitionName', 'deleteFlowDefinition_flowDefinitionName' - The name of the flow definition you are deleting.
newDeleteFlowDefinition ::
  -- | 'flowDefinitionName'
  Core.Text ->
  DeleteFlowDefinition
newDeleteFlowDefinition pFlowDefinitionName_ =
  DeleteFlowDefinition'
    { flowDefinitionName =
        pFlowDefinitionName_
    }

-- | The name of the flow definition you are deleting.
deleteFlowDefinition_flowDefinitionName :: Lens.Lens' DeleteFlowDefinition Core.Text
deleteFlowDefinition_flowDefinitionName = Lens.lens (\DeleteFlowDefinition' {flowDefinitionName} -> flowDefinitionName) (\s@DeleteFlowDefinition' {} a -> s {flowDefinitionName = a} :: DeleteFlowDefinition)

instance Core.AWSRequest DeleteFlowDefinition where
  type
    AWSResponse DeleteFlowDefinition =
      DeleteFlowDefinitionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteFlowDefinitionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteFlowDefinition

instance Core.NFData DeleteFlowDefinition

instance Core.ToHeaders DeleteFlowDefinition where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.DeleteFlowDefinition" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteFlowDefinition where
  toJSON DeleteFlowDefinition' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("FlowDefinitionName" Core..= flowDefinitionName)
          ]
      )

instance Core.ToPath DeleteFlowDefinition where
  toPath = Core.const "/"

instance Core.ToQuery DeleteFlowDefinition where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteFlowDefinitionResponse' smart constructor.
data DeleteFlowDefinitionResponse = DeleteFlowDefinitionResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteFlowDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteFlowDefinitionResponse_httpStatus' - The response's http status code.
newDeleteFlowDefinitionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteFlowDefinitionResponse
newDeleteFlowDefinitionResponse pHttpStatus_ =
  DeleteFlowDefinitionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteFlowDefinitionResponse_httpStatus :: Lens.Lens' DeleteFlowDefinitionResponse Core.Int
deleteFlowDefinitionResponse_httpStatus = Lens.lens (\DeleteFlowDefinitionResponse' {httpStatus} -> httpStatus) (\s@DeleteFlowDefinitionResponse' {} a -> s {httpStatus = a} :: DeleteFlowDefinitionResponse)

instance Core.NFData DeleteFlowDefinitionResponse
