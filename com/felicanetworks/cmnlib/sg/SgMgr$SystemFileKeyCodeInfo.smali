.class public Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
.super Ljava/lang/Object;
.source "SgMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/sg/SgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SystemFileKeyCodeInfo"
.end annotation


# instance fields
.field checkData:[I

.field indivChecker:Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;

.field final synthetic this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    .line 213
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->indivChecker:Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;

    .line 214
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    .line 215
    return-void
.end method
