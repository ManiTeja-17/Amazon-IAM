{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.CodeHook
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.CodeHook where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Specifies a Lambda function that verifies requests to a bot or fulfills
-- the user\'s request to a bot..
--
-- /See:/ 'newCodeHook' smart constructor.
data CodeHook = CodeHook'
  { -- | The Amazon Resource Name (ARN) of the Lambda function.
    uri :: Core.Text,
    -- | The version of the request-response that you want Amazon Lex to use to
    -- invoke your Lambda function. For more information, see using-lambda.
    messageVersion :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CodeHook' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uri', 'codeHook_uri' - The Amazon Resource Name (ARN) of the Lambda function.
--
-- 'messageVersion', 'codeHook_messageVersion' - The version of the request-response that you want Amazon Lex to use to
-- invoke your Lambda function. For more information, see using-lambda.
newCodeHook ::
  -- | 'uri'
  Core.Text ->
  -- | 'messageVersion'
  Core.Text ->
  CodeHook
newCodeHook pUri_ pMessageVersion_ =
  CodeHook'
    { uri = pUri_,
      messageVersion = pMessageVersion_
    }

-- | The Amazon Resource Name (ARN) of the Lambda function.
codeHook_uri :: Lens.Lens' CodeHook Core.Text
codeHook_uri = Lens.lens (\CodeHook' {uri} -> uri) (\s@CodeHook' {} a -> s {uri = a} :: CodeHook)

-- | The version of the request-response that you want Amazon Lex to use to
-- invoke your Lambda function. For more information, see using-lambda.
codeHook_messageVersion :: Lens.Lens' CodeHook Core.Text
codeHook_messageVersion = Lens.lens (\CodeHook' {messageVersion} -> messageVersion) (\s@CodeHook' {} a -> s {messageVersion = a} :: CodeHook)

instance Core.FromJSON CodeHook where
  parseJSON =
    Core.withObject
      "CodeHook"
      ( \x ->
          CodeHook'
            Core.<$> (x Core..: "uri")
            Core.<*> (x Core..: "messageVersion")
      )

instance Core.Hashable CodeHook

instance Core.NFData CodeHook

instance Core.ToJSON CodeHook where
  toJSON CodeHook' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("uri" Core..= uri),
            Core.Just ("messageVersion" Core..= messageVersion)
          ]
      )
