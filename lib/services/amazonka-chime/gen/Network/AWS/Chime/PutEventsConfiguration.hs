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
-- Module      : Network.AWS.Chime.PutEventsConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an events configuration that allows a bot to receive outgoing
-- events sent by Amazon Chime. Choose either an HTTPS endpoint or a Lambda
-- function ARN. For more information, see Bot.
module Network.AWS.Chime.PutEventsConfiguration
  ( -- * Creating a Request
    PutEventsConfiguration (..),
    newPutEventsConfiguration,

    -- * Request Lenses
    putEventsConfiguration_lambdaFunctionArn,
    putEventsConfiguration_outboundEventsHTTPSEndpoint,
    putEventsConfiguration_accountId,
    putEventsConfiguration_botId,

    -- * Destructuring the Response
    PutEventsConfigurationResponse (..),
    newPutEventsConfigurationResponse,

    -- * Response Lenses
    putEventsConfigurationResponse_eventsConfiguration,
    putEventsConfigurationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutEventsConfiguration' smart constructor.
data PutEventsConfiguration = PutEventsConfiguration'
  { -- | Lambda function ARN that allows the bot to receive outgoing events.
    lambdaFunctionArn :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | HTTPS endpoint that allows the bot to receive outgoing events.
    outboundEventsHTTPSEndpoint :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The bot ID.
    botId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEventsConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lambdaFunctionArn', 'putEventsConfiguration_lambdaFunctionArn' - Lambda function ARN that allows the bot to receive outgoing events.
--
-- 'outboundEventsHTTPSEndpoint', 'putEventsConfiguration_outboundEventsHTTPSEndpoint' - HTTPS endpoint that allows the bot to receive outgoing events.
--
-- 'accountId', 'putEventsConfiguration_accountId' - The Amazon Chime account ID.
--
-- 'botId', 'putEventsConfiguration_botId' - The bot ID.
newPutEventsConfiguration ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'botId'
  Prelude.Text ->
  PutEventsConfiguration
newPutEventsConfiguration pAccountId_ pBotId_ =
  PutEventsConfiguration'
    { lambdaFunctionArn =
        Prelude.Nothing,
      outboundEventsHTTPSEndpoint = Prelude.Nothing,
      accountId = pAccountId_,
      botId = pBotId_
    }

-- | Lambda function ARN that allows the bot to receive outgoing events.
putEventsConfiguration_lambdaFunctionArn :: Lens.Lens' PutEventsConfiguration (Prelude.Maybe Prelude.Text)
putEventsConfiguration_lambdaFunctionArn = Lens.lens (\PutEventsConfiguration' {lambdaFunctionArn} -> lambdaFunctionArn) (\s@PutEventsConfiguration' {} a -> s {lambdaFunctionArn = a} :: PutEventsConfiguration) Prelude.. Lens.mapping Core._Sensitive

-- | HTTPS endpoint that allows the bot to receive outgoing events.
putEventsConfiguration_outboundEventsHTTPSEndpoint :: Lens.Lens' PutEventsConfiguration (Prelude.Maybe Prelude.Text)
putEventsConfiguration_outboundEventsHTTPSEndpoint = Lens.lens (\PutEventsConfiguration' {outboundEventsHTTPSEndpoint} -> outboundEventsHTTPSEndpoint) (\s@PutEventsConfiguration' {} a -> s {outboundEventsHTTPSEndpoint = a} :: PutEventsConfiguration) Prelude.. Lens.mapping Core._Sensitive

-- | The Amazon Chime account ID.
putEventsConfiguration_accountId :: Lens.Lens' PutEventsConfiguration Prelude.Text
putEventsConfiguration_accountId = Lens.lens (\PutEventsConfiguration' {accountId} -> accountId) (\s@PutEventsConfiguration' {} a -> s {accountId = a} :: PutEventsConfiguration)

-- | The bot ID.
putEventsConfiguration_botId :: Lens.Lens' PutEventsConfiguration Prelude.Text
putEventsConfiguration_botId = Lens.lens (\PutEventsConfiguration' {botId} -> botId) (\s@PutEventsConfiguration' {} a -> s {botId = a} :: PutEventsConfiguration)

instance Core.AWSRequest PutEventsConfiguration where
  type
    AWSResponse PutEventsConfiguration =
      PutEventsConfigurationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutEventsConfigurationResponse'
            Prelude.<$> (x Core..?> "EventsConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutEventsConfiguration

instance Prelude.NFData PutEventsConfiguration

instance Core.ToHeaders PutEventsConfiguration where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON PutEventsConfiguration where
  toJSON PutEventsConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LambdaFunctionArn" Core..=)
              Prelude.<$> lambdaFunctionArn,
            ("OutboundEventsHTTPSEndpoint" Core..=)
              Prelude.<$> outboundEventsHTTPSEndpoint
          ]
      )

instance Core.ToPath PutEventsConfiguration where
  toPath PutEventsConfiguration' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/bots/",
        Core.toBS botId,
        "/events-configuration"
      ]

instance Core.ToQuery PutEventsConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutEventsConfigurationResponse' smart constructor.
data PutEventsConfigurationResponse = PutEventsConfigurationResponse'
  { eventsConfiguration :: Prelude.Maybe EventsConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutEventsConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventsConfiguration', 'putEventsConfigurationResponse_eventsConfiguration' - Undocumented member.
--
-- 'httpStatus', 'putEventsConfigurationResponse_httpStatus' - The response's http status code.
newPutEventsConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutEventsConfigurationResponse
newPutEventsConfigurationResponse pHttpStatus_ =
  PutEventsConfigurationResponse'
    { eventsConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
putEventsConfigurationResponse_eventsConfiguration :: Lens.Lens' PutEventsConfigurationResponse (Prelude.Maybe EventsConfiguration)
putEventsConfigurationResponse_eventsConfiguration = Lens.lens (\PutEventsConfigurationResponse' {eventsConfiguration} -> eventsConfiguration) (\s@PutEventsConfigurationResponse' {} a -> s {eventsConfiguration = a} :: PutEventsConfigurationResponse)

-- | The response's http status code.
putEventsConfigurationResponse_httpStatus :: Lens.Lens' PutEventsConfigurationResponse Prelude.Int
putEventsConfigurationResponse_httpStatus = Lens.lens (\PutEventsConfigurationResponse' {httpStatus} -> httpStatus) (\s@PutEventsConfigurationResponse' {} a -> s {httpStatus = a} :: PutEventsConfigurationResponse)

instance
  Prelude.NFData
    PutEventsConfigurationResponse