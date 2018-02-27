.class public Lcom/felicanetworks/mfmlib/log/MfmLogMgr;
.super Lcom/felicanetworks/cmnlib/log/LogMgr;
.source "MfmLogMgr.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfmlib/MfmAppContext;)V
    .locals 0
    .param p1, "context"    # Lcom/felicanetworks/mfmlib/MfmAppContext;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x16

    return v0
.end method
