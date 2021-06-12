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
-- Module      : Network.AWS.EC2.Types.BlockDeviceMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BlockDeviceMapping where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.EbsBlockDevice
import qualified Network.AWS.Lens as Lens

-- | Describes a block device mapping.
--
-- /See:/ 'newBlockDeviceMapping' smart constructor.
data BlockDeviceMapping = BlockDeviceMapping'
  { -- | Parameters used to automatically set up EBS volumes when the instance is
    -- launched.
    ebs :: Core.Maybe EbsBlockDevice,
    -- | To omit the device from the block device mapping, specify an empty
    -- string.
    noDevice :: Core.Maybe Core.Text,
    -- | The virtual device name (@ephemeral@N). Instance store volumes are
    -- numbered starting from 0. An instance type with 2 available instance
    -- store volumes can specify mappings for @ephemeral0@ and @ephemeral1@.
    -- The number of available instance store volumes depends on the instance
    -- type. After you connect to the instance, you must mount the volume.
    --
    -- NVMe instance store volumes are automatically enumerated and assigned a
    -- device name. Including them in your block device mapping has no effect.
    --
    -- Constraints: For M3 instances, you must specify instance store volumes
    -- in the block device mapping for the instance. When you launch an M3
    -- instance, we ignore any instance store volumes specified in the block
    -- device mapping for the AMI.
    virtualName :: Core.Maybe Core.Text,
    -- | The device name (for example, @\/dev\/sdh@ or @xvdh@).
    deviceName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'BlockDeviceMapping' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ebs', 'blockDeviceMapping_ebs' - Parameters used to automatically set up EBS volumes when the instance is
-- launched.
--
-- 'noDevice', 'blockDeviceMapping_noDevice' - To omit the device from the block device mapping, specify an empty
-- string.
--
-- 'virtualName', 'blockDeviceMapping_virtualName' - The virtual device name (@ephemeral@N). Instance store volumes are
-- numbered starting from 0. An instance type with 2 available instance
-- store volumes can specify mappings for @ephemeral0@ and @ephemeral1@.
-- The number of available instance store volumes depends on the instance
-- type. After you connect to the instance, you must mount the volume.
--
-- NVMe instance store volumes are automatically enumerated and assigned a
-- device name. Including them in your block device mapping has no effect.
--
-- Constraints: For M3 instances, you must specify instance store volumes
-- in the block device mapping for the instance. When you launch an M3
-- instance, we ignore any instance store volumes specified in the block
-- device mapping for the AMI.
--
-- 'deviceName', 'blockDeviceMapping_deviceName' - The device name (for example, @\/dev\/sdh@ or @xvdh@).
newBlockDeviceMapping ::
  -- | 'deviceName'
  Core.Text ->
  BlockDeviceMapping
newBlockDeviceMapping pDeviceName_ =
  BlockDeviceMapping'
    { ebs = Core.Nothing,
      noDevice = Core.Nothing,
      virtualName = Core.Nothing,
      deviceName = pDeviceName_
    }

-- | Parameters used to automatically set up EBS volumes when the instance is
-- launched.
blockDeviceMapping_ebs :: Lens.Lens' BlockDeviceMapping (Core.Maybe EbsBlockDevice)
blockDeviceMapping_ebs = Lens.lens (\BlockDeviceMapping' {ebs} -> ebs) (\s@BlockDeviceMapping' {} a -> s {ebs = a} :: BlockDeviceMapping)

-- | To omit the device from the block device mapping, specify an empty
-- string.
blockDeviceMapping_noDevice :: Lens.Lens' BlockDeviceMapping (Core.Maybe Core.Text)
blockDeviceMapping_noDevice = Lens.lens (\BlockDeviceMapping' {noDevice} -> noDevice) (\s@BlockDeviceMapping' {} a -> s {noDevice = a} :: BlockDeviceMapping)

-- | The virtual device name (@ephemeral@N). Instance store volumes are
-- numbered starting from 0. An instance type with 2 available instance
-- store volumes can specify mappings for @ephemeral0@ and @ephemeral1@.
-- The number of available instance store volumes depends on the instance
-- type. After you connect to the instance, you must mount the volume.
--
-- NVMe instance store volumes are automatically enumerated and assigned a
-- device name. Including them in your block device mapping has no effect.
--
-- Constraints: For M3 instances, you must specify instance store volumes
-- in the block device mapping for the instance. When you launch an M3
-- instance, we ignore any instance store volumes specified in the block
-- device mapping for the AMI.
blockDeviceMapping_virtualName :: Lens.Lens' BlockDeviceMapping (Core.Maybe Core.Text)
blockDeviceMapping_virtualName = Lens.lens (\BlockDeviceMapping' {virtualName} -> virtualName) (\s@BlockDeviceMapping' {} a -> s {virtualName = a} :: BlockDeviceMapping)

-- | The device name (for example, @\/dev\/sdh@ or @xvdh@).
blockDeviceMapping_deviceName :: Lens.Lens' BlockDeviceMapping Core.Text
blockDeviceMapping_deviceName = Lens.lens (\BlockDeviceMapping' {deviceName} -> deviceName) (\s@BlockDeviceMapping' {} a -> s {deviceName = a} :: BlockDeviceMapping)

instance Core.FromXML BlockDeviceMapping where
  parseXML x =
    BlockDeviceMapping'
      Core.<$> (x Core..@? "ebs")
      Core.<*> (x Core..@? "noDevice")
      Core.<*> (x Core..@? "virtualName")
      Core.<*> (x Core..@ "deviceName")

instance Core.Hashable BlockDeviceMapping

instance Core.NFData BlockDeviceMapping

instance Core.ToQuery BlockDeviceMapping where
  toQuery BlockDeviceMapping' {..} =
    Core.mconcat
      [ "Ebs" Core.=: ebs,
        "NoDevice" Core.=: noDevice,
        "VirtualName" Core.=: virtualName,
        "DeviceName" Core.=: deviceName
      ]
