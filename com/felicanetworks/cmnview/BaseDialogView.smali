.class public abstract Lcom/felicanetworks/cmnview/BaseDialogView;
.super Lcom/felicanetworks/cmnview/BaseView;
.source "BaseDialogView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/cmnview/BaseDialogView$1;,
        Lcom/felicanetworks/cmnview/BaseDialogView$DismissListenerImpl;,
        Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;
    }
.end annotation


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _dialog:Landroid/app/Dialog;

.field private isDestroyedActivity:Z

.field private isDialogAlive:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseView;-><init>(Landroid/app/Activity;)V

    .line 31
    iput-object v2, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    .line 32
    iput-object v2, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_activity:Landroid/app/Activity;

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->isDialogAlive:Z

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->isDestroyedActivity:Z

    .line 66
    iput-object p1, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_activity:Landroid/app/Activity;

    .line 67
    new-instance v0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;-><init>(Lcom/felicanetworks/cmnview/BaseDialogView;Lcom/felicanetworks/cmnview/BaseDialogView$1;)V

    .line 68
    .local v0, "handler":Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;
    invoke-virtual {v0}, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/felicanetworks/cmnview/BaseDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnview/BaseDialogView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->isDestroyedActivity:Z

    return v0
.end method

.method static synthetic access$200(Lcom/felicanetworks/cmnview/BaseDialogView;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnview/BaseDialogView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/felicanetworks/cmnview/BaseDialogView;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/cmnview/BaseDialogView;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/felicanetworks/cmnview/BaseDialogView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnview/BaseDialogView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/felicanetworks/cmnview/BaseDialogView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnview/BaseDialogView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->isDialogAlive:Z

    return v0
.end method


# virtual methods
.method public abstract defaultButton()V
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->isDialogAlive:Z

    .line 327
    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->isDestroyedActivity:Z

    .line 412
    iget-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/felicanetworks/cmnview/BaseDialogView;->dismiss()V

    .line 421
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 438
    return-void
.end method

.method public abstract onCreateDialogView(Landroid/app/Activity;)Landroid/app/Dialog;
.end method

.method public onStartDialog()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public refreshView()V
    .locals 3

    .prologue
    .line 509
    iget-object v2, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/felicanetworks/cmnview/BaseDialogView;->_dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 514
    .local v1, "w":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 520
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "w":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public transferFatalError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorId"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/felicanetworks/cmnview/BaseView;->transferFatalError(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public transferState(I)V
    .locals 1
    .param p1, "cmdId"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/cmnview/BaseDialogView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    .line 253
    return-void
.end method

.method public transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V
    .locals 0
    .param p1, "cmdId"    # I
    .param p2, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/cmnview/BaseView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    .line 210
    return-void
.end method
