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
-- Module      : Network.AWS.IAM.GetUserPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified inline policy document that is embedded in the
-- specified IAM user.
--
-- Policies returned by this operation are URL-encoded compliant with
-- <https://tools.ietf.org/html/rfc3986 RFC 3986>. You can use a URL
-- decoding method to convert the policy back to plain JSON text. For
-- example, if you use Java, you can use the @decode@ method of the
-- @java.net.URLDecoder@ utility class in the Java SDK. Other languages and
-- SDKs provide similar functionality.
--
-- An IAM user can also have managed policies attached to it. To retrieve a
-- managed policy document that is attached to a user, use GetPolicy to
-- determine the policy\'s default version. Then use GetPolicyVersion to
-- retrieve the policy document.
--
-- For more information about policies, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies>
-- in the /IAM User Guide/.
module Network.AWS.IAM.GetUserPolicy
  ( -- * Creating a Request
    GetUserPolicy (..),
    newGetUserPolicy,

    -- * Request Lenses
    getUserPolicy_userName,
    getUserPolicy_policyName,

    -- * Destructuring the Response
    GetUserPolicyResponse (..),
    newGetUserPolicyResponse,

    -- * Response Lenses
    getUserPolicyResponse_httpStatus,
    getUserPolicyResponse_userName,
    getUserPolicyResponse_policyName,
    getUserPolicyResponse_policyDocument,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IAM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetUserPolicy' smart constructor.
data GetUserPolicy = GetUserPolicy'
  { -- | The name of the user who the policy is associated with.
    --
    -- This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: _+=,.\@-
    userName :: Core.Text,
    -- | The name of the policy document to get.
    --
    -- This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: _+=,.\@-
    policyName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetUserPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userName', 'getUserPolicy_userName' - The name of the user who the policy is associated with.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
--
-- 'policyName', 'getUserPolicy_policyName' - The name of the policy document to get.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
newGetUserPolicy ::
  -- | 'userName'
  Core.Text ->
  -- | 'policyName'
  Core.Text ->
  GetUserPolicy
newGetUserPolicy pUserName_ pPolicyName_ =
  GetUserPolicy'
    { userName = pUserName_,
      policyName = pPolicyName_
    }

-- | The name of the user who the policy is associated with.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
getUserPolicy_userName :: Lens.Lens' GetUserPolicy Core.Text
getUserPolicy_userName = Lens.lens (\GetUserPolicy' {userName} -> userName) (\s@GetUserPolicy' {} a -> s {userName = a} :: GetUserPolicy)

-- | The name of the policy document to get.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
getUserPolicy_policyName :: Lens.Lens' GetUserPolicy Core.Text
getUserPolicy_policyName = Lens.lens (\GetUserPolicy' {policyName} -> policyName) (\s@GetUserPolicy' {} a -> s {policyName = a} :: GetUserPolicy)

instance Core.AWSRequest GetUserPolicy where
  type
    AWSResponse GetUserPolicy =
      GetUserPolicyResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "GetUserPolicyResult"
      ( \s h x ->
          GetUserPolicyResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..@ "UserName")
            Core.<*> (x Core..@ "PolicyName")
            Core.<*> (x Core..@ "PolicyDocument")
      )

instance Core.Hashable GetUserPolicy

instance Core.NFData GetUserPolicy

instance Core.ToHeaders GetUserPolicy where
  toHeaders = Core.const Core.mempty

instance Core.ToPath GetUserPolicy where
  toPath = Core.const "/"

instance Core.ToQuery GetUserPolicy where
  toQuery GetUserPolicy' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("GetUserPolicy" :: Core.ByteString),
        "Version" Core.=: ("2010-05-08" :: Core.ByteString),
        "UserName" Core.=: userName,
        "PolicyName" Core.=: policyName
      ]

-- | Contains the response to a successful GetUserPolicy request.
--
-- /See:/ 'newGetUserPolicyResponse' smart constructor.
data GetUserPolicyResponse = GetUserPolicyResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | The user the policy is associated with.
    userName :: Core.Text,
    -- | The name of the policy.
    policyName :: Core.Text,
    -- | The policy document.
    --
    -- IAM stores policies in JSON format. However, resources that were created
    -- using AWS CloudFormation templates can be formatted in YAML. AWS
    -- CloudFormation always converts a YAML policy to JSON format before
    -- submitting it to IAM.
    policyDocument :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetUserPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getUserPolicyResponse_httpStatus' - The response's http status code.
--
-- 'userName', 'getUserPolicyResponse_userName' - The user the policy is associated with.
--
-- 'policyName', 'getUserPolicyResponse_policyName' - The name of the policy.
--
-- 'policyDocument', 'getUserPolicyResponse_policyDocument' - The policy document.
--
-- IAM stores policies in JSON format. However, resources that were created
-- using AWS CloudFormation templates can be formatted in YAML. AWS
-- CloudFormation always converts a YAML policy to JSON format before
-- submitting it to IAM.
newGetUserPolicyResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'userName'
  Core.Text ->
  -- | 'policyName'
  Core.Text ->
  -- | 'policyDocument'
  Core.Text ->
  GetUserPolicyResponse
newGetUserPolicyResponse
  pHttpStatus_
  pUserName_
  pPolicyName_
  pPolicyDocument_ =
    GetUserPolicyResponse'
      { httpStatus = pHttpStatus_,
        userName = pUserName_,
        policyName = pPolicyName_,
        policyDocument = pPolicyDocument_
      }

-- | The response's http status code.
getUserPolicyResponse_httpStatus :: Lens.Lens' GetUserPolicyResponse Core.Int
getUserPolicyResponse_httpStatus = Lens.lens (\GetUserPolicyResponse' {httpStatus} -> httpStatus) (\s@GetUserPolicyResponse' {} a -> s {httpStatus = a} :: GetUserPolicyResponse)

-- | The user the policy is associated with.
getUserPolicyResponse_userName :: Lens.Lens' GetUserPolicyResponse Core.Text
getUserPolicyResponse_userName = Lens.lens (\GetUserPolicyResponse' {userName} -> userName) (\s@GetUserPolicyResponse' {} a -> s {userName = a} :: GetUserPolicyResponse)

-- | The name of the policy.
getUserPolicyResponse_policyName :: Lens.Lens' GetUserPolicyResponse Core.Text
getUserPolicyResponse_policyName = Lens.lens (\GetUserPolicyResponse' {policyName} -> policyName) (\s@GetUserPolicyResponse' {} a -> s {policyName = a} :: GetUserPolicyResponse)

-- | The policy document.
--
-- IAM stores policies in JSON format. However, resources that were created
-- using AWS CloudFormation templates can be formatted in YAML. AWS
-- CloudFormation always converts a YAML policy to JSON format before
-- submitting it to IAM.
getUserPolicyResponse_policyDocument :: Lens.Lens' GetUserPolicyResponse Core.Text
getUserPolicyResponse_policyDocument = Lens.lens (\GetUserPolicyResponse' {policyDocument} -> policyDocument) (\s@GetUserPolicyResponse' {} a -> s {policyDocument = a} :: GetUserPolicyResponse)

instance Core.NFData GetUserPolicyResponse
