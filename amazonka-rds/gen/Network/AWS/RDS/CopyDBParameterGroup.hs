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
-- Module      : Network.AWS.RDS.CopyDBParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified DB parameter group.
module Network.AWS.RDS.CopyDBParameterGroup
  ( -- * Creating a Request
    CopyDBParameterGroup (..),
    newCopyDBParameterGroup,

    -- * Request Lenses
    copyDBParameterGroup_tags,
    copyDBParameterGroup_sourceDBParameterGroupIdentifier,
    copyDBParameterGroup_targetDBParameterGroupIdentifier,
    copyDBParameterGroup_targetDBParameterGroupDescription,

    -- * Destructuring the Response
    CopyDBParameterGroupResponse (..),
    newCopyDBParameterGroupResponse,

    -- * Response Lenses
    copyDBParameterGroupResponse_dbParameterGroup,
    copyDBParameterGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCopyDBParameterGroup' smart constructor.
data CopyDBParameterGroup = CopyDBParameterGroup'
  { tags :: Core.Maybe [Tag],
    -- | The identifier or ARN for the source DB parameter group. For information
    -- about creating an ARN, see
    -- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing Constructing an ARN for Amazon RDS>
    -- in the /Amazon RDS User Guide/.
    --
    -- Constraints:
    --
    -- -   Must specify a valid DB parameter group.
    sourceDBParameterGroupIdentifier :: Core.Text,
    -- | The identifier for the copied DB parameter group.
    --
    -- Constraints:
    --
    -- -   Can\'t be null, empty, or blank
    --
    -- -   Must contain from 1 to 255 letters, numbers, or hyphens
    --
    -- -   First character must be a letter
    --
    -- -   Can\'t end with a hyphen or contain two consecutive hyphens
    --
    -- Example: @my-db-parameter-group@
    targetDBParameterGroupIdentifier :: Core.Text,
    -- | A description for the copied DB parameter group.
    targetDBParameterGroupDescription :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CopyDBParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'copyDBParameterGroup_tags' - Undocumented member.
--
-- 'sourceDBParameterGroupIdentifier', 'copyDBParameterGroup_sourceDBParameterGroupIdentifier' - The identifier or ARN for the source DB parameter group. For information
-- about creating an ARN, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing Constructing an ARN for Amazon RDS>
-- in the /Amazon RDS User Guide/.
--
-- Constraints:
--
-- -   Must specify a valid DB parameter group.
--
-- 'targetDBParameterGroupIdentifier', 'copyDBParameterGroup_targetDBParameterGroupIdentifier' - The identifier for the copied DB parameter group.
--
-- Constraints:
--
-- -   Can\'t be null, empty, or blank
--
-- -   Must contain from 1 to 255 letters, numbers, or hyphens
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- Example: @my-db-parameter-group@
--
-- 'targetDBParameterGroupDescription', 'copyDBParameterGroup_targetDBParameterGroupDescription' - A description for the copied DB parameter group.
newCopyDBParameterGroup ::
  -- | 'sourceDBParameterGroupIdentifier'
  Core.Text ->
  -- | 'targetDBParameterGroupIdentifier'
  Core.Text ->
  -- | 'targetDBParameterGroupDescription'
  Core.Text ->
  CopyDBParameterGroup
newCopyDBParameterGroup
  pSourceDBParameterGroupIdentifier_
  pTargetDBParameterGroupIdentifier_
  pTargetDBParameterGroupDescription_ =
    CopyDBParameterGroup'
      { tags = Core.Nothing,
        sourceDBParameterGroupIdentifier =
          pSourceDBParameterGroupIdentifier_,
        targetDBParameterGroupIdentifier =
          pTargetDBParameterGroupIdentifier_,
        targetDBParameterGroupDescription =
          pTargetDBParameterGroupDescription_
      }

-- | Undocumented member.
copyDBParameterGroup_tags :: Lens.Lens' CopyDBParameterGroup (Core.Maybe [Tag])
copyDBParameterGroup_tags = Lens.lens (\CopyDBParameterGroup' {tags} -> tags) (\s@CopyDBParameterGroup' {} a -> s {tags = a} :: CopyDBParameterGroup) Core.. Lens.mapping Lens._Coerce

-- | The identifier or ARN for the source DB parameter group. For information
-- about creating an ARN, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing Constructing an ARN for Amazon RDS>
-- in the /Amazon RDS User Guide/.
--
-- Constraints:
--
-- -   Must specify a valid DB parameter group.
copyDBParameterGroup_sourceDBParameterGroupIdentifier :: Lens.Lens' CopyDBParameterGroup Core.Text
copyDBParameterGroup_sourceDBParameterGroupIdentifier = Lens.lens (\CopyDBParameterGroup' {sourceDBParameterGroupIdentifier} -> sourceDBParameterGroupIdentifier) (\s@CopyDBParameterGroup' {} a -> s {sourceDBParameterGroupIdentifier = a} :: CopyDBParameterGroup)

-- | The identifier for the copied DB parameter group.
--
-- Constraints:
--
-- -   Can\'t be null, empty, or blank
--
-- -   Must contain from 1 to 255 letters, numbers, or hyphens
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- Example: @my-db-parameter-group@
copyDBParameterGroup_targetDBParameterGroupIdentifier :: Lens.Lens' CopyDBParameterGroup Core.Text
copyDBParameterGroup_targetDBParameterGroupIdentifier = Lens.lens (\CopyDBParameterGroup' {targetDBParameterGroupIdentifier} -> targetDBParameterGroupIdentifier) (\s@CopyDBParameterGroup' {} a -> s {targetDBParameterGroupIdentifier = a} :: CopyDBParameterGroup)

-- | A description for the copied DB parameter group.
copyDBParameterGroup_targetDBParameterGroupDescription :: Lens.Lens' CopyDBParameterGroup Core.Text
copyDBParameterGroup_targetDBParameterGroupDescription = Lens.lens (\CopyDBParameterGroup' {targetDBParameterGroupDescription} -> targetDBParameterGroupDescription) (\s@CopyDBParameterGroup' {} a -> s {targetDBParameterGroupDescription = a} :: CopyDBParameterGroup)

instance Core.AWSRequest CopyDBParameterGroup where
  type
    AWSResponse CopyDBParameterGroup =
      CopyDBParameterGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CopyDBParameterGroupResult"
      ( \s h x ->
          CopyDBParameterGroupResponse'
            Core.<$> (x Core..@? "DBParameterGroup")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CopyDBParameterGroup

instance Core.NFData CopyDBParameterGroup

instance Core.ToHeaders CopyDBParameterGroup where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CopyDBParameterGroup where
  toPath = Core.const "/"

instance Core.ToQuery CopyDBParameterGroup where
  toQuery CopyDBParameterGroup' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("CopyDBParameterGroup" :: Core.ByteString),
        "Version" Core.=: ("2014-10-31" :: Core.ByteString),
        "Tags"
          Core.=: Core.toQuery (Core.toQueryList "Tag" Core.<$> tags),
        "SourceDBParameterGroupIdentifier"
          Core.=: sourceDBParameterGroupIdentifier,
        "TargetDBParameterGroupIdentifier"
          Core.=: targetDBParameterGroupIdentifier,
        "TargetDBParameterGroupDescription"
          Core.=: targetDBParameterGroupDescription
      ]

-- | /See:/ 'newCopyDBParameterGroupResponse' smart constructor.
data CopyDBParameterGroupResponse = CopyDBParameterGroupResponse'
  { dbParameterGroup :: Core.Maybe DBParameterGroup,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CopyDBParameterGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbParameterGroup', 'copyDBParameterGroupResponse_dbParameterGroup' - Undocumented member.
--
-- 'httpStatus', 'copyDBParameterGroupResponse_httpStatus' - The response's http status code.
newCopyDBParameterGroupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CopyDBParameterGroupResponse
newCopyDBParameterGroupResponse pHttpStatus_ =
  CopyDBParameterGroupResponse'
    { dbParameterGroup =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
copyDBParameterGroupResponse_dbParameterGroup :: Lens.Lens' CopyDBParameterGroupResponse (Core.Maybe DBParameterGroup)
copyDBParameterGroupResponse_dbParameterGroup = Lens.lens (\CopyDBParameterGroupResponse' {dbParameterGroup} -> dbParameterGroup) (\s@CopyDBParameterGroupResponse' {} a -> s {dbParameterGroup = a} :: CopyDBParameterGroupResponse)

-- | The response's http status code.
copyDBParameterGroupResponse_httpStatus :: Lens.Lens' CopyDBParameterGroupResponse Core.Int
copyDBParameterGroupResponse_httpStatus = Lens.lens (\CopyDBParameterGroupResponse' {httpStatus} -> httpStatus) (\s@CopyDBParameterGroupResponse' {} a -> s {httpStatus = a} :: CopyDBParameterGroupResponse)

instance Core.NFData CopyDBParameterGroupResponse
