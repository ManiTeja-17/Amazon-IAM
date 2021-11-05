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
-- Module      : Network.AWS.Route53RecoveryControlConfig.Types.RuleConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53RecoveryControlConfig.Types.RuleConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53RecoveryControlConfig.Types.RuleType

-- | The rule configuration for an assertion rule. That is, the criteria that
-- you set for specific assertion controls (routing controls) that specify
-- how many controls must be enabled after a transaction completes.
--
-- /See:/ 'newRuleConfig' smart constructor.
data RuleConfig = RuleConfig'
  { -- | A rule can be one of the following: ATLEAST, AND, or OR.
    type' :: RuleType,
    -- | Logical negation of the rule. If the rule would usually evaluate true,
    -- it\'s evaluated as false, and vice versa.
    inverted :: Prelude.Bool,
    -- | The value of N, when you specify an ATLEAST rule type. That is,
    -- Threshold is the number of controls that must be set when you specify an
    -- ATLEAST type.
    threshold :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RuleConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'ruleConfig_type' - A rule can be one of the following: ATLEAST, AND, or OR.
--
-- 'inverted', 'ruleConfig_inverted' - Logical negation of the rule. If the rule would usually evaluate true,
-- it\'s evaluated as false, and vice versa.
--
-- 'threshold', 'ruleConfig_threshold' - The value of N, when you specify an ATLEAST rule type. That is,
-- Threshold is the number of controls that must be set when you specify an
-- ATLEAST type.
newRuleConfig ::
  -- | 'type''
  RuleType ->
  -- | 'inverted'
  Prelude.Bool ->
  -- | 'threshold'
  Prelude.Int ->
  RuleConfig
newRuleConfig pType_ pInverted_ pThreshold_ =
  RuleConfig'
    { type' = pType_,
      inverted = pInverted_,
      threshold = pThreshold_
    }

-- | A rule can be one of the following: ATLEAST, AND, or OR.
ruleConfig_type :: Lens.Lens' RuleConfig RuleType
ruleConfig_type = Lens.lens (\RuleConfig' {type'} -> type') (\s@RuleConfig' {} a -> s {type' = a} :: RuleConfig)

-- | Logical negation of the rule. If the rule would usually evaluate true,
-- it\'s evaluated as false, and vice versa.
ruleConfig_inverted :: Lens.Lens' RuleConfig Prelude.Bool
ruleConfig_inverted = Lens.lens (\RuleConfig' {inverted} -> inverted) (\s@RuleConfig' {} a -> s {inverted = a} :: RuleConfig)

-- | The value of N, when you specify an ATLEAST rule type. That is,
-- Threshold is the number of controls that must be set when you specify an
-- ATLEAST type.
ruleConfig_threshold :: Lens.Lens' RuleConfig Prelude.Int
ruleConfig_threshold = Lens.lens (\RuleConfig' {threshold} -> threshold) (\s@RuleConfig' {} a -> s {threshold = a} :: RuleConfig)

instance Core.FromJSON RuleConfig where
  parseJSON =
    Core.withObject
      "RuleConfig"
      ( \x ->
          RuleConfig'
            Prelude.<$> (x Core..: "Type")
            Prelude.<*> (x Core..: "Inverted")
            Prelude.<*> (x Core..: "Threshold")
      )

instance Prelude.Hashable RuleConfig

instance Prelude.NFData RuleConfig

instance Core.ToJSON RuleConfig where
  toJSON RuleConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Type" Core..= type'),
            Prelude.Just ("Inverted" Core..= inverted),
            Prelude.Just ("Threshold" Core..= threshold)
          ]
      )