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
-- Module      : Network.AWS.AlexaBusiness.CreateConferenceProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new conference provider under the user\'s AWS account.
module Network.AWS.AlexaBusiness.CreateConferenceProvider
  ( -- * Creating a Request
    CreateConferenceProvider (..),
    newCreateConferenceProvider,

    -- * Request Lenses
    createConferenceProvider_iPDialIn,
    createConferenceProvider_tags,
    createConferenceProvider_pSTNDialIn,
    createConferenceProvider_clientRequestToken,
    createConferenceProvider_conferenceProviderName,
    createConferenceProvider_conferenceProviderType,
    createConferenceProvider_meetingSetting,

    -- * Destructuring the Response
    CreateConferenceProviderResponse (..),
    newCreateConferenceProviderResponse,

    -- * Response Lenses
    createConferenceProviderResponse_conferenceProviderArn,
    createConferenceProviderResponse_httpStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateConferenceProvider' smart constructor.
data CreateConferenceProvider = CreateConferenceProvider'
  { -- | The IP endpoint and protocol for calling.
    iPDialIn :: Core.Maybe IPDialIn,
    -- | The tags to be added to the specified resource. Do not provide system
    -- tags.
    tags :: Core.Maybe [Tag],
    -- | The information for PSTN conferencing.
    pSTNDialIn :: Core.Maybe PSTNDialIn,
    -- | The request token of the client.
    clientRequestToken :: Core.Maybe Core.Text,
    -- | The name of the conference provider.
    conferenceProviderName :: Core.Text,
    -- | Represents a type within a list of predefined types.
    conferenceProviderType :: ConferenceProviderType,
    -- | The meeting settings for the conference provider.
    meetingSetting :: MeetingSetting
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateConferenceProvider' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'iPDialIn', 'createConferenceProvider_iPDialIn' - The IP endpoint and protocol for calling.
--
-- 'tags', 'createConferenceProvider_tags' - The tags to be added to the specified resource. Do not provide system
-- tags.
--
-- 'pSTNDialIn', 'createConferenceProvider_pSTNDialIn' - The information for PSTN conferencing.
--
-- 'clientRequestToken', 'createConferenceProvider_clientRequestToken' - The request token of the client.
--
-- 'conferenceProviderName', 'createConferenceProvider_conferenceProviderName' - The name of the conference provider.
--
-- 'conferenceProviderType', 'createConferenceProvider_conferenceProviderType' - Represents a type within a list of predefined types.
--
-- 'meetingSetting', 'createConferenceProvider_meetingSetting' - The meeting settings for the conference provider.
newCreateConferenceProvider ::
  -- | 'conferenceProviderName'
  Core.Text ->
  -- | 'conferenceProviderType'
  ConferenceProviderType ->
  -- | 'meetingSetting'
  MeetingSetting ->
  CreateConferenceProvider
newCreateConferenceProvider
  pConferenceProviderName_
  pConferenceProviderType_
  pMeetingSetting_ =
    CreateConferenceProvider'
      { iPDialIn = Core.Nothing,
        tags = Core.Nothing,
        pSTNDialIn = Core.Nothing,
        clientRequestToken = Core.Nothing,
        conferenceProviderName = pConferenceProviderName_,
        conferenceProviderType = pConferenceProviderType_,
        meetingSetting = pMeetingSetting_
      }

-- | The IP endpoint and protocol for calling.
createConferenceProvider_iPDialIn :: Lens.Lens' CreateConferenceProvider (Core.Maybe IPDialIn)
createConferenceProvider_iPDialIn = Lens.lens (\CreateConferenceProvider' {iPDialIn} -> iPDialIn) (\s@CreateConferenceProvider' {} a -> s {iPDialIn = a} :: CreateConferenceProvider)

-- | The tags to be added to the specified resource. Do not provide system
-- tags.
createConferenceProvider_tags :: Lens.Lens' CreateConferenceProvider (Core.Maybe [Tag])
createConferenceProvider_tags = Lens.lens (\CreateConferenceProvider' {tags} -> tags) (\s@CreateConferenceProvider' {} a -> s {tags = a} :: CreateConferenceProvider) Core.. Lens.mapping Lens._Coerce

-- | The information for PSTN conferencing.
createConferenceProvider_pSTNDialIn :: Lens.Lens' CreateConferenceProvider (Core.Maybe PSTNDialIn)
createConferenceProvider_pSTNDialIn = Lens.lens (\CreateConferenceProvider' {pSTNDialIn} -> pSTNDialIn) (\s@CreateConferenceProvider' {} a -> s {pSTNDialIn = a} :: CreateConferenceProvider)

-- | The request token of the client.
createConferenceProvider_clientRequestToken :: Lens.Lens' CreateConferenceProvider (Core.Maybe Core.Text)
createConferenceProvider_clientRequestToken = Lens.lens (\CreateConferenceProvider' {clientRequestToken} -> clientRequestToken) (\s@CreateConferenceProvider' {} a -> s {clientRequestToken = a} :: CreateConferenceProvider)

-- | The name of the conference provider.
createConferenceProvider_conferenceProviderName :: Lens.Lens' CreateConferenceProvider Core.Text
createConferenceProvider_conferenceProviderName = Lens.lens (\CreateConferenceProvider' {conferenceProviderName} -> conferenceProviderName) (\s@CreateConferenceProvider' {} a -> s {conferenceProviderName = a} :: CreateConferenceProvider)

-- | Represents a type within a list of predefined types.
createConferenceProvider_conferenceProviderType :: Lens.Lens' CreateConferenceProvider ConferenceProviderType
createConferenceProvider_conferenceProviderType = Lens.lens (\CreateConferenceProvider' {conferenceProviderType} -> conferenceProviderType) (\s@CreateConferenceProvider' {} a -> s {conferenceProviderType = a} :: CreateConferenceProvider)

-- | The meeting settings for the conference provider.
createConferenceProvider_meetingSetting :: Lens.Lens' CreateConferenceProvider MeetingSetting
createConferenceProvider_meetingSetting = Lens.lens (\CreateConferenceProvider' {meetingSetting} -> meetingSetting) (\s@CreateConferenceProvider' {} a -> s {meetingSetting = a} :: CreateConferenceProvider)

instance Core.AWSRequest CreateConferenceProvider where
  type
    AWSResponse CreateConferenceProvider =
      CreateConferenceProviderResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateConferenceProviderResponse'
            Core.<$> (x Core..?> "ConferenceProviderArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateConferenceProvider

instance Core.NFData CreateConferenceProvider

instance Core.ToHeaders CreateConferenceProvider where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AlexaForBusiness.CreateConferenceProvider" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateConferenceProvider where
  toJSON CreateConferenceProvider' {..} =
    Core.object
      ( Core.catMaybes
          [ ("IPDialIn" Core..=) Core.<$> iPDialIn,
            ("Tags" Core..=) Core.<$> tags,
            ("PSTNDialIn" Core..=) Core.<$> pSTNDialIn,
            ("ClientRequestToken" Core..=)
              Core.<$> clientRequestToken,
            Core.Just
              ( "ConferenceProviderName"
                  Core..= conferenceProviderName
              ),
            Core.Just
              ( "ConferenceProviderType"
                  Core..= conferenceProviderType
              ),
            Core.Just ("MeetingSetting" Core..= meetingSetting)
          ]
      )

instance Core.ToPath CreateConferenceProvider where
  toPath = Core.const "/"

instance Core.ToQuery CreateConferenceProvider where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateConferenceProviderResponse' smart constructor.
data CreateConferenceProviderResponse = CreateConferenceProviderResponse'
  { -- | The ARN of the newly-created conference provider.
    conferenceProviderArn :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateConferenceProviderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'conferenceProviderArn', 'createConferenceProviderResponse_conferenceProviderArn' - The ARN of the newly-created conference provider.
--
-- 'httpStatus', 'createConferenceProviderResponse_httpStatus' - The response's http status code.
newCreateConferenceProviderResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateConferenceProviderResponse
newCreateConferenceProviderResponse pHttpStatus_ =
  CreateConferenceProviderResponse'
    { conferenceProviderArn =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the newly-created conference provider.
createConferenceProviderResponse_conferenceProviderArn :: Lens.Lens' CreateConferenceProviderResponse (Core.Maybe Core.Text)
createConferenceProviderResponse_conferenceProviderArn = Lens.lens (\CreateConferenceProviderResponse' {conferenceProviderArn} -> conferenceProviderArn) (\s@CreateConferenceProviderResponse' {} a -> s {conferenceProviderArn = a} :: CreateConferenceProviderResponse)

-- | The response's http status code.
createConferenceProviderResponse_httpStatus :: Lens.Lens' CreateConferenceProviderResponse Core.Int
createConferenceProviderResponse_httpStatus = Lens.lens (\CreateConferenceProviderResponse' {httpStatus} -> httpStatus) (\s@CreateConferenceProviderResponse' {} a -> s {httpStatus = a} :: CreateConferenceProviderResponse)

instance Core.NFData CreateConferenceProviderResponse
