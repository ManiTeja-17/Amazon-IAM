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
-- Module      : Network.AWS.S3.Types.ServerSideEncryptionRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ServerSideEncryptionRule where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ServerSideEncryptionByDefault

-- | Specifies the default server-side encryption configuration.
--
-- /See:/ 'newServerSideEncryptionRule' smart constructor.
data ServerSideEncryptionRule = ServerSideEncryptionRule'
  { -- | Specifies whether Amazon S3 should use an S3 Bucket Key with server-side
    -- encryption using KMS (SSE-KMS) for new objects in the bucket. Existing
    -- objects are not affected. Setting the @BucketKeyEnabled@ element to
    -- @true@ causes Amazon S3 to use an S3 Bucket Key. By default, S3 Bucket
    -- Key is not enabled.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html Amazon S3 Bucket Keys>
    -- in the /Amazon Simple Storage Service Developer Guide/.
    bucketKeyEnabled :: Core.Maybe Core.Bool,
    -- | Specifies the default server-side encryption to apply to new objects in
    -- the bucket. If a PUT Object request doesn\'t specify any server-side
    -- encryption, this default encryption will be applied.
    applyServerSideEncryptionByDefault :: Core.Maybe ServerSideEncryptionByDefault
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'ServerSideEncryptionRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketKeyEnabled', 'serverSideEncryptionRule_bucketKeyEnabled' - Specifies whether Amazon S3 should use an S3 Bucket Key with server-side
-- encryption using KMS (SSE-KMS) for new objects in the bucket. Existing
-- objects are not affected. Setting the @BucketKeyEnabled@ element to
-- @true@ causes Amazon S3 to use an S3 Bucket Key. By default, S3 Bucket
-- Key is not enabled.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html Amazon S3 Bucket Keys>
-- in the /Amazon Simple Storage Service Developer Guide/.
--
-- 'applyServerSideEncryptionByDefault', 'serverSideEncryptionRule_applyServerSideEncryptionByDefault' - Specifies the default server-side encryption to apply to new objects in
-- the bucket. If a PUT Object request doesn\'t specify any server-side
-- encryption, this default encryption will be applied.
newServerSideEncryptionRule ::
  ServerSideEncryptionRule
newServerSideEncryptionRule =
  ServerSideEncryptionRule'
    { bucketKeyEnabled =
        Core.Nothing,
      applyServerSideEncryptionByDefault = Core.Nothing
    }

-- | Specifies whether Amazon S3 should use an S3 Bucket Key with server-side
-- encryption using KMS (SSE-KMS) for new objects in the bucket. Existing
-- objects are not affected. Setting the @BucketKeyEnabled@ element to
-- @true@ causes Amazon S3 to use an S3 Bucket Key. By default, S3 Bucket
-- Key is not enabled.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html Amazon S3 Bucket Keys>
-- in the /Amazon Simple Storage Service Developer Guide/.
serverSideEncryptionRule_bucketKeyEnabled :: Lens.Lens' ServerSideEncryptionRule (Core.Maybe Core.Bool)
serverSideEncryptionRule_bucketKeyEnabled = Lens.lens (\ServerSideEncryptionRule' {bucketKeyEnabled} -> bucketKeyEnabled) (\s@ServerSideEncryptionRule' {} a -> s {bucketKeyEnabled = a} :: ServerSideEncryptionRule)

-- | Specifies the default server-side encryption to apply to new objects in
-- the bucket. If a PUT Object request doesn\'t specify any server-side
-- encryption, this default encryption will be applied.
serverSideEncryptionRule_applyServerSideEncryptionByDefault :: Lens.Lens' ServerSideEncryptionRule (Core.Maybe ServerSideEncryptionByDefault)
serverSideEncryptionRule_applyServerSideEncryptionByDefault = Lens.lens (\ServerSideEncryptionRule' {applyServerSideEncryptionByDefault} -> applyServerSideEncryptionByDefault) (\s@ServerSideEncryptionRule' {} a -> s {applyServerSideEncryptionByDefault = a} :: ServerSideEncryptionRule)

instance Core.FromXML ServerSideEncryptionRule where
  parseXML x =
    ServerSideEncryptionRule'
      Core.<$> (x Core..@? "BucketKeyEnabled")
      Core.<*> (x Core..@? "ApplyServerSideEncryptionByDefault")

instance Core.Hashable ServerSideEncryptionRule

instance Core.NFData ServerSideEncryptionRule

instance Core.ToXML ServerSideEncryptionRule where
  toXML ServerSideEncryptionRule' {..} =
    Core.mconcat
      [ "BucketKeyEnabled" Core.@= bucketKeyEnabled,
        "ApplyServerSideEncryptionByDefault"
          Core.@= applyServerSideEncryptionByDefault
      ]
