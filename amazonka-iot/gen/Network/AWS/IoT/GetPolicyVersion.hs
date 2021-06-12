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
-- Module      : Network.AWS.IoT.GetPolicyVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified policy version.
module Network.AWS.IoT.GetPolicyVersion
  ( -- * Creating a Request
    GetPolicyVersion (..),
    newGetPolicyVersion,

    -- * Request Lenses
    getPolicyVersion_policyName,
    getPolicyVersion_policyVersionId,

    -- * Destructuring the Response
    GetPolicyVersionResponse (..),
    newGetPolicyVersionResponse,

    -- * Response Lenses
    getPolicyVersionResponse_policyVersionId,
    getPolicyVersionResponse_lastModifiedDate,
    getPolicyVersionResponse_policyName,
    getPolicyVersionResponse_policyDocument,
    getPolicyVersionResponse_creationDate,
    getPolicyVersionResponse_generationId,
    getPolicyVersionResponse_isDefaultVersion,
    getPolicyVersionResponse_policyArn,
    getPolicyVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for the GetPolicyVersion operation.
--
-- /See:/ 'newGetPolicyVersion' smart constructor.
data GetPolicyVersion = GetPolicyVersion'
  { -- | The name of the policy.
    policyName :: Core.Text,
    -- | The policy version ID.
    policyVersionId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetPolicyVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyName', 'getPolicyVersion_policyName' - The name of the policy.
--
-- 'policyVersionId', 'getPolicyVersion_policyVersionId' - The policy version ID.
newGetPolicyVersion ::
  -- | 'policyName'
  Core.Text ->
  -- | 'policyVersionId'
  Core.Text ->
  GetPolicyVersion
newGetPolicyVersion pPolicyName_ pPolicyVersionId_ =
  GetPolicyVersion'
    { policyName = pPolicyName_,
      policyVersionId = pPolicyVersionId_
    }

-- | The name of the policy.
getPolicyVersion_policyName :: Lens.Lens' GetPolicyVersion Core.Text
getPolicyVersion_policyName = Lens.lens (\GetPolicyVersion' {policyName} -> policyName) (\s@GetPolicyVersion' {} a -> s {policyName = a} :: GetPolicyVersion)

-- | The policy version ID.
getPolicyVersion_policyVersionId :: Lens.Lens' GetPolicyVersion Core.Text
getPolicyVersion_policyVersionId = Lens.lens (\GetPolicyVersion' {policyVersionId} -> policyVersionId) (\s@GetPolicyVersion' {} a -> s {policyVersionId = a} :: GetPolicyVersion)

instance Core.AWSRequest GetPolicyVersion where
  type
    AWSResponse GetPolicyVersion =
      GetPolicyVersionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPolicyVersionResponse'
            Core.<$> (x Core..?> "policyVersionId")
            Core.<*> (x Core..?> "lastModifiedDate")
            Core.<*> (x Core..?> "policyName")
            Core.<*> (x Core..?> "policyDocument")
            Core.<*> (x Core..?> "creationDate")
            Core.<*> (x Core..?> "generationId")
            Core.<*> (x Core..?> "isDefaultVersion")
            Core.<*> (x Core..?> "policyArn")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetPolicyVersion

instance Core.NFData GetPolicyVersion

instance Core.ToHeaders GetPolicyVersion where
  toHeaders = Core.const Core.mempty

instance Core.ToPath GetPolicyVersion where
  toPath GetPolicyVersion' {..} =
    Core.mconcat
      [ "/policies/",
        Core.toBS policyName,
        "/version/",
        Core.toBS policyVersionId
      ]

instance Core.ToQuery GetPolicyVersion where
  toQuery = Core.const Core.mempty

-- | The output from the GetPolicyVersion operation.
--
-- /See:/ 'newGetPolicyVersionResponse' smart constructor.
data GetPolicyVersionResponse = GetPolicyVersionResponse'
  { -- | The policy version ID.
    policyVersionId :: Core.Maybe Core.Text,
    -- | The date the policy was last modified.
    lastModifiedDate :: Core.Maybe Core.POSIX,
    -- | The policy name.
    policyName :: Core.Maybe Core.Text,
    -- | The JSON document that describes the policy.
    policyDocument :: Core.Maybe Core.Text,
    -- | The date the policy was created.
    creationDate :: Core.Maybe Core.POSIX,
    -- | The generation ID of the policy version.
    generationId :: Core.Maybe Core.Text,
    -- | Specifies whether the policy version is the default.
    isDefaultVersion :: Core.Maybe Core.Bool,
    -- | The policy ARN.
    policyArn :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetPolicyVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyVersionId', 'getPolicyVersionResponse_policyVersionId' - The policy version ID.
--
-- 'lastModifiedDate', 'getPolicyVersionResponse_lastModifiedDate' - The date the policy was last modified.
--
-- 'policyName', 'getPolicyVersionResponse_policyName' - The policy name.
--
-- 'policyDocument', 'getPolicyVersionResponse_policyDocument' - The JSON document that describes the policy.
--
-- 'creationDate', 'getPolicyVersionResponse_creationDate' - The date the policy was created.
--
-- 'generationId', 'getPolicyVersionResponse_generationId' - The generation ID of the policy version.
--
-- 'isDefaultVersion', 'getPolicyVersionResponse_isDefaultVersion' - Specifies whether the policy version is the default.
--
-- 'policyArn', 'getPolicyVersionResponse_policyArn' - The policy ARN.
--
-- 'httpStatus', 'getPolicyVersionResponse_httpStatus' - The response's http status code.
newGetPolicyVersionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetPolicyVersionResponse
newGetPolicyVersionResponse pHttpStatus_ =
  GetPolicyVersionResponse'
    { policyVersionId =
        Core.Nothing,
      lastModifiedDate = Core.Nothing,
      policyName = Core.Nothing,
      policyDocument = Core.Nothing,
      creationDate = Core.Nothing,
      generationId = Core.Nothing,
      isDefaultVersion = Core.Nothing,
      policyArn = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The policy version ID.
getPolicyVersionResponse_policyVersionId :: Lens.Lens' GetPolicyVersionResponse (Core.Maybe Core.Text)
getPolicyVersionResponse_policyVersionId = Lens.lens (\GetPolicyVersionResponse' {policyVersionId} -> policyVersionId) (\s@GetPolicyVersionResponse' {} a -> s {policyVersionId = a} :: GetPolicyVersionResponse)

-- | The date the policy was last modified.
getPolicyVersionResponse_lastModifiedDate :: Lens.Lens' GetPolicyVersionResponse (Core.Maybe Core.UTCTime)
getPolicyVersionResponse_lastModifiedDate = Lens.lens (\GetPolicyVersionResponse' {lastModifiedDate} -> lastModifiedDate) (\s@GetPolicyVersionResponse' {} a -> s {lastModifiedDate = a} :: GetPolicyVersionResponse) Core.. Lens.mapping Core._Time

-- | The policy name.
getPolicyVersionResponse_policyName :: Lens.Lens' GetPolicyVersionResponse (Core.Maybe Core.Text)
getPolicyVersionResponse_policyName = Lens.lens (\GetPolicyVersionResponse' {policyName} -> policyName) (\s@GetPolicyVersionResponse' {} a -> s {policyName = a} :: GetPolicyVersionResponse)

-- | The JSON document that describes the policy.
getPolicyVersionResponse_policyDocument :: Lens.Lens' GetPolicyVersionResponse (Core.Maybe Core.Text)
getPolicyVersionResponse_policyDocument = Lens.lens (\GetPolicyVersionResponse' {policyDocument} -> policyDocument) (\s@GetPolicyVersionResponse' {} a -> s {policyDocument = a} :: GetPolicyVersionResponse)

-- | The date the policy was created.
getPolicyVersionResponse_creationDate :: Lens.Lens' GetPolicyVersionResponse (Core.Maybe Core.UTCTime)
getPolicyVersionResponse_creationDate = Lens.lens (\GetPolicyVersionResponse' {creationDate} -> creationDate) (\s@GetPolicyVersionResponse' {} a -> s {creationDate = a} :: GetPolicyVersionResponse) Core.. Lens.mapping Core._Time

-- | The generation ID of the policy version.
getPolicyVersionResponse_generationId :: Lens.Lens' GetPolicyVersionResponse (Core.Maybe Core.Text)
getPolicyVersionResponse_generationId = Lens.lens (\GetPolicyVersionResponse' {generationId} -> generationId) (\s@GetPolicyVersionResponse' {} a -> s {generationId = a} :: GetPolicyVersionResponse)

-- | Specifies whether the policy version is the default.
getPolicyVersionResponse_isDefaultVersion :: Lens.Lens' GetPolicyVersionResponse (Core.Maybe Core.Bool)
getPolicyVersionResponse_isDefaultVersion = Lens.lens (\GetPolicyVersionResponse' {isDefaultVersion} -> isDefaultVersion) (\s@GetPolicyVersionResponse' {} a -> s {isDefaultVersion = a} :: GetPolicyVersionResponse)

-- | The policy ARN.
getPolicyVersionResponse_policyArn :: Lens.Lens' GetPolicyVersionResponse (Core.Maybe Core.Text)
getPolicyVersionResponse_policyArn = Lens.lens (\GetPolicyVersionResponse' {policyArn} -> policyArn) (\s@GetPolicyVersionResponse' {} a -> s {policyArn = a} :: GetPolicyVersionResponse)

-- | The response's http status code.
getPolicyVersionResponse_httpStatus :: Lens.Lens' GetPolicyVersionResponse Core.Int
getPolicyVersionResponse_httpStatus = Lens.lens (\GetPolicyVersionResponse' {httpStatus} -> httpStatus) (\s@GetPolicyVersionResponse' {} a -> s {httpStatus = a} :: GetPolicyVersionResponse)

instance Core.NFData GetPolicyVersionResponse
