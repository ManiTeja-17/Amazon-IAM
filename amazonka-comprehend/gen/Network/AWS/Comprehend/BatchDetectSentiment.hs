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
-- Module      : Network.AWS.Comprehend.BatchDetectSentiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspects a batch of documents and returns an inference of the prevailing
-- sentiment, @POSITIVE@, @NEUTRAL@, @MIXED@, or @NEGATIVE@, in each one.
module Network.AWS.Comprehend.BatchDetectSentiment
  ( -- * Creating a Request
    BatchDetectSentiment (..),
    newBatchDetectSentiment,

    -- * Request Lenses
    batchDetectSentiment_textList,
    batchDetectSentiment_languageCode,

    -- * Destructuring the Response
    BatchDetectSentimentResponse (..),
    newBatchDetectSentimentResponse,

    -- * Response Lenses
    batchDetectSentimentResponse_httpStatus,
    batchDetectSentimentResponse_resultList,
    batchDetectSentimentResponse_errorList,
  )
where

import Network.AWS.Comprehend.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchDetectSentiment' smart constructor.
data BatchDetectSentiment = BatchDetectSentiment'
  { -- | A list containing the text of the input documents. The list can contain
    -- a maximum of 25 documents. Each document must contain fewer that 5,000
    -- bytes of UTF-8 encoded characters.
    textList :: Core.Sensitive [Core.Sensitive Core.Text],
    -- | The language of the input documents. You can specify any of the primary
    -- languages supported by Amazon Comprehend. All documents must be in the
    -- same language.
    languageCode :: LanguageCode
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchDetectSentiment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textList', 'batchDetectSentiment_textList' - A list containing the text of the input documents. The list can contain
-- a maximum of 25 documents. Each document must contain fewer that 5,000
-- bytes of UTF-8 encoded characters.
--
-- 'languageCode', 'batchDetectSentiment_languageCode' - The language of the input documents. You can specify any of the primary
-- languages supported by Amazon Comprehend. All documents must be in the
-- same language.
newBatchDetectSentiment ::
  -- | 'languageCode'
  LanguageCode ->
  BatchDetectSentiment
newBatchDetectSentiment pLanguageCode_ =
  BatchDetectSentiment'
    { textList = Core.mempty,
      languageCode = pLanguageCode_
    }

-- | A list containing the text of the input documents. The list can contain
-- a maximum of 25 documents. Each document must contain fewer that 5,000
-- bytes of UTF-8 encoded characters.
batchDetectSentiment_textList :: Lens.Lens' BatchDetectSentiment [Core.Text]
batchDetectSentiment_textList = Lens.lens (\BatchDetectSentiment' {textList} -> textList) (\s@BatchDetectSentiment' {} a -> s {textList = a} :: BatchDetectSentiment) Core.. Core._Sensitive Core.. Lens._Coerce

-- | The language of the input documents. You can specify any of the primary
-- languages supported by Amazon Comprehend. All documents must be in the
-- same language.
batchDetectSentiment_languageCode :: Lens.Lens' BatchDetectSentiment LanguageCode
batchDetectSentiment_languageCode = Lens.lens (\BatchDetectSentiment' {languageCode} -> languageCode) (\s@BatchDetectSentiment' {} a -> s {languageCode = a} :: BatchDetectSentiment)

instance Core.AWSRequest BatchDetectSentiment where
  type
    AWSResponse BatchDetectSentiment =
      BatchDetectSentimentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDetectSentimentResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..?> "ResultList" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "ErrorList" Core..!@ Core.mempty)
      )

instance Core.Hashable BatchDetectSentiment

instance Core.NFData BatchDetectSentiment

instance Core.ToHeaders BatchDetectSentiment where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Comprehend_20171127.BatchDetectSentiment" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON BatchDetectSentiment where
  toJSON BatchDetectSentiment' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("TextList" Core..= textList),
            Core.Just ("LanguageCode" Core..= languageCode)
          ]
      )

instance Core.ToPath BatchDetectSentiment where
  toPath = Core.const "/"

instance Core.ToQuery BatchDetectSentiment where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newBatchDetectSentimentResponse' smart constructor.
data BatchDetectSentimentResponse = BatchDetectSentimentResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | A list of objects containing the results of the operation. The results
    -- are sorted in ascending order by the @Index@ field and match the order
    -- of the documents in the input list. If all of the documents contain an
    -- error, the @ResultList@ is empty.
    resultList :: [BatchDetectSentimentItemResult],
    -- | A list containing one object for each document that contained an error.
    -- The results are sorted in ascending order by the @Index@ field and match
    -- the order of the documents in the input list. If there are no errors in
    -- the batch, the @ErrorList@ is empty.
    errorList :: [BatchItemError]
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'BatchDetectSentimentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'batchDetectSentimentResponse_httpStatus' - The response's http status code.
--
-- 'resultList', 'batchDetectSentimentResponse_resultList' - A list of objects containing the results of the operation. The results
-- are sorted in ascending order by the @Index@ field and match the order
-- of the documents in the input list. If all of the documents contain an
-- error, the @ResultList@ is empty.
--
-- 'errorList', 'batchDetectSentimentResponse_errorList' - A list containing one object for each document that contained an error.
-- The results are sorted in ascending order by the @Index@ field and match
-- the order of the documents in the input list. If there are no errors in
-- the batch, the @ErrorList@ is empty.
newBatchDetectSentimentResponse ::
  -- | 'httpStatus'
  Core.Int ->
  BatchDetectSentimentResponse
newBatchDetectSentimentResponse pHttpStatus_ =
  BatchDetectSentimentResponse'
    { httpStatus =
        pHttpStatus_,
      resultList = Core.mempty,
      errorList = Core.mempty
    }

-- | The response's http status code.
batchDetectSentimentResponse_httpStatus :: Lens.Lens' BatchDetectSentimentResponse Core.Int
batchDetectSentimentResponse_httpStatus = Lens.lens (\BatchDetectSentimentResponse' {httpStatus} -> httpStatus) (\s@BatchDetectSentimentResponse' {} a -> s {httpStatus = a} :: BatchDetectSentimentResponse)

-- | A list of objects containing the results of the operation. The results
-- are sorted in ascending order by the @Index@ field and match the order
-- of the documents in the input list. If all of the documents contain an
-- error, the @ResultList@ is empty.
batchDetectSentimentResponse_resultList :: Lens.Lens' BatchDetectSentimentResponse [BatchDetectSentimentItemResult]
batchDetectSentimentResponse_resultList = Lens.lens (\BatchDetectSentimentResponse' {resultList} -> resultList) (\s@BatchDetectSentimentResponse' {} a -> s {resultList = a} :: BatchDetectSentimentResponse) Core.. Lens._Coerce

-- | A list containing one object for each document that contained an error.
-- The results are sorted in ascending order by the @Index@ field and match
-- the order of the documents in the input list. If there are no errors in
-- the batch, the @ErrorList@ is empty.
batchDetectSentimentResponse_errorList :: Lens.Lens' BatchDetectSentimentResponse [BatchItemError]
batchDetectSentimentResponse_errorList = Lens.lens (\BatchDetectSentimentResponse' {errorList} -> errorList) (\s@BatchDetectSentimentResponse' {} a -> s {errorList = a} :: BatchDetectSentimentResponse) Core.. Lens._Coerce

instance Core.NFData BatchDetectSentimentResponse
