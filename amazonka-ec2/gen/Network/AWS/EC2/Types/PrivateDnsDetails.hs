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
-- Module      : Network.AWS.EC2.Types.PrivateDnsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PrivateDnsDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Information about the Private DNS name for interface endpoints.
--
-- /See:/ 'newPrivateDnsDetails' smart constructor.
data PrivateDnsDetails = PrivateDnsDetails'
  { -- | The private DNS name assigned to the VPC endpoint service.
    privateDnsName :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PrivateDnsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'privateDnsName', 'privateDnsDetails_privateDnsName' - The private DNS name assigned to the VPC endpoint service.
newPrivateDnsDetails ::
  PrivateDnsDetails
newPrivateDnsDetails =
  PrivateDnsDetails' {privateDnsName = Core.Nothing}

-- | The private DNS name assigned to the VPC endpoint service.
privateDnsDetails_privateDnsName :: Lens.Lens' PrivateDnsDetails (Core.Maybe Core.Text)
privateDnsDetails_privateDnsName = Lens.lens (\PrivateDnsDetails' {privateDnsName} -> privateDnsName) (\s@PrivateDnsDetails' {} a -> s {privateDnsName = a} :: PrivateDnsDetails)

instance Core.FromXML PrivateDnsDetails where
  parseXML x =
    PrivateDnsDetails'
      Core.<$> (x Core..@? "privateDnsName")

instance Core.Hashable PrivateDnsDetails

instance Core.NFData PrivateDnsDetails
