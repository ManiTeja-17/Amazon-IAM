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
-- Module      : Network.AWS.IoT.DeleteThing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified thing. Returns successfully with no error if the
-- deletion is successful or you specify a thing that doesn\'t exist.
module Network.AWS.IoT.DeleteThing
  ( -- * Creating a Request
    DeleteThing (..),
    newDeleteThing,

    -- * Request Lenses
    deleteThing_expectedVersion,
    deleteThing_thingName,

    -- * Destructuring the Response
    DeleteThingResponse (..),
    newDeleteThingResponse,

    -- * Response Lenses
    deleteThingResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for the DeleteThing operation.
--
-- /See:/ 'newDeleteThing' smart constructor.
data DeleteThing = DeleteThing'
  { -- | The expected version of the thing record in the registry. If the version
    -- of the record in the registry does not match the expected version
    -- specified in the request, the @DeleteThing@ request is rejected with a
    -- @VersionConflictException@.
    expectedVersion :: Core.Maybe Core.Integer,
    -- | The name of the thing to delete.
    thingName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteThing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expectedVersion', 'deleteThing_expectedVersion' - The expected version of the thing record in the registry. If the version
-- of the record in the registry does not match the expected version
-- specified in the request, the @DeleteThing@ request is rejected with a
-- @VersionConflictException@.
--
-- 'thingName', 'deleteThing_thingName' - The name of the thing to delete.
newDeleteThing ::
  -- | 'thingName'
  Core.Text ->
  DeleteThing
newDeleteThing pThingName_ =
  DeleteThing'
    { expectedVersion = Core.Nothing,
      thingName = pThingName_
    }

-- | The expected version of the thing record in the registry. If the version
-- of the record in the registry does not match the expected version
-- specified in the request, the @DeleteThing@ request is rejected with a
-- @VersionConflictException@.
deleteThing_expectedVersion :: Lens.Lens' DeleteThing (Core.Maybe Core.Integer)
deleteThing_expectedVersion = Lens.lens (\DeleteThing' {expectedVersion} -> expectedVersion) (\s@DeleteThing' {} a -> s {expectedVersion = a} :: DeleteThing)

-- | The name of the thing to delete.
deleteThing_thingName :: Lens.Lens' DeleteThing Core.Text
deleteThing_thingName = Lens.lens (\DeleteThing' {thingName} -> thingName) (\s@DeleteThing' {} a -> s {thingName = a} :: DeleteThing)

instance Core.AWSRequest DeleteThing where
  type AWSResponse DeleteThing = DeleteThingResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteThingResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteThing

instance Core.NFData DeleteThing

instance Core.ToHeaders DeleteThing where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteThing where
  toPath DeleteThing' {..} =
    Core.mconcat ["/things/", Core.toBS thingName]

instance Core.ToQuery DeleteThing where
  toQuery DeleteThing' {..} =
    Core.mconcat
      ["expectedVersion" Core.=: expectedVersion]

-- | The output of the DeleteThing operation.
--
-- /See:/ 'newDeleteThingResponse' smart constructor.
data DeleteThingResponse = DeleteThingResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteThingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteThingResponse_httpStatus' - The response's http status code.
newDeleteThingResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteThingResponse
newDeleteThingResponse pHttpStatus_ =
  DeleteThingResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteThingResponse_httpStatus :: Lens.Lens' DeleteThingResponse Core.Int
deleteThingResponse_httpStatus = Lens.lens (\DeleteThingResponse' {httpStatus} -> httpStatus) (\s@DeleteThingResponse' {} a -> s {httpStatus = a} :: DeleteThingResponse)

instance Core.NFData DeleteThingResponse
