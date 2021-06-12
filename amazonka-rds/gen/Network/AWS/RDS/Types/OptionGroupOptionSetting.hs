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
-- Module      : Network.AWS.RDS.Types.OptionGroupOptionSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.OptionGroupOptionSetting where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types.MinimumEngineVersionPerAllowedValue

-- | Option group option settings are used to display settings available for
-- each option with their default values and other information. These
-- values are used with the DescribeOptionGroupOptions action.
--
-- /See:/ 'newOptionGroupOptionSetting' smart constructor.
data OptionGroupOptionSetting = OptionGroupOptionSetting'
  { -- | The minimum DB engine version required for the corresponding allowed
    -- value for this option setting.
    minimumEngineVersionPerAllowedValue :: Core.Maybe [MinimumEngineVersionPerAllowedValue],
    -- | Indicates the acceptable values for the option group option.
    allowedValues :: Core.Maybe Core.Text,
    -- | The DB engine specific parameter type for the option group option.
    applyType :: Core.Maybe Core.Text,
    -- | The name of the option group option.
    settingName :: Core.Maybe Core.Text,
    -- | Boolean value where true indicates that a value must be specified for
    -- this option setting of the option group option.
    isRequired :: Core.Maybe Core.Bool,
    -- | The description of the option group option.
    settingDescription :: Core.Maybe Core.Text,
    -- | Boolean value where true indicates that this option group option can be
    -- changed from the default value.
    isModifiable :: Core.Maybe Core.Bool,
    -- | The default value for the option group option.
    defaultValue :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'OptionGroupOptionSetting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'minimumEngineVersionPerAllowedValue', 'optionGroupOptionSetting_minimumEngineVersionPerAllowedValue' - The minimum DB engine version required for the corresponding allowed
-- value for this option setting.
--
-- 'allowedValues', 'optionGroupOptionSetting_allowedValues' - Indicates the acceptable values for the option group option.
--
-- 'applyType', 'optionGroupOptionSetting_applyType' - The DB engine specific parameter type for the option group option.
--
-- 'settingName', 'optionGroupOptionSetting_settingName' - The name of the option group option.
--
-- 'isRequired', 'optionGroupOptionSetting_isRequired' - Boolean value where true indicates that a value must be specified for
-- this option setting of the option group option.
--
-- 'settingDescription', 'optionGroupOptionSetting_settingDescription' - The description of the option group option.
--
-- 'isModifiable', 'optionGroupOptionSetting_isModifiable' - Boolean value where true indicates that this option group option can be
-- changed from the default value.
--
-- 'defaultValue', 'optionGroupOptionSetting_defaultValue' - The default value for the option group option.
newOptionGroupOptionSetting ::
  OptionGroupOptionSetting
newOptionGroupOptionSetting =
  OptionGroupOptionSetting'
    { minimumEngineVersionPerAllowedValue =
        Core.Nothing,
      allowedValues = Core.Nothing,
      applyType = Core.Nothing,
      settingName = Core.Nothing,
      isRequired = Core.Nothing,
      settingDescription = Core.Nothing,
      isModifiable = Core.Nothing,
      defaultValue = Core.Nothing
    }

-- | The minimum DB engine version required for the corresponding allowed
-- value for this option setting.
optionGroupOptionSetting_minimumEngineVersionPerAllowedValue :: Lens.Lens' OptionGroupOptionSetting (Core.Maybe [MinimumEngineVersionPerAllowedValue])
optionGroupOptionSetting_minimumEngineVersionPerAllowedValue = Lens.lens (\OptionGroupOptionSetting' {minimumEngineVersionPerAllowedValue} -> minimumEngineVersionPerAllowedValue) (\s@OptionGroupOptionSetting' {} a -> s {minimumEngineVersionPerAllowedValue = a} :: OptionGroupOptionSetting) Core.. Lens.mapping Lens._Coerce

-- | Indicates the acceptable values for the option group option.
optionGroupOptionSetting_allowedValues :: Lens.Lens' OptionGroupOptionSetting (Core.Maybe Core.Text)
optionGroupOptionSetting_allowedValues = Lens.lens (\OptionGroupOptionSetting' {allowedValues} -> allowedValues) (\s@OptionGroupOptionSetting' {} a -> s {allowedValues = a} :: OptionGroupOptionSetting)

-- | The DB engine specific parameter type for the option group option.
optionGroupOptionSetting_applyType :: Lens.Lens' OptionGroupOptionSetting (Core.Maybe Core.Text)
optionGroupOptionSetting_applyType = Lens.lens (\OptionGroupOptionSetting' {applyType} -> applyType) (\s@OptionGroupOptionSetting' {} a -> s {applyType = a} :: OptionGroupOptionSetting)

-- | The name of the option group option.
optionGroupOptionSetting_settingName :: Lens.Lens' OptionGroupOptionSetting (Core.Maybe Core.Text)
optionGroupOptionSetting_settingName = Lens.lens (\OptionGroupOptionSetting' {settingName} -> settingName) (\s@OptionGroupOptionSetting' {} a -> s {settingName = a} :: OptionGroupOptionSetting)

-- | Boolean value where true indicates that a value must be specified for
-- this option setting of the option group option.
optionGroupOptionSetting_isRequired :: Lens.Lens' OptionGroupOptionSetting (Core.Maybe Core.Bool)
optionGroupOptionSetting_isRequired = Lens.lens (\OptionGroupOptionSetting' {isRequired} -> isRequired) (\s@OptionGroupOptionSetting' {} a -> s {isRequired = a} :: OptionGroupOptionSetting)

-- | The description of the option group option.
optionGroupOptionSetting_settingDescription :: Lens.Lens' OptionGroupOptionSetting (Core.Maybe Core.Text)
optionGroupOptionSetting_settingDescription = Lens.lens (\OptionGroupOptionSetting' {settingDescription} -> settingDescription) (\s@OptionGroupOptionSetting' {} a -> s {settingDescription = a} :: OptionGroupOptionSetting)

-- | Boolean value where true indicates that this option group option can be
-- changed from the default value.
optionGroupOptionSetting_isModifiable :: Lens.Lens' OptionGroupOptionSetting (Core.Maybe Core.Bool)
optionGroupOptionSetting_isModifiable = Lens.lens (\OptionGroupOptionSetting' {isModifiable} -> isModifiable) (\s@OptionGroupOptionSetting' {} a -> s {isModifiable = a} :: OptionGroupOptionSetting)

-- | The default value for the option group option.
optionGroupOptionSetting_defaultValue :: Lens.Lens' OptionGroupOptionSetting (Core.Maybe Core.Text)
optionGroupOptionSetting_defaultValue = Lens.lens (\OptionGroupOptionSetting' {defaultValue} -> defaultValue) (\s@OptionGroupOptionSetting' {} a -> s {defaultValue = a} :: OptionGroupOptionSetting)

instance Core.FromXML OptionGroupOptionSetting where
  parseXML x =
    OptionGroupOptionSetting'
      Core.<$> ( x Core..@? "MinimumEngineVersionPerAllowedValue"
                   Core..!@ Core.mempty
                   Core.>>= Core.may
                     ( Core.parseXMLList
                         "MinimumEngineVersionPerAllowedValue"
                     )
               )
      Core.<*> (x Core..@? "AllowedValues")
      Core.<*> (x Core..@? "ApplyType")
      Core.<*> (x Core..@? "SettingName")
      Core.<*> (x Core..@? "IsRequired")
      Core.<*> (x Core..@? "SettingDescription")
      Core.<*> (x Core..@? "IsModifiable")
      Core.<*> (x Core..@? "DefaultValue")

instance Core.Hashable OptionGroupOptionSetting

instance Core.NFData OptionGroupOptionSetting
