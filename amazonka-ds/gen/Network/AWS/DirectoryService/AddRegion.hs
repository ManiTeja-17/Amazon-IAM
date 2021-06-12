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
-- Module      : Network.AWS.DirectoryService.AddRegion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds two domain controllers in the specified Region for the specified
-- directory.
module Network.AWS.DirectoryService.AddRegion
  ( -- * Creating a Request
    AddRegion (..),
    newAddRegion,

    -- * Request Lenses
    addRegion_directoryId,
    addRegion_regionName,
    addRegion_vPCSettings,

    -- * Destructuring the Response
    AddRegionResponse (..),
    newAddRegionResponse,

    -- * Response Lenses
    addRegionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectoryService.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAddRegion' smart constructor.
data AddRegion = AddRegion'
  { -- | The identifier of the directory to which you want to add Region
    -- replication.
    directoryId :: Core.Text,
    -- | The name of the Region where you want to add domain controllers for
    -- replication. For example, @us-east-1@.
    regionName :: Core.Text,
    vPCSettings :: DirectoryVpcSettings
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AddRegion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'directoryId', 'addRegion_directoryId' - The identifier of the directory to which you want to add Region
-- replication.
--
-- 'regionName', 'addRegion_regionName' - The name of the Region where you want to add domain controllers for
-- replication. For example, @us-east-1@.
--
-- 'vPCSettings', 'addRegion_vPCSettings' - Undocumented member.
newAddRegion ::
  -- | 'directoryId'
  Core.Text ->
  -- | 'regionName'
  Core.Text ->
  -- | 'vPCSettings'
  DirectoryVpcSettings ->
  AddRegion
newAddRegion pDirectoryId_ pRegionName_ pVPCSettings_ =
  AddRegion'
    { directoryId = pDirectoryId_,
      regionName = pRegionName_,
      vPCSettings = pVPCSettings_
    }

-- | The identifier of the directory to which you want to add Region
-- replication.
addRegion_directoryId :: Lens.Lens' AddRegion Core.Text
addRegion_directoryId = Lens.lens (\AddRegion' {directoryId} -> directoryId) (\s@AddRegion' {} a -> s {directoryId = a} :: AddRegion)

-- | The name of the Region where you want to add domain controllers for
-- replication. For example, @us-east-1@.
addRegion_regionName :: Lens.Lens' AddRegion Core.Text
addRegion_regionName = Lens.lens (\AddRegion' {regionName} -> regionName) (\s@AddRegion' {} a -> s {regionName = a} :: AddRegion)

-- | Undocumented member.
addRegion_vPCSettings :: Lens.Lens' AddRegion DirectoryVpcSettings
addRegion_vPCSettings = Lens.lens (\AddRegion' {vPCSettings} -> vPCSettings) (\s@AddRegion' {} a -> s {vPCSettings = a} :: AddRegion)

instance Core.AWSRequest AddRegion where
  type AWSResponse AddRegion = AddRegionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AddRegionResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable AddRegion

instance Core.NFData AddRegion

instance Core.ToHeaders AddRegion where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DirectoryService_20150416.AddRegion" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON AddRegion where
  toJSON AddRegion' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("DirectoryId" Core..= directoryId),
            Core.Just ("RegionName" Core..= regionName),
            Core.Just ("VPCSettings" Core..= vPCSettings)
          ]
      )

instance Core.ToPath AddRegion where
  toPath = Core.const "/"

instance Core.ToQuery AddRegion where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newAddRegionResponse' smart constructor.
data AddRegionResponse = AddRegionResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AddRegionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'addRegionResponse_httpStatus' - The response's http status code.
newAddRegionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  AddRegionResponse
newAddRegionResponse pHttpStatus_ =
  AddRegionResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
addRegionResponse_httpStatus :: Lens.Lens' AddRegionResponse Core.Int
addRegionResponse_httpStatus = Lens.lens (\AddRegionResponse' {httpStatus} -> httpStatus) (\s@AddRegionResponse' {} a -> s {httpStatus = a} :: AddRegionResponse)

instance Core.NFData AddRegionResponse
