{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.SetVaultNotifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation configures notifications that will be sent when specific
-- events happen to a vault. By default, you don\'t get any notifications.
--
-- To configure vault notifications, send a PUT request to the
-- @notification-configuration@ subresource of the vault. The request
-- should include a JSON document that provides an Amazon SNS topic and
-- specific events for which you want Amazon S3 Glacier to send
-- notifications to the topic.
--
-- Amazon SNS topics must grant permission to the vault to be allowed to
-- publish notifications to the topic. You can configure a vault to publish
-- a notification for the following vault events:
--
-- -   __ArchiveRetrievalCompleted__ This event occurs when a job that was
--     initiated for an archive retrieval is completed (InitiateJob). The
--     status of the completed job can be \"Succeeded\" or \"Failed\". The
--     notification sent to the SNS topic is the same output as returned
--     from DescribeJob.
--
-- -   __InventoryRetrievalCompleted__ This event occurs when a job that
--     was initiated for an inventory retrieval is completed (InitiateJob).
--     The status of the completed job can be \"Succeeded\" or \"Failed\".
--     The notification sent to the SNS topic is the same output as
--     returned from DescribeJob.
--
-- An AWS account has full permission to perform all operations (actions).
-- However, AWS Identity and Access Management (IAM) users don\'t have any
-- permissions by default. You must grant them explicit permission to
-- perform specific actions. For more information, see
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)>.
--
-- For conceptual information and underlying REST API, see
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html Configuring Vault Notifications in Amazon S3 Glacier>
-- and
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html Set Vault Notification Configuration>
-- in the /Amazon Glacier Developer Guide/.
module Network.AWS.Glacier.SetVaultNotifications
  ( -- * Creating a Request
    SetVaultNotifications (..),
    newSetVaultNotifications,

    -- * Request Lenses
    setVaultNotifications_vaultNotificationConfig,
    setVaultNotifications_accountId,
    setVaultNotifications_vaultName,

    -- * Destructuring the Response
    SetVaultNotificationsResponse (..),
    newSetVaultNotificationsResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glacier.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Provides options to configure notifications that will be sent when
-- specific events happen to a vault.
--
-- /See:/ 'newSetVaultNotifications' smart constructor.
data SetVaultNotifications = SetVaultNotifications'
  { -- | Provides options for specifying notification configuration.
    vaultNotificationConfig :: Core.Maybe VaultNotificationConfig,
    -- | The @AccountId@ value is the AWS account ID of the account that owns the
    -- vault. You can either specify an AWS account ID or optionally a single
    -- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
    -- ID associated with the credentials used to sign the request. If you use
    -- an account ID, do not include any hyphens (\'-\') in the ID.
    accountId :: Core.Text,
    -- | The name of the vault.
    vaultName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SetVaultNotifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vaultNotificationConfig', 'setVaultNotifications_vaultNotificationConfig' - Provides options for specifying notification configuration.
--
-- 'accountId', 'setVaultNotifications_accountId' - The @AccountId@ value is the AWS account ID of the account that owns the
-- vault. You can either specify an AWS account ID or optionally a single
-- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
-- ID associated with the credentials used to sign the request. If you use
-- an account ID, do not include any hyphens (\'-\') in the ID.
--
-- 'vaultName', 'setVaultNotifications_vaultName' - The name of the vault.
newSetVaultNotifications ::
  -- | 'accountId'
  Core.Text ->
  -- | 'vaultName'
  Core.Text ->
  SetVaultNotifications
newSetVaultNotifications pAccountId_ pVaultName_ =
  SetVaultNotifications'
    { vaultNotificationConfig =
        Core.Nothing,
      accountId = pAccountId_,
      vaultName = pVaultName_
    }

-- | Provides options for specifying notification configuration.
setVaultNotifications_vaultNotificationConfig :: Lens.Lens' SetVaultNotifications (Core.Maybe VaultNotificationConfig)
setVaultNotifications_vaultNotificationConfig = Lens.lens (\SetVaultNotifications' {vaultNotificationConfig} -> vaultNotificationConfig) (\s@SetVaultNotifications' {} a -> s {vaultNotificationConfig = a} :: SetVaultNotifications)

-- | The @AccountId@ value is the AWS account ID of the account that owns the
-- vault. You can either specify an AWS account ID or optionally a single
-- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
-- ID associated with the credentials used to sign the request. If you use
-- an account ID, do not include any hyphens (\'-\') in the ID.
setVaultNotifications_accountId :: Lens.Lens' SetVaultNotifications Core.Text
setVaultNotifications_accountId = Lens.lens (\SetVaultNotifications' {accountId} -> accountId) (\s@SetVaultNotifications' {} a -> s {accountId = a} :: SetVaultNotifications)

-- | The name of the vault.
setVaultNotifications_vaultName :: Lens.Lens' SetVaultNotifications Core.Text
setVaultNotifications_vaultName = Lens.lens (\SetVaultNotifications' {vaultName} -> vaultName) (\s@SetVaultNotifications' {} a -> s {vaultName = a} :: SetVaultNotifications)

instance Core.AWSRequest SetVaultNotifications where
  type
    AWSResponse SetVaultNotifications =
      SetVaultNotificationsResponse
  request =
    Request.glacierVersionHeader (Core._serviceVersion defaultService)
      Core.. Request.putJSON defaultService
  response =
    Response.receiveNull SetVaultNotificationsResponse'

instance Core.Hashable SetVaultNotifications

instance Core.NFData SetVaultNotifications

instance Core.ToHeaders SetVaultNotifications where
  toHeaders = Core.const Core.mempty

instance Core.ToJSON SetVaultNotifications where
  toJSON SetVaultNotifications' {..} =
    Core.object
      ( Core.catMaybes
          [ ("vaultNotificationConfig" Core..=)
              Core.<$> vaultNotificationConfig
          ]
      )

instance Core.ToPath SetVaultNotifications where
  toPath SetVaultNotifications' {..} =
    Core.mconcat
      [ "/",
        Core.toBS accountId,
        "/vaults/",
        Core.toBS vaultName,
        "/notification-configuration"
      ]

instance Core.ToQuery SetVaultNotifications where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newSetVaultNotificationsResponse' smart constructor.
data SetVaultNotificationsResponse = SetVaultNotificationsResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SetVaultNotificationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newSetVaultNotificationsResponse ::
  SetVaultNotificationsResponse
newSetVaultNotificationsResponse =
  SetVaultNotificationsResponse'

instance Core.NFData SetVaultNotificationsResponse
