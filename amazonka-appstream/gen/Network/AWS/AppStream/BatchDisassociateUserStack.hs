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
-- Module      : Network.AWS.AppStream.BatchDisassociateUserStack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified users from the specified stacks.
module Network.AWS.AppStream.BatchDisassociateUserStack
  ( -- * Creating a Request
    BatchDisassociateUserStack (..),
    newBatchDisassociateUserStack,

    -- * Request Lenses
    batchDisassociateUserStack_userStackAssociations,

    -- * Destructuring the Response
    BatchDisassociateUserStackResponse (..),
    newBatchDisassociateUserStackResponse,

    -- * Response Lenses
    batchDisassociateUserStackResponse_errors,
    batchDisassociateUserStackResponse_httpStatus,
  )
where

import Network.AWS.AppStream.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchDisassociateUserStack' smart constructor.
data BatchDisassociateUserStack = BatchDisassociateUserStack'
  { -- | The list of UserStackAssociation objects.
    userStackAssociations :: Core.NonEmpty UserStackAssociation
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchDisassociateUserStack' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userStackAssociations', 'batchDisassociateUserStack_userStackAssociations' - The list of UserStackAssociation objects.
newBatchDisassociateUserStack ::
  -- | 'userStackAssociations'
  Core.NonEmpty UserStackAssociation ->
  BatchDisassociateUserStack
newBatchDisassociateUserStack pUserStackAssociations_ =
  BatchDisassociateUserStack'
    { userStackAssociations =
        Lens._Coerce Lens.# pUserStackAssociations_
    }

-- | The list of UserStackAssociation objects.
batchDisassociateUserStack_userStackAssociations :: Lens.Lens' BatchDisassociateUserStack (Core.NonEmpty UserStackAssociation)
batchDisassociateUserStack_userStackAssociations = Lens.lens (\BatchDisassociateUserStack' {userStackAssociations} -> userStackAssociations) (\s@BatchDisassociateUserStack' {} a -> s {userStackAssociations = a} :: BatchDisassociateUserStack) Core.. Lens._Coerce

instance Core.AWSRequest BatchDisassociateUserStack where
  type
    AWSResponse BatchDisassociateUserStack =
      BatchDisassociateUserStackResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDisassociateUserStackResponse'
            Core.<$> (x Core..?> "errors" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable BatchDisassociateUserStack

instance Core.NFData BatchDisassociateUserStack

instance Core.ToHeaders BatchDisassociateUserStack where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "PhotonAdminProxyService.BatchDisassociateUserStack" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON BatchDisassociateUserStack where
  toJSON BatchDisassociateUserStack' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "UserStackAssociations"
                  Core..= userStackAssociations
              )
          ]
      )

instance Core.ToPath BatchDisassociateUserStack where
  toPath = Core.const "/"

instance Core.ToQuery BatchDisassociateUserStack where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newBatchDisassociateUserStackResponse' smart constructor.
data BatchDisassociateUserStackResponse = BatchDisassociateUserStackResponse'
  { -- | The list of UserStackAssociationError objects.
    errors :: Core.Maybe [UserStackAssociationError],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchDisassociateUserStackResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchDisassociateUserStackResponse_errors' - The list of UserStackAssociationError objects.
--
-- 'httpStatus', 'batchDisassociateUserStackResponse_httpStatus' - The response's http status code.
newBatchDisassociateUserStackResponse ::
  -- | 'httpStatus'
  Core.Int ->
  BatchDisassociateUserStackResponse
newBatchDisassociateUserStackResponse pHttpStatus_ =
  BatchDisassociateUserStackResponse'
    { errors =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of UserStackAssociationError objects.
batchDisassociateUserStackResponse_errors :: Lens.Lens' BatchDisassociateUserStackResponse (Core.Maybe [UserStackAssociationError])
batchDisassociateUserStackResponse_errors = Lens.lens (\BatchDisassociateUserStackResponse' {errors} -> errors) (\s@BatchDisassociateUserStackResponse' {} a -> s {errors = a} :: BatchDisassociateUserStackResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
batchDisassociateUserStackResponse_httpStatus :: Lens.Lens' BatchDisassociateUserStackResponse Core.Int
batchDisassociateUserStackResponse_httpStatus = Lens.lens (\BatchDisassociateUserStackResponse' {httpStatus} -> httpStatus) (\s@BatchDisassociateUserStackResponse' {} a -> s {httpStatus = a} :: BatchDisassociateUserStackResponse)

instance
  Core.NFData
    BatchDisassociateUserStackResponse
