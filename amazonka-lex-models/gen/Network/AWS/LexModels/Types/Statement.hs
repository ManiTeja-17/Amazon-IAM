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
-- Module      : Network.AWS.LexModels.Types.Statement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.Statement where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LexModels.Types.Message

-- | A collection of messages that convey information to the user. At
-- runtime, Amazon Lex selects the message to convey.
--
-- /See:/ 'newStatement' smart constructor.
data Statement = Statement'
  { -- | At runtime, if the client is using the
    -- <http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html PostText>
    -- API, Amazon Lex includes the response card in the response. It
    -- substitutes all of the session attributes and slot values for
    -- placeholders in the response card.
    responseCard :: Core.Maybe Core.Text,
    -- | A collection of message objects.
    messages :: Core.NonEmpty Message
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Statement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'responseCard', 'statement_responseCard' - At runtime, if the client is using the
-- <http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html PostText>
-- API, Amazon Lex includes the response card in the response. It
-- substitutes all of the session attributes and slot values for
-- placeholders in the response card.
--
-- 'messages', 'statement_messages' - A collection of message objects.
newStatement ::
  -- | 'messages'
  Core.NonEmpty Message ->
  Statement
newStatement pMessages_ =
  Statement'
    { responseCard = Core.Nothing,
      messages = Lens._Coerce Lens.# pMessages_
    }

-- | At runtime, if the client is using the
-- <http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html PostText>
-- API, Amazon Lex includes the response card in the response. It
-- substitutes all of the session attributes and slot values for
-- placeholders in the response card.
statement_responseCard :: Lens.Lens' Statement (Core.Maybe Core.Text)
statement_responseCard = Lens.lens (\Statement' {responseCard} -> responseCard) (\s@Statement' {} a -> s {responseCard = a} :: Statement)

-- | A collection of message objects.
statement_messages :: Lens.Lens' Statement (Core.NonEmpty Message)
statement_messages = Lens.lens (\Statement' {messages} -> messages) (\s@Statement' {} a -> s {messages = a} :: Statement) Core.. Lens._Coerce

instance Core.FromJSON Statement where
  parseJSON =
    Core.withObject
      "Statement"
      ( \x ->
          Statement'
            Core.<$> (x Core..:? "responseCard")
            Core.<*> (x Core..: "messages")
      )

instance Core.Hashable Statement

instance Core.NFData Statement

instance Core.ToJSON Statement where
  toJSON Statement' {..} =
    Core.object
      ( Core.catMaybes
          [ ("responseCard" Core..=) Core.<$> responseCard,
            Core.Just ("messages" Core..= messages)
          ]
      )
