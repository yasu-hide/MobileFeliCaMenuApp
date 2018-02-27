.class public Lcom/felicanetworks/cmnlib/sg/SgMgr$ZeroOrOneChecker;
.super Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;
.source "SgMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/sg/SgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ZeroOrOneChecker"
.end annotation


# instance fields
.field private final permissionList:[Ljava/lang/String;

.field final synthetic this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V
    .locals 3

    .prologue
    .line 254
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$ZeroOrOneChecker;->this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    .line 257
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$ZeroOrOneChecker;->permissionList:[Ljava/lang/String;

    .line 254
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
    .line 271
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$ZeroOrOneChecker;->permissionList:[Ljava/lang/String;

    return-object v0
.end method
