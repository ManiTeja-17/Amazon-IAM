{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.PackageSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.PackageSource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The S3 location for importing the package specified as @S3BucketName@
-- and @S3Key@
--
-- /See:/ 'newPackageSource' smart constructor.
data PackageSource = PackageSource'
  { -- | Key (file name) of the package.
    s3Key :: Core.Maybe Core.Text,
    -- | Name of the bucket containing the package.
    s3BucketName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PackageSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Key', 'packageSource_s3Key' - Key (file name) of the package.
--
-- 's3BucketName', 'packageSource_s3BucketName' - Name of the bucket containing the package.
newPackageSource ::
  PackageSource
newPackageSource =
  PackageSource'
    { s3Key = Core.Nothing,
      s3BucketName = Core.Nothing
    }

-- | Key (file name) of the package.
packageSource_s3Key :: Lens.Lens' PackageSource (Core.Maybe Core.Text)
packageSource_s3Key = Lens.lens (\PackageSource' {s3Key} -> s3Key) (\s@PackageSource' {} a -> s {s3Key = a} :: PackageSource)

-- | Name of the bucket containing the package.
packageSource_s3BucketName :: Lens.Lens' PackageSource (Core.Maybe Core.Text)
packageSource_s3BucketName = Lens.lens (\PackageSource' {s3BucketName} -> s3BucketName) (\s@PackageSource' {} a -> s {s3BucketName = a} :: PackageSource)

instance Core.Hashable PackageSource

instance Core.NFData PackageSource

instance Core.ToJSON PackageSource where
  toJSON PackageSource' {..} =
    Core.object
      ( Core.catMaybes
          [ ("S3Key" Core..=) Core.<$> s3Key,
            ("S3BucketName" Core..=) Core.<$> s3BucketName
          ]
      )
