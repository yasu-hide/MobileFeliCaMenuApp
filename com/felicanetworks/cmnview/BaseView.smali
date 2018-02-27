.class public abstract Lcom/felicanetworks/cmnview/BaseView;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private createTransferSenderInfo()Lcom/felicanetworks/cmnview/TransferSenderInfo;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/felicanetworks/cmnview/TransferSenderInfo;

    invoke-direct {v0}, Lcom/felicanetworks/cmnview/TransferSenderInfo;-><init>()V

    .line 120
    .local v0, "info":Lcom/felicanetworks/cmnview/TransferSenderInfo;
    invoke-virtual {p0}, Lcom/felicanetworks/cmnview/BaseView;->getClassCode()I

    move-result v1

    iput v1, v0, Lcom/felicanetworks/cmnview/TransferSenderInfo;->senderInfo:I

    .line 124
    return-object v0
.end method


# virtual methods
.method public abstract onActivityDestroy()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public declared-synchronized transferFatalError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorId"    # Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/cmnview/BaseView;->createTransferSenderInfo()Lcom/felicanetworks/cmnview/TransferSenderInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public transferState(I)V
    .locals 2
    .param p1, "cmdId"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/felicanetworks/cmnview/BaseView;->createTransferSenderInfo()Lcom/felicanetworks/cmnview/TransferSenderInfo;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/felicanetworks/cmnview/TransferState;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    .line 84
    return-void
.end method

.method public transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/felicanetworks/cmnview/BaseView;->createTransferSenderInfo()Lcom/felicanetworks/cmnview/TransferSenderInfo;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/felicanetworks/cmnview/TransferState;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    .line 67
    return-void
.end method
