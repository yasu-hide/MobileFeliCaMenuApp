.class public Lcom/felicanetworks/cmnlib/AppContext;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field public androidContext:Landroid/content/Context;

.field public logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

.field public sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    .line 24
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    .line 30
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
