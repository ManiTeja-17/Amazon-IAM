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
-- Module      : Network.AWS.SecretsManager.Types.SecretListEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.SecretListEntry where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.SecretsManager.Types.RotationRulesType
import Network.AWS.SecretsManager.Types.Tag

-- | A structure that contains the details about a secret. It does not
-- include the encrypted @SecretString@ and @SecretBinary@ values. To get
-- those values, use the GetSecretValue operation.
--
-- /See:/ 'newSecretListEntry' smart constructor.
data SecretListEntry = SecretListEntry'
  { -- | The date and time when a secret was created.
    createdDate :: Core.Maybe Core.POSIX,
    -- | Returns the name of the service that created the secret.
    owningService :: Core.Maybe Core.Text,
    -- | A list of all of the currently assigned @SecretVersionStage@ staging
    -- labels and the @SecretVersionId@ attached to each one. Staging labels
    -- are used to keep track of the different versions during the rotation
    -- process.
    --
    -- A version that does not have any @SecretVersionStage@ is considered
    -- deprecated and subject to deletion. Such versions are not included in
    -- this list.
    secretVersionsToStages :: Core.Maybe (Core.HashMap Core.Text (Core.NonEmpty Core.Text)),
    -- | The most recent date and time that the Secrets Manager rotation process
    -- was successfully completed. This value is null if the secret hasn\'t
    -- ever rotated.
    lastRotatedDate :: Core.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the secret.
    --
    -- For more information about ARNs in Secrets Manager, see
    -- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources Policy Resources>
    -- in the /AWS Secrets Manager User Guide/.
    arn :: Core.Maybe Core.Text,
    -- | The ARN or alias of the AWS KMS customer master key (CMK) used to
    -- encrypt the @SecretString@ and @SecretBinary@ fields in each version of
    -- the secret. If you don\'t provide a key, then Secrets Manager defaults
    -- to encrypting the secret fields with the default KMS CMK, the key named
    -- @awssecretsmanager@, for this account.
    kmsKeyId :: Core.Maybe Core.Text,
    -- | The friendly name of the secret. You can use forward slashes in the name
    -- to represent a path hierarchy. For example,
    -- @\/prod\/databases\/dbserver1@ could represent the secret for a server
    -- named @dbserver1@ in the folder @databases@ in the folder @prod@.
    name :: Core.Maybe Core.Text,
    -- | The last date and time that this secret was modified in any way.
    lastChangedDate :: Core.Maybe Core.POSIX,
    -- | The Region where Secrets Manager originated the secret.
    primaryRegion :: Core.Maybe Core.Text,
    -- | A structure that defines the rotation configuration for the secret.
    rotationRules :: Core.Maybe RotationRulesType,
    -- | The list of user-defined tags associated with the secret. To add tags to
    -- a secret, use TagResource. To remove tags, use UntagResource.
    tags :: Core.Maybe [Tag],
    -- | Indicates whether automatic, scheduled rotation is enabled for this
    -- secret.
    rotationEnabled :: Core.Maybe Core.Bool,
    -- | The date and time the deletion of the secret occurred. Not present on
    -- active secrets. The secret can be recovered until the number of days in
    -- the recovery window has passed, as specified in the
    -- @RecoveryWindowInDays@ parameter of the DeleteSecret operation.
    deletedDate :: Core.Maybe Core.POSIX,
    -- | The ARN of an AWS Lambda function invoked by Secrets Manager to rotate
    -- and expire the secret either automatically per the schedule or manually
    -- by a call to RotateSecret.
    rotationLambdaARN :: Core.Maybe Core.Text,
    -- | The user-provided description of the secret.
    description :: Core.Maybe Core.Text,
    -- | The last date that this secret was accessed. This value is truncated to
    -- midnight of the date and therefore shows only the date, not the time.
    lastAccessedDate :: Core.Maybe Core.POSIX
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SecretListEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdDate', 'secretListEntry_createdDate' - The date and time when a secret was created.
--
-- 'owningService', 'secretListEntry_owningService' - Returns the name of the service that created the secret.
--
-- 'secretVersionsToStages', 'secretListEntry_secretVersionsToStages' - A list of all of the currently assigned @SecretVersionStage@ staging
-- labels and the @SecretVersionId@ attached to each one. Staging labels
-- are used to keep track of the different versions during the rotation
-- process.
--
-- A version that does not have any @SecretVersionStage@ is considered
-- deprecated and subject to deletion. Such versions are not included in
-- this list.
--
-- 'lastRotatedDate', 'secretListEntry_lastRotatedDate' - The most recent date and time that the Secrets Manager rotation process
-- was successfully completed. This value is null if the secret hasn\'t
-- ever rotated.
--
-- 'arn', 'secretListEntry_arn' - The Amazon Resource Name (ARN) of the secret.
--
-- For more information about ARNs in Secrets Manager, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources Policy Resources>
-- in the /AWS Secrets Manager User Guide/.
--
-- 'kmsKeyId', 'secretListEntry_kmsKeyId' - The ARN or alias of the AWS KMS customer master key (CMK) used to
-- encrypt the @SecretString@ and @SecretBinary@ fields in each version of
-- the secret. If you don\'t provide a key, then Secrets Manager defaults
-- to encrypting the secret fields with the default KMS CMK, the key named
-- @awssecretsmanager@, for this account.
--
-- 'name', 'secretListEntry_name' - The friendly name of the secret. You can use forward slashes in the name
-- to represent a path hierarchy. For example,
-- @\/prod\/databases\/dbserver1@ could represent the secret for a server
-- named @dbserver1@ in the folder @databases@ in the folder @prod@.
--
-- 'lastChangedDate', 'secretListEntry_lastChangedDate' - The last date and time that this secret was modified in any way.
--
-- 'primaryRegion', 'secretListEntry_primaryRegion' - The Region where Secrets Manager originated the secret.
--
-- 'rotationRules', 'secretListEntry_rotationRules' - A structure that defines the rotation configuration for the secret.
--
-- 'tags', 'secretListEntry_tags' - The list of user-defined tags associated with the secret. To add tags to
-- a secret, use TagResource. To remove tags, use UntagResource.
--
-- 'rotationEnabled', 'secretListEntry_rotationEnabled' - Indicates whether automatic, scheduled rotation is enabled for this
-- secret.
--
-- 'deletedDate', 'secretListEntry_deletedDate' - The date and time the deletion of the secret occurred. Not present on
-- active secrets. The secret can be recovered until the number of days in
-- the recovery window has passed, as specified in the
-- @RecoveryWindowInDays@ parameter of the DeleteSecret operation.
--
-- 'rotationLambdaARN', 'secretListEntry_rotationLambdaARN' - The ARN of an AWS Lambda function invoked by Secrets Manager to rotate
-- and expire the secret either automatically per the schedule or manually
-- by a call to RotateSecret.
--
-- 'description', 'secretListEntry_description' - The user-provided description of the secret.
--
-- 'lastAccessedDate', 'secretListEntry_lastAccessedDate' - The last date that this secret was accessed. This value is truncated to
-- midnight of the date and therefore shows only the date, not the time.
newSecretListEntry ::
  SecretListEntry
newSecretListEntry =
  SecretListEntry'
    { createdDate = Core.Nothing,
      owningService = Core.Nothing,
      secretVersionsToStages = Core.Nothing,
      lastRotatedDate = Core.Nothing,
      arn = Core.Nothing,
      kmsKeyId = Core.Nothing,
      name = Core.Nothing,
      lastChangedDate = Core.Nothing,
      primaryRegion = Core.Nothing,
      rotationRules = Core.Nothing,
      tags = Core.Nothing,
      rotationEnabled = Core.Nothing,
      deletedDate = Core.Nothing,
      rotationLambdaARN = Core.Nothing,
      description = Core.Nothing,
      lastAccessedDate = Core.Nothing
    }

-- | The date and time when a secret was created.
secretListEntry_createdDate :: Lens.Lens' SecretListEntry (Core.Maybe Core.UTCTime)
secretListEntry_createdDate = Lens.lens (\SecretListEntry' {createdDate} -> createdDate) (\s@SecretListEntry' {} a -> s {createdDate = a} :: SecretListEntry) Core.. Lens.mapping Core._Time

-- | Returns the name of the service that created the secret.
secretListEntry_owningService :: Lens.Lens' SecretListEntry (Core.Maybe Core.Text)
secretListEntry_owningService = Lens.lens (\SecretListEntry' {owningService} -> owningService) (\s@SecretListEntry' {} a -> s {owningService = a} :: SecretListEntry)

-- | A list of all of the currently assigned @SecretVersionStage@ staging
-- labels and the @SecretVersionId@ attached to each one. Staging labels
-- are used to keep track of the different versions during the rotation
-- process.
--
-- A version that does not have any @SecretVersionStage@ is considered
-- deprecated and subject to deletion. Such versions are not included in
-- this list.
secretListEntry_secretVersionsToStages :: Lens.Lens' SecretListEntry (Core.Maybe (Core.HashMap Core.Text (Core.NonEmpty Core.Text)))
secretListEntry_secretVersionsToStages = Lens.lens (\SecretListEntry' {secretVersionsToStages} -> secretVersionsToStages) (\s@SecretListEntry' {} a -> s {secretVersionsToStages = a} :: SecretListEntry) Core.. Lens.mapping Lens._Coerce

-- | The most recent date and time that the Secrets Manager rotation process
-- was successfully completed. This value is null if the secret hasn\'t
-- ever rotated.
secretListEntry_lastRotatedDate :: Lens.Lens' SecretListEntry (Core.Maybe Core.UTCTime)
secretListEntry_lastRotatedDate = Lens.lens (\SecretListEntry' {lastRotatedDate} -> lastRotatedDate) (\s@SecretListEntry' {} a -> s {lastRotatedDate = a} :: SecretListEntry) Core.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the secret.
--
-- For more information about ARNs in Secrets Manager, see
-- <https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources Policy Resources>
-- in the /AWS Secrets Manager User Guide/.
secretListEntry_arn :: Lens.Lens' SecretListEntry (Core.Maybe Core.Text)
secretListEntry_arn = Lens.lens (\SecretListEntry' {arn} -> arn) (\s@SecretListEntry' {} a -> s {arn = a} :: SecretListEntry)

-- | The ARN or alias of the AWS KMS customer master key (CMK) used to
-- encrypt the @SecretString@ and @SecretBinary@ fields in each version of
-- the secret. If you don\'t provide a key, then Secrets Manager defaults
-- to encrypting the secret fields with the default KMS CMK, the key named
-- @awssecretsmanager@, for this account.
secretListEntry_kmsKeyId :: Lens.Lens' SecretListEntry (Core.Maybe Core.Text)
secretListEntry_kmsKeyId = Lens.lens (\SecretListEntry' {kmsKeyId} -> kmsKeyId) (\s@SecretListEntry' {} a -> s {kmsKeyId = a} :: SecretListEntry)

-- | The friendly name of the secret. You can use forward slashes in the name
-- to represent a path hierarchy. For example,
-- @\/prod\/databases\/dbserver1@ could represent the secret for a server
-- named @dbserver1@ in the folder @databases@ in the folder @prod@.
secretListEntry_name :: Lens.Lens' SecretListEntry (Core.Maybe Core.Text)
secretListEntry_name = Lens.lens (\SecretListEntry' {name} -> name) (\s@SecretListEntry' {} a -> s {name = a} :: SecretListEntry)

-- | The last date and time that this secret was modified in any way.
secretListEntry_lastChangedDate :: Lens.Lens' SecretListEntry (Core.Maybe Core.UTCTime)
secretListEntry_lastChangedDate = Lens.lens (\SecretListEntry' {lastChangedDate} -> lastChangedDate) (\s@SecretListEntry' {} a -> s {lastChangedDate = a} :: SecretListEntry) Core.. Lens.mapping Core._Time

-- | The Region where Secrets Manager originated the secret.
secretListEntry_primaryRegion :: Lens.Lens' SecretListEntry (Core.Maybe Core.Text)
secretListEntry_primaryRegion = Lens.lens (\SecretListEntry' {primaryRegion} -> primaryRegion) (\s@SecretListEntry' {} a -> s {primaryRegion = a} :: SecretListEntry)

-- | A structure that defines the rotation configuration for the secret.
secretListEntry_rotationRules :: Lens.Lens' SecretListEntry (Core.Maybe RotationRulesType)
secretListEntry_rotationRules = Lens.lens (\SecretListEntry' {rotationRules} -> rotationRules) (\s@SecretListEntry' {} a -> s {rotationRules = a} :: SecretListEntry)

-- | The list of user-defined tags associated with the secret. To add tags to
-- a secret, use TagResource. To remove tags, use UntagResource.
secretListEntry_tags :: Lens.Lens' SecretListEntry (Core.Maybe [Tag])
secretListEntry_tags = Lens.lens (\SecretListEntry' {tags} -> tags) (\s@SecretListEntry' {} a -> s {tags = a} :: SecretListEntry) Core.. Lens.mapping Lens._Coerce

-- | Indicates whether automatic, scheduled rotation is enabled for this
-- secret.
secretListEntry_rotationEnabled :: Lens.Lens' SecretListEntry (Core.Maybe Core.Bool)
secretListEntry_rotationEnabled = Lens.lens (\SecretListEntry' {rotationEnabled} -> rotationEnabled) (\s@SecretListEntry' {} a -> s {rotationEnabled = a} :: SecretListEntry)

-- | The date and time the deletion of the secret occurred. Not present on
-- active secrets. The secret can be recovered until the number of days in
-- the recovery window has passed, as specified in the
-- @RecoveryWindowInDays@ parameter of the DeleteSecret operation.
secretListEntry_deletedDate :: Lens.Lens' SecretListEntry (Core.Maybe Core.UTCTime)
secretListEntry_deletedDate = Lens.lens (\SecretListEntry' {deletedDate} -> deletedDate) (\s@SecretListEntry' {} a -> s {deletedDate = a} :: SecretListEntry) Core.. Lens.mapping Core._Time

-- | The ARN of an AWS Lambda function invoked by Secrets Manager to rotate
-- and expire the secret either automatically per the schedule or manually
-- by a call to RotateSecret.
secretListEntry_rotationLambdaARN :: Lens.Lens' SecretListEntry (Core.Maybe Core.Text)
secretListEntry_rotationLambdaARN = Lens.lens (\SecretListEntry' {rotationLambdaARN} -> rotationLambdaARN) (\s@SecretListEntry' {} a -> s {rotationLambdaARN = a} :: SecretListEntry)

-- | The user-provided description of the secret.
secretListEntry_description :: Lens.Lens' SecretListEntry (Core.Maybe Core.Text)
secretListEntry_description = Lens.lens (\SecretListEntry' {description} -> description) (\s@SecretListEntry' {} a -> s {description = a} :: SecretListEntry)

-- | The last date that this secret was accessed. This value is truncated to
-- midnight of the date and therefore shows only the date, not the time.
secretListEntry_lastAccessedDate :: Lens.Lens' SecretListEntry (Core.Maybe Core.UTCTime)
secretListEntry_lastAccessedDate = Lens.lens (\SecretListEntry' {lastAccessedDate} -> lastAccessedDate) (\s@SecretListEntry' {} a -> s {lastAccessedDate = a} :: SecretListEntry) Core.. Lens.mapping Core._Time

instance Core.FromJSON SecretListEntry where
  parseJSON =
    Core.withObject
      "SecretListEntry"
      ( \x ->
          SecretListEntry'
            Core.<$> (x Core..:? "CreatedDate")
            Core.<*> (x Core..:? "OwningService")
            Core.<*> ( x Core..:? "SecretVersionsToStages"
                         Core..!= Core.mempty
                     )
            Core.<*> (x Core..:? "LastRotatedDate")
            Core.<*> (x Core..:? "ARN")
            Core.<*> (x Core..:? "KmsKeyId")
            Core.<*> (x Core..:? "Name")
            Core.<*> (x Core..:? "LastChangedDate")
            Core.<*> (x Core..:? "PrimaryRegion")
            Core.<*> (x Core..:? "RotationRules")
            Core.<*> (x Core..:? "Tags" Core..!= Core.mempty)
            Core.<*> (x Core..:? "RotationEnabled")
            Core.<*> (x Core..:? "DeletedDate")
            Core.<*> (x Core..:? "RotationLambdaARN")
            Core.<*> (x Core..:? "Description")
            Core.<*> (x Core..:? "LastAccessedDate")
      )

instance Core.Hashable SecretListEntry

instance Core.NFData SecretListEntry
