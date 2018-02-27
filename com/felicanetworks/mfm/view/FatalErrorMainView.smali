.class public Lcom/felicanetworks/mfm/view/FatalErrorMainView;
.super Lcom/felicanetworks/mfm/view/BaseMsg2Btn1DialogView;
.source "FatalErrorMainView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private _errorId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfm/view/BaseMsg2Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->_errorId:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->_errorId:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->_errorId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->_errorId:Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0xe

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x10

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 3

    .prologue
    .line 108
    const/16 v1, 0x3e9

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfm/MfmAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 2

    .prologue
    .line 184
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->setTitleMsg(I)V

    .line 186
    const v0, 0x7f02002e

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->setTitleIcon(I)V

    .line 188
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->setBtn1Text(I)V

    .line 190
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->setMsg1Text(I)V

    .line 191
    const v0, 0x7f050009

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->_errorId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfm/view/FatalErrorMainView;->setMsg2Text(ILjava/lang/String;)V

    .line 195
    return-void
.end method
