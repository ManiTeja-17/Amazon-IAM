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
-- Module      : Amazonka.RDS.Types.ValidDBInstanceModificationsMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RDS.Types.ValidDBInstanceModificationsMessage where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RDS.Types.AvailableProcessorFeature
import Amazonka.RDS.Types.ValidStorageOptions

-- | Information about valid modifications that you can make to your DB
-- instance. Contains the result of a successful call to the
-- @DescribeValidDBInstanceModifications@ action. You can use this
-- information when you call @ModifyDBInstance@.
--
-- /See:/ 'newValidDBInstanceModificationsMessage' smart constructor.
data ValidDBInstanceModificationsMessage = ValidDBInstanceModificationsMessage'
  { -- | Valid processor features for your DB instance.
    validProcessorFeatures :: Prelude.Maybe [AvailableProcessorFeature],
    -- | Valid storage options for your DB instance.
    storage :: Prelude.Maybe [ValidStorageOptions]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

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
        Prelude.Nothing,
      storage = Prelude.Nothing
    }

-- | Valid processor features for your DB instance.
validDBInstanceModificationsMessage_validProcessorFeatures :: Lens.Lens' ValidDBInstanceModificationsMessage (Prelude.Maybe [AvailableProcessorFeature])
validDBInstanceModificationsMessage_validProcessorFeatures = Lens.lens (\ValidDBInstanceModificationsMessage' {validProcessorFeatures} -> validProcessorFeatures) (\s@ValidDBInstanceModificationsMessage' {} a -> s {validProcessorFeatures = a} :: ValidDBInstanceModificationsMessage) Prelude.. Lens.mapping Lens.coerced

-- | Valid storage options for your DB instance.
validDBInstanceModificationsMessage_storage :: Lens.Lens' ValidDBInstanceModificationsMessage (Prelude.Maybe [ValidStorageOptions])
validDBInstanceModificationsMessage_storage = Lens.lens (\ValidDBInstanceModificationsMessage' {storage} -> storage) (\s@ValidDBInstanceModificationsMessage' {} a -> s {storage = a} :: ValidDBInstanceModificationsMessage) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromXML
    ValidDBInstanceModificationsMessage
  where
  parseXML x =
    ValidDBInstanceModificationsMessage'
      Prelude.<$> ( x Core..@? "ValidProcessorFeatures"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may
                        (Core.parseXMLList "AvailableProcessorFeature")
                  )
      Prelude.<*> ( x Core..@? "Storage" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "ValidStorageOptions")
                  )

instance
  Prelude.Hashable
    ValidDBInstanceModificationsMessage
  where
  hashWithSalt
    _salt
    ValidDBInstanceModificationsMessage' {..} =
      _salt `Prelude.hashWithSalt` validProcessorFeatures
        `Prelude.hashWithSalt` storage

instance
  Prelude.NFData
    ValidDBInstanceModificationsMessage
  where
  rnf ValidDBInstanceModificationsMessage' {..} =
    Prelude.rnf validProcessorFeatures
      `Prelude.seq` Prelude.rnf storage
