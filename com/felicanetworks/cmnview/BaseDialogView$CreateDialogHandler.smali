.class Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;
.super Landroid/os/Handler;
.source "BaseDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnview/BaseDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateDialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnview/BaseDialogView;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/cmnview/BaseDialogView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/cmnview/BaseDialogView;Lcom/felicanetworks/cmnview/BaseDialogView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/cmnview/BaseDialogView;
    .param p2, "x1"    # Lcom/felicanetworks/cmnview/BaseDialogView$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;-><init>(Lcom/felicanetworks/cmnview/BaseDialogView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 143
    iget-object v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-static {v1}, Lcom/felicanetworks/cmnview/BaseDialogView;->access$100(Lcom/felicanetworks/cmnview/BaseDialogView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    iget-object v2, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    iget-object v3, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-static {v3}, Lcom/felicanetworks/cmnview/BaseDialogView;->access$300(Lcom/felicanetworks/cmnview/BaseDialogView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/felicanetworks/cmnview/BaseDialogView;->onCreateDialogView(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/felicanetworks/cmnview/BaseDialogView;->access$202(Lcom/felicanetworks/cmnview/BaseDialogView;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 152
    iget-object v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-static {v1}, Lcom/felicanetworks/cmnview/BaseDialogView;->access$200(Lcom/felicanetworks/cmnview/BaseDialogView;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 154
    iget-object v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-static {v1}, Lcom/felicanetworks/cmnview/BaseDialogView;->access$200(Lcom/felicanetworks/cmnview/BaseDialogView;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/felicanetworks/cmnview/BaseDialogView$DismissListenerImpl;

    iget-object v3, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/cmnview/BaseDialogView$DismissListenerImpl;-><init>(Lcom/felicanetworks/cmnview/BaseDialogView;Lcom/felicanetworks/cmnview/BaseDialogView$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    iget-object v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-static {v1}, Lcom/felicanetworks/cmnview/BaseDialogView;->access$200(Lcom/felicanetworks/cmnview/BaseDialogView;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 159
    iget-object v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-virtual {v1}, Lcom/felicanetworks/cmnview/BaseDialogView;->onStartDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/cmnview/AppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    if-eqz v1, :cond_1

    .line 169
    invoke-static {}, Lcom/felicanetworks/cmnview/AppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v3, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$CreateDialogHandler;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/felicanetworks/cmnview/BaseDialogView;->transferState(I)V

    goto :goto_0
.end method
