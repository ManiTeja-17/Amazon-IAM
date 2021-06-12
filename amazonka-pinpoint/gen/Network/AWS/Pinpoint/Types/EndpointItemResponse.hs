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
-- Module      : Network.AWS.Pinpoint.Types.EndpointItemResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EndpointItemResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Provides the status code and message that result from processing data
-- for an endpoint.
--
-- /See:/ 'newEndpointItemResponse' smart constructor.
data EndpointItemResponse = EndpointItemResponse'
  { -- | The custom message that\'s returned in the response as a result of
    -- processing the endpoint data.
    message :: Core.Maybe Core.Text,
    -- | The status code that\'s returned in the response as a result of
    -- processing the endpoint data.
    statusCode :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EndpointItemResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'endpointItemResponse_message' - The custom message that\'s returned in the response as a result of
-- processing the endpoint data.
--
-- 'statusCode', 'endpointItemResponse_statusCode' - The status code that\'s returned in the response as a result of
-- processing the endpoint data.
newEndpointItemResponse ::
  EndpointItemResponse
newEndpointItemResponse =
  EndpointItemResponse'
    { message = Core.Nothing,
      statusCode = Core.Nothing
    }

-- | The custom message that\'s returned in the response as a result of
-- processing the endpoint data.
endpointItemResponse_message :: Lens.Lens' EndpointItemResponse (Core.Maybe Core.Text)
endpointItemResponse_message = Lens.lens (\EndpointItemResponse' {message} -> message) (\s@EndpointItemResponse' {} a -> s {message = a} :: EndpointItemResponse)

-- | The status code that\'s returned in the response as a result of
-- processing the endpoint data.
endpointItemResponse_statusCode :: Lens.Lens' EndpointItemResponse (Core.Maybe Core.Int)
endpointItemResponse_statusCode = Lens.lens (\EndpointItemResponse' {statusCode} -> statusCode) (\s@EndpointItemResponse' {} a -> s {statusCode = a} :: EndpointItemResponse)

instance Core.FromJSON EndpointItemResponse where
  parseJSON =
    Core.withObject
      "EndpointItemResponse"
      ( \x ->
          EndpointItemResponse'
            Core.<$> (x Core..:? "Message")
            Core.<*> (x Core..:? "StatusCode")
      )

instance Core.Hashable EndpointItemResponse

instance Core.NFData EndpointItemResponse
