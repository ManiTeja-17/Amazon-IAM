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
-- Module      : Network.AWS.AppMesh.DescribeMesh
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an existing service mesh.
module Network.AWS.AppMesh.DescribeMesh
  ( -- * Creating a Request
    DescribeMesh (..),
    newDescribeMesh,

    -- * Request Lenses
    describeMesh_meshOwner,
    describeMesh_meshName,

    -- * Destructuring the Response
    DescribeMeshResponse (..),
    newDescribeMeshResponse,

    -- * Response Lenses
    describeMeshResponse_httpStatus,
    describeMeshResponse_mesh,
  )
where

import Network.AWS.AppMesh.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDescribeMesh' smart constructor.
data DescribeMesh = DescribeMesh'
  { -- | The AWS IAM account ID of the service mesh owner. If the account ID is
    -- not your own, then it\'s the ID of the account that shared the mesh with
    -- your account. For more information about mesh sharing, see
    -- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
    meshOwner :: Prelude.Maybe Prelude.Text,
    -- | The name of the service mesh to describe.
    meshName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeMesh' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meshOwner', 'describeMesh_meshOwner' - The AWS IAM account ID of the service mesh owner. If the account ID is
-- not your own, then it\'s the ID of the account that shared the mesh with
-- your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
--
-- 'meshName', 'describeMesh_meshName' - The name of the service mesh to describe.
newDescribeMesh ::
  -- | 'meshName'
  Prelude.Text ->
  DescribeMesh
newDescribeMesh pMeshName_ =
  DescribeMesh'
    { meshOwner = Prelude.Nothing,
      meshName = pMeshName_
    }

-- | The AWS IAM account ID of the service mesh owner. If the account ID is
-- not your own, then it\'s the ID of the account that shared the mesh with
-- your account. For more information about mesh sharing, see
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html Working with shared meshes>.
describeMesh_meshOwner :: Lens.Lens' DescribeMesh (Prelude.Maybe Prelude.Text)
describeMesh_meshOwner = Lens.lens (\DescribeMesh' {meshOwner} -> meshOwner) (\s@DescribeMesh' {} a -> s {meshOwner = a} :: DescribeMesh)

-- | The name of the service mesh to describe.
describeMesh_meshName :: Lens.Lens' DescribeMesh Prelude.Text
describeMesh_meshName = Lens.lens (\DescribeMesh' {meshName} -> meshName) (\s@DescribeMesh' {} a -> s {meshName = a} :: DescribeMesh)

instance Core.AWSRequest DescribeMesh where
  type AWSResponse DescribeMesh = DescribeMeshResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeMeshResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Core.eitherParseJSON x)
      )

instance Prelude.Hashable DescribeMesh

instance Prelude.NFData DescribeMesh

instance Core.ToHeaders DescribeMesh where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeMesh where
  toPath DescribeMesh' {..} =
    Prelude.mconcat
      ["/v20190125/meshes/", Core.toBS meshName]

instance Core.ToQuery DescribeMesh where
  toQuery DescribeMesh' {..} =
    Prelude.mconcat ["meshOwner" Core.=: meshOwner]

-- |
--
-- /See:/ 'newDescribeMeshResponse' smart constructor.
data DescribeMeshResponse = DescribeMeshResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The full description of your service mesh.
    mesh :: MeshData
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeMeshResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeMeshResponse_httpStatus' - The response's http status code.
--
-- 'mesh', 'describeMeshResponse_mesh' - The full description of your service mesh.
newDescribeMeshResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'mesh'
  MeshData ->
  DescribeMeshResponse
newDescribeMeshResponse pHttpStatus_ pMesh_ =
  DescribeMeshResponse'
    { httpStatus = pHttpStatus_,
      mesh = pMesh_
    }

-- | The response's http status code.
describeMeshResponse_httpStatus :: Lens.Lens' DescribeMeshResponse Prelude.Int
describeMeshResponse_httpStatus = Lens.lens (\DescribeMeshResponse' {httpStatus} -> httpStatus) (\s@DescribeMeshResponse' {} a -> s {httpStatus = a} :: DescribeMeshResponse)

-- | The full description of your service mesh.
describeMeshResponse_mesh :: Lens.Lens' DescribeMeshResponse MeshData
describeMeshResponse_mesh = Lens.lens (\DescribeMeshResponse' {mesh} -> mesh) (\s@DescribeMeshResponse' {} a -> s {mesh = a} :: DescribeMeshResponse)

instance Prelude.NFData DescribeMeshResponse