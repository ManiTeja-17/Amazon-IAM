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
-- Module      : Network.AWS.ServiceCatalog.CreateTagOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a TagOption.
module Network.AWS.ServiceCatalog.CreateTagOption
  ( -- * Creating a Request
    CreateTagOption (..),
    newCreateTagOption,

    -- * Request Lenses
    createTagOption_key,
    createTagOption_value,

    -- * Destructuring the Response
    CreateTagOptionResponse (..),
    newCreateTagOptionResponse,

    -- * Response Lenses
    createTagOptionResponse_tagOptionDetail,
    createTagOptionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'newCreateTagOption' smart constructor.
data CreateTagOption = CreateTagOption'
  { -- | The TagOption key.
    key :: Core.Text,
    -- | The TagOption value.
    value :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateTagOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'createTagOption_key' - The TagOption key.
--
-- 'value', 'createTagOption_value' - The TagOption value.
newCreateTagOption ::
  -- | 'key'
  Core.Text ->
  -- | 'value'
  Core.Text ->
  CreateTagOption
newCreateTagOption pKey_ pValue_ =
  CreateTagOption' {key = pKey_, value = pValue_}

-- | The TagOption key.
createTagOption_key :: Lens.Lens' CreateTagOption Core.Text
createTagOption_key = Lens.lens (\CreateTagOption' {key} -> key) (\s@CreateTagOption' {} a -> s {key = a} :: CreateTagOption)

-- | The TagOption value.
createTagOption_value :: Lens.Lens' CreateTagOption Core.Text
createTagOption_value = Lens.lens (\CreateTagOption' {value} -> value) (\s@CreateTagOption' {} a -> s {value = a} :: CreateTagOption)

instance Core.AWSRequest CreateTagOption where
  type
    AWSResponse CreateTagOption =
      CreateTagOptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateTagOptionResponse'
            Core.<$> (x Core..?> "TagOptionDetail")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateTagOption

instance Core.NFData CreateTagOption

instance Core.ToHeaders CreateTagOption where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.CreateTagOption" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateTagOption where
  toJSON CreateTagOption' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Key" Core..= key),
            Core.Just ("Value" Core..= value)
          ]
      )

instance Core.ToPath CreateTagOption where
  toPath = Core.const "/"

instance Core.ToQuery CreateTagOption where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateTagOptionResponse' smart constructor.
data CreateTagOptionResponse = CreateTagOptionResponse'
  { -- | Information about the TagOption.
    tagOptionDetail :: Core.Maybe TagOptionDetail,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateTagOptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagOptionDetail', 'createTagOptionResponse_tagOptionDetail' - Information about the TagOption.
--
-- 'httpStatus', 'createTagOptionResponse_httpStatus' - The response's http status code.
newCreateTagOptionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateTagOptionResponse
newCreateTagOptionResponse pHttpStatus_ =
  CreateTagOptionResponse'
    { tagOptionDetail =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the TagOption.
createTagOptionResponse_tagOptionDetail :: Lens.Lens' CreateTagOptionResponse (Core.Maybe TagOptionDetail)
createTagOptionResponse_tagOptionDetail = Lens.lens (\CreateTagOptionResponse' {tagOptionDetail} -> tagOptionDetail) (\s@CreateTagOptionResponse' {} a -> s {tagOptionDetail = a} :: CreateTagOptionResponse)

-- | The response's http status code.
createTagOptionResponse_httpStatus :: Lens.Lens' CreateTagOptionResponse Core.Int
createTagOptionResponse_httpStatus = Lens.lens (\CreateTagOptionResponse' {httpStatus} -> httpStatus) (\s@CreateTagOptionResponse' {} a -> s {httpStatus = a} :: CreateTagOptionResponse)

instance Core.NFData CreateTagOptionResponse
