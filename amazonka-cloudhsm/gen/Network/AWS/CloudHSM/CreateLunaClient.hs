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
-- Module      : Network.AWS.CloudHSM.CreateLunaClient
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__. For more
-- information, see
-- <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs>,
-- the
-- <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide>,
-- and the
-- <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference>.
--
-- __For information about the current version of AWS CloudHSM__, see
-- <http://aws.amazon.com/cloudhsm/ AWS CloudHSM>, the
-- <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide>,
-- and the
-- <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference>.
--
-- Creates an HSM client.
module Network.AWS.CloudHSM.CreateLunaClient
  ( -- * Creating a Request
    CreateLunaClient (..),
    newCreateLunaClient,

    -- * Request Lenses
    createLunaClient_label,
    createLunaClient_certificate,

    -- * Destructuring the Response
    CreateLunaClientResponse (..),
    newCreateLunaClientResponse,

    -- * Response Lenses
    createLunaClientResponse_clientArn,
    createLunaClientResponse_httpStatus,
  )
where

import Network.AWS.CloudHSM.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the inputs for the CreateLunaClient action.
--
-- /See:/ 'newCreateLunaClient' smart constructor.
data CreateLunaClient = CreateLunaClient'
  { -- | The label for the client.
    label :: Core.Maybe Core.Text,
    -- | The contents of a Base64-Encoded X.509 v3 certificate to be installed on
    -- the HSMs used by this client.
    certificate :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateLunaClient' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'label', 'createLunaClient_label' - The label for the client.
--
-- 'certificate', 'createLunaClient_certificate' - The contents of a Base64-Encoded X.509 v3 certificate to be installed on
-- the HSMs used by this client.
newCreateLunaClient ::
  -- | 'certificate'
  Core.Text ->
  CreateLunaClient
newCreateLunaClient pCertificate_ =
  CreateLunaClient'
    { label = Core.Nothing,
      certificate = pCertificate_
    }

-- | The label for the client.
createLunaClient_label :: Lens.Lens' CreateLunaClient (Core.Maybe Core.Text)
createLunaClient_label = Lens.lens (\CreateLunaClient' {label} -> label) (\s@CreateLunaClient' {} a -> s {label = a} :: CreateLunaClient)

-- | The contents of a Base64-Encoded X.509 v3 certificate to be installed on
-- the HSMs used by this client.
createLunaClient_certificate :: Lens.Lens' CreateLunaClient Core.Text
createLunaClient_certificate = Lens.lens (\CreateLunaClient' {certificate} -> certificate) (\s@CreateLunaClient' {} a -> s {certificate = a} :: CreateLunaClient)

instance Core.AWSRequest CreateLunaClient where
  type
    AWSResponse CreateLunaClient =
      CreateLunaClientResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLunaClientResponse'
            Core.<$> (x Core..?> "ClientArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateLunaClient

instance Core.NFData CreateLunaClient

instance Core.ToHeaders CreateLunaClient where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CloudHsmFrontendService.CreateLunaClient" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateLunaClient where
  toJSON CreateLunaClient' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Label" Core..=) Core.<$> label,
            Core.Just ("Certificate" Core..= certificate)
          ]
      )

instance Core.ToPath CreateLunaClient where
  toPath = Core.const "/"

instance Core.ToQuery CreateLunaClient where
  toQuery = Core.const Core.mempty

-- | Contains the output of the CreateLunaClient action.
--
-- /See:/ 'newCreateLunaClientResponse' smart constructor.
data CreateLunaClientResponse = CreateLunaClientResponse'
  { -- | The ARN of the client.
    clientArn :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateLunaClientResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientArn', 'createLunaClientResponse_clientArn' - The ARN of the client.
--
-- 'httpStatus', 'createLunaClientResponse_httpStatus' - The response's http status code.
newCreateLunaClientResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateLunaClientResponse
newCreateLunaClientResponse pHttpStatus_ =
  CreateLunaClientResponse'
    { clientArn = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the client.
createLunaClientResponse_clientArn :: Lens.Lens' CreateLunaClientResponse (Core.Maybe Core.Text)
createLunaClientResponse_clientArn = Lens.lens (\CreateLunaClientResponse' {clientArn} -> clientArn) (\s@CreateLunaClientResponse' {} a -> s {clientArn = a} :: CreateLunaClientResponse)

-- | The response's http status code.
createLunaClientResponse_httpStatus :: Lens.Lens' CreateLunaClientResponse Core.Int
createLunaClientResponse_httpStatus = Lens.lens (\CreateLunaClientResponse' {httpStatus} -> httpStatus) (\s@CreateLunaClientResponse' {} a -> s {httpStatus = a} :: CreateLunaClientResponse)

instance Core.NFData CreateLunaClientResponse
