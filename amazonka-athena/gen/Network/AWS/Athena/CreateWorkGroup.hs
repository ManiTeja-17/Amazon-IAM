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
-- Module      : Network.AWS.Athena.CreateWorkGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a workgroup with the specified name.
module Network.AWS.Athena.CreateWorkGroup
  ( -- * Creating a Request
    CreateWorkGroup (..),
    newCreateWorkGroup,

    -- * Request Lenses
    createWorkGroup_configuration,
    createWorkGroup_tags,
    createWorkGroup_description,
    createWorkGroup_name,

    -- * Destructuring the Response
    CreateWorkGroupResponse (..),
    newCreateWorkGroupResponse,

    -- * Response Lenses
    createWorkGroupResponse_httpStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateWorkGroup' smart constructor.
data CreateWorkGroup = CreateWorkGroup'
  { -- | The configuration for the workgroup, which includes the location in
    -- Amazon S3 where query results are stored, the encryption configuration,
    -- if any, used for encrypting query results, whether the Amazon CloudWatch
    -- Metrics are enabled for the workgroup, the limit for the amount of bytes
    -- scanned (cutoff) per query, if it is specified, and whether workgroup\'s
    -- settings (specified with EnforceWorkGroupConfiguration) in the
    -- WorkGroupConfiguration override client-side settings. See
    -- WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    configuration :: Core.Maybe WorkGroupConfiguration,
    -- | A list of comma separated tags to add to the workgroup that is created.
    tags :: Core.Maybe [Tag],
    -- | The workgroup description.
    description :: Core.Maybe Core.Text,
    -- | The workgroup name.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateWorkGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configuration', 'createWorkGroup_configuration' - The configuration for the workgroup, which includes the location in
-- Amazon S3 where query results are stored, the encryption configuration,
-- if any, used for encrypting query results, whether the Amazon CloudWatch
-- Metrics are enabled for the workgroup, the limit for the amount of bytes
-- scanned (cutoff) per query, if it is specified, and whether workgroup\'s
-- settings (specified with EnforceWorkGroupConfiguration) in the
-- WorkGroupConfiguration override client-side settings. See
-- WorkGroupConfiguration$EnforceWorkGroupConfiguration.
--
-- 'tags', 'createWorkGroup_tags' - A list of comma separated tags to add to the workgroup that is created.
--
-- 'description', 'createWorkGroup_description' - The workgroup description.
--
-- 'name', 'createWorkGroup_name' - The workgroup name.
newCreateWorkGroup ::
  -- | 'name'
  Core.Text ->
  CreateWorkGroup
newCreateWorkGroup pName_ =
  CreateWorkGroup'
    { configuration = Core.Nothing,
      tags = Core.Nothing,
      description = Core.Nothing,
      name = pName_
    }

-- | The configuration for the workgroup, which includes the location in
-- Amazon S3 where query results are stored, the encryption configuration,
-- if any, used for encrypting query results, whether the Amazon CloudWatch
-- Metrics are enabled for the workgroup, the limit for the amount of bytes
-- scanned (cutoff) per query, if it is specified, and whether workgroup\'s
-- settings (specified with EnforceWorkGroupConfiguration) in the
-- WorkGroupConfiguration override client-side settings. See
-- WorkGroupConfiguration$EnforceWorkGroupConfiguration.
createWorkGroup_configuration :: Lens.Lens' CreateWorkGroup (Core.Maybe WorkGroupConfiguration)
createWorkGroup_configuration = Lens.lens (\CreateWorkGroup' {configuration} -> configuration) (\s@CreateWorkGroup' {} a -> s {configuration = a} :: CreateWorkGroup)

-- | A list of comma separated tags to add to the workgroup that is created.
createWorkGroup_tags :: Lens.Lens' CreateWorkGroup (Core.Maybe [Tag])
createWorkGroup_tags = Lens.lens (\CreateWorkGroup' {tags} -> tags) (\s@CreateWorkGroup' {} a -> s {tags = a} :: CreateWorkGroup) Core.. Lens.mapping Lens._Coerce

-- | The workgroup description.
createWorkGroup_description :: Lens.Lens' CreateWorkGroup (Core.Maybe Core.Text)
createWorkGroup_description = Lens.lens (\CreateWorkGroup' {description} -> description) (\s@CreateWorkGroup' {} a -> s {description = a} :: CreateWorkGroup)

-- | The workgroup name.
createWorkGroup_name :: Lens.Lens' CreateWorkGroup Core.Text
createWorkGroup_name = Lens.lens (\CreateWorkGroup' {name} -> name) (\s@CreateWorkGroup' {} a -> s {name = a} :: CreateWorkGroup)

instance Core.AWSRequest CreateWorkGroup where
  type
    AWSResponse CreateWorkGroup =
      CreateWorkGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateWorkGroupResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateWorkGroup

instance Core.NFData CreateWorkGroup

instance Core.ToHeaders CreateWorkGroup where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonAthena.CreateWorkGroup" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateWorkGroup where
  toJSON CreateWorkGroup' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Configuration" Core..=) Core.<$> configuration,
            ("Tags" Core..=) Core.<$> tags,
            ("Description" Core..=) Core.<$> description,
            Core.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateWorkGroup where
  toPath = Core.const "/"

instance Core.ToQuery CreateWorkGroup where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateWorkGroupResponse' smart constructor.
data CreateWorkGroupResponse = CreateWorkGroupResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateWorkGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createWorkGroupResponse_httpStatus' - The response's http status code.
newCreateWorkGroupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateWorkGroupResponse
newCreateWorkGroupResponse pHttpStatus_ =
  CreateWorkGroupResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
createWorkGroupResponse_httpStatus :: Lens.Lens' CreateWorkGroupResponse Core.Int
createWorkGroupResponse_httpStatus = Lens.lens (\CreateWorkGroupResponse' {httpStatus} -> httpStatus) (\s@CreateWorkGroupResponse' {} a -> s {httpStatus = a} :: CreateWorkGroupResponse)

instance Core.NFData CreateWorkGroupResponse
