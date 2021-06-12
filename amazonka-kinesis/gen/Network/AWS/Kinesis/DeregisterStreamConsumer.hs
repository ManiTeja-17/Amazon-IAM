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
-- Module      : Network.AWS.Kinesis.DeregisterStreamConsumer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- To deregister a consumer, provide its ARN. Alternatively, you can
-- provide the ARN of the data stream and the name you gave the consumer
-- when you registered it. You may also provide all three parameters, as
-- long as they don\'t conflict with each other. If you don\'t know the
-- name or ARN of the consumer that you want to deregister, you can use the
-- ListStreamConsumers operation to get a list of the descriptions of all
-- the consumers that are currently registered with a given data stream.
-- The description of a consumer contains its name and ARN.
--
-- This operation has a limit of five transactions per second per stream.
module Network.AWS.Kinesis.DeregisterStreamConsumer
  ( -- * Creating a Request
    DeregisterStreamConsumer (..),
    newDeregisterStreamConsumer,

    -- * Request Lenses
    deregisterStreamConsumer_streamARN,
    deregisterStreamConsumer_consumerName,
    deregisterStreamConsumer_consumerARN,

    -- * Destructuring the Response
    DeregisterStreamConsumerResponse (..),
    newDeregisterStreamConsumerResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kinesis.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeregisterStreamConsumer' smart constructor.
data DeregisterStreamConsumer = DeregisterStreamConsumer'
  { -- | The ARN of the Kinesis data stream that the consumer is registered with.
    -- For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
    streamARN :: Core.Maybe Core.Text,
    -- | The name that you gave to the consumer.
    consumerName :: Core.Maybe Core.Text,
    -- | The ARN returned by Kinesis Data Streams when you registered the
    -- consumer. If you don\'t know the ARN of the consumer that you want to
    -- deregister, you can use the ListStreamConsumers operation to get a list
    -- of the descriptions of all the consumers that are currently registered
    -- with a given data stream. The description of a consumer contains its
    -- ARN.
    consumerARN :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeregisterStreamConsumer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamARN', 'deregisterStreamConsumer_streamARN' - The ARN of the Kinesis data stream that the consumer is registered with.
-- For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
--
-- 'consumerName', 'deregisterStreamConsumer_consumerName' - The name that you gave to the consumer.
--
-- 'consumerARN', 'deregisterStreamConsumer_consumerARN' - The ARN returned by Kinesis Data Streams when you registered the
-- consumer. If you don\'t know the ARN of the consumer that you want to
-- deregister, you can use the ListStreamConsumers operation to get a list
-- of the descriptions of all the consumers that are currently registered
-- with a given data stream. The description of a consumer contains its
-- ARN.
newDeregisterStreamConsumer ::
  DeregisterStreamConsumer
newDeregisterStreamConsumer =
  DeregisterStreamConsumer'
    { streamARN = Core.Nothing,
      consumerName = Core.Nothing,
      consumerARN = Core.Nothing
    }

-- | The ARN of the Kinesis data stream that the consumer is registered with.
-- For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
deregisterStreamConsumer_streamARN :: Lens.Lens' DeregisterStreamConsumer (Core.Maybe Core.Text)
deregisterStreamConsumer_streamARN = Lens.lens (\DeregisterStreamConsumer' {streamARN} -> streamARN) (\s@DeregisterStreamConsumer' {} a -> s {streamARN = a} :: DeregisterStreamConsumer)

-- | The name that you gave to the consumer.
deregisterStreamConsumer_consumerName :: Lens.Lens' DeregisterStreamConsumer (Core.Maybe Core.Text)
deregisterStreamConsumer_consumerName = Lens.lens (\DeregisterStreamConsumer' {consumerName} -> consumerName) (\s@DeregisterStreamConsumer' {} a -> s {consumerName = a} :: DeregisterStreamConsumer)

-- | The ARN returned by Kinesis Data Streams when you registered the
-- consumer. If you don\'t know the ARN of the consumer that you want to
-- deregister, you can use the ListStreamConsumers operation to get a list
-- of the descriptions of all the consumers that are currently registered
-- with a given data stream. The description of a consumer contains its
-- ARN.
deregisterStreamConsumer_consumerARN :: Lens.Lens' DeregisterStreamConsumer (Core.Maybe Core.Text)
deregisterStreamConsumer_consumerARN = Lens.lens (\DeregisterStreamConsumer' {consumerARN} -> consumerARN) (\s@DeregisterStreamConsumer' {} a -> s {consumerARN = a} :: DeregisterStreamConsumer)

instance Core.AWSRequest DeregisterStreamConsumer where
  type
    AWSResponse DeregisterStreamConsumer =
      DeregisterStreamConsumerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DeregisterStreamConsumerResponse'

instance Core.Hashable DeregisterStreamConsumer

instance Core.NFData DeregisterStreamConsumer

instance Core.ToHeaders DeregisterStreamConsumer where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Kinesis_20131202.DeregisterStreamConsumer" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeregisterStreamConsumer where
  toJSON DeregisterStreamConsumer' {..} =
    Core.object
      ( Core.catMaybes
          [ ("StreamARN" Core..=) Core.<$> streamARN,
            ("ConsumerName" Core..=) Core.<$> consumerName,
            ("ConsumerARN" Core..=) Core.<$> consumerARN
          ]
      )

instance Core.ToPath DeregisterStreamConsumer where
  toPath = Core.const "/"

instance Core.ToQuery DeregisterStreamConsumer where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeregisterStreamConsumerResponse' smart constructor.
data DeregisterStreamConsumerResponse = DeregisterStreamConsumerResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeregisterStreamConsumerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeregisterStreamConsumerResponse ::
  DeregisterStreamConsumerResponse
newDeregisterStreamConsumerResponse =
  DeregisterStreamConsumerResponse'

instance Core.NFData DeregisterStreamConsumerResponse
