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
-- Module      : Network.AWS.EC2.Types.MemoryInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.MemoryInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Describes the memory for the instance type.
--
-- /See:/ 'newMemoryInfo' smart constructor.
data MemoryInfo = MemoryInfo'
  { -- | The size of the memory, in MiB.
    sizeInMiB :: Core.Maybe Core.Integer
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'MemoryInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sizeInMiB', 'memoryInfo_sizeInMiB' - The size of the memory, in MiB.
newMemoryInfo ::
  MemoryInfo
newMemoryInfo = MemoryInfo' {sizeInMiB = Core.Nothing}

-- | The size of the memory, in MiB.
memoryInfo_sizeInMiB :: Lens.Lens' MemoryInfo (Core.Maybe Core.Integer)
memoryInfo_sizeInMiB = Lens.lens (\MemoryInfo' {sizeInMiB} -> sizeInMiB) (\s@MemoryInfo' {} a -> s {sizeInMiB = a} :: MemoryInfo)

instance Core.FromXML MemoryInfo where
  parseXML x =
    MemoryInfo' Core.<$> (x Core..@? "sizeInMiB")

instance Core.Hashable MemoryInfo

instance Core.NFData MemoryInfo
