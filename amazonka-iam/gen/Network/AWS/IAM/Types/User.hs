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
-- Module      : Network.AWS.IAM.Types.User
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.User where

import qualified Network.AWS.Core as Core
import Network.AWS.IAM.Types.AttachedPermissionsBoundary
import Network.AWS.IAM.Types.Tag
import qualified Network.AWS.Lens as Lens

-- | Contains information about an IAM user entity.
--
-- This data type is used as a response element in the following
-- operations:
--
-- -   CreateUser
--
-- -   GetUser
--
-- -   ListUsers
--
-- /See:/ 'newUser' smart constructor.
data User = User'
  { -- | For more information about permissions boundaries, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities>
    -- in the /IAM User Guide/.
    permissionsBoundary :: Core.Maybe AttachedPermissionsBoundary,
    -- | The date and time, in
    -- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- user\'s password was last used to sign in to an AWS website. For a list
    -- of AWS websites that capture a user\'s last sign-in time, see the
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html Credential reports>
    -- topic in the /IAM User Guide/. If a password is used more than once in a
    -- five-minute span, only the first use is returned in this field. If the
    -- field is null (no value), then it indicates that they never signed in
    -- with a password. This can be because:
    --
    -- -   The user never had a password.
    --
    -- -   A password exists but has not been used since IAM started tracking
    --     this information on October 20, 2014.
    --
    -- A null value does not mean that the user /never/ had a password. Also,
    -- if the user does not currently have a password but had one in the past,
    -- then this field contains the date and time the most recent password was
    -- used.
    --
    -- This value is returned only in the GetUser and ListUsers operations.
    passwordLastUsed :: Core.Maybe Core.ISO8601,
    -- | A list of tags that are associated with the user. For more information
    -- about tagging, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources>
    -- in the /IAM User Guide/.
    tags :: Core.Maybe [Tag],
    -- | The path to the user. For more information about paths, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers>
    -- in the /IAM User Guide/.
    --
    -- The ARN of the policy used to set the permissions boundary for the user.
    path :: Core.Text,
    -- | The friendly name identifying the user.
    userName :: Core.Text,
    -- | The stable and unique string identifying the user. For more information
    -- about IDs, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers>
    -- in the /IAM User Guide/.
    userId :: Core.Text,
    -- | The Amazon Resource Name (ARN) that identifies the user. For more
    -- information about ARNs and how to use ARNs in policies, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers>
    -- in the /IAM User Guide/.
    arn :: Core.Text,
    -- | The date and time, in
    -- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- user was created.
    createDate :: Core.ISO8601
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'User' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'permissionsBoundary', 'user_permissionsBoundary' - For more information about permissions boundaries, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities>
-- in the /IAM User Guide/.
--
-- 'passwordLastUsed', 'user_passwordLastUsed' - The date and time, in
-- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- user\'s password was last used to sign in to an AWS website. For a list
-- of AWS websites that capture a user\'s last sign-in time, see the
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html Credential reports>
-- topic in the /IAM User Guide/. If a password is used more than once in a
-- five-minute span, only the first use is returned in this field. If the
-- field is null (no value), then it indicates that they never signed in
-- with a password. This can be because:
--
-- -   The user never had a password.
--
-- -   A password exists but has not been used since IAM started tracking
--     this information on October 20, 2014.
--
-- A null value does not mean that the user /never/ had a password. Also,
-- if the user does not currently have a password but had one in the past,
-- then this field contains the date and time the most recent password was
-- used.
--
-- This value is returned only in the GetUser and ListUsers operations.
--
-- 'tags', 'user_tags' - A list of tags that are associated with the user. For more information
-- about tagging, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources>
-- in the /IAM User Guide/.
--
-- 'path', 'user_path' - The path to the user. For more information about paths, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers>
-- in the /IAM User Guide/.
--
-- The ARN of the policy used to set the permissions boundary for the user.
--
-- 'userName', 'user_userName' - The friendly name identifying the user.
--
-- 'userId', 'user_userId' - The stable and unique string identifying the user. For more information
-- about IDs, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers>
-- in the /IAM User Guide/.
--
-- 'arn', 'user_arn' - The Amazon Resource Name (ARN) that identifies the user. For more
-- information about ARNs and how to use ARNs in policies, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers>
-- in the /IAM User Guide/.
--
-- 'createDate', 'user_createDate' - The date and time, in
-- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- user was created.
newUser ::
  -- | 'path'
  Core.Text ->
  -- | 'userName'
  Core.Text ->
  -- | 'userId'
  Core.Text ->
  -- | 'arn'
  Core.Text ->
  -- | 'createDate'
  Core.UTCTime ->
  User
newUser pPath_ pUserName_ pUserId_ pArn_ pCreateDate_ =
  User'
    { permissionsBoundary = Core.Nothing,
      passwordLastUsed = Core.Nothing,
      tags = Core.Nothing,
      path = pPath_,
      userName = pUserName_,
      userId = pUserId_,
      arn = pArn_,
      createDate = Core._Time Lens.# pCreateDate_
    }

-- | For more information about permissions boundaries, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities>
-- in the /IAM User Guide/.
user_permissionsBoundary :: Lens.Lens' User (Core.Maybe AttachedPermissionsBoundary)
user_permissionsBoundary = Lens.lens (\User' {permissionsBoundary} -> permissionsBoundary) (\s@User' {} a -> s {permissionsBoundary = a} :: User)

-- | The date and time, in
-- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- user\'s password was last used to sign in to an AWS website. For a list
-- of AWS websites that capture a user\'s last sign-in time, see the
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html Credential reports>
-- topic in the /IAM User Guide/. If a password is used more than once in a
-- five-minute span, only the first use is returned in this field. If the
-- field is null (no value), then it indicates that they never signed in
-- with a password. This can be because:
--
-- -   The user never had a password.
--
-- -   A password exists but has not been used since IAM started tracking
--     this information on October 20, 2014.
--
-- A null value does not mean that the user /never/ had a password. Also,
-- if the user does not currently have a password but had one in the past,
-- then this field contains the date and time the most recent password was
-- used.
--
-- This value is returned only in the GetUser and ListUsers operations.
user_passwordLastUsed :: Lens.Lens' User (Core.Maybe Core.UTCTime)
user_passwordLastUsed = Lens.lens (\User' {passwordLastUsed} -> passwordLastUsed) (\s@User' {} a -> s {passwordLastUsed = a} :: User) Core.. Lens.mapping Core._Time

-- | A list of tags that are associated with the user. For more information
-- about tagging, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources>
-- in the /IAM User Guide/.
user_tags :: Lens.Lens' User (Core.Maybe [Tag])
user_tags = Lens.lens (\User' {tags} -> tags) (\s@User' {} a -> s {tags = a} :: User) Core.. Lens.mapping Lens._Coerce

-- | The path to the user. For more information about paths, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers>
-- in the /IAM User Guide/.
--
-- The ARN of the policy used to set the permissions boundary for the user.
user_path :: Lens.Lens' User Core.Text
user_path = Lens.lens (\User' {path} -> path) (\s@User' {} a -> s {path = a} :: User)

-- | The friendly name identifying the user.
user_userName :: Lens.Lens' User Core.Text
user_userName = Lens.lens (\User' {userName} -> userName) (\s@User' {} a -> s {userName = a} :: User)

-- | The stable and unique string identifying the user. For more information
-- about IDs, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers>
-- in the /IAM User Guide/.
user_userId :: Lens.Lens' User Core.Text
user_userId = Lens.lens (\User' {userId} -> userId) (\s@User' {} a -> s {userId = a} :: User)

-- | The Amazon Resource Name (ARN) that identifies the user. For more
-- information about ARNs and how to use ARNs in policies, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers>
-- in the /IAM User Guide/.
user_arn :: Lens.Lens' User Core.Text
user_arn = Lens.lens (\User' {arn} -> arn) (\s@User' {} a -> s {arn = a} :: User)

-- | The date and time, in
-- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- user was created.
user_createDate :: Lens.Lens' User Core.UTCTime
user_createDate = Lens.lens (\User' {createDate} -> createDate) (\s@User' {} a -> s {createDate = a} :: User) Core.. Core._Time

instance Core.FromXML User where
  parseXML x =
    User'
      Core.<$> (x Core..@? "PermissionsBoundary")
      Core.<*> (x Core..@? "PasswordLastUsed")
      Core.<*> ( x Core..@? "Tags" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "member")
               )
      Core.<*> (x Core..@ "Path")
      Core.<*> (x Core..@ "UserName")
      Core.<*> (x Core..@ "UserId")
      Core.<*> (x Core..@ "Arn")
      Core.<*> (x Core..@ "CreateDate")

instance Core.Hashable User

instance Core.NFData User
