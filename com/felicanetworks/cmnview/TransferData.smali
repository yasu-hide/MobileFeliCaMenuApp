.class public Lcom/felicanetworks/cmnview/TransferData;
.super Ljava/lang/Object;
.source "TransferData.java"


# instance fields
.field data:Lcom/felicanetworks/cmnview/TransferStateData;

.field senderInfo:Lcom/felicanetworks/cmnview/TransferSenderInfo;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
    .locals 1
    .param p1, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;
    .param p2, "senderInfo"    # Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/felicanetworks/cmnview/TransferData;->data:Lcom/felicanetworks/cmnview/TransferStateData;

    .line 18
    iput-object v0, p0, Lcom/felicanetworks/cmnview/TransferData;->senderInfo:Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .line 46
    iput-object p1, p0, Lcom/felicanetworks/cmnview/TransferData;->data:Lcom/felicanetworks/cmnview/TransferStateData;

    .line 47
    iput-object p2, p0, Lcom/felicanetworks/cmnview/TransferData;->senderInfo:Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .line 51
    return-void
.end method
