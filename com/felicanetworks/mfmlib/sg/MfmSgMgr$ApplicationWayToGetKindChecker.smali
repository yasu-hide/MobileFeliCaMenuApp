.class public Lcom/felicanetworks/mfmlib/sg/MfmSgMgr$ApplicationWayToGetKindChecker;
.super Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;
.source "MfmSgMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ApplicationWayToGetKindChecker"
.end annotation


# static fields
.field private static final KIND_FROM_BROWSER:Ljava/lang/String; = "1"

.field private static final KIND_FROM_MARKET:Ljava/lang/String; = "2"


# instance fields
.field private final permissionList:[Ljava/lang/String;

.field final synthetic this$0:Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;)V
    .locals 3

    .prologue
    .line 137
    iput-object p1, p0, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr$ApplicationWayToGetKindChecker;->this$0:Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;

    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr$ApplicationWayToGetKindChecker;->permissionList:[Ljava/lang/String;

    .line 137
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
    .line 160
    iget-object v0, p0, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr$ApplicationWayToGetKindChecker;->permissionList:[Ljava/lang/String;

    return-object v0
.end method
