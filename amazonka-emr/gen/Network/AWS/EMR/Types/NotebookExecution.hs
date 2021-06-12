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
-- Module      : Network.AWS.EMR.Types.NotebookExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.NotebookExecution where

import qualified Network.AWS.Core as Core
import Network.AWS.EMR.Types.ExecutionEngineConfig
import Network.AWS.EMR.Types.NotebookExecutionStatus
import Network.AWS.EMR.Types.Tag
import qualified Network.AWS.Lens as Lens

-- | A notebook execution. An execution is a specific instance that an EMR
-- Notebook is run using the @StartNotebookExecution@ action.
--
-- /See:/ 'newNotebookExecution' smart constructor.
data NotebookExecution = NotebookExecution'
  { -- | The reason for the latest status change of the notebook execution.
    lastStateChangeReason :: Core.Maybe Core.Text,
    -- | The status of the notebook execution.
    --
    -- -   @START_PENDING@ indicates that the cluster has received the
    --     execution request but execution has not begun.
    --
    -- -   @STARTING@ indicates that the execution is starting on the cluster.
    --
    -- -   @RUNNING@ indicates that the execution is being processed by the
    --     cluster.
    --
    -- -   @FINISHING@ indicates that execution processing is in the final
    --     stages.
    --
    -- -   @FINISHED@ indicates that the execution has completed without error.
    --
    -- -   @FAILING@ indicates that the execution is failing and will not
    --     finish successfully.
    --
    -- -   @FAILED@ indicates that the execution failed.
    --
    -- -   @STOP_PENDING@ indicates that the cluster has received a
    --     @StopNotebookExecution@ request and the stop is pending.
    --
    -- -   @STOPPING@ indicates that the cluster is in the process of stopping
    --     the execution as a result of a @StopNotebookExecution@ request.
    --
    -- -   @STOPPED@ indicates that the execution stopped because of a
    --     @StopNotebookExecution@ request.
    status :: Core.Maybe NotebookExecutionStatus,
    -- | A name for the notebook execution.
    notebookExecutionName :: Core.Maybe Core.Text,
    -- | The unique identifier of the EMR Notebook that is used for the notebook
    -- execution.
    editorId :: Core.Maybe Core.Text,
    -- | The unique identifier of a notebook execution.
    notebookExecutionId :: Core.Maybe Core.Text,
    -- | The timestamp when notebook execution started.
    startTime :: Core.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the notebook execution.
    arn :: Core.Maybe Core.Text,
    -- | Input parameters in JSON format passed to the EMR Notebook at runtime
    -- for execution.
    notebookParams :: Core.Maybe Core.Text,
    -- | The timestamp when notebook execution ended.
    endTime :: Core.Maybe Core.POSIX,
    -- | The unique identifier of the EC2 security group associated with the EMR
    -- Notebook instance. For more information see
    -- <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html Specifying EC2 Security Groups for EMR Notebooks>
    -- in the /EMR Management Guide/.
    notebookInstanceSecurityGroupId :: Core.Maybe Core.Text,
    -- | The execution engine, such as an EMR cluster, used to run the EMR
    -- notebook and perform the notebook execution.
    executionEngine :: Core.Maybe ExecutionEngineConfig,
    -- | A list of tags associated with a notebook execution. Tags are
    -- user-defined key-value pairs that consist of a required key string with
    -- a maximum of 128 characters and an optional value string with a maximum
    -- of 256 characters.
    tags :: Core.Maybe [Tag],
    -- | The location of the notebook execution\'s output file in Amazon S3.
    outputNotebookURI :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'NotebookExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastStateChangeReason', 'notebookExecution_lastStateChangeReason' - The reason for the latest status change of the notebook execution.
--
-- 'status', 'notebookExecution_status' - The status of the notebook execution.
--
-- -   @START_PENDING@ indicates that the cluster has received the
--     execution request but execution has not begun.
--
-- -   @STARTING@ indicates that the execution is starting on the cluster.
--
-- -   @RUNNING@ indicates that the execution is being processed by the
--     cluster.
--
-- -   @FINISHING@ indicates that execution processing is in the final
--     stages.
--
-- -   @FINISHED@ indicates that the execution has completed without error.
--
-- -   @FAILING@ indicates that the execution is failing and will not
--     finish successfully.
--
-- -   @FAILED@ indicates that the execution failed.
--
-- -   @STOP_PENDING@ indicates that the cluster has received a
--     @StopNotebookExecution@ request and the stop is pending.
--
-- -   @STOPPING@ indicates that the cluster is in the process of stopping
--     the execution as a result of a @StopNotebookExecution@ request.
--
-- -   @STOPPED@ indicates that the execution stopped because of a
--     @StopNotebookExecution@ request.
--
-- 'notebookExecutionName', 'notebookExecution_notebookExecutionName' - A name for the notebook execution.
--
-- 'editorId', 'notebookExecution_editorId' - The unique identifier of the EMR Notebook that is used for the notebook
-- execution.
--
-- 'notebookExecutionId', 'notebookExecution_notebookExecutionId' - The unique identifier of a notebook execution.
--
-- 'startTime', 'notebookExecution_startTime' - The timestamp when notebook execution started.
--
-- 'arn', 'notebookExecution_arn' - The Amazon Resource Name (ARN) of the notebook execution.
--
-- 'notebookParams', 'notebookExecution_notebookParams' - Input parameters in JSON format passed to the EMR Notebook at runtime
-- for execution.
--
-- 'endTime', 'notebookExecution_endTime' - The timestamp when notebook execution ended.
--
-- 'notebookInstanceSecurityGroupId', 'notebookExecution_notebookInstanceSecurityGroupId' - The unique identifier of the EC2 security group associated with the EMR
-- Notebook instance. For more information see
-- <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html Specifying EC2 Security Groups for EMR Notebooks>
-- in the /EMR Management Guide/.
--
-- 'executionEngine', 'notebookExecution_executionEngine' - The execution engine, such as an EMR cluster, used to run the EMR
-- notebook and perform the notebook execution.
--
-- 'tags', 'notebookExecution_tags' - A list of tags associated with a notebook execution. Tags are
-- user-defined key-value pairs that consist of a required key string with
-- a maximum of 128 characters and an optional value string with a maximum
-- of 256 characters.
--
-- 'outputNotebookURI', 'notebookExecution_outputNotebookURI' - The location of the notebook execution\'s output file in Amazon S3.
newNotebookExecution ::
  NotebookExecution
newNotebookExecution =
  NotebookExecution'
    { lastStateChangeReason =
        Core.Nothing,
      status = Core.Nothing,
      notebookExecutionName = Core.Nothing,
      editorId = Core.Nothing,
      notebookExecutionId = Core.Nothing,
      startTime = Core.Nothing,
      arn = Core.Nothing,
      notebookParams = Core.Nothing,
      endTime = Core.Nothing,
      notebookInstanceSecurityGroupId = Core.Nothing,
      executionEngine = Core.Nothing,
      tags = Core.Nothing,
      outputNotebookURI = Core.Nothing
    }

-- | The reason for the latest status change of the notebook execution.
notebookExecution_lastStateChangeReason :: Lens.Lens' NotebookExecution (Core.Maybe Core.Text)
notebookExecution_lastStateChangeReason = Lens.lens (\NotebookExecution' {lastStateChangeReason} -> lastStateChangeReason) (\s@NotebookExecution' {} a -> s {lastStateChangeReason = a} :: NotebookExecution)

-- | The status of the notebook execution.
--
-- -   @START_PENDING@ indicates that the cluster has received the
--     execution request but execution has not begun.
--
-- -   @STARTING@ indicates that the execution is starting on the cluster.
--
-- -   @RUNNING@ indicates that the execution is being processed by the
--     cluster.
--
-- -   @FINISHING@ indicates that execution processing is in the final
--     stages.
--
-- -   @FINISHED@ indicates that the execution has completed without error.
--
-- -   @FAILING@ indicates that the execution is failing and will not
--     finish successfully.
--
-- -   @FAILED@ indicates that the execution failed.
--
-- -   @STOP_PENDING@ indicates that the cluster has received a
--     @StopNotebookExecution@ request and the stop is pending.
--
-- -   @STOPPING@ indicates that the cluster is in the process of stopping
--     the execution as a result of a @StopNotebookExecution@ request.
--
-- -   @STOPPED@ indicates that the execution stopped because of a
--     @StopNotebookExecution@ request.
notebookExecution_status :: Lens.Lens' NotebookExecution (Core.Maybe NotebookExecutionStatus)
notebookExecution_status = Lens.lens (\NotebookExecution' {status} -> status) (\s@NotebookExecution' {} a -> s {status = a} :: NotebookExecution)

-- | A name for the notebook execution.
notebookExecution_notebookExecutionName :: Lens.Lens' NotebookExecution (Core.Maybe Core.Text)
notebookExecution_notebookExecutionName = Lens.lens (\NotebookExecution' {notebookExecutionName} -> notebookExecutionName) (\s@NotebookExecution' {} a -> s {notebookExecutionName = a} :: NotebookExecution)

-- | The unique identifier of the EMR Notebook that is used for the notebook
-- execution.
notebookExecution_editorId :: Lens.Lens' NotebookExecution (Core.Maybe Core.Text)
notebookExecution_editorId = Lens.lens (\NotebookExecution' {editorId} -> editorId) (\s@NotebookExecution' {} a -> s {editorId = a} :: NotebookExecution)

-- | The unique identifier of a notebook execution.
notebookExecution_notebookExecutionId :: Lens.Lens' NotebookExecution (Core.Maybe Core.Text)
notebookExecution_notebookExecutionId = Lens.lens (\NotebookExecution' {notebookExecutionId} -> notebookExecutionId) (\s@NotebookExecution' {} a -> s {notebookExecutionId = a} :: NotebookExecution)

-- | The timestamp when notebook execution started.
notebookExecution_startTime :: Lens.Lens' NotebookExecution (Core.Maybe Core.UTCTime)
notebookExecution_startTime = Lens.lens (\NotebookExecution' {startTime} -> startTime) (\s@NotebookExecution' {} a -> s {startTime = a} :: NotebookExecution) Core.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the notebook execution.
notebookExecution_arn :: Lens.Lens' NotebookExecution (Core.Maybe Core.Text)
notebookExecution_arn = Lens.lens (\NotebookExecution' {arn} -> arn) (\s@NotebookExecution' {} a -> s {arn = a} :: NotebookExecution)

-- | Input parameters in JSON format passed to the EMR Notebook at runtime
-- for execution.
notebookExecution_notebookParams :: Lens.Lens' NotebookExecution (Core.Maybe Core.Text)
notebookExecution_notebookParams = Lens.lens (\NotebookExecution' {notebookParams} -> notebookParams) (\s@NotebookExecution' {} a -> s {notebookParams = a} :: NotebookExecution)

-- | The timestamp when notebook execution ended.
notebookExecution_endTime :: Lens.Lens' NotebookExecution (Core.Maybe Core.UTCTime)
notebookExecution_endTime = Lens.lens (\NotebookExecution' {endTime} -> endTime) (\s@NotebookExecution' {} a -> s {endTime = a} :: NotebookExecution) Core.. Lens.mapping Core._Time

-- | The unique identifier of the EC2 security group associated with the EMR
-- Notebook instance. For more information see
-- <https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html Specifying EC2 Security Groups for EMR Notebooks>
-- in the /EMR Management Guide/.
notebookExecution_notebookInstanceSecurityGroupId :: Lens.Lens' NotebookExecution (Core.Maybe Core.Text)
notebookExecution_notebookInstanceSecurityGroupId = Lens.lens (\NotebookExecution' {notebookInstanceSecurityGroupId} -> notebookInstanceSecurityGroupId) (\s@NotebookExecution' {} a -> s {notebookInstanceSecurityGroupId = a} :: NotebookExecution)

-- | The execution engine, such as an EMR cluster, used to run the EMR
-- notebook and perform the notebook execution.
notebookExecution_executionEngine :: Lens.Lens' NotebookExecution (Core.Maybe ExecutionEngineConfig)
notebookExecution_executionEngine = Lens.lens (\NotebookExecution' {executionEngine} -> executionEngine) (\s@NotebookExecution' {} a -> s {executionEngine = a} :: NotebookExecution)

-- | A list of tags associated with a notebook execution. Tags are
-- user-defined key-value pairs that consist of a required key string with
-- a maximum of 128 characters and an optional value string with a maximum
-- of 256 characters.
notebookExecution_tags :: Lens.Lens' NotebookExecution (Core.Maybe [Tag])
notebookExecution_tags = Lens.lens (\NotebookExecution' {tags} -> tags) (\s@NotebookExecution' {} a -> s {tags = a} :: NotebookExecution) Core.. Lens.mapping Lens._Coerce

-- | The location of the notebook execution\'s output file in Amazon S3.
notebookExecution_outputNotebookURI :: Lens.Lens' NotebookExecution (Core.Maybe Core.Text)
notebookExecution_outputNotebookURI = Lens.lens (\NotebookExecution' {outputNotebookURI} -> outputNotebookURI) (\s@NotebookExecution' {} a -> s {outputNotebookURI = a} :: NotebookExecution)

instance Core.FromJSON NotebookExecution where
  parseJSON =
    Core.withObject
      "NotebookExecution"
      ( \x ->
          NotebookExecution'
            Core.<$> (x Core..:? "LastStateChangeReason")
            Core.<*> (x Core..:? "Status")
            Core.<*> (x Core..:? "NotebookExecutionName")
            Core.<*> (x Core..:? "EditorId")
            Core.<*> (x Core..:? "NotebookExecutionId")
            Core.<*> (x Core..:? "StartTime")
            Core.<*> (x Core..:? "Arn")
            Core.<*> (x Core..:? "NotebookParams")
            Core.<*> (x Core..:? "EndTime")
            Core.<*> (x Core..:? "NotebookInstanceSecurityGroupId")
            Core.<*> (x Core..:? "ExecutionEngine")
            Core.<*> (x Core..:? "Tags" Core..!= Core.mempty)
            Core.<*> (x Core..:? "OutputNotebookURI")
      )

instance Core.Hashable NotebookExecution

instance Core.NFData NotebookExecution
