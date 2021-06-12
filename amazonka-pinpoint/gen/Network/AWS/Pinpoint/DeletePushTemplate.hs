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
-- Module      : Network.AWS.Pinpoint.DeletePushTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a message template for messages that were sent through a push
-- notification channel.
module Network.AWS.Pinpoint.DeletePushTemplate
  ( -- * Creating a Request
    DeletePushTemplate (..),
    newDeletePushTemplate,

    -- * Request Lenses
    deletePushTemplate_version,
    deletePushTemplate_templateName,

    -- * Destructuring the Response
    DeletePushTemplateResponse (..),
    newDeletePushTemplateResponse,

    -- * Response Lenses
    deletePushTemplateResponse_httpStatus,
    deletePushTemplateResponse_messageBody,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeletePushTemplate' smart constructor.
data DeletePushTemplate = DeletePushTemplate'
  { -- | The unique identifier for the version of the message template to update,
    -- retrieve information about, or delete. To retrieve identifiers and other
    -- information for all the versions of a template, use the Template
    -- Versions resource.
    --
    -- If specified, this value must match the identifier for an existing
    -- template version. If specified for an update operation, this value must
    -- match the identifier for the latest existing version of the template.
    -- This restriction helps ensure that race conditions don\'t occur.
    --
    -- If you don\'t specify a value for this parameter, Amazon Pinpoint does
    -- the following:
    --
    -- -   For a get operation, retrieves information about the active version
    --     of the template.
    --
    -- -   For an update operation, saves the updates to (overwrites) the
    --     latest existing version of the template, if the create-new-version
    --     parameter isn\'t used or is set to false.
    --
    -- -   For a delete operation, deletes the template, including all versions
    --     of the template.
    version :: Core.Maybe Core.Text,
    -- | The name of the message template. A template name must start with an
    -- alphanumeric character and can contain a maximum of 128 characters. The
    -- characters can be alphanumeric characters, underscores (_), or hyphens
    -- (-). Template names are case sensitive.
    templateName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeletePushTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'version', 'deletePushTemplate_version' - The unique identifier for the version of the message template to update,
-- retrieve information about, or delete. To retrieve identifiers and other
-- information for all the versions of a template, use the Template
-- Versions resource.
--
-- If specified, this value must match the identifier for an existing
-- template version. If specified for an update operation, this value must
-- match the identifier for the latest existing version of the template.
-- This restriction helps ensure that race conditions don\'t occur.
--
-- If you don\'t specify a value for this parameter, Amazon Pinpoint does
-- the following:
--
-- -   For a get operation, retrieves information about the active version
--     of the template.
--
-- -   For an update operation, saves the updates to (overwrites) the
--     latest existing version of the template, if the create-new-version
--     parameter isn\'t used or is set to false.
--
-- -   For a delete operation, deletes the template, including all versions
--     of the template.
--
-- 'templateName', 'deletePushTemplate_templateName' - The name of the message template. A template name must start with an
-- alphanumeric character and can contain a maximum of 128 characters. The
-- characters can be alphanumeric characters, underscores (_), or hyphens
-- (-). Template names are case sensitive.
newDeletePushTemplate ::
  -- | 'templateName'
  Core.Text ->
  DeletePushTemplate
newDeletePushTemplate pTemplateName_ =
  DeletePushTemplate'
    { version = Core.Nothing,
      templateName = pTemplateName_
    }

-- | The unique identifier for the version of the message template to update,
-- retrieve information about, or delete. To retrieve identifiers and other
-- information for all the versions of a template, use the Template
-- Versions resource.
--
-- If specified, this value must match the identifier for an existing
-- template version. If specified for an update operation, this value must
-- match the identifier for the latest existing version of the template.
-- This restriction helps ensure that race conditions don\'t occur.
--
-- If you don\'t specify a value for this parameter, Amazon Pinpoint does
-- the following:
--
-- -   For a get operation, retrieves information about the active version
--     of the template.
--
-- -   For an update operation, saves the updates to (overwrites) the
--     latest existing version of the template, if the create-new-version
--     parameter isn\'t used or is set to false.
--
-- -   For a delete operation, deletes the template, including all versions
--     of the template.
deletePushTemplate_version :: Lens.Lens' DeletePushTemplate (Core.Maybe Core.Text)
deletePushTemplate_version = Lens.lens (\DeletePushTemplate' {version} -> version) (\s@DeletePushTemplate' {} a -> s {version = a} :: DeletePushTemplate)

-- | The name of the message template. A template name must start with an
-- alphanumeric character and can contain a maximum of 128 characters. The
-- characters can be alphanumeric characters, underscores (_), or hyphens
-- (-). Template names are case sensitive.
deletePushTemplate_templateName :: Lens.Lens' DeletePushTemplate Core.Text
deletePushTemplate_templateName = Lens.lens (\DeletePushTemplate' {templateName} -> templateName) (\s@DeletePushTemplate' {} a -> s {templateName = a} :: DeletePushTemplate)

instance Core.AWSRequest DeletePushTemplate where
  type
    AWSResponse DeletePushTemplate =
      DeletePushTemplateResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeletePushTemplateResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (Core.eitherParseJSON x)
      )

instance Core.Hashable DeletePushTemplate

instance Core.NFData DeletePushTemplate

instance Core.ToHeaders DeletePushTemplate where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToPath DeletePushTemplate where
  toPath DeletePushTemplate' {..} =
    Core.mconcat
      ["/v1/templates/", Core.toBS templateName, "/push"]

instance Core.ToQuery DeletePushTemplate where
  toQuery DeletePushTemplate' {..} =
    Core.mconcat ["version" Core.=: version]

-- | /See:/ 'newDeletePushTemplateResponse' smart constructor.
data DeletePushTemplateResponse = DeletePushTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    messageBody :: MessageBody
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeletePushTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deletePushTemplateResponse_httpStatus' - The response's http status code.
--
-- 'messageBody', 'deletePushTemplateResponse_messageBody' - Undocumented member.
newDeletePushTemplateResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'messageBody'
  MessageBody ->
  DeletePushTemplateResponse
newDeletePushTemplateResponse
  pHttpStatus_
  pMessageBody_ =
    DeletePushTemplateResponse'
      { httpStatus =
          pHttpStatus_,
        messageBody = pMessageBody_
      }

-- | The response's http status code.
deletePushTemplateResponse_httpStatus :: Lens.Lens' DeletePushTemplateResponse Core.Int
deletePushTemplateResponse_httpStatus = Lens.lens (\DeletePushTemplateResponse' {httpStatus} -> httpStatus) (\s@DeletePushTemplateResponse' {} a -> s {httpStatus = a} :: DeletePushTemplateResponse)

-- | Undocumented member.
deletePushTemplateResponse_messageBody :: Lens.Lens' DeletePushTemplateResponse MessageBody
deletePushTemplateResponse_messageBody = Lens.lens (\DeletePushTemplateResponse' {messageBody} -> messageBody) (\s@DeletePushTemplateResponse' {} a -> s {messageBody = a} :: DeletePushTemplateResponse)

instance Core.NFData DeletePushTemplateResponse
