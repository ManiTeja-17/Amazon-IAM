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
-- Module      : Network.AWS.Glue.UpdateClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing classifier (a @GrokClassifier@, an @XMLClassifier@,
-- a @JsonClassifier@, or a @CsvClassifier@, depending on which field is
-- present).
module Network.AWS.Glue.UpdateClassifier
  ( -- * Creating a Request
    UpdateClassifier (..),
    newUpdateClassifier,

    -- * Request Lenses
    updateClassifier_xMLClassifier,
    updateClassifier_jsonClassifier,
    updateClassifier_csvClassifier,
    updateClassifier_grokClassifier,

    -- * Destructuring the Response
    UpdateClassifierResponse (..),
    newUpdateClassifierResponse,

    -- * Response Lenses
    updateClassifierResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateClassifier' smart constructor.
data UpdateClassifier = UpdateClassifier'
  { -- | An @XMLClassifier@ object with updated fields.
    xMLClassifier :: Core.Maybe UpdateXMLClassifierRequest,
    -- | A @JsonClassifier@ object with updated fields.
    jsonClassifier :: Core.Maybe UpdateJsonClassifierRequest,
    -- | A @CsvClassifier@ object with updated fields.
    csvClassifier :: Core.Maybe UpdateCsvClassifierRequest,
    -- | A @GrokClassifier@ object with updated fields.
    grokClassifier :: Core.Maybe UpdateGrokClassifierRequest
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateClassifier' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'xMLClassifier', 'updateClassifier_xMLClassifier' - An @XMLClassifier@ object with updated fields.
--
-- 'jsonClassifier', 'updateClassifier_jsonClassifier' - A @JsonClassifier@ object with updated fields.
--
-- 'csvClassifier', 'updateClassifier_csvClassifier' - A @CsvClassifier@ object with updated fields.
--
-- 'grokClassifier', 'updateClassifier_grokClassifier' - A @GrokClassifier@ object with updated fields.
newUpdateClassifier ::
  UpdateClassifier
newUpdateClassifier =
  UpdateClassifier'
    { xMLClassifier = Core.Nothing,
      jsonClassifier = Core.Nothing,
      csvClassifier = Core.Nothing,
      grokClassifier = Core.Nothing
    }

-- | An @XMLClassifier@ object with updated fields.
updateClassifier_xMLClassifier :: Lens.Lens' UpdateClassifier (Core.Maybe UpdateXMLClassifierRequest)
updateClassifier_xMLClassifier = Lens.lens (\UpdateClassifier' {xMLClassifier} -> xMLClassifier) (\s@UpdateClassifier' {} a -> s {xMLClassifier = a} :: UpdateClassifier)

-- | A @JsonClassifier@ object with updated fields.
updateClassifier_jsonClassifier :: Lens.Lens' UpdateClassifier (Core.Maybe UpdateJsonClassifierRequest)
updateClassifier_jsonClassifier = Lens.lens (\UpdateClassifier' {jsonClassifier} -> jsonClassifier) (\s@UpdateClassifier' {} a -> s {jsonClassifier = a} :: UpdateClassifier)

-- | A @CsvClassifier@ object with updated fields.
updateClassifier_csvClassifier :: Lens.Lens' UpdateClassifier (Core.Maybe UpdateCsvClassifierRequest)
updateClassifier_csvClassifier = Lens.lens (\UpdateClassifier' {csvClassifier} -> csvClassifier) (\s@UpdateClassifier' {} a -> s {csvClassifier = a} :: UpdateClassifier)

-- | A @GrokClassifier@ object with updated fields.
updateClassifier_grokClassifier :: Lens.Lens' UpdateClassifier (Core.Maybe UpdateGrokClassifierRequest)
updateClassifier_grokClassifier = Lens.lens (\UpdateClassifier' {grokClassifier} -> grokClassifier) (\s@UpdateClassifier' {} a -> s {grokClassifier = a} :: UpdateClassifier)

instance Core.AWSRequest UpdateClassifier where
  type
    AWSResponse UpdateClassifier =
      UpdateClassifierResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateClassifierResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateClassifier

instance Core.NFData UpdateClassifier

instance Core.ToHeaders UpdateClassifier where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.UpdateClassifier" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateClassifier where
  toJSON UpdateClassifier' {..} =
    Core.object
      ( Core.catMaybes
          [ ("XMLClassifier" Core..=) Core.<$> xMLClassifier,
            ("JsonClassifier" Core..=) Core.<$> jsonClassifier,
            ("CsvClassifier" Core..=) Core.<$> csvClassifier,
            ("GrokClassifier" Core..=) Core.<$> grokClassifier
          ]
      )

instance Core.ToPath UpdateClassifier where
  toPath = Core.const "/"

instance Core.ToQuery UpdateClassifier where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateClassifierResponse' smart constructor.
data UpdateClassifierResponse = UpdateClassifierResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateClassifierResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateClassifierResponse_httpStatus' - The response's http status code.
newUpdateClassifierResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateClassifierResponse
newUpdateClassifierResponse pHttpStatus_ =
  UpdateClassifierResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateClassifierResponse_httpStatus :: Lens.Lens' UpdateClassifierResponse Core.Int
updateClassifierResponse_httpStatus = Lens.lens (\UpdateClassifierResponse' {httpStatus} -> httpStatus) (\s@UpdateClassifierResponse' {} a -> s {httpStatus = a} :: UpdateClassifierResponse)

instance Core.NFData UpdateClassifierResponse
