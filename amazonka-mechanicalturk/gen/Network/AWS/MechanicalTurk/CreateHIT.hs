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
-- Module      : Network.AWS.MechanicalTurk.CreateHIT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @CreateHIT@ operation creates a new Human Intelligence Task (HIT).
-- The new HIT is made available for Workers to find and accept on the
-- Amazon Mechanical Turk website.
--
-- This operation allows you to specify a new HIT by passing in values for
-- the properties of the HIT, such as its title, reward amount and number
-- of assignments. When you pass these values to @CreateHIT@, a new HIT is
-- created for you, with a new @HITTypeID@. The HITTypeID can be used to
-- create additional HITs in the future without needing to specify common
-- parameters such as the title, description and reward amount each time.
--
-- An alternative way to create HITs is to first generate a HITTypeID using
-- the @CreateHITType@ operation and then call the @CreateHITWithHITType@
-- operation. This is the recommended best practice for Requesters who are
-- creating large numbers of HITs.
--
-- CreateHIT also supports several ways to provide question data: by
-- providing a value for the @Question@ parameter that fully specifies the
-- contents of the HIT, or by providing a @HitLayoutId@ and associated
-- @HitLayoutParameters@.
--
-- If a HIT is created with 10 or more maximum assignments, there is an
-- additional fee. For more information, see
-- <https://requester.mturk.com/pricing Amazon Mechanical Turk Pricing>.
module Network.AWS.MechanicalTurk.CreateHIT
  ( -- * Creating a Request
    CreateHIT (..),
    newCreateHIT,

    -- * Request Lenses
    createHIT_uniqueRequestToken,
    createHIT_autoApprovalDelayInSeconds,
    createHIT_question,
    createHIT_hITLayoutId,
    createHIT_hITReviewPolicy,
    createHIT_maxAssignments,
    createHIT_requesterAnnotation,
    createHIT_assignmentReviewPolicy,
    createHIT_hITLayoutParameters,
    createHIT_qualificationRequirements,
    createHIT_keywords,
    createHIT_lifetimeInSeconds,
    createHIT_assignmentDurationInSeconds,
    createHIT_reward,
    createHIT_title,
    createHIT_description,

    -- * Destructuring the Response
    CreateHITResponse (..),
    newCreateHITResponse,

    -- * Response Lenses
    createHITResponse_hit,
    createHITResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MechanicalTurk.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateHIT' smart constructor.
data CreateHIT = CreateHIT'
  { -- | A unique identifier for this request which allows you to retry the call
    -- on error without creating duplicate HITs. This is useful in cases such
    -- as network timeouts where it is unclear whether or not the call
    -- succeeded on the server. If the HIT already exists in the system from a
    -- previous call using the same UniqueRequestToken, subsequent calls will
    -- return a AWS.MechanicalTurk.HitAlreadyExists error with a message
    -- containing the HITId.
    --
    -- Note: It is your responsibility to ensure uniqueness of the token. The
    -- unique token expires after 24 hours. Subsequent calls using the same
    -- UniqueRequestToken made after the 24 hour limit could create duplicate
    -- HITs.
    uniqueRequestToken :: Core.Maybe Core.Text,
    -- | The number of seconds after an assignment for the HIT has been
    -- submitted, after which the assignment is considered Approved
    -- automatically unless the Requester explicitly rejects it.
    autoApprovalDelayInSeconds :: Core.Maybe Core.Integer,
    -- | The data the person completing the HIT uses to produce the results.
    --
    -- Constraints: Must be a QuestionForm data structure, an ExternalQuestion
    -- data structure, or an HTMLQuestion data structure. The XML question data
    -- must not be larger than 64 kilobytes (65,535 bytes) in size, including
    -- whitespace.
    --
    -- Either a Question parameter or a HITLayoutId parameter must be provided.
    question :: Core.Maybe Core.Text,
    -- | The HITLayoutId allows you to use a pre-existing HIT design with
    -- placeholder values and create an additional HIT by providing those
    -- values as HITLayoutParameters.
    --
    -- Constraints: Either a Question parameter or a HITLayoutId parameter must
    -- be provided.
    hITLayoutId :: Core.Maybe Core.Text,
    -- | The HIT-level Review Policy applies to the HIT. You can specify for
    -- Mechanical Turk to take various actions based on the policy.
    hITReviewPolicy :: Core.Maybe ReviewPolicy,
    -- | The number of times the HIT can be accepted and completed before the HIT
    -- becomes unavailable.
    maxAssignments :: Core.Maybe Core.Int,
    -- | An arbitrary data field. The RequesterAnnotation parameter lets your
    -- application attach arbitrary data to the HIT for tracking purposes. For
    -- example, this parameter could be an identifier internal to the
    -- Requester\'s application that corresponds with the HIT.
    --
    -- The RequesterAnnotation parameter for a HIT is only visible to the
    -- Requester who created the HIT. It is not shown to the Worker, or any
    -- other Requester.
    --
    -- The RequesterAnnotation parameter may be different for each HIT you
    -- submit. It does not affect how your HITs are grouped.
    requesterAnnotation :: Core.Maybe Core.Text,
    -- | The Assignment-level Review Policy applies to the assignments under the
    -- HIT. You can specify for Mechanical Turk to take various actions based
    -- on the policy.
    assignmentReviewPolicy :: Core.Maybe ReviewPolicy,
    -- | If the HITLayoutId is provided, any placeholder values must be filled in
    -- with values using the HITLayoutParameter structure. For more
    -- information, see HITLayout.
    hITLayoutParameters :: Core.Maybe [HITLayoutParameter],
    -- | Conditions that a Worker\'s Qualifications must meet in order to accept
    -- the HIT. A HIT can have between zero and ten Qualification requirements.
    -- All requirements must be met in order for a Worker to accept the HIT.
    -- Additionally, other actions can be restricted using the @ActionsGuarded@
    -- field on each @QualificationRequirement@ structure.
    qualificationRequirements :: Core.Maybe [QualificationRequirement],
    -- | One or more words or phrases that describe the HIT, separated by commas.
    -- These words are used in searches to find HITs.
    keywords :: Core.Maybe Core.Text,
    -- | An amount of time, in seconds, after which the HIT is no longer
    -- available for users to accept. After the lifetime of the HIT elapses,
    -- the HIT no longer appears in HIT searches, even if not all of the
    -- assignments for the HIT have been accepted.
    lifetimeInSeconds :: Core.Integer,
    -- | The amount of time, in seconds, that a Worker has to complete the HIT
    -- after accepting it. If a Worker does not complete the assignment within
    -- the specified duration, the assignment is considered abandoned. If the
    -- HIT is still active (that is, its lifetime has not elapsed), the
    -- assignment becomes available for other users to find and accept.
    assignmentDurationInSeconds :: Core.Integer,
    -- | The amount of money the Requester will pay a Worker for successfully
    -- completing the HIT.
    reward :: Core.Text,
    -- | The title of the HIT. A title should be short and descriptive about the
    -- kind of task the HIT contains. On the Amazon Mechanical Turk web site,
    -- the HIT title appears in search results, and everywhere the HIT is
    -- mentioned.
    title :: Core.Text,
    -- | A general description of the HIT. A description includes detailed
    -- information about the kind of task the HIT contains. On the Amazon
    -- Mechanical Turk web site, the HIT description appears in the expanded
    -- view of search results, and in the HIT and assignment screens. A good
    -- description gives the user enough information to evaluate the HIT before
    -- accepting it.
    description :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateHIT' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uniqueRequestToken', 'createHIT_uniqueRequestToken' - A unique identifier for this request which allows you to retry the call
-- on error without creating duplicate HITs. This is useful in cases such
-- as network timeouts where it is unclear whether or not the call
-- succeeded on the server. If the HIT already exists in the system from a
-- previous call using the same UniqueRequestToken, subsequent calls will
-- return a AWS.MechanicalTurk.HitAlreadyExists error with a message
-- containing the HITId.
--
-- Note: It is your responsibility to ensure uniqueness of the token. The
-- unique token expires after 24 hours. Subsequent calls using the same
-- UniqueRequestToken made after the 24 hour limit could create duplicate
-- HITs.
--
-- 'autoApprovalDelayInSeconds', 'createHIT_autoApprovalDelayInSeconds' - The number of seconds after an assignment for the HIT has been
-- submitted, after which the assignment is considered Approved
-- automatically unless the Requester explicitly rejects it.
--
-- 'question', 'createHIT_question' - The data the person completing the HIT uses to produce the results.
--
-- Constraints: Must be a QuestionForm data structure, an ExternalQuestion
-- data structure, or an HTMLQuestion data structure. The XML question data
-- must not be larger than 64 kilobytes (65,535 bytes) in size, including
-- whitespace.
--
-- Either a Question parameter or a HITLayoutId parameter must be provided.
--
-- 'hITLayoutId', 'createHIT_hITLayoutId' - The HITLayoutId allows you to use a pre-existing HIT design with
-- placeholder values and create an additional HIT by providing those
-- values as HITLayoutParameters.
--
-- Constraints: Either a Question parameter or a HITLayoutId parameter must
-- be provided.
--
-- 'hITReviewPolicy', 'createHIT_hITReviewPolicy' - The HIT-level Review Policy applies to the HIT. You can specify for
-- Mechanical Turk to take various actions based on the policy.
--
-- 'maxAssignments', 'createHIT_maxAssignments' - The number of times the HIT can be accepted and completed before the HIT
-- becomes unavailable.
--
-- 'requesterAnnotation', 'createHIT_requesterAnnotation' - An arbitrary data field. The RequesterAnnotation parameter lets your
-- application attach arbitrary data to the HIT for tracking purposes. For
-- example, this parameter could be an identifier internal to the
-- Requester\'s application that corresponds with the HIT.
--
-- The RequesterAnnotation parameter for a HIT is only visible to the
-- Requester who created the HIT. It is not shown to the Worker, or any
-- other Requester.
--
-- The RequesterAnnotation parameter may be different for each HIT you
-- submit. It does not affect how your HITs are grouped.
--
-- 'assignmentReviewPolicy', 'createHIT_assignmentReviewPolicy' - The Assignment-level Review Policy applies to the assignments under the
-- HIT. You can specify for Mechanical Turk to take various actions based
-- on the policy.
--
-- 'hITLayoutParameters', 'createHIT_hITLayoutParameters' - If the HITLayoutId is provided, any placeholder values must be filled in
-- with values using the HITLayoutParameter structure. For more
-- information, see HITLayout.
--
-- 'qualificationRequirements', 'createHIT_qualificationRequirements' - Conditions that a Worker\'s Qualifications must meet in order to accept
-- the HIT. A HIT can have between zero and ten Qualification requirements.
-- All requirements must be met in order for a Worker to accept the HIT.
-- Additionally, other actions can be restricted using the @ActionsGuarded@
-- field on each @QualificationRequirement@ structure.
--
-- 'keywords', 'createHIT_keywords' - One or more words or phrases that describe the HIT, separated by commas.
-- These words are used in searches to find HITs.
--
-- 'lifetimeInSeconds', 'createHIT_lifetimeInSeconds' - An amount of time, in seconds, after which the HIT is no longer
-- available for users to accept. After the lifetime of the HIT elapses,
-- the HIT no longer appears in HIT searches, even if not all of the
-- assignments for the HIT have been accepted.
--
-- 'assignmentDurationInSeconds', 'createHIT_assignmentDurationInSeconds' - The amount of time, in seconds, that a Worker has to complete the HIT
-- after accepting it. If a Worker does not complete the assignment within
-- the specified duration, the assignment is considered abandoned. If the
-- HIT is still active (that is, its lifetime has not elapsed), the
-- assignment becomes available for other users to find and accept.
--
-- 'reward', 'createHIT_reward' - The amount of money the Requester will pay a Worker for successfully
-- completing the HIT.
--
-- 'title', 'createHIT_title' - The title of the HIT. A title should be short and descriptive about the
-- kind of task the HIT contains. On the Amazon Mechanical Turk web site,
-- the HIT title appears in search results, and everywhere the HIT is
-- mentioned.
--
-- 'description', 'createHIT_description' - A general description of the HIT. A description includes detailed
-- information about the kind of task the HIT contains. On the Amazon
-- Mechanical Turk web site, the HIT description appears in the expanded
-- view of search results, and in the HIT and assignment screens. A good
-- description gives the user enough information to evaluate the HIT before
-- accepting it.
newCreateHIT ::
  -- | 'lifetimeInSeconds'
  Core.Integer ->
  -- | 'assignmentDurationInSeconds'
  Core.Integer ->
  -- | 'reward'
  Core.Text ->
  -- | 'title'
  Core.Text ->
  -- | 'description'
  Core.Text ->
  CreateHIT
newCreateHIT
  pLifetimeInSeconds_
  pAssignmentDurationInSeconds_
  pReward_
  pTitle_
  pDescription_ =
    CreateHIT'
      { uniqueRequestToken = Core.Nothing,
        autoApprovalDelayInSeconds = Core.Nothing,
        question = Core.Nothing,
        hITLayoutId = Core.Nothing,
        hITReviewPolicy = Core.Nothing,
        maxAssignments = Core.Nothing,
        requesterAnnotation = Core.Nothing,
        assignmentReviewPolicy = Core.Nothing,
        hITLayoutParameters = Core.Nothing,
        qualificationRequirements = Core.Nothing,
        keywords = Core.Nothing,
        lifetimeInSeconds = pLifetimeInSeconds_,
        assignmentDurationInSeconds =
          pAssignmentDurationInSeconds_,
        reward = pReward_,
        title = pTitle_,
        description = pDescription_
      }

-- | A unique identifier for this request which allows you to retry the call
-- on error without creating duplicate HITs. This is useful in cases such
-- as network timeouts where it is unclear whether or not the call
-- succeeded on the server. If the HIT already exists in the system from a
-- previous call using the same UniqueRequestToken, subsequent calls will
-- return a AWS.MechanicalTurk.HitAlreadyExists error with a message
-- containing the HITId.
--
-- Note: It is your responsibility to ensure uniqueness of the token. The
-- unique token expires after 24 hours. Subsequent calls using the same
-- UniqueRequestToken made after the 24 hour limit could create duplicate
-- HITs.
createHIT_uniqueRequestToken :: Lens.Lens' CreateHIT (Core.Maybe Core.Text)
createHIT_uniqueRequestToken = Lens.lens (\CreateHIT' {uniqueRequestToken} -> uniqueRequestToken) (\s@CreateHIT' {} a -> s {uniqueRequestToken = a} :: CreateHIT)

-- | The number of seconds after an assignment for the HIT has been
-- submitted, after which the assignment is considered Approved
-- automatically unless the Requester explicitly rejects it.
createHIT_autoApprovalDelayInSeconds :: Lens.Lens' CreateHIT (Core.Maybe Core.Integer)
createHIT_autoApprovalDelayInSeconds = Lens.lens (\CreateHIT' {autoApprovalDelayInSeconds} -> autoApprovalDelayInSeconds) (\s@CreateHIT' {} a -> s {autoApprovalDelayInSeconds = a} :: CreateHIT)

-- | The data the person completing the HIT uses to produce the results.
--
-- Constraints: Must be a QuestionForm data structure, an ExternalQuestion
-- data structure, or an HTMLQuestion data structure. The XML question data
-- must not be larger than 64 kilobytes (65,535 bytes) in size, including
-- whitespace.
--
-- Either a Question parameter or a HITLayoutId parameter must be provided.
createHIT_question :: Lens.Lens' CreateHIT (Core.Maybe Core.Text)
createHIT_question = Lens.lens (\CreateHIT' {question} -> question) (\s@CreateHIT' {} a -> s {question = a} :: CreateHIT)

-- | The HITLayoutId allows you to use a pre-existing HIT design with
-- placeholder values and create an additional HIT by providing those
-- values as HITLayoutParameters.
--
-- Constraints: Either a Question parameter or a HITLayoutId parameter must
-- be provided.
createHIT_hITLayoutId :: Lens.Lens' CreateHIT (Core.Maybe Core.Text)
createHIT_hITLayoutId = Lens.lens (\CreateHIT' {hITLayoutId} -> hITLayoutId) (\s@CreateHIT' {} a -> s {hITLayoutId = a} :: CreateHIT)

-- | The HIT-level Review Policy applies to the HIT. You can specify for
-- Mechanical Turk to take various actions based on the policy.
createHIT_hITReviewPolicy :: Lens.Lens' CreateHIT (Core.Maybe ReviewPolicy)
createHIT_hITReviewPolicy = Lens.lens (\CreateHIT' {hITReviewPolicy} -> hITReviewPolicy) (\s@CreateHIT' {} a -> s {hITReviewPolicy = a} :: CreateHIT)

-- | The number of times the HIT can be accepted and completed before the HIT
-- becomes unavailable.
createHIT_maxAssignments :: Lens.Lens' CreateHIT (Core.Maybe Core.Int)
createHIT_maxAssignments = Lens.lens (\CreateHIT' {maxAssignments} -> maxAssignments) (\s@CreateHIT' {} a -> s {maxAssignments = a} :: CreateHIT)

-- | An arbitrary data field. The RequesterAnnotation parameter lets your
-- application attach arbitrary data to the HIT for tracking purposes. For
-- example, this parameter could be an identifier internal to the
-- Requester\'s application that corresponds with the HIT.
--
-- The RequesterAnnotation parameter for a HIT is only visible to the
-- Requester who created the HIT. It is not shown to the Worker, or any
-- other Requester.
--
-- The RequesterAnnotation parameter may be different for each HIT you
-- submit. It does not affect how your HITs are grouped.
createHIT_requesterAnnotation :: Lens.Lens' CreateHIT (Core.Maybe Core.Text)
createHIT_requesterAnnotation = Lens.lens (\CreateHIT' {requesterAnnotation} -> requesterAnnotation) (\s@CreateHIT' {} a -> s {requesterAnnotation = a} :: CreateHIT)

-- | The Assignment-level Review Policy applies to the assignments under the
-- HIT. You can specify for Mechanical Turk to take various actions based
-- on the policy.
createHIT_assignmentReviewPolicy :: Lens.Lens' CreateHIT (Core.Maybe ReviewPolicy)
createHIT_assignmentReviewPolicy = Lens.lens (\CreateHIT' {assignmentReviewPolicy} -> assignmentReviewPolicy) (\s@CreateHIT' {} a -> s {assignmentReviewPolicy = a} :: CreateHIT)

-- | If the HITLayoutId is provided, any placeholder values must be filled in
-- with values using the HITLayoutParameter structure. For more
-- information, see HITLayout.
createHIT_hITLayoutParameters :: Lens.Lens' CreateHIT (Core.Maybe [HITLayoutParameter])
createHIT_hITLayoutParameters = Lens.lens (\CreateHIT' {hITLayoutParameters} -> hITLayoutParameters) (\s@CreateHIT' {} a -> s {hITLayoutParameters = a} :: CreateHIT) Core.. Lens.mapping Lens._Coerce

-- | Conditions that a Worker\'s Qualifications must meet in order to accept
-- the HIT. A HIT can have between zero and ten Qualification requirements.
-- All requirements must be met in order for a Worker to accept the HIT.
-- Additionally, other actions can be restricted using the @ActionsGuarded@
-- field on each @QualificationRequirement@ structure.
createHIT_qualificationRequirements :: Lens.Lens' CreateHIT (Core.Maybe [QualificationRequirement])
createHIT_qualificationRequirements = Lens.lens (\CreateHIT' {qualificationRequirements} -> qualificationRequirements) (\s@CreateHIT' {} a -> s {qualificationRequirements = a} :: CreateHIT) Core.. Lens.mapping Lens._Coerce

-- | One or more words or phrases that describe the HIT, separated by commas.
-- These words are used in searches to find HITs.
createHIT_keywords :: Lens.Lens' CreateHIT (Core.Maybe Core.Text)
createHIT_keywords = Lens.lens (\CreateHIT' {keywords} -> keywords) (\s@CreateHIT' {} a -> s {keywords = a} :: CreateHIT)

-- | An amount of time, in seconds, after which the HIT is no longer
-- available for users to accept. After the lifetime of the HIT elapses,
-- the HIT no longer appears in HIT searches, even if not all of the
-- assignments for the HIT have been accepted.
createHIT_lifetimeInSeconds :: Lens.Lens' CreateHIT Core.Integer
createHIT_lifetimeInSeconds = Lens.lens (\CreateHIT' {lifetimeInSeconds} -> lifetimeInSeconds) (\s@CreateHIT' {} a -> s {lifetimeInSeconds = a} :: CreateHIT)

-- | The amount of time, in seconds, that a Worker has to complete the HIT
-- after accepting it. If a Worker does not complete the assignment within
-- the specified duration, the assignment is considered abandoned. If the
-- HIT is still active (that is, its lifetime has not elapsed), the
-- assignment becomes available for other users to find and accept.
createHIT_assignmentDurationInSeconds :: Lens.Lens' CreateHIT Core.Integer
createHIT_assignmentDurationInSeconds = Lens.lens (\CreateHIT' {assignmentDurationInSeconds} -> assignmentDurationInSeconds) (\s@CreateHIT' {} a -> s {assignmentDurationInSeconds = a} :: CreateHIT)

-- | The amount of money the Requester will pay a Worker for successfully
-- completing the HIT.
createHIT_reward :: Lens.Lens' CreateHIT Core.Text
createHIT_reward = Lens.lens (\CreateHIT' {reward} -> reward) (\s@CreateHIT' {} a -> s {reward = a} :: CreateHIT)

-- | The title of the HIT. A title should be short and descriptive about the
-- kind of task the HIT contains. On the Amazon Mechanical Turk web site,
-- the HIT title appears in search results, and everywhere the HIT is
-- mentioned.
createHIT_title :: Lens.Lens' CreateHIT Core.Text
createHIT_title = Lens.lens (\CreateHIT' {title} -> title) (\s@CreateHIT' {} a -> s {title = a} :: CreateHIT)

-- | A general description of the HIT. A description includes detailed
-- information about the kind of task the HIT contains. On the Amazon
-- Mechanical Turk web site, the HIT description appears in the expanded
-- view of search results, and in the HIT and assignment screens. A good
-- description gives the user enough information to evaluate the HIT before
-- accepting it.
createHIT_description :: Lens.Lens' CreateHIT Core.Text
createHIT_description = Lens.lens (\CreateHIT' {description} -> description) (\s@CreateHIT' {} a -> s {description = a} :: CreateHIT)

instance Core.AWSRequest CreateHIT where
  type AWSResponse CreateHIT = CreateHITResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateHITResponse'
            Core.<$> (x Core..?> "HIT")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateHIT

instance Core.NFData CreateHIT

instance Core.ToHeaders CreateHIT where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "MTurkRequesterServiceV20170117.CreateHIT" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateHIT where
  toJSON CreateHIT' {..} =
    Core.object
      ( Core.catMaybes
          [ ("UniqueRequestToken" Core..=)
              Core.<$> uniqueRequestToken,
            ("AutoApprovalDelayInSeconds" Core..=)
              Core.<$> autoApprovalDelayInSeconds,
            ("Question" Core..=) Core.<$> question,
            ("HITLayoutId" Core..=) Core.<$> hITLayoutId,
            ("HITReviewPolicy" Core..=) Core.<$> hITReviewPolicy,
            ("MaxAssignments" Core..=) Core.<$> maxAssignments,
            ("RequesterAnnotation" Core..=)
              Core.<$> requesterAnnotation,
            ("AssignmentReviewPolicy" Core..=)
              Core.<$> assignmentReviewPolicy,
            ("HITLayoutParameters" Core..=)
              Core.<$> hITLayoutParameters,
            ("QualificationRequirements" Core..=)
              Core.<$> qualificationRequirements,
            ("Keywords" Core..=) Core.<$> keywords,
            Core.Just
              ("LifetimeInSeconds" Core..= lifetimeInSeconds),
            Core.Just
              ( "AssignmentDurationInSeconds"
                  Core..= assignmentDurationInSeconds
              ),
            Core.Just ("Reward" Core..= reward),
            Core.Just ("Title" Core..= title),
            Core.Just ("Description" Core..= description)
          ]
      )

instance Core.ToPath CreateHIT where
  toPath = Core.const "/"

instance Core.ToQuery CreateHIT where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateHITResponse' smart constructor.
data CreateHITResponse = CreateHITResponse'
  { -- | Contains the newly created HIT data. For a description of the HIT data
    -- structure as it appears in responses, see the HIT Data Structure
    -- documentation.
    hit :: Core.Maybe HIT,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateHITResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hit', 'createHITResponse_hit' - Contains the newly created HIT data. For a description of the HIT data
-- structure as it appears in responses, see the HIT Data Structure
-- documentation.
--
-- 'httpStatus', 'createHITResponse_httpStatus' - The response's http status code.
newCreateHITResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateHITResponse
newCreateHITResponse pHttpStatus_ =
  CreateHITResponse'
    { hit = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains the newly created HIT data. For a description of the HIT data
-- structure as it appears in responses, see the HIT Data Structure
-- documentation.
createHITResponse_hit :: Lens.Lens' CreateHITResponse (Core.Maybe HIT)
createHITResponse_hit = Lens.lens (\CreateHITResponse' {hit} -> hit) (\s@CreateHITResponse' {} a -> s {hit = a} :: CreateHITResponse)

-- | The response's http status code.
createHITResponse_httpStatus :: Lens.Lens' CreateHITResponse Core.Int
createHITResponse_httpStatus = Lens.lens (\CreateHITResponse' {httpStatus} -> httpStatus) (\s@CreateHITResponse' {} a -> s {httpStatus = a} :: CreateHITResponse)

instance Core.NFData CreateHITResponse
