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
-- Module      : Network.AWS.IoTWireless.CreateWirelessGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provisions a wireless gateway.
module Network.AWS.IoTWireless.CreateWirelessGateway
  ( -- * Creating a Request
    CreateWirelessGateway (..),
    newCreateWirelessGateway,

    -- * Request Lenses
    createWirelessGateway_name,
    createWirelessGateway_clientRequestToken,
    createWirelessGateway_description,
    createWirelessGateway_tags,
    createWirelessGateway_loRaWAN,

    -- * Destructuring the Response
    CreateWirelessGatewayResponse (..),
    newCreateWirelessGatewayResponse,

    -- * Response Lenses
    createWirelessGatewayResponse_arn,
    createWirelessGatewayResponse_id,
    createWirelessGatewayResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateWirelessGateway' smart constructor.
data CreateWirelessGateway = CreateWirelessGateway'
  { -- | The name of the new resource.
    name :: Prelude.Maybe Prelude.Text,
    -- | Each resource must have a unique client request token. If you try to
    -- create a new resource with the same token as a resource that already
    -- exists, an exception occurs. If you omit this value, AWS SDKs will
    -- automatically generate a unique client request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The description of the new resource.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags to attach to the new wireless gateway. Tags are metadata that
    -- you can use to manage a resource.
    tags :: Prelude.Maybe [Tag],
    -- | The gateway configuration information to use to create the wireless
    -- gateway.
    loRaWAN :: LoRaWANGateway
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWirelessGateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createWirelessGateway_name' - The name of the new resource.
--
-- 'clientRequestToken', 'createWirelessGateway_clientRequestToken' - Each resource must have a unique client request token. If you try to
-- create a new resource with the same token as a resource that already
-- exists, an exception occurs. If you omit this value, AWS SDKs will
-- automatically generate a unique client request.
--
-- 'description', 'createWirelessGateway_description' - The description of the new resource.
--
-- 'tags', 'createWirelessGateway_tags' - The tags to attach to the new wireless gateway. Tags are metadata that
-- you can use to manage a resource.
--
-- 'loRaWAN', 'createWirelessGateway_loRaWAN' - The gateway configuration information to use to create the wireless
-- gateway.
newCreateWirelessGateway ::
  -- | 'loRaWAN'
  LoRaWANGateway ->
  CreateWirelessGateway
newCreateWirelessGateway pLoRaWAN_ =
  CreateWirelessGateway'
    { name = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      loRaWAN = pLoRaWAN_
    }

-- | The name of the new resource.
createWirelessGateway_name :: Lens.Lens' CreateWirelessGateway (Prelude.Maybe Prelude.Text)
createWirelessGateway_name = Lens.lens (\CreateWirelessGateway' {name} -> name) (\s@CreateWirelessGateway' {} a -> s {name = a} :: CreateWirelessGateway)

-- | Each resource must have a unique client request token. If you try to
-- create a new resource with the same token as a resource that already
-- exists, an exception occurs. If you omit this value, AWS SDKs will
-- automatically generate a unique client request.
createWirelessGateway_clientRequestToken :: Lens.Lens' CreateWirelessGateway (Prelude.Maybe Prelude.Text)
createWirelessGateway_clientRequestToken = Lens.lens (\CreateWirelessGateway' {clientRequestToken} -> clientRequestToken) (\s@CreateWirelessGateway' {} a -> s {clientRequestToken = a} :: CreateWirelessGateway)

-- | The description of the new resource.
createWirelessGateway_description :: Lens.Lens' CreateWirelessGateway (Prelude.Maybe Prelude.Text)
createWirelessGateway_description = Lens.lens (\CreateWirelessGateway' {description} -> description) (\s@CreateWirelessGateway' {} a -> s {description = a} :: CreateWirelessGateway)

-- | The tags to attach to the new wireless gateway. Tags are metadata that
-- you can use to manage a resource.
createWirelessGateway_tags :: Lens.Lens' CreateWirelessGateway (Prelude.Maybe [Tag])
createWirelessGateway_tags = Lens.lens (\CreateWirelessGateway' {tags} -> tags) (\s@CreateWirelessGateway' {} a -> s {tags = a} :: CreateWirelessGateway) Prelude.. Lens.mapping Lens.coerced

-- | The gateway configuration information to use to create the wireless
-- gateway.
createWirelessGateway_loRaWAN :: Lens.Lens' CreateWirelessGateway LoRaWANGateway
createWirelessGateway_loRaWAN = Lens.lens (\CreateWirelessGateway' {loRaWAN} -> loRaWAN) (\s@CreateWirelessGateway' {} a -> s {loRaWAN = a} :: CreateWirelessGateway)

instance Core.AWSRequest CreateWirelessGateway where
  type
    AWSResponse CreateWirelessGateway =
      CreateWirelessGatewayResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWirelessGatewayResponse'
            Prelude.<$> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "Id")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWirelessGateway

instance Prelude.NFData CreateWirelessGateway

instance Core.ToHeaders CreateWirelessGateway where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateWirelessGateway where
  toJSON CreateWirelessGateway' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("ClientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("LoRaWAN" Core..= loRaWAN)
          ]
      )

instance Core.ToPath CreateWirelessGateway where
  toPath = Prelude.const "/wireless-gateways"

instance Core.ToQuery CreateWirelessGateway where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWirelessGatewayResponse' smart constructor.
data CreateWirelessGatewayResponse = CreateWirelessGatewayResponse'
  { -- | The Amazon Resource Name of the new resource.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the new wireless gateway.
    id :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWirelessGatewayResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'createWirelessGatewayResponse_arn' - The Amazon Resource Name of the new resource.
--
-- 'id', 'createWirelessGatewayResponse_id' - The ID of the new wireless gateway.
--
-- 'httpStatus', 'createWirelessGatewayResponse_httpStatus' - The response's http status code.
newCreateWirelessGatewayResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWirelessGatewayResponse
newCreateWirelessGatewayResponse pHttpStatus_ =
  CreateWirelessGatewayResponse'
    { arn =
        Prelude.Nothing,
      id = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name of the new resource.
createWirelessGatewayResponse_arn :: Lens.Lens' CreateWirelessGatewayResponse (Prelude.Maybe Prelude.Text)
createWirelessGatewayResponse_arn = Lens.lens (\CreateWirelessGatewayResponse' {arn} -> arn) (\s@CreateWirelessGatewayResponse' {} a -> s {arn = a} :: CreateWirelessGatewayResponse)

-- | The ID of the new wireless gateway.
createWirelessGatewayResponse_id :: Lens.Lens' CreateWirelessGatewayResponse (Prelude.Maybe Prelude.Text)
createWirelessGatewayResponse_id = Lens.lens (\CreateWirelessGatewayResponse' {id} -> id) (\s@CreateWirelessGatewayResponse' {} a -> s {id = a} :: CreateWirelessGatewayResponse)

-- | The response's http status code.
createWirelessGatewayResponse_httpStatus :: Lens.Lens' CreateWirelessGatewayResponse Prelude.Int
createWirelessGatewayResponse_httpStatus = Lens.lens (\CreateWirelessGatewayResponse' {httpStatus} -> httpStatus) (\s@CreateWirelessGatewayResponse' {} a -> s {httpStatus = a} :: CreateWirelessGatewayResponse)

instance Prelude.NFData CreateWirelessGatewayResponse