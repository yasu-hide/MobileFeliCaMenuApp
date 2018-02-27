.class public Lcom/felicanetworks/cmnlib/sg/SgMgr$TimezoneChecker;
.super Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;
.source "SgMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/sg/SgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TimezoneChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$TimezoneChecker;->this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    return-void
.end method


# virtual methods
.method protected getPermitList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
