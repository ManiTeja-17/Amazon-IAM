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
-- Module      : Network.AWS.RDS.Types.ValidDBInstanceModificationsMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ValidDBInstanceModificationsMessage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types.AvailableProcessorFeature
import Network.AWS.RDS.Types.ValidStorageOptions

-- | Information about valid modifications that you can make to your DB
-- instance. Contains the result of a successful call to the
-- @DescribeValidDBInstanceModifications@ action. You can use this
-- information when you call @ModifyDBInstance@.
--
-- /See:/ 'newValidDBInstanceModificationsMessage' smart constructor.
data ValidDBInstanceModificationsMessage = ValidDBInstanceModificationsMessage'
  { -- | Valid processor features for your DB instance.
    validProcessorFeatures :: Core.Maybe [AvailableProcessorFeature],
    -- | Valid storage options for your DB instance.
    storage :: Core.Maybe [ValidStorageOptions]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ValidDBInstanceModificationsMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'validProcessorFeatures', 'validDBInstanceModificationsMessage_validProcessorFeatures' - Valid processor features for your DB instance.
--
-- 'storage', 'validDBInstanceModificationsMessage_storage' - Valid storage options for your DB instance.
newValidDBInstanceModificationsMessage ::
  ValidDBInstanceModificationsMessage
newValidDBInstanceModificationsMessage =
  ValidDBInstanceModificationsMessage'
    { validProcessorFeatures =
        Core.Nothing,
      storage = Core.Nothing
    }

-- | Valid processor features for your DB instance.
validDBInstanceModificationsMessage_validProcessorFeatures :: Lens.Lens' ValidDBInstanceModificationsMessage (Core.Maybe [AvailableProcessorFeature])
validDBInstanceModificationsMessage_validProcessorFeatures = Lens.lens (\ValidDBInstanceModificationsMessage' {validProcessorFeatures} -> validProcessorFeatures) (\s@ValidDBInstanceModificationsMessage' {} a -> s {validProcessorFeatures = a} :: ValidDBInstanceModificationsMessage) Core.. Lens.mapping Lens._Coerce

-- | Valid storage options for your DB instance.
validDBInstanceModificationsMessage_storage :: Lens.Lens' ValidDBInstanceModificationsMessage (Core.Maybe [ValidStorageOptions])
validDBInstanceModificationsMessage_storage = Lens.lens (\ValidDBInstanceModificationsMessage' {storage} -> storage) (\s@ValidDBInstanceModificationsMessage' {} a -> s {storage = a} :: ValidDBInstanceModificationsMessage) Core.. Lens.mapping Lens._Coerce

instance
  Core.FromXML
    ValidDBInstanceModificationsMessage
  where
  parseXML x =
    ValidDBInstanceModificationsMessage'
      Core.<$> ( x Core..@? "ValidProcessorFeatures"
                   Core..!@ Core.mempty
                   Core.>>= Core.may
                     (Core.parseXMLList "AvailableProcessorFeature")
               )
      Core.<*> ( x Core..@? "Storage" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "ValidStorageOptions")
               )

instance
  Core.Hashable
    ValidDBInstanceModificationsMessage

instance
  Core.NFData
    ValidDBInstanceModificationsMessage
