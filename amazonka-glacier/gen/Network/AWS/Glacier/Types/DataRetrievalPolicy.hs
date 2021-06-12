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
-- Module      : Network.AWS.Glacier.Types.DataRetrievalPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.DataRetrievalPolicy where

import qualified Network.AWS.Core as Core
import Network.AWS.Glacier.Types.DataRetrievalRule
import qualified Network.AWS.Lens as Lens

-- | Data retrieval policy.
--
-- /See:/ 'newDataRetrievalPolicy' smart constructor.
data DataRetrievalPolicy = DataRetrievalPolicy'
  { -- | The policy rule. Although this is a list type, currently there must be
    -- only one rule, which contains a Strategy field and optionally a
    -- BytesPerHour field.
    rules :: Core.Maybe [DataRetrievalRule]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DataRetrievalPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rules', 'dataRetrievalPolicy_rules' - The policy rule. Although this is a list type, currently there must be
-- only one rule, which contains a Strategy field and optionally a
-- BytesPerHour field.
newDataRetrievalPolicy ::
  DataRetrievalPolicy
newDataRetrievalPolicy =
  DataRetrievalPolicy' {rules = Core.Nothing}

-- | The policy rule. Although this is a list type, currently there must be
-- only one rule, which contains a Strategy field and optionally a
-- BytesPerHour field.
dataRetrievalPolicy_rules :: Lens.Lens' DataRetrievalPolicy (Core.Maybe [DataRetrievalRule])
dataRetrievalPolicy_rules = Lens.lens (\DataRetrievalPolicy' {rules} -> rules) (\s@DataRetrievalPolicy' {} a -> s {rules = a} :: DataRetrievalPolicy) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON DataRetrievalPolicy where
  parseJSON =
    Core.withObject
      "DataRetrievalPolicy"
      ( \x ->
          DataRetrievalPolicy'
            Core.<$> (x Core..:? "Rules" Core..!= Core.mempty)
      )

instance Core.Hashable DataRetrievalPolicy

instance Core.NFData DataRetrievalPolicy

instance Core.ToJSON DataRetrievalPolicy where
  toJSON DataRetrievalPolicy' {..} =
    Core.object
      (Core.catMaybes [("Rules" Core..=) Core.<$> rules])
