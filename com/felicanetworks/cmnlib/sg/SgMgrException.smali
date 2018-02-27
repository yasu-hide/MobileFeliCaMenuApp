.class public Lcom/felicanetworks/cmnlib/sg/SgMgrException;
.super Ljava/lang/Exception;
.source "SgMgrException.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;


# instance fields
.field errIdentifierCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->errIdentifierCode:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->errIdentifierCode:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->errIdentifierCode:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->errIdentifierCode:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getErrIdentifierCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->errIdentifierCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x8

    return v0
.end method

.method public setErrIdentifierCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errIdentifierCode"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->errIdentifierCode:Ljava/lang/String;

    .line 76
    return-void
.end method
