.class public abstract Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;
.super Ljava/lang/Object;
.source "AbstractTransferStateCommon.java"

# interfaces
.implements Lcom/felicanetworks/cmnview/TransferStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private createSnapShot()Lcom/felicanetworks/cmnview/ViewLayer;
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;->getViewLayer()Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v0

    .line 105
    .local v0, "nowViewLayer":Lcom/felicanetworks/cmnview/ViewLayer;
    if-nez v0, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    .line 113
    :cond_0
    new-instance v1, Lcom/felicanetworks/cmnview/ViewLayer;

    invoke-direct {v1}, Lcom/felicanetworks/cmnview/ViewLayer;-><init>()V

    .line 114
    .local v1, "ss":Lcom/felicanetworks/cmnview/ViewLayer;
    iget-object v2, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    iput-object v2, v1, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    .line 115
    iget-object v2, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v2, v1, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 116
    iget-object v2, v0, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    iput-object v2, v1, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    goto :goto_0
.end method


# virtual methods
.method protected abstract getViewLayer()Lcom/felicanetworks/cmnview/ViewLayer;
.end method

.method protected abstract isActivityAlive()Z
.end method

.method protected abstract isFatalErrorScreen(Lcom/felicanetworks/cmnview/BaseView;)Z
.end method

.method protected isUnformalTransferCommand(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;Lcom/felicanetworks/cmnview/ViewLayer;)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;
    .param p3, "senderInfo"    # Lcom/felicanetworks/cmnview/TransferSenderInfo;
    .param p4, "layer"    # Lcom/felicanetworks/cmnview/ViewLayer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;->isActivityAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    iget-object v2, p4, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    if-eqz v2, :cond_4

    .line 160
    const/16 v2, 0x3e7

    if-ne p1, v2, :cond_2

    iget-object v2, p4, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    invoke-virtual {p0, v2}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;->isFatalErrorScreen(Lcom/felicanetworks/cmnview/BaseView;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 165
    goto :goto_0

    .line 169
    :cond_2
    if-eqz p3, :cond_3

    iget v2, p3, Lcom/felicanetworks/cmnview/TransferSenderInfo;->senderInfo:I

    iget-object v3, p4, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    invoke-virtual {v3}, Lcom/felicanetworks/cmnview/BaseView;->getClassCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 178
    goto :goto_0

    :cond_4
    move v0, v1

    .line 187
    goto :goto_0
.end method

.method protected abstract onTransferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
.end method

.method public final transferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;
    .param p3, "senderInfo"    # Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;->createSnapShot()Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v1

    .line 54
    .local v1, "beforeViewLayer":Lcom/felicanetworks/cmnview/ViewLayer;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;->isUnformalTransferCommand(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;Lcom/felicanetworks/cmnview/ViewLayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;->onTransferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V

    .line 67
    invoke-direct {p0}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;->createSnapShot()Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v0

    .line 68
    .local v0, "afterViewLayer":Lcom/felicanetworks/cmnview/ViewLayer;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iget-object v3, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    :cond_2
    iget-object v2, v1, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnview/BaseDialogView;->dismiss()V

    goto :goto_0

    .line 81
    :cond_3
    const/16 v2, 0x3e8

    if-ne v2, p1, :cond_0

    .line 85
    iget-object v2, v1, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnview/BaseDialogView;->dismiss()V

    goto :goto_0
.end method
