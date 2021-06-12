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
-- Module      : Network.AWS.Comprehend.DetectPiiEntities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspects the input text for entities that contain personally
-- identifiable information (PII) and returns information about them.
module Network.AWS.Comprehend.DetectPiiEntities
  ( -- * Creating a Request
    DetectPiiEntities (..),
    newDetectPiiEntities,

    -- * Request Lenses
    detectPiiEntities_text,
    detectPiiEntities_languageCode,

    -- * Destructuring the Response
    DetectPiiEntitiesResponse (..),
    newDetectPiiEntitiesResponse,

    -- * Response Lenses
    detectPiiEntitiesResponse_entities,
    detectPiiEntitiesResponse_httpStatus,
  )
where

import Network.AWS.Comprehend.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDetectPiiEntities' smart constructor.
data DetectPiiEntities = DetectPiiEntities'
  { -- | A UTF-8 text string. Each string must contain fewer that 5,000 bytes of
    -- UTF-8 encoded characters.
    text :: Core.Text,
    -- | The language of the input documents.
    languageCode :: LanguageCode
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DetectPiiEntities' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'detectPiiEntities_text' - A UTF-8 text string. Each string must contain fewer that 5,000 bytes of
-- UTF-8 encoded characters.
--
-- 'languageCode', 'detectPiiEntities_languageCode' - The language of the input documents.
newDetectPiiEntities ::
  -- | 'text'
  Core.Text ->
  -- | 'languageCode'
  LanguageCode ->
  DetectPiiEntities
newDetectPiiEntities pText_ pLanguageCode_ =
  DetectPiiEntities'
    { text = pText_,
      languageCode = pLanguageCode_
    }

-- | A UTF-8 text string. Each string must contain fewer that 5,000 bytes of
-- UTF-8 encoded characters.
detectPiiEntities_text :: Lens.Lens' DetectPiiEntities Core.Text
detectPiiEntities_text = Lens.lens (\DetectPiiEntities' {text} -> text) (\s@DetectPiiEntities' {} a -> s {text = a} :: DetectPiiEntities)

-- | The language of the input documents.
detectPiiEntities_languageCode :: Lens.Lens' DetectPiiEntities LanguageCode
detectPiiEntities_languageCode = Lens.lens (\DetectPiiEntities' {languageCode} -> languageCode) (\s@DetectPiiEntities' {} a -> s {languageCode = a} :: DetectPiiEntities)

instance Core.AWSRequest DetectPiiEntities where
  type
    AWSResponse DetectPiiEntities =
      DetectPiiEntitiesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DetectPiiEntitiesResponse'
            Core.<$> (x Core..?> "Entities" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DetectPiiEntities

instance Core.NFData DetectPiiEntities

instance Core.ToHeaders DetectPiiEntities where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Comprehend_20171127.DetectPiiEntities" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DetectPiiEntities where
  toJSON DetectPiiEntities' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("Text" Core..= text),
            Core.Just ("LanguageCode" Core..= languageCode)
          ]
      )

instance Core.ToPath DetectPiiEntities where
  toPath = Core.const "/"

instance Core.ToQuery DetectPiiEntities where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDetectPiiEntitiesResponse' smart constructor.
data DetectPiiEntitiesResponse = DetectPiiEntitiesResponse'
  { -- | A collection of PII entities identified in the input text. For each
    -- entity, the response provides the entity type, where the entity text
    -- begins and ends, and the level of confidence that Amazon Comprehend has
    -- in the detection.
    entities :: Core.Maybe [PiiEntity],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DetectPiiEntitiesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entities', 'detectPiiEntitiesResponse_entities' - A collection of PII entities identified in the input text. For each
-- entity, the response provides the entity type, where the entity text
-- begins and ends, and the level of confidence that Amazon Comprehend has
-- in the detection.
--
-- 'httpStatus', 'detectPiiEntitiesResponse_httpStatus' - The response's http status code.
newDetectPiiEntitiesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DetectPiiEntitiesResponse
newDetectPiiEntitiesResponse pHttpStatus_ =
  DetectPiiEntitiesResponse'
    { entities = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A collection of PII entities identified in the input text. For each
-- entity, the response provides the entity type, where the entity text
-- begins and ends, and the level of confidence that Amazon Comprehend has
-- in the detection.
detectPiiEntitiesResponse_entities :: Lens.Lens' DetectPiiEntitiesResponse (Core.Maybe [PiiEntity])
detectPiiEntitiesResponse_entities = Lens.lens (\DetectPiiEntitiesResponse' {entities} -> entities) (\s@DetectPiiEntitiesResponse' {} a -> s {entities = a} :: DetectPiiEntitiesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
detectPiiEntitiesResponse_httpStatus :: Lens.Lens' DetectPiiEntitiesResponse Core.Int
detectPiiEntitiesResponse_httpStatus = Lens.lens (\DetectPiiEntitiesResponse' {httpStatus} -> httpStatus) (\s@DetectPiiEntitiesResponse' {} a -> s {httpStatus = a} :: DetectPiiEntitiesResponse)

instance Core.NFData DetectPiiEntitiesResponse
