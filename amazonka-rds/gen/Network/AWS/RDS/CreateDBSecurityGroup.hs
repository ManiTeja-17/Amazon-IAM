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
-- Module      : Network.AWS.RDS.CreateDBSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB security group. DB security groups control access to a
-- DB instance.
--
-- A DB security group controls access to EC2-Classic DB instances that are
-- not in a VPC.
module Network.AWS.RDS.CreateDBSecurityGroup
  ( -- * Creating a Request
    CreateDBSecurityGroup (..),
    newCreateDBSecurityGroup,

    -- * Request Lenses
    createDBSecurityGroup_tags,
    createDBSecurityGroup_dbSecurityGroupName,
    createDBSecurityGroup_dbSecurityGroupDescription,

    -- * Destructuring the Response
    CreateDBSecurityGroupResponse (..),
    newCreateDBSecurityGroupResponse,

    -- * Response Lenses
    createDBSecurityGroupResponse_dbSecurityGroup,
    createDBSecurityGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateDBSecurityGroup' smart constructor.
data CreateDBSecurityGroup = CreateDBSecurityGroup'
  { -- | Tags to assign to the DB security group.
    tags :: Core.Maybe [Tag],
    -- | The name for the DB security group. This value is stored as a lowercase
    -- string.
    --
    -- Constraints:
    --
    -- -   Must be 1 to 255 letters, numbers, or hyphens.
    --
    -- -   First character must be a letter
    --
    -- -   Can\'t end with a hyphen or contain two consecutive hyphens
    --
    -- -   Must not be \"Default\"
    --
    -- Example: @mysecuritygroup@
    dbSecurityGroupName :: Core.Text,
    -- | The description for the DB security group.
    dbSecurityGroupDescription :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDBSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDBSecurityGroup_tags' - Tags to assign to the DB security group.
--
-- 'dbSecurityGroupName', 'createDBSecurityGroup_dbSecurityGroupName' - The name for the DB security group. This value is stored as a lowercase
-- string.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- -   Must not be \"Default\"
--
-- Example: @mysecuritygroup@
--
-- 'dbSecurityGroupDescription', 'createDBSecurityGroup_dbSecurityGroupDescription' - The description for the DB security group.
newCreateDBSecurityGroup ::
  -- | 'dbSecurityGroupName'
  Core.Text ->
  -- | 'dbSecurityGroupDescription'
  Core.Text ->
  CreateDBSecurityGroup
newCreateDBSecurityGroup
  pDBSecurityGroupName_
  pDBSecurityGroupDescription_ =
    CreateDBSecurityGroup'
      { tags = Core.Nothing,
        dbSecurityGroupName = pDBSecurityGroupName_,
        dbSecurityGroupDescription =
          pDBSecurityGroupDescription_
      }

-- | Tags to assign to the DB security group.
createDBSecurityGroup_tags :: Lens.Lens' CreateDBSecurityGroup (Core.Maybe [Tag])
createDBSecurityGroup_tags = Lens.lens (\CreateDBSecurityGroup' {tags} -> tags) (\s@CreateDBSecurityGroup' {} a -> s {tags = a} :: CreateDBSecurityGroup) Core.. Lens.mapping Lens._Coerce

-- | The name for the DB security group. This value is stored as a lowercase
-- string.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- -   Must not be \"Default\"
--
-- Example: @mysecuritygroup@
createDBSecurityGroup_dbSecurityGroupName :: Lens.Lens' CreateDBSecurityGroup Core.Text
createDBSecurityGroup_dbSecurityGroupName = Lens.lens (\CreateDBSecurityGroup' {dbSecurityGroupName} -> dbSecurityGroupName) (\s@CreateDBSecurityGroup' {} a -> s {dbSecurityGroupName = a} :: CreateDBSecurityGroup)

-- | The description for the DB security group.
createDBSecurityGroup_dbSecurityGroupDescription :: Lens.Lens' CreateDBSecurityGroup Core.Text
createDBSecurityGroup_dbSecurityGroupDescription = Lens.lens (\CreateDBSecurityGroup' {dbSecurityGroupDescription} -> dbSecurityGroupDescription) (\s@CreateDBSecurityGroup' {} a -> s {dbSecurityGroupDescription = a} :: CreateDBSecurityGroup)

instance Core.AWSRequest CreateDBSecurityGroup where
  type
    AWSResponse CreateDBSecurityGroup =
      CreateDBSecurityGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBSecurityGroupResult"
      ( \s h x ->
          CreateDBSecurityGroupResponse'
            Core.<$> (x Core..@? "DBSecurityGroup")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateDBSecurityGroup

instance Core.NFData CreateDBSecurityGroup

instance Core.ToHeaders CreateDBSecurityGroup where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CreateDBSecurityGroup where
  toPath = Core.const "/"

instance Core.ToQuery CreateDBSecurityGroup where
  toQuery CreateDBSecurityGroup' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("CreateDBSecurityGroup" :: Core.ByteString),
        "Version" Core.=: ("2014-10-31" :: Core.ByteString),
        "Tags"
          Core.=: Core.toQuery (Core.toQueryList "Tag" Core.<$> tags),
        "DBSecurityGroupName" Core.=: dbSecurityGroupName,
        "DBSecurityGroupDescription"
          Core.=: dbSecurityGroupDescription
      ]

-- | /See:/ 'newCreateDBSecurityGroupResponse' smart constructor.
data CreateDBSecurityGroupResponse = CreateDBSecurityGroupResponse'
  { dbSecurityGroup :: Core.Maybe DBSecurityGroup,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDBSecurityGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbSecurityGroup', 'createDBSecurityGroupResponse_dbSecurityGroup' - Undocumented member.
--
-- 'httpStatus', 'createDBSecurityGroupResponse_httpStatus' - The response's http status code.
newCreateDBSecurityGroupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateDBSecurityGroupResponse
newCreateDBSecurityGroupResponse pHttpStatus_ =
  CreateDBSecurityGroupResponse'
    { dbSecurityGroup =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createDBSecurityGroupResponse_dbSecurityGroup :: Lens.Lens' CreateDBSecurityGroupResponse (Core.Maybe DBSecurityGroup)
createDBSecurityGroupResponse_dbSecurityGroup = Lens.lens (\CreateDBSecurityGroupResponse' {dbSecurityGroup} -> dbSecurityGroup) (\s@CreateDBSecurityGroupResponse' {} a -> s {dbSecurityGroup = a} :: CreateDBSecurityGroupResponse)

-- | The response's http status code.
createDBSecurityGroupResponse_httpStatus :: Lens.Lens' CreateDBSecurityGroupResponse Core.Int
createDBSecurityGroupResponse_httpStatus = Lens.lens (\CreateDBSecurityGroupResponse' {httpStatus} -> httpStatus) (\s@CreateDBSecurityGroupResponse' {} a -> s {httpStatus = a} :: CreateDBSecurityGroupResponse)

instance Core.NFData CreateDBSecurityGroupResponse
