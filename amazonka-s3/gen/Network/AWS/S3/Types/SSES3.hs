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
-- Module      : Network.AWS.S3.Types.SSES3
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.SSES3 where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.S3.Internal

-- | Specifies the use of SSE-S3 to encrypt delivered inventory reports.
--
-- /See:/ 'newSSES3' smart constructor.
data SSES3 = SSES3'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SSES3' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newSSES3 ::
  SSES3
newSSES3 = SSES3'

instance Core.FromXML SSES3 where
  parseXML = Core.const (Core.pure SSES3')

instance Core.Hashable SSES3

instance Core.NFData SSES3

instance Core.ToXML SSES3 where
  toXML = Core.const Core.mempty
