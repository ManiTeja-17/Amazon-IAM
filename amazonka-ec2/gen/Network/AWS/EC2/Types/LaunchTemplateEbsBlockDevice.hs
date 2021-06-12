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
-- Module      : Network.AWS.EC2.Types.LaunchTemplateEbsBlockDevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateEbsBlockDevice where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.VolumeType
import qualified Network.AWS.Lens as Lens

-- | Describes a block device for an EBS volume.
--
-- /See:/ 'newLaunchTemplateEbsBlockDevice' smart constructor.
data LaunchTemplateEbsBlockDevice = LaunchTemplateEbsBlockDevice'
  { -- | Indicates whether the EBS volume is encrypted.
    encrypted :: Core.Maybe Core.Bool,
    -- | The throughput that the volume supports, in MiB\/s.
    throughput :: Core.Maybe Core.Int,
    -- | The ARN of the AWS Key Management Service (AWS KMS) CMK used for
    -- encryption.
    kmsKeyId :: Core.Maybe Core.Text,
    -- | Indicates whether the EBS volume is deleted on instance termination.
    deleteOnTermination :: Core.Maybe Core.Bool,
    -- | The ID of the snapshot.
    snapshotId :: Core.Maybe Core.Text,
    -- | The volume type.
    volumeType :: Core.Maybe VolumeType,
    -- | The size of the volume, in GiB.
    volumeSize :: Core.Maybe Core.Int,
    -- | The number of I\/O operations per second (IOPS) that the volume
    -- supports.
    iops :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LaunchTemplateEbsBlockDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encrypted', 'launchTemplateEbsBlockDevice_encrypted' - Indicates whether the EBS volume is encrypted.
--
-- 'throughput', 'launchTemplateEbsBlockDevice_throughput' - The throughput that the volume supports, in MiB\/s.
--
-- 'kmsKeyId', 'launchTemplateEbsBlockDevice_kmsKeyId' - The ARN of the AWS Key Management Service (AWS KMS) CMK used for
-- encryption.
--
-- 'deleteOnTermination', 'launchTemplateEbsBlockDevice_deleteOnTermination' - Indicates whether the EBS volume is deleted on instance termination.
--
-- 'snapshotId', 'launchTemplateEbsBlockDevice_snapshotId' - The ID of the snapshot.
--
-- 'volumeType', 'launchTemplateEbsBlockDevice_volumeType' - The volume type.
--
-- 'volumeSize', 'launchTemplateEbsBlockDevice_volumeSize' - The size of the volume, in GiB.
--
-- 'iops', 'launchTemplateEbsBlockDevice_iops' - The number of I\/O operations per second (IOPS) that the volume
-- supports.
newLaunchTemplateEbsBlockDevice ::
  LaunchTemplateEbsBlockDevice
newLaunchTemplateEbsBlockDevice =
  LaunchTemplateEbsBlockDevice'
    { encrypted =
        Core.Nothing,
      throughput = Core.Nothing,
      kmsKeyId = Core.Nothing,
      deleteOnTermination = Core.Nothing,
      snapshotId = Core.Nothing,
      volumeType = Core.Nothing,
      volumeSize = Core.Nothing,
      iops = Core.Nothing
    }

-- | Indicates whether the EBS volume is encrypted.
launchTemplateEbsBlockDevice_encrypted :: Lens.Lens' LaunchTemplateEbsBlockDevice (Core.Maybe Core.Bool)
launchTemplateEbsBlockDevice_encrypted = Lens.lens (\LaunchTemplateEbsBlockDevice' {encrypted} -> encrypted) (\s@LaunchTemplateEbsBlockDevice' {} a -> s {encrypted = a} :: LaunchTemplateEbsBlockDevice)

-- | The throughput that the volume supports, in MiB\/s.
launchTemplateEbsBlockDevice_throughput :: Lens.Lens' LaunchTemplateEbsBlockDevice (Core.Maybe Core.Int)
launchTemplateEbsBlockDevice_throughput = Lens.lens (\LaunchTemplateEbsBlockDevice' {throughput} -> throughput) (\s@LaunchTemplateEbsBlockDevice' {} a -> s {throughput = a} :: LaunchTemplateEbsBlockDevice)

-- | The ARN of the AWS Key Management Service (AWS KMS) CMK used for
-- encryption.
launchTemplateEbsBlockDevice_kmsKeyId :: Lens.Lens' LaunchTemplateEbsBlockDevice (Core.Maybe Core.Text)
launchTemplateEbsBlockDevice_kmsKeyId = Lens.lens (\LaunchTemplateEbsBlockDevice' {kmsKeyId} -> kmsKeyId) (\s@LaunchTemplateEbsBlockDevice' {} a -> s {kmsKeyId = a} :: LaunchTemplateEbsBlockDevice)

-- | Indicates whether the EBS volume is deleted on instance termination.
launchTemplateEbsBlockDevice_deleteOnTermination :: Lens.Lens' LaunchTemplateEbsBlockDevice (Core.Maybe Core.Bool)
launchTemplateEbsBlockDevice_deleteOnTermination = Lens.lens (\LaunchTemplateEbsBlockDevice' {deleteOnTermination} -> deleteOnTermination) (\s@LaunchTemplateEbsBlockDevice' {} a -> s {deleteOnTermination = a} :: LaunchTemplateEbsBlockDevice)

-- | The ID of the snapshot.
launchTemplateEbsBlockDevice_snapshotId :: Lens.Lens' LaunchTemplateEbsBlockDevice (Core.Maybe Core.Text)
launchTemplateEbsBlockDevice_snapshotId = Lens.lens (\LaunchTemplateEbsBlockDevice' {snapshotId} -> snapshotId) (\s@LaunchTemplateEbsBlockDevice' {} a -> s {snapshotId = a} :: LaunchTemplateEbsBlockDevice)

-- | The volume type.
launchTemplateEbsBlockDevice_volumeType :: Lens.Lens' LaunchTemplateEbsBlockDevice (Core.Maybe VolumeType)
launchTemplateEbsBlockDevice_volumeType = Lens.lens (\LaunchTemplateEbsBlockDevice' {volumeType} -> volumeType) (\s@LaunchTemplateEbsBlockDevice' {} a -> s {volumeType = a} :: LaunchTemplateEbsBlockDevice)

-- | The size of the volume, in GiB.
launchTemplateEbsBlockDevice_volumeSize :: Lens.Lens' LaunchTemplateEbsBlockDevice (Core.Maybe Core.Int)
launchTemplateEbsBlockDevice_volumeSize = Lens.lens (\LaunchTemplateEbsBlockDevice' {volumeSize} -> volumeSize) (\s@LaunchTemplateEbsBlockDevice' {} a -> s {volumeSize = a} :: LaunchTemplateEbsBlockDevice)

-- | The number of I\/O operations per second (IOPS) that the volume
-- supports.
launchTemplateEbsBlockDevice_iops :: Lens.Lens' LaunchTemplateEbsBlockDevice (Core.Maybe Core.Int)
launchTemplateEbsBlockDevice_iops = Lens.lens (\LaunchTemplateEbsBlockDevice' {iops} -> iops) (\s@LaunchTemplateEbsBlockDevice' {} a -> s {iops = a} :: LaunchTemplateEbsBlockDevice)

instance Core.FromXML LaunchTemplateEbsBlockDevice where
  parseXML x =
    LaunchTemplateEbsBlockDevice'
      Core.<$> (x Core..@? "encrypted")
      Core.<*> (x Core..@? "throughput")
      Core.<*> (x Core..@? "kmsKeyId")
      Core.<*> (x Core..@? "deleteOnTermination")
      Core.<*> (x Core..@? "snapshotId")
      Core.<*> (x Core..@? "volumeType")
      Core.<*> (x Core..@? "volumeSize")
      Core.<*> (x Core..@? "iops")

instance Core.Hashable LaunchTemplateEbsBlockDevice

instance Core.NFData LaunchTemplateEbsBlockDevice
