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
-- Module      : Network.AWS.Cloud9.CreateEnvironmentEC
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS Cloud9 development environment, launches an Amazon
-- Elastic Compute Cloud (Amazon EC2) instance, and then connects from the
-- instance to the environment.
module Network.AWS.Cloud9.CreateEnvironmentEC
  ( -- * Creating a Request
    CreateEnvironmentEC (..),
    newCreateEnvironmentEC,

    -- * Request Lenses
    createEnvironmentEC_connectionType,
    createEnvironmentEC_ownerArn,
    createEnvironmentEC_tags,
    createEnvironmentEC_subnetId,
    createEnvironmentEC_description,
    createEnvironmentEC_clientRequestToken,
    createEnvironmentEC_automaticStopTimeMinutes,
    createEnvironmentEC_name,
    createEnvironmentEC_instanceType,

    -- * Destructuring the Response
    CreateEnvironmentECResponse (..),
    newCreateEnvironmentECResponse,

    -- * Response Lenses
    createEnvironmentECResponse_environmentId,
    createEnvironmentECResponse_httpStatus,
  )
where

import Network.AWS.Cloud9.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateEnvironmentEC' smart constructor.
data CreateEnvironmentEC = CreateEnvironmentEC'
  { -- | The connection type used for connecting to an Amazon EC2 environment.
    connectionType :: Core.Maybe ConnectionType,
    -- | The Amazon Resource Name (ARN) of the environment owner. This ARN can be
    -- the ARN of any AWS IAM principal. If this value is not specified, the
    -- ARN defaults to this environment\'s creator.
    ownerArn :: Core.Maybe Core.Text,
    -- | An array of key-value pairs that will be associated with the new AWS
    -- Cloud9 development environment.
    tags :: Core.Maybe [Tag],
    -- | The ID of the subnet in Amazon VPC that AWS Cloud9 will use to
    -- communicate with the Amazon EC2 instance.
    subnetId :: Core.Maybe Core.Text,
    -- | The description of the environment to create.
    description :: Core.Maybe (Core.Sensitive Core.Text),
    -- | A unique, case-sensitive string that helps AWS Cloud9 to ensure this
    -- operation completes no more than one time.
    --
    -- For more information, see
    -- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Client Tokens>
    -- in the /Amazon EC2 API Reference/.
    clientRequestToken :: Core.Maybe Core.Text,
    -- | The number of minutes until the running instance is shut down after the
    -- environment has last been used.
    automaticStopTimeMinutes :: Core.Maybe Core.Int,
    -- | The name of the environment to create.
    --
    -- This name is visible to other AWS IAM users in the same AWS account.
    name :: Core.Text,
    -- | The type of instance to connect to the environment (for example,
    -- @t2.micro@).
    instanceType :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateEnvironmentEC' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionType', 'createEnvironmentEC_connectionType' - The connection type used for connecting to an Amazon EC2 environment.
--
-- 'ownerArn', 'createEnvironmentEC_ownerArn' - The Amazon Resource Name (ARN) of the environment owner. This ARN can be
-- the ARN of any AWS IAM principal. If this value is not specified, the
-- ARN defaults to this environment\'s creator.
--
-- 'tags', 'createEnvironmentEC_tags' - An array of key-value pairs that will be associated with the new AWS
-- Cloud9 development environment.
--
-- 'subnetId', 'createEnvironmentEC_subnetId' - The ID of the subnet in Amazon VPC that AWS Cloud9 will use to
-- communicate with the Amazon EC2 instance.
--
-- 'description', 'createEnvironmentEC_description' - The description of the environment to create.
--
-- 'clientRequestToken', 'createEnvironmentEC_clientRequestToken' - A unique, case-sensitive string that helps AWS Cloud9 to ensure this
-- operation completes no more than one time.
--
-- For more information, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Client Tokens>
-- in the /Amazon EC2 API Reference/.
--
-- 'automaticStopTimeMinutes', 'createEnvironmentEC_automaticStopTimeMinutes' - The number of minutes until the running instance is shut down after the
-- environment has last been used.
--
-- 'name', 'createEnvironmentEC_name' - The name of the environment to create.
--
-- This name is visible to other AWS IAM users in the same AWS account.
--
-- 'instanceType', 'createEnvironmentEC_instanceType' - The type of instance to connect to the environment (for example,
-- @t2.micro@).
newCreateEnvironmentEC ::
  -- | 'name'
  Core.Text ->
  -- | 'instanceType'
  Core.Text ->
  CreateEnvironmentEC
newCreateEnvironmentEC pName_ pInstanceType_ =
  CreateEnvironmentEC'
    { connectionType = Core.Nothing,
      ownerArn = Core.Nothing,
      tags = Core.Nothing,
      subnetId = Core.Nothing,
      description = Core.Nothing,
      clientRequestToken = Core.Nothing,
      automaticStopTimeMinutes = Core.Nothing,
      name = pName_,
      instanceType = pInstanceType_
    }

-- | The connection type used for connecting to an Amazon EC2 environment.
createEnvironmentEC_connectionType :: Lens.Lens' CreateEnvironmentEC (Core.Maybe ConnectionType)
createEnvironmentEC_connectionType = Lens.lens (\CreateEnvironmentEC' {connectionType} -> connectionType) (\s@CreateEnvironmentEC' {} a -> s {connectionType = a} :: CreateEnvironmentEC)

-- | The Amazon Resource Name (ARN) of the environment owner. This ARN can be
-- the ARN of any AWS IAM principal. If this value is not specified, the
-- ARN defaults to this environment\'s creator.
createEnvironmentEC_ownerArn :: Lens.Lens' CreateEnvironmentEC (Core.Maybe Core.Text)
createEnvironmentEC_ownerArn = Lens.lens (\CreateEnvironmentEC' {ownerArn} -> ownerArn) (\s@CreateEnvironmentEC' {} a -> s {ownerArn = a} :: CreateEnvironmentEC)

-- | An array of key-value pairs that will be associated with the new AWS
-- Cloud9 development environment.
createEnvironmentEC_tags :: Lens.Lens' CreateEnvironmentEC (Core.Maybe [Tag])
createEnvironmentEC_tags = Lens.lens (\CreateEnvironmentEC' {tags} -> tags) (\s@CreateEnvironmentEC' {} a -> s {tags = a} :: CreateEnvironmentEC) Core.. Lens.mapping Lens._Coerce

-- | The ID of the subnet in Amazon VPC that AWS Cloud9 will use to
-- communicate with the Amazon EC2 instance.
createEnvironmentEC_subnetId :: Lens.Lens' CreateEnvironmentEC (Core.Maybe Core.Text)
createEnvironmentEC_subnetId = Lens.lens (\CreateEnvironmentEC' {subnetId} -> subnetId) (\s@CreateEnvironmentEC' {} a -> s {subnetId = a} :: CreateEnvironmentEC)

-- | The description of the environment to create.
createEnvironmentEC_description :: Lens.Lens' CreateEnvironmentEC (Core.Maybe Core.Text)
createEnvironmentEC_description = Lens.lens (\CreateEnvironmentEC' {description} -> description) (\s@CreateEnvironmentEC' {} a -> s {description = a} :: CreateEnvironmentEC) Core.. Lens.mapping Core._Sensitive

-- | A unique, case-sensitive string that helps AWS Cloud9 to ensure this
-- operation completes no more than one time.
--
-- For more information, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Client Tokens>
-- in the /Amazon EC2 API Reference/.
createEnvironmentEC_clientRequestToken :: Lens.Lens' CreateEnvironmentEC (Core.Maybe Core.Text)
createEnvironmentEC_clientRequestToken = Lens.lens (\CreateEnvironmentEC' {clientRequestToken} -> clientRequestToken) (\s@CreateEnvironmentEC' {} a -> s {clientRequestToken = a} :: CreateEnvironmentEC)

-- | The number of minutes until the running instance is shut down after the
-- environment has last been used.
createEnvironmentEC_automaticStopTimeMinutes :: Lens.Lens' CreateEnvironmentEC (Core.Maybe Core.Int)
createEnvironmentEC_automaticStopTimeMinutes = Lens.lens (\CreateEnvironmentEC' {automaticStopTimeMinutes} -> automaticStopTimeMinutes) (\s@CreateEnvironmentEC' {} a -> s {automaticStopTimeMinutes = a} :: CreateEnvironmentEC)

-- | The name of the environment to create.
--
-- This name is visible to other AWS IAM users in the same AWS account.
createEnvironmentEC_name :: Lens.Lens' CreateEnvironmentEC Core.Text
createEnvironmentEC_name = Lens.lens (\CreateEnvironmentEC' {name} -> name) (\s@CreateEnvironmentEC' {} a -> s {name = a} :: CreateEnvironmentEC)

-- | The type of instance to connect to the environment (for example,
-- @t2.micro@).
createEnvironmentEC_instanceType :: Lens.Lens' CreateEnvironmentEC Core.Text
createEnvironmentEC_instanceType = Lens.lens (\CreateEnvironmentEC' {instanceType} -> instanceType) (\s@CreateEnvironmentEC' {} a -> s {instanceType = a} :: CreateEnvironmentEC)

instance Core.AWSRequest CreateEnvironmentEC where
  type
    AWSResponse CreateEnvironmentEC =
      CreateEnvironmentECResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateEnvironmentECResponse'
            Core.<$> (x Core..?> "environmentId")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateEnvironmentEC

instance Core.NFData CreateEnvironmentEC

instance Core.ToHeaders CreateEnvironmentEC where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCloud9WorkspaceManagementService.CreateEnvironmentEC" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateEnvironmentEC where
  toJSON CreateEnvironmentEC' {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectionType" Core..=) Core.<$> connectionType,
            ("ownerArn" Core..=) Core.<$> ownerArn,
            ("tags" Core..=) Core.<$> tags,
            ("subnetId" Core..=) Core.<$> subnetId,
            ("description" Core..=) Core.<$> description,
            ("clientRequestToken" Core..=)
              Core.<$> clientRequestToken,
            ("automaticStopTimeMinutes" Core..=)
              Core.<$> automaticStopTimeMinutes,
            Core.Just ("name" Core..= name),
            Core.Just ("instanceType" Core..= instanceType)
          ]
      )

instance Core.ToPath CreateEnvironmentEC where
  toPath = Core.const "/"

instance Core.ToQuery CreateEnvironmentEC where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateEnvironmentECResponse' smart constructor.
data CreateEnvironmentECResponse = CreateEnvironmentECResponse'
  { -- | The ID of the environment that was created.
    environmentId :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateEnvironmentECResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environmentId', 'createEnvironmentECResponse_environmentId' - The ID of the environment that was created.
--
-- 'httpStatus', 'createEnvironmentECResponse_httpStatus' - The response's http status code.
newCreateEnvironmentECResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateEnvironmentECResponse
newCreateEnvironmentECResponse pHttpStatus_ =
  CreateEnvironmentECResponse'
    { environmentId =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the environment that was created.
createEnvironmentECResponse_environmentId :: Lens.Lens' CreateEnvironmentECResponse (Core.Maybe Core.Text)
createEnvironmentECResponse_environmentId = Lens.lens (\CreateEnvironmentECResponse' {environmentId} -> environmentId) (\s@CreateEnvironmentECResponse' {} a -> s {environmentId = a} :: CreateEnvironmentECResponse)

-- | The response's http status code.
createEnvironmentECResponse_httpStatus :: Lens.Lens' CreateEnvironmentECResponse Core.Int
createEnvironmentECResponse_httpStatus = Lens.lens (\CreateEnvironmentECResponse' {httpStatus} -> httpStatus) (\s@CreateEnvironmentECResponse' {} a -> s {httpStatus = a} :: CreateEnvironmentECResponse)

instance Core.NFData CreateEnvironmentECResponse
