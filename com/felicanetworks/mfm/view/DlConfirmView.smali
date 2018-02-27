.class public Lcom/felicanetworks/mfm/view/DlConfirmView;
.super Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;
.source "DlConfirmView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;-><init>(Landroid/app/Activity;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x2

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x10

    return v0
.end method

.method public on1stDialogButtonClick()V
    .locals 4

    .prologue
    .line 59
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfm/view/DlConfirmView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfm/MfmAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfm/view/DlConfirmView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public on2ndDialogButtonClick()V
    .locals 4

    .prologue
    .line 89
    const/16 v2, 0x3e9

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfm/view/DlConfirmView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfm/MfmAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfm/view/DlConfirmView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/DlConfirmView;->setTitleMsg(I)V

    .line 117
    const v0, 0x7f02002f

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/DlConfirmView;->setTitleIcon(I)V

    .line 119
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/DlConfirmView;->setBtn1Text(I)V

    .line 120
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/DlConfirmView;->setBtn2Text(I)V

    .line 122
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/DlConfirmView;->setMsg1Text(I)V

    .line 126
    return-void
.end method
