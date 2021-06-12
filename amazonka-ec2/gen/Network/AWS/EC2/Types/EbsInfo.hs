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
-- Module      : Network.AWS.EC2.Types.EbsInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EbsInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.EbsEncryptionSupport
import Network.AWS.EC2.Types.EbsNvmeSupport
import Network.AWS.EC2.Types.EbsOptimizedInfo
import Network.AWS.EC2.Types.EbsOptimizedSupport
import qualified Network.AWS.Lens as Lens

-- | Describes the Amazon EBS features supported by the instance type.
--
-- /See:/ 'newEbsInfo' smart constructor.
data EbsInfo = EbsInfo'
  { -- | Indicates whether non-volatile memory express (NVMe) is supported.
    nvmeSupport :: Core.Maybe EbsNvmeSupport,
    -- | Describes the optimized EBS performance for the instance type.
    ebsOptimizedInfo :: Core.Maybe EbsOptimizedInfo,
    -- | Indicates whether the instance type is Amazon EBS-optimized. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html Amazon EBS-optimized instances>
    -- in /Amazon EC2 User Guide/.
    ebsOptimizedSupport :: Core.Maybe EbsOptimizedSupport,
    -- | Indicates whether Amazon EBS encryption is supported.
    encryptionSupport :: Core.Maybe EbsEncryptionSupport
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EbsInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nvmeSupport', 'ebsInfo_nvmeSupport' - Indicates whether non-volatile memory express (NVMe) is supported.
--
-- 'ebsOptimizedInfo', 'ebsInfo_ebsOptimizedInfo' - Describes the optimized EBS performance for the instance type.
--
-- 'ebsOptimizedSupport', 'ebsInfo_ebsOptimizedSupport' - Indicates whether the instance type is Amazon EBS-optimized. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html Amazon EBS-optimized instances>
-- in /Amazon EC2 User Guide/.
--
-- 'encryptionSupport', 'ebsInfo_encryptionSupport' - Indicates whether Amazon EBS encryption is supported.
newEbsInfo ::
  EbsInfo
newEbsInfo =
  EbsInfo'
    { nvmeSupport = Core.Nothing,
      ebsOptimizedInfo = Core.Nothing,
      ebsOptimizedSupport = Core.Nothing,
      encryptionSupport = Core.Nothing
    }

-- | Indicates whether non-volatile memory express (NVMe) is supported.
ebsInfo_nvmeSupport :: Lens.Lens' EbsInfo (Core.Maybe EbsNvmeSupport)
ebsInfo_nvmeSupport = Lens.lens (\EbsInfo' {nvmeSupport} -> nvmeSupport) (\s@EbsInfo' {} a -> s {nvmeSupport = a} :: EbsInfo)

-- | Describes the optimized EBS performance for the instance type.
ebsInfo_ebsOptimizedInfo :: Lens.Lens' EbsInfo (Core.Maybe EbsOptimizedInfo)
ebsInfo_ebsOptimizedInfo = Lens.lens (\EbsInfo' {ebsOptimizedInfo} -> ebsOptimizedInfo) (\s@EbsInfo' {} a -> s {ebsOptimizedInfo = a} :: EbsInfo)

-- | Indicates whether the instance type is Amazon EBS-optimized. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html Amazon EBS-optimized instances>
-- in /Amazon EC2 User Guide/.
ebsInfo_ebsOptimizedSupport :: Lens.Lens' EbsInfo (Core.Maybe EbsOptimizedSupport)
ebsInfo_ebsOptimizedSupport = Lens.lens (\EbsInfo' {ebsOptimizedSupport} -> ebsOptimizedSupport) (\s@EbsInfo' {} a -> s {ebsOptimizedSupport = a} :: EbsInfo)

-- | Indicates whether Amazon EBS encryption is supported.
ebsInfo_encryptionSupport :: Lens.Lens' EbsInfo (Core.Maybe EbsEncryptionSupport)
ebsInfo_encryptionSupport = Lens.lens (\EbsInfo' {encryptionSupport} -> encryptionSupport) (\s@EbsInfo' {} a -> s {encryptionSupport = a} :: EbsInfo)

instance Core.FromXML EbsInfo where
  parseXML x =
    EbsInfo'
      Core.<$> (x Core..@? "nvmeSupport")
      Core.<*> (x Core..@? "ebsOptimizedInfo")
      Core.<*> (x Core..@? "ebsOptimizedSupport")
      Core.<*> (x Core..@? "encryptionSupport")

instance Core.Hashable EbsInfo

instance Core.NFData EbsInfo
