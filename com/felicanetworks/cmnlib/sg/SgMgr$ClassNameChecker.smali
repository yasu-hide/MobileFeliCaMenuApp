.class public Lcom/felicanetworks/cmnlib/sg/SgMgr$ClassNameChecker;
.super Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;
.source "SgMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/sg/SgMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClassNameChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr$ClassNameChecker;->this$0:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    return-void
.end method
