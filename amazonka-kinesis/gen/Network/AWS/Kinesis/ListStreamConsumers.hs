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
-- Module      : Network.AWS.Kinesis.ListStreamConsumers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the consumers registered to receive data from a stream using
-- enhanced fan-out, and provides information about each consumer.
--
-- This operation has a limit of 5 transactions per second per stream.
--
-- This operation returns paginated results.
module Network.AWS.Kinesis.ListStreamConsumers
  ( -- * Creating a Request
    ListStreamConsumers (..),
    newListStreamConsumers,

    -- * Request Lenses
    listStreamConsumers_nextToken,
    listStreamConsumers_maxResults,
    listStreamConsumers_streamCreationTimestamp,
    listStreamConsumers_streamARN,

    -- * Destructuring the Response
    ListStreamConsumersResponse (..),
    newListStreamConsumersResponse,

    -- * Response Lenses
    listStreamConsumersResponse_nextToken,
    listStreamConsumersResponse_consumers,
    listStreamConsumersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kinesis.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListStreamConsumers' smart constructor.
data ListStreamConsumers = ListStreamConsumers'
  { -- | When the number of consumers that are registered with the data stream is
    -- greater than the default value for the @MaxResults@ parameter, or if you
    -- explicitly specify a value for @MaxResults@ that is less than the number
    -- of consumers that are registered with the data stream, the response
    -- includes a pagination token named @NextToken@. You can specify this
    -- @NextToken@ value in a subsequent call to @ListStreamConsumers@ to list
    -- the next set of registered consumers.
    --
    -- Don\'t specify @StreamName@ or @StreamCreationTimestamp@ if you specify
    -- @NextToken@ because the latter unambiguously identifies the stream.
    --
    -- You can optionally specify a value for the @MaxResults@ parameter when
    -- you specify @NextToken@. If you specify a @MaxResults@ value that is
    -- less than the number of consumers that the operation returns if you
    -- don\'t specify @MaxResults@, the response will contain a new @NextToken@
    -- value. You can use the new @NextToken@ value in a subsequent call to the
    -- @ListStreamConsumers@ operation to list the next set of consumers.
    --
    -- Tokens expire after 300 seconds. When you obtain a value for @NextToken@
    -- in the response to a call to @ListStreamConsumers@, you have 300 seconds
    -- to use that value. If you specify an expired token in a call to
    -- @ListStreamConsumers@, you get @ExpiredNextTokenException@.
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of consumers that you want a single call of
    -- @ListStreamConsumers@ to return.
    maxResults :: Core.Maybe Core.Natural,
    -- | Specify this input parameter to distinguish data streams that have the
    -- same name. For example, if you create a data stream and then delete it,
    -- and you later create another data stream with the same name, you can use
    -- this input parameter to specify which of the two streams you want to
    -- list the consumers for.
    --
    -- You can\'t specify this parameter if you specify the NextToken
    -- parameter.
    streamCreationTimestamp :: Core.Maybe Core.POSIX,
    -- | The ARN of the Kinesis data stream for which you want to list the
    -- registered consumers. For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
    streamARN :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListStreamConsumers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStreamConsumers_nextToken' - When the number of consumers that are registered with the data stream is
-- greater than the default value for the @MaxResults@ parameter, or if you
-- explicitly specify a value for @MaxResults@ that is less than the number
-- of consumers that are registered with the data stream, the response
-- includes a pagination token named @NextToken@. You can specify this
-- @NextToken@ value in a subsequent call to @ListStreamConsumers@ to list
-- the next set of registered consumers.
--
-- Don\'t specify @StreamName@ or @StreamCreationTimestamp@ if you specify
-- @NextToken@ because the latter unambiguously identifies the stream.
--
-- You can optionally specify a value for the @MaxResults@ parameter when
-- you specify @NextToken@. If you specify a @MaxResults@ value that is
-- less than the number of consumers that the operation returns if you
-- don\'t specify @MaxResults@, the response will contain a new @NextToken@
-- value. You can use the new @NextToken@ value in a subsequent call to the
-- @ListStreamConsumers@ operation to list the next set of consumers.
--
-- Tokens expire after 300 seconds. When you obtain a value for @NextToken@
-- in the response to a call to @ListStreamConsumers@, you have 300 seconds
-- to use that value. If you specify an expired token in a call to
-- @ListStreamConsumers@, you get @ExpiredNextTokenException@.
--
-- 'maxResults', 'listStreamConsumers_maxResults' - The maximum number of consumers that you want a single call of
-- @ListStreamConsumers@ to return.
--
-- 'streamCreationTimestamp', 'listStreamConsumers_streamCreationTimestamp' - Specify this input parameter to distinguish data streams that have the
-- same name. For example, if you create a data stream and then delete it,
-- and you later create another data stream with the same name, you can use
-- this input parameter to specify which of the two streams you want to
-- list the consumers for.
--
-- You can\'t specify this parameter if you specify the NextToken
-- parameter.
--
-- 'streamARN', 'listStreamConsumers_streamARN' - The ARN of the Kinesis data stream for which you want to list the
-- registered consumers. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
newListStreamConsumers ::
  -- | 'streamARN'
  Core.Text ->
  ListStreamConsumers
newListStreamConsumers pStreamARN_ =
  ListStreamConsumers'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      streamCreationTimestamp = Core.Nothing,
      streamARN = pStreamARN_
    }

-- | When the number of consumers that are registered with the data stream is
-- greater than the default value for the @MaxResults@ parameter, or if you
-- explicitly specify a value for @MaxResults@ that is less than the number
-- of consumers that are registered with the data stream, the response
-- includes a pagination token named @NextToken@. You can specify this
-- @NextToken@ value in a subsequent call to @ListStreamConsumers@ to list
-- the next set of registered consumers.
--
-- Don\'t specify @StreamName@ or @StreamCreationTimestamp@ if you specify
-- @NextToken@ because the latter unambiguously identifies the stream.
--
-- You can optionally specify a value for the @MaxResults@ parameter when
-- you specify @NextToken@. If you specify a @MaxResults@ value that is
-- less than the number of consumers that the operation returns if you
-- don\'t specify @MaxResults@, the response will contain a new @NextToken@
-- value. You can use the new @NextToken@ value in a subsequent call to the
-- @ListStreamConsumers@ operation to list the next set of consumers.
--
-- Tokens expire after 300 seconds. When you obtain a value for @NextToken@
-- in the response to a call to @ListStreamConsumers@, you have 300 seconds
-- to use that value. If you specify an expired token in a call to
-- @ListStreamConsumers@, you get @ExpiredNextTokenException@.
listStreamConsumers_nextToken :: Lens.Lens' ListStreamConsumers (Core.Maybe Core.Text)
listStreamConsumers_nextToken = Lens.lens (\ListStreamConsumers' {nextToken} -> nextToken) (\s@ListStreamConsumers' {} a -> s {nextToken = a} :: ListStreamConsumers)

-- | The maximum number of consumers that you want a single call of
-- @ListStreamConsumers@ to return.
listStreamConsumers_maxResults :: Lens.Lens' ListStreamConsumers (Core.Maybe Core.Natural)
listStreamConsumers_maxResults = Lens.lens (\ListStreamConsumers' {maxResults} -> maxResults) (\s@ListStreamConsumers' {} a -> s {maxResults = a} :: ListStreamConsumers)

-- | Specify this input parameter to distinguish data streams that have the
-- same name. For example, if you create a data stream and then delete it,
-- and you later create another data stream with the same name, you can use
-- this input parameter to specify which of the two streams you want to
-- list the consumers for.
--
-- You can\'t specify this parameter if you specify the NextToken
-- parameter.
listStreamConsumers_streamCreationTimestamp :: Lens.Lens' ListStreamConsumers (Core.Maybe Core.UTCTime)
listStreamConsumers_streamCreationTimestamp = Lens.lens (\ListStreamConsumers' {streamCreationTimestamp} -> streamCreationTimestamp) (\s@ListStreamConsumers' {} a -> s {streamCreationTimestamp = a} :: ListStreamConsumers) Core.. Lens.mapping Core._Time

-- | The ARN of the Kinesis data stream for which you want to list the
-- registered consumers. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
listStreamConsumers_streamARN :: Lens.Lens' ListStreamConsumers Core.Text
listStreamConsumers_streamARN = Lens.lens (\ListStreamConsumers' {streamARN} -> streamARN) (\s@ListStreamConsumers' {} a -> s {streamARN = a} :: ListStreamConsumers)

instance Core.AWSPager ListStreamConsumers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listStreamConsumersResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? listStreamConsumersResponse_consumers
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& listStreamConsumers_nextToken
          Lens..~ rs
          Lens.^? listStreamConsumersResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest ListStreamConsumers where
  type
    AWSResponse ListStreamConsumers =
      ListStreamConsumersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListStreamConsumersResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "Consumers" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable ListStreamConsumers

instance Core.NFData ListStreamConsumers

instance Core.ToHeaders ListStreamConsumers where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Kinesis_20131202.ListStreamConsumers" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON ListStreamConsumers where
  toJSON ListStreamConsumers' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("StreamCreationTimestamp" Core..=)
              Core.<$> streamCreationTimestamp,
            Core.Just ("StreamARN" Core..= streamARN)
          ]
      )

instance Core.ToPath ListStreamConsumers where
  toPath = Core.const "/"

instance Core.ToQuery ListStreamConsumers where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newListStreamConsumersResponse' smart constructor.
data ListStreamConsumersResponse = ListStreamConsumersResponse'
  { -- | When the number of consumers that are registered with the data stream is
    -- greater than the default value for the @MaxResults@ parameter, or if you
    -- explicitly specify a value for @MaxResults@ that is less than the number
    -- of registered consumers, the response includes a pagination token named
    -- @NextToken@. You can specify this @NextToken@ value in a subsequent call
    -- to @ListStreamConsumers@ to list the next set of registered consumers.
    -- For more information about the use of this pagination token when calling
    -- the @ListStreamConsumers@ operation, see
    -- ListStreamConsumersInput$NextToken.
    --
    -- Tokens expire after 300 seconds. When you obtain a value for @NextToken@
    -- in the response to a call to @ListStreamConsumers@, you have 300 seconds
    -- to use that value. If you specify an expired token in a call to
    -- @ListStreamConsumers@, you get @ExpiredNextTokenException@.
    nextToken :: Core.Maybe Core.Text,
    -- | An array of JSON objects. Each object represents one registered
    -- consumer.
    consumers :: Core.Maybe [Consumer],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ListStreamConsumersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStreamConsumersResponse_nextToken' - When the number of consumers that are registered with the data stream is
-- greater than the default value for the @MaxResults@ parameter, or if you
-- explicitly specify a value for @MaxResults@ that is less than the number
-- of registered consumers, the response includes a pagination token named
-- @NextToken@. You can specify this @NextToken@ value in a subsequent call
-- to @ListStreamConsumers@ to list the next set of registered consumers.
-- For more information about the use of this pagination token when calling
-- the @ListStreamConsumers@ operation, see
-- ListStreamConsumersInput$NextToken.
--
-- Tokens expire after 300 seconds. When you obtain a value for @NextToken@
-- in the response to a call to @ListStreamConsumers@, you have 300 seconds
-- to use that value. If you specify an expired token in a call to
-- @ListStreamConsumers@, you get @ExpiredNextTokenException@.
--
-- 'consumers', 'listStreamConsumersResponse_consumers' - An array of JSON objects. Each object represents one registered
-- consumer.
--
-- 'httpStatus', 'listStreamConsumersResponse_httpStatus' - The response's http status code.
newListStreamConsumersResponse ::
  -- | 'httpStatus'
  Core.Int ->
  ListStreamConsumersResponse
newListStreamConsumersResponse pHttpStatus_ =
  ListStreamConsumersResponse'
    { nextToken =
        Core.Nothing,
      consumers = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | When the number of consumers that are registered with the data stream is
-- greater than the default value for the @MaxResults@ parameter, or if you
-- explicitly specify a value for @MaxResults@ that is less than the number
-- of registered consumers, the response includes a pagination token named
-- @NextToken@. You can specify this @NextToken@ value in a subsequent call
-- to @ListStreamConsumers@ to list the next set of registered consumers.
-- For more information about the use of this pagination token when calling
-- the @ListStreamConsumers@ operation, see
-- ListStreamConsumersInput$NextToken.
--
-- Tokens expire after 300 seconds. When you obtain a value for @NextToken@
-- in the response to a call to @ListStreamConsumers@, you have 300 seconds
-- to use that value. If you specify an expired token in a call to
-- @ListStreamConsumers@, you get @ExpiredNextTokenException@.
listStreamConsumersResponse_nextToken :: Lens.Lens' ListStreamConsumersResponse (Core.Maybe Core.Text)
listStreamConsumersResponse_nextToken = Lens.lens (\ListStreamConsumersResponse' {nextToken} -> nextToken) (\s@ListStreamConsumersResponse' {} a -> s {nextToken = a} :: ListStreamConsumersResponse)

-- | An array of JSON objects. Each object represents one registered
-- consumer.
listStreamConsumersResponse_consumers :: Lens.Lens' ListStreamConsumersResponse (Core.Maybe [Consumer])
listStreamConsumersResponse_consumers = Lens.lens (\ListStreamConsumersResponse' {consumers} -> consumers) (\s@ListStreamConsumersResponse' {} a -> s {consumers = a} :: ListStreamConsumersResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
listStreamConsumersResponse_httpStatus :: Lens.Lens' ListStreamConsumersResponse Core.Int
listStreamConsumersResponse_httpStatus = Lens.lens (\ListStreamConsumersResponse' {httpStatus} -> httpStatus) (\s@ListStreamConsumersResponse' {} a -> s {httpStatus = a} :: ListStreamConsumersResponse)

instance Core.NFData ListStreamConsumersResponse
