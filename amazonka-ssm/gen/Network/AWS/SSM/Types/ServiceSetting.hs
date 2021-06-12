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
-- Module      : Network.AWS.SSM.Types.ServiceSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ServiceSetting where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The service setting data structure.
--
-- @ServiceSetting@ is an account-level setting for an AWS service. This
-- setting defines how a user interacts with or uses a service or a feature
-- of a service. For example, if an AWS service charges money to the
-- account based on feature or service usage, then the AWS service team
-- might create a default setting of \"false\". This means the user can\'t
-- use this feature unless they change the setting to \"true\" and
-- intentionally opt in for a paid feature.
--
-- Services map a @SettingId@ object to a setting value. AWS services teams
-- define the default value for a @SettingId@. You can\'t create a new
-- @SettingId@, but you can overwrite the default value if you have the
-- @ssm:UpdateServiceSetting@ permission for the setting. Use the
-- UpdateServiceSetting API action to change the default setting. Or, use
-- the ResetServiceSetting to change the value back to the original value
-- defined by the AWS service team.
--
-- /See:/ 'newServiceSetting' smart constructor.
data ServiceSetting = ServiceSetting'
  { -- | The last time the service setting was modified.
    lastModifiedDate :: Core.Maybe Core.POSIX,
    -- | The status of the service setting. The value can be Default, Customized
    -- or PendingUpdate.
    --
    -- -   Default: The current setting uses a default value provisioned by the
    --     AWS service team.
    --
    -- -   Customized: The current setting use a custom value specified by the
    --     customer.
    --
    -- -   PendingUpdate: The current setting uses a default or custom value,
    --     but a setting change request is pending approval.
    status :: Core.Maybe Core.Text,
    -- | The ARN of the service setting.
    arn :: Core.Maybe Core.Text,
    -- | The value of the service setting.
    settingValue :: Core.Maybe Core.Text,
    -- | The ID of the service setting.
    settingId :: Core.Maybe Core.Text,
    -- | The ARN of the last modified user. This field is populated only if the
    -- setting value was overwritten.
    lastModifiedUser :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ServiceSetting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedDate', 'serviceSetting_lastModifiedDate' - The last time the service setting was modified.
--
-- 'status', 'serviceSetting_status' - The status of the service setting. The value can be Default, Customized
-- or PendingUpdate.
--
-- -   Default: The current setting uses a default value provisioned by the
--     AWS service team.
--
-- -   Customized: The current setting use a custom value specified by the
--     customer.
--
-- -   PendingUpdate: The current setting uses a default or custom value,
--     but a setting change request is pending approval.
--
-- 'arn', 'serviceSetting_arn' - The ARN of the service setting.
--
-- 'settingValue', 'serviceSetting_settingValue' - The value of the service setting.
--
-- 'settingId', 'serviceSetting_settingId' - The ID of the service setting.
--
-- 'lastModifiedUser', 'serviceSetting_lastModifiedUser' - The ARN of the last modified user. This field is populated only if the
-- setting value was overwritten.
newServiceSetting ::
  ServiceSetting
newServiceSetting =
  ServiceSetting'
    { lastModifiedDate = Core.Nothing,
      status = Core.Nothing,
      arn = Core.Nothing,
      settingValue = Core.Nothing,
      settingId = Core.Nothing,
      lastModifiedUser = Core.Nothing
    }

-- | The last time the service setting was modified.
serviceSetting_lastModifiedDate :: Lens.Lens' ServiceSetting (Core.Maybe Core.UTCTime)
serviceSetting_lastModifiedDate = Lens.lens (\ServiceSetting' {lastModifiedDate} -> lastModifiedDate) (\s@ServiceSetting' {} a -> s {lastModifiedDate = a} :: ServiceSetting) Core.. Lens.mapping Core._Time

-- | The status of the service setting. The value can be Default, Customized
-- or PendingUpdate.
--
-- -   Default: The current setting uses a default value provisioned by the
--     AWS service team.
--
-- -   Customized: The current setting use a custom value specified by the
--     customer.
--
-- -   PendingUpdate: The current setting uses a default or custom value,
--     but a setting change request is pending approval.
serviceSetting_status :: Lens.Lens' ServiceSetting (Core.Maybe Core.Text)
serviceSetting_status = Lens.lens (\ServiceSetting' {status} -> status) (\s@ServiceSetting' {} a -> s {status = a} :: ServiceSetting)

-- | The ARN of the service setting.
serviceSetting_arn :: Lens.Lens' ServiceSetting (Core.Maybe Core.Text)
serviceSetting_arn = Lens.lens (\ServiceSetting' {arn} -> arn) (\s@ServiceSetting' {} a -> s {arn = a} :: ServiceSetting)

-- | The value of the service setting.
serviceSetting_settingValue :: Lens.Lens' ServiceSetting (Core.Maybe Core.Text)
serviceSetting_settingValue = Lens.lens (\ServiceSetting' {settingValue} -> settingValue) (\s@ServiceSetting' {} a -> s {settingValue = a} :: ServiceSetting)

-- | The ID of the service setting.
serviceSetting_settingId :: Lens.Lens' ServiceSetting (Core.Maybe Core.Text)
serviceSetting_settingId = Lens.lens (\ServiceSetting' {settingId} -> settingId) (\s@ServiceSetting' {} a -> s {settingId = a} :: ServiceSetting)

-- | The ARN of the last modified user. This field is populated only if the
-- setting value was overwritten.
serviceSetting_lastModifiedUser :: Lens.Lens' ServiceSetting (Core.Maybe Core.Text)
serviceSetting_lastModifiedUser = Lens.lens (\ServiceSetting' {lastModifiedUser} -> lastModifiedUser) (\s@ServiceSetting' {} a -> s {lastModifiedUser = a} :: ServiceSetting)

instance Core.FromJSON ServiceSetting where
  parseJSON =
    Core.withObject
      "ServiceSetting"
      ( \x ->
          ServiceSetting'
            Core.<$> (x Core..:? "LastModifiedDate")
            Core.<*> (x Core..:? "Status")
            Core.<*> (x Core..:? "ARN")
            Core.<*> (x Core..:? "SettingValue")
            Core.<*> (x Core..:? "SettingId")
            Core.<*> (x Core..:? "LastModifiedUser")
      )

instance Core.Hashable ServiceSetting

instance Core.NFData ServiceSetting
