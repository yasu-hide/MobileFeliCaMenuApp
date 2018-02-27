.class public abstract Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;
.super Ljava/lang/Object;
.source "SgMgr.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/sg/SgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "StringValueChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;->this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 357
    new-instance v1, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    invoke-direct {v1}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>()V

    throw v1

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;->getPermitList()[Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "permitList":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 366
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    .line 370
    new-instance v1, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    invoke-direct {v1}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>()V

    throw v1

    .line 375
    :cond_1
    return-void
.end method

.method protected abstract getPermitList()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation
.end method
