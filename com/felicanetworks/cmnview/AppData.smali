.class public Lcom/felicanetworks/cmnview/AppData;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# static fields
.field private static _instance:Lcom/felicanetworks/cmnview/AppData;


# instance fields
.field public logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/felicanetworks/cmnview/AppData;

    invoke-direct {v0}, Lcom/felicanetworks/cmnview/AppData;-><init>()V

    sput-object v0, Lcom/felicanetworks/cmnview/AppData;->_instance:Lcom/felicanetworks/cmnview/AppData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/cmnview/AppData;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/felicanetworks/cmnview/AppData;->_instance:Lcom/felicanetworks/cmnview/AppData;

    return-object v0
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
