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
-- Module      : Network.AWS.Lightsail.GetDisk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific block storage disk.
module Network.AWS.Lightsail.GetDisk
  ( -- * Creating a Request
    GetDisk (..),
    newGetDisk,

    -- * Request Lenses
    getDisk_diskName,

    -- * Destructuring the Response
    GetDiskResponse (..),
    newGetDiskResponse,

    -- * Response Lenses
    getDiskResponse_disk,
    getDiskResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDisk' smart constructor.
data GetDisk = GetDisk'
  { -- | The name of the disk (e.g., @my-disk@).
    diskName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetDisk' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'diskName', 'getDisk_diskName' - The name of the disk (e.g., @my-disk@).
newGetDisk ::
  -- | 'diskName'
  Core.Text ->
  GetDisk
newGetDisk pDiskName_ =
  GetDisk' {diskName = pDiskName_}

-- | The name of the disk (e.g., @my-disk@).
getDisk_diskName :: Lens.Lens' GetDisk Core.Text
getDisk_diskName = Lens.lens (\GetDisk' {diskName} -> diskName) (\s@GetDisk' {} a -> s {diskName = a} :: GetDisk)

instance Core.AWSRequest GetDisk where
  type AWSResponse GetDisk = GetDiskResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDiskResponse'
            Core.<$> (x Core..?> "disk")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetDisk

instance Core.NFData GetDisk

instance Core.ToHeaders GetDisk where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("Lightsail_20161128.GetDisk" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetDisk where
  toJSON GetDisk' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("diskName" Core..= diskName)]
      )

instance Core.ToPath GetDisk where
  toPath = Core.const "/"

instance Core.ToQuery GetDisk where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetDiskResponse' smart constructor.
data GetDiskResponse = GetDiskResponse'
  { -- | An object containing information about the disk.
    disk :: Core.Maybe Disk,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetDiskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'disk', 'getDiskResponse_disk' - An object containing information about the disk.
--
-- 'httpStatus', 'getDiskResponse_httpStatus' - The response's http status code.
newGetDiskResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetDiskResponse
newGetDiskResponse pHttpStatus_ =
  GetDiskResponse'
    { disk = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An object containing information about the disk.
getDiskResponse_disk :: Lens.Lens' GetDiskResponse (Core.Maybe Disk)
getDiskResponse_disk = Lens.lens (\GetDiskResponse' {disk} -> disk) (\s@GetDiskResponse' {} a -> s {disk = a} :: GetDiskResponse)

-- | The response's http status code.
getDiskResponse_httpStatus :: Lens.Lens' GetDiskResponse Core.Int
getDiskResponse_httpStatus = Lens.lens (\GetDiskResponse' {httpStatus} -> httpStatus) (\s@GetDiskResponse' {} a -> s {httpStatus = a} :: GetDiskResponse)

instance Core.NFData GetDiskResponse
