.class public Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;
.super Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;
.source "ServiceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfm/ServiceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LaunchMfmActivityTransferStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfm/ServiceListActivity;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfm/ServiceListActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-direct {p0}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;-><init>()V

    return-void
.end method


# virtual methods
.method protected getViewLayer()Lcom/felicanetworks/cmnview/ViewLayer;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v0}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v0

    return-object v0
.end method

.method protected isActivityAlive()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v0}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$200(Lcom/felicanetworks/mfm/ServiceListActivity;)Z

    move-result v0

    return v0
.end method

.method protected isFatalErrorScreen(Lcom/felicanetworks/cmnview/BaseView;)Z
    .locals 1
    .param p1, "view"    # Lcom/felicanetworks/cmnview/BaseView;

    .prologue
    .line 211
    instance-of v0, p1, Lcom/felicanetworks/mfm/view/FatalErrorMainView;

    return v0
.end method

.method public onTransferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;
    .param p3, "sndInfo"    # Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .prologue
    .line 98
    sparse-switch p1, :sswitch_data_0

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    instance-of v3, v3, Lcom/felicanetworks/mfm/view/FatalErrorMainView;

    if-nez v3, :cond_0

    .line 143
    const-string v2, ""

    .line 144
    .local v2, "errorId":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 148
    invoke-static {}, Lcom/felicanetworks/mfm/MfmAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 156
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    new-instance v4, Lcom/felicanetworks/mfm/view/BackgroundView;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfm/view/BackgroundView;-><init>(Landroid/app/Activity;)V

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 157
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    new-instance v4, Lcom/felicanetworks/mfm/view/FatalErrorMainView;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-direct {v4, v5, v2}, Lcom/felicanetworks/mfm/view/FatalErrorMainView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 158
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v4}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v4

    iget-object v4, v4, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    .end local v2    # "errorId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 104
    :sswitch_0
    :try_start_1
    new-instance v0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;

    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$000(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/mfmlib/MfmAppContext;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$000(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/mfmlib/MfmAppContext;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v4, v5, v3}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;-><init>(Lcom/felicanetworks/mfmlib/MfmAppContext;ILjava/lang/String;)V

    .line 106
    .local v0, "al":Lcom/felicanetworks/mfmlib/launch/AppLauncher;
    invoke-virtual {v0}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->startApplication()V

    .line 107
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-virtual {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 169
    .end local v0    # "al":Lcom/felicanetworks/mfmlib/launch/AppLauncher;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfm/MfmAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-virtual {v3, v4, v5, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .restart local v2    # "errorId":Ljava/lang/String;
    invoke-static {v2}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "errorId":Ljava/lang/String;
    :sswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    new-instance v4, Lcom/felicanetworks/mfm/view/BackgroundView;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfm/view/BackgroundView;-><init>(Landroid/app/Activity;)V

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 115
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    new-instance v4, Lcom/felicanetworks/mfm/view/DlConfirmView;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfm/view/DlConfirmView;-><init>(Landroid/app/Activity;)V

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 116
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v4}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v4

    iget-object v4, v4, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto :goto_1

    .line 123
    :sswitch_2
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    new-instance v4, Lcom/felicanetworks/mfm/view/BackgroundView;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfm/view/BackgroundView;-><init>(Landroid/app/Activity;)V

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 124
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    new-instance v4, Lcom/felicanetworks/mfm/view/FailedSignatureView;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfm/view/FailedSignatureView;-><init>(Landroid/app/Activity;)V

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 125
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-static {v4}, Lcom/felicanetworks/mfm/ServiceListActivity;->access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v4

    iget-object v4, v4, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v4, v3, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_1

    .line 131
    :sswitch_3
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-virtual {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 154
    .restart local v2    # "errorId":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v2, p2, Lcom/felicanetworks/cmnview/TransferStateData;->errorId:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 161
    .end local v2    # "errorId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 165
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;->this$0:Lcom/felicanetworks/mfm/ServiceListActivity;

    invoke-virtual {v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method
