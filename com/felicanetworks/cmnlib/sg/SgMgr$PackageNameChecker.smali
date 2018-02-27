.class public Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;
.super Ljava/lang/Object;
.source "SgMgr.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/sg/SgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PackageNameChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;->this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {p1}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkAlphaSignFormat(Ljava/lang/String;)V

    .line 447
    return-void
.end method
