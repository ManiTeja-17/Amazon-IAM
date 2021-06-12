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
-- Module      : Network.AWS.GuardDuty.DeleteDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon GuardDuty detector that is specified by the detector
-- ID.
module Network.AWS.GuardDuty.DeleteDetector
  ( -- * Creating a Request
    DeleteDetector (..),
    newDeleteDetector,

    -- * Request Lenses
    deleteDetector_detectorId,

    -- * Destructuring the Response
    DeleteDetectorResponse (..),
    newDeleteDetectorResponse,

    -- * Response Lenses
    deleteDetectorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDetector' smart constructor.
data DeleteDetector = DeleteDetector'
  { -- | The unique ID of the detector that you want to delete.
    detectorId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDetector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorId', 'deleteDetector_detectorId' - The unique ID of the detector that you want to delete.
newDeleteDetector ::
  -- | 'detectorId'
  Core.Text ->
  DeleteDetector
newDeleteDetector pDetectorId_ =
  DeleteDetector' {detectorId = pDetectorId_}

-- | The unique ID of the detector that you want to delete.
deleteDetector_detectorId :: Lens.Lens' DeleteDetector Core.Text
deleteDetector_detectorId = Lens.lens (\DeleteDetector' {detectorId} -> detectorId) (\s@DeleteDetector' {} a -> s {detectorId = a} :: DeleteDetector)

instance Core.AWSRequest DeleteDetector where
  type
    AWSResponse DeleteDetector =
      DeleteDetectorResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteDetectorResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteDetector

instance Core.NFData DeleteDetector

instance Core.ToHeaders DeleteDetector where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath DeleteDetector where
  toPath DeleteDetector' {..} =
    Core.mconcat ["/detector/", Core.toBS detectorId]

instance Core.ToQuery DeleteDetector where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteDetectorResponse' smart constructor.
data DeleteDetectorResponse = DeleteDetectorResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteDetectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteDetectorResponse_httpStatus' - The response's http status code.
newDeleteDetectorResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteDetectorResponse
newDeleteDetectorResponse pHttpStatus_ =
  DeleteDetectorResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteDetectorResponse_httpStatus :: Lens.Lens' DeleteDetectorResponse Core.Int
deleteDetectorResponse_httpStatus = Lens.lens (\DeleteDetectorResponse' {httpStatus} -> httpStatus) (\s@DeleteDetectorResponse' {} a -> s {httpStatus = a} :: DeleteDetectorResponse)

instance Core.NFData DeleteDetectorResponse
