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
-- Module      : Network.AWS.SageMaker.CreateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an /action/. An action is a lineage tracking entity that
-- represents an action or activity. For example, a model deployment or an
-- HPO job. Generally, an action involves at least one input or output
-- artifact. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html Amazon SageMaker ML Lineage Tracking>.
module Network.AWS.SageMaker.CreateAction
  ( -- * Creating a Request
    CreateAction (..),
    newCreateAction,

    -- * Request Lenses
    createAction_status,
    createAction_metadataProperties,
    createAction_tags,
    createAction_properties,
    createAction_description,
    createAction_actionName,
    createAction_source,
    createAction_actionType,

    -- * Destructuring the Response
    CreateActionResponse (..),
    newCreateActionResponse,

    -- * Response Lenses
    createActionResponse_actionArn,
    createActionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newCreateAction' smart constructor.
data CreateAction = CreateAction'
  { -- | The status of the action.
    status :: Core.Maybe ActionStatus,
    metadataProperties :: Core.Maybe MetadataProperties,
    -- | A list of tags to apply to the action.
    tags :: Core.Maybe [Tag],
    -- | A list of properties to add to the action.
    properties :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | The description of the action.
    description :: Core.Maybe Core.Text,
    -- | The name of the action. Must be unique to your account in an AWS Region.
    actionName :: Core.Text,
    -- | The source type, ID, and URI.
    source :: ActionSource,
    -- | The action type.
    actionType :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'createAction_status' - The status of the action.
--
-- 'metadataProperties', 'createAction_metadataProperties' - Undocumented member.
--
-- 'tags', 'createAction_tags' - A list of tags to apply to the action.
--
-- 'properties', 'createAction_properties' - A list of properties to add to the action.
--
-- 'description', 'createAction_description' - The description of the action.
--
-- 'actionName', 'createAction_actionName' - The name of the action. Must be unique to your account in an AWS Region.
--
-- 'source', 'createAction_source' - The source type, ID, and URI.
--
-- 'actionType', 'createAction_actionType' - The action type.
newCreateAction ::
  -- | 'actionName'
  Core.Text ->
  -- | 'source'
  ActionSource ->
  -- | 'actionType'
  Core.Text ->
  CreateAction
newCreateAction pActionName_ pSource_ pActionType_ =
  CreateAction'
    { status = Core.Nothing,
      metadataProperties = Core.Nothing,
      tags = Core.Nothing,
      properties = Core.Nothing,
      description = Core.Nothing,
      actionName = pActionName_,
      source = pSource_,
      actionType = pActionType_
    }

-- | The status of the action.
createAction_status :: Lens.Lens' CreateAction (Core.Maybe ActionStatus)
createAction_status = Lens.lens (\CreateAction' {status} -> status) (\s@CreateAction' {} a -> s {status = a} :: CreateAction)

-- | Undocumented member.
createAction_metadataProperties :: Lens.Lens' CreateAction (Core.Maybe MetadataProperties)
createAction_metadataProperties = Lens.lens (\CreateAction' {metadataProperties} -> metadataProperties) (\s@CreateAction' {} a -> s {metadataProperties = a} :: CreateAction)

-- | A list of tags to apply to the action.
createAction_tags :: Lens.Lens' CreateAction (Core.Maybe [Tag])
createAction_tags = Lens.lens (\CreateAction' {tags} -> tags) (\s@CreateAction' {} a -> s {tags = a} :: CreateAction) Core.. Lens.mapping Lens._Coerce

-- | A list of properties to add to the action.
createAction_properties :: Lens.Lens' CreateAction (Core.Maybe (Core.HashMap Core.Text Core.Text))
createAction_properties = Lens.lens (\CreateAction' {properties} -> properties) (\s@CreateAction' {} a -> s {properties = a} :: CreateAction) Core.. Lens.mapping Lens._Coerce

-- | The description of the action.
createAction_description :: Lens.Lens' CreateAction (Core.Maybe Core.Text)
createAction_description = Lens.lens (\CreateAction' {description} -> description) (\s@CreateAction' {} a -> s {description = a} :: CreateAction)

-- | The name of the action. Must be unique to your account in an AWS Region.
createAction_actionName :: Lens.Lens' CreateAction Core.Text
createAction_actionName = Lens.lens (\CreateAction' {actionName} -> actionName) (\s@CreateAction' {} a -> s {actionName = a} :: CreateAction)

-- | The source type, ID, and URI.
createAction_source :: Lens.Lens' CreateAction ActionSource
createAction_source = Lens.lens (\CreateAction' {source} -> source) (\s@CreateAction' {} a -> s {source = a} :: CreateAction)

-- | The action type.
createAction_actionType :: Lens.Lens' CreateAction Core.Text
createAction_actionType = Lens.lens (\CreateAction' {actionType} -> actionType) (\s@CreateAction' {} a -> s {actionType = a} :: CreateAction)

instance Core.AWSRequest CreateAction where
  type AWSResponse CreateAction = CreateActionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateActionResponse'
            Core.<$> (x Core..?> "ActionArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateAction

instance Core.NFData CreateAction

instance Core.ToHeaders CreateAction where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.CreateAction" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateAction where
  toJSON CreateAction' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Status" Core..=) Core.<$> status,
            ("MetadataProperties" Core..=)
              Core.<$> metadataProperties,
            ("Tags" Core..=) Core.<$> tags,
            ("Properties" Core..=) Core.<$> properties,
            ("Description" Core..=) Core.<$> description,
            Core.Just ("ActionName" Core..= actionName),
            Core.Just ("Source" Core..= source),
            Core.Just ("ActionType" Core..= actionType)
          ]
      )

instance Core.ToPath CreateAction where
  toPath = Core.const "/"

instance Core.ToQuery CreateAction where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateActionResponse' smart constructor.
data CreateActionResponse = CreateActionResponse'
  { -- | The Amazon Resource Name (ARN) of the action.
    actionArn :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateActionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionArn', 'createActionResponse_actionArn' - The Amazon Resource Name (ARN) of the action.
--
-- 'httpStatus', 'createActionResponse_httpStatus' - The response's http status code.
newCreateActionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateActionResponse
newCreateActionResponse pHttpStatus_ =
  CreateActionResponse'
    { actionArn = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the action.
createActionResponse_actionArn :: Lens.Lens' CreateActionResponse (Core.Maybe Core.Text)
createActionResponse_actionArn = Lens.lens (\CreateActionResponse' {actionArn} -> actionArn) (\s@CreateActionResponse' {} a -> s {actionArn = a} :: CreateActionResponse)

-- | The response's http status code.
createActionResponse_httpStatus :: Lens.Lens' CreateActionResponse Core.Int
createActionResponse_httpStatus = Lens.lens (\CreateActionResponse' {httpStatus} -> httpStatus) (\s@CreateActionResponse' {} a -> s {httpStatus = a} :: CreateActionResponse)

instance Core.NFData CreateActionResponse
