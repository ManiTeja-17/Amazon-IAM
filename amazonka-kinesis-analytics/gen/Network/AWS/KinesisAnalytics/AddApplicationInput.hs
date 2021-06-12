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
-- Module      : Network.AWS.KinesisAnalytics.AddApplicationInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This documentation is for version 1 of the Amazon Kinesis Data Analytics
-- API, which only supports SQL applications. Version 2 of the API supports
-- SQL and Java applications. For more information about version 2, see
-- </kinesisanalytics/latest/apiv2/Welcome.html Amazon Kinesis Data Analytics API V2 Documentation>.
--
-- Adds a streaming source to your Amazon Kinesis application. For
-- conceptual information, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html Configuring Application Input>.
--
-- You can add a streaming source either when you create an application or
-- you can use this operation to add a streaming source after you create an
-- application. For more information, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html CreateApplication>.
--
-- Any configuration update, including adding a streaming source using this
-- operation, results in a new version of the application. You can use the
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
-- operation to find the current application version.
--
-- This operation requires permissions to perform the
-- @kinesisanalytics:AddApplicationInput@ action.
module Network.AWS.KinesisAnalytics.AddApplicationInput
  ( -- * Creating a Request
    AddApplicationInput (..),
    newAddApplicationInput,

    -- * Request Lenses
    addApplicationInput_applicationName,
    addApplicationInput_currentApplicationVersionId,
    addApplicationInput_input,

    -- * Destructuring the Response
    AddApplicationInputResponse (..),
    newAddApplicationInputResponse,

    -- * Response Lenses
    addApplicationInputResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalytics.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newAddApplicationInput' smart constructor.
data AddApplicationInput = AddApplicationInput'
  { -- | Name of your existing Amazon Kinesis Analytics application to which you
    -- want to add the streaming source.
    applicationName :: Core.Text,
    -- | Current version of your Amazon Kinesis Analytics application. You can
    -- use the
    -- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
    -- operation to find the current application version.
    currentApplicationVersionId :: Core.Natural,
    -- | The
    -- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html Input>
    -- to add.
    input :: Input
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AddApplicationInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'addApplicationInput_applicationName' - Name of your existing Amazon Kinesis Analytics application to which you
-- want to add the streaming source.
--
-- 'currentApplicationVersionId', 'addApplicationInput_currentApplicationVersionId' - Current version of your Amazon Kinesis Analytics application. You can
-- use the
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
-- operation to find the current application version.
--
-- 'input', 'addApplicationInput_input' - The
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html Input>
-- to add.
newAddApplicationInput ::
  -- | 'applicationName'
  Core.Text ->
  -- | 'currentApplicationVersionId'
  Core.Natural ->
  -- | 'input'
  Input ->
  AddApplicationInput
newAddApplicationInput
  pApplicationName_
  pCurrentApplicationVersionId_
  pInput_ =
    AddApplicationInput'
      { applicationName =
          pApplicationName_,
        currentApplicationVersionId =
          pCurrentApplicationVersionId_,
        input = pInput_
      }

-- | Name of your existing Amazon Kinesis Analytics application to which you
-- want to add the streaming source.
addApplicationInput_applicationName :: Lens.Lens' AddApplicationInput Core.Text
addApplicationInput_applicationName = Lens.lens (\AddApplicationInput' {applicationName} -> applicationName) (\s@AddApplicationInput' {} a -> s {applicationName = a} :: AddApplicationInput)

-- | Current version of your Amazon Kinesis Analytics application. You can
-- use the
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
-- operation to find the current application version.
addApplicationInput_currentApplicationVersionId :: Lens.Lens' AddApplicationInput Core.Natural
addApplicationInput_currentApplicationVersionId = Lens.lens (\AddApplicationInput' {currentApplicationVersionId} -> currentApplicationVersionId) (\s@AddApplicationInput' {} a -> s {currentApplicationVersionId = a} :: AddApplicationInput)

-- | The
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html Input>
-- to add.
addApplicationInput_input :: Lens.Lens' AddApplicationInput Input
addApplicationInput_input = Lens.lens (\AddApplicationInput' {input} -> input) (\s@AddApplicationInput' {} a -> s {input = a} :: AddApplicationInput)

instance Core.AWSRequest AddApplicationInput where
  type
    AWSResponse AddApplicationInput =
      AddApplicationInputResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AddApplicationInputResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable AddApplicationInput

instance Core.NFData AddApplicationInput

instance Core.ToHeaders AddApplicationInput where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KinesisAnalytics_20150814.AddApplicationInput" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON AddApplicationInput where
  toJSON AddApplicationInput' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("ApplicationName" Core..= applicationName),
            Core.Just
              ( "CurrentApplicationVersionId"
                  Core..= currentApplicationVersionId
              ),
            Core.Just ("Input" Core..= input)
          ]
      )

instance Core.ToPath AddApplicationInput where
  toPath = Core.const "/"

instance Core.ToQuery AddApplicationInput where
  toQuery = Core.const Core.mempty

-- |
--
-- /See:/ 'newAddApplicationInputResponse' smart constructor.
data AddApplicationInputResponse = AddApplicationInputResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AddApplicationInputResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'addApplicationInputResponse_httpStatus' - The response's http status code.
newAddApplicationInputResponse ::
  -- | 'httpStatus'
  Core.Int ->
  AddApplicationInputResponse
newAddApplicationInputResponse pHttpStatus_ =
  AddApplicationInputResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
addApplicationInputResponse_httpStatus :: Lens.Lens' AddApplicationInputResponse Core.Int
addApplicationInputResponse_httpStatus = Lens.lens (\AddApplicationInputResponse' {httpStatus} -> httpStatus) (\s@AddApplicationInputResponse' {} a -> s {httpStatus = a} :: AddApplicationInputResponse)

instance Core.NFData AddApplicationInputResponse
