.class public Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;
.super Lcom/felicanetworks/mfm/view/BaseMsg2Btn1DialogView;
.source "FatalErrorBeforeAppInitView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _errorId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfm/view/BaseMsg2Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 30
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->_activity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->_activity:Landroid/app/Activity;

    .line 65
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 196
    const/16 v0, 0xd

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0x10

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 1

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 2

    .prologue
    .line 181
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->setTitleMsg(I)V

    .line 183
    const v0, 0x7f02002e

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->setTitleIcon(I)V

    .line 185
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->setBtn1Text(I)V

    .line 187
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->setMsg1Text(I)V

    .line 188
    const v0, 0x7f05000b

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;->setMsg2Text(ILjava/lang/String;)V

    .line 192
    return-void
.end method
