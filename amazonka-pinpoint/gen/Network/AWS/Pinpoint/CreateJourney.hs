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
-- Module      : Network.AWS.Pinpoint.CreateJourney
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a journey for an application.
module Network.AWS.Pinpoint.CreateJourney
  ( -- * Creating a Request
    CreateJourney (..),
    newCreateJourney,

    -- * Request Lenses
    createJourney_applicationId,
    createJourney_writeJourneyRequest,

    -- * Destructuring the Response
    CreateJourneyResponse (..),
    newCreateJourneyResponse,

    -- * Response Lenses
    createJourneyResponse_httpStatus,
    createJourneyResponse_journeyResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateJourney' smart constructor.
data CreateJourney = CreateJourney'
  { -- | The unique identifier for the application. This identifier is displayed
    -- as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Core.Text,
    writeJourneyRequest :: WriteJourneyRequest
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateJourney' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'createJourney_applicationId' - The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
--
-- 'writeJourneyRequest', 'createJourney_writeJourneyRequest' - Undocumented member.
newCreateJourney ::
  -- | 'applicationId'
  Core.Text ->
  -- | 'writeJourneyRequest'
  WriteJourneyRequest ->
  CreateJourney
newCreateJourney
  pApplicationId_
  pWriteJourneyRequest_ =
    CreateJourney'
      { applicationId = pApplicationId_,
        writeJourneyRequest = pWriteJourneyRequest_
      }

-- | The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
createJourney_applicationId :: Lens.Lens' CreateJourney Core.Text
createJourney_applicationId = Lens.lens (\CreateJourney' {applicationId} -> applicationId) (\s@CreateJourney' {} a -> s {applicationId = a} :: CreateJourney)

-- | Undocumented member.
createJourney_writeJourneyRequest :: Lens.Lens' CreateJourney WriteJourneyRequest
createJourney_writeJourneyRequest = Lens.lens (\CreateJourney' {writeJourneyRequest} -> writeJourneyRequest) (\s@CreateJourney' {} a -> s {writeJourneyRequest = a} :: CreateJourney)

instance Core.AWSRequest CreateJourney where
  type
    AWSResponse CreateJourney =
      CreateJourneyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateJourneyResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (Core.eitherParseJSON x)
      )

instance Core.Hashable CreateJourney

instance Core.NFData CreateJourney

instance Core.ToHeaders CreateJourney where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateJourney where
  toJSON CreateJourney' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("WriteJourneyRequest" Core..= writeJourneyRequest)
          ]
      )

instance Core.ToPath CreateJourney where
  toPath CreateJourney' {..} =
    Core.mconcat
      ["/v1/apps/", Core.toBS applicationId, "/journeys"]

instance Core.ToQuery CreateJourney where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateJourneyResponse' smart constructor.
data CreateJourneyResponse = CreateJourneyResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    journeyResponse :: JourneyResponse
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateJourneyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createJourneyResponse_httpStatus' - The response's http status code.
--
-- 'journeyResponse', 'createJourneyResponse_journeyResponse' - Undocumented member.
newCreateJourneyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'journeyResponse'
  JourneyResponse ->
  CreateJourneyResponse
newCreateJourneyResponse
  pHttpStatus_
  pJourneyResponse_ =
    CreateJourneyResponse'
      { httpStatus = pHttpStatus_,
        journeyResponse = pJourneyResponse_
      }

-- | The response's http status code.
createJourneyResponse_httpStatus :: Lens.Lens' CreateJourneyResponse Core.Int
createJourneyResponse_httpStatus = Lens.lens (\CreateJourneyResponse' {httpStatus} -> httpStatus) (\s@CreateJourneyResponse' {} a -> s {httpStatus = a} :: CreateJourneyResponse)

-- | Undocumented member.
createJourneyResponse_journeyResponse :: Lens.Lens' CreateJourneyResponse JourneyResponse
createJourneyResponse_journeyResponse = Lens.lens (\CreateJourneyResponse' {journeyResponse} -> journeyResponse) (\s@CreateJourneyResponse' {} a -> s {journeyResponse = a} :: CreateJourneyResponse)

instance Core.NFData CreateJourneyResponse
