.class public abstract Lcom/felicanetworks/cmnlib/CommonAppException;
.super Ljava/lang/Exception;
.source "CommonAppException.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;


# instance fields
.field errIdentifiercode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/CommonAppException;->errIdentifiercode:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/CommonAppException;->errIdentifiercode:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/CommonAppException;->errIdentifiercode:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/CommonAppException;->errIdentifiercode:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getErrIdentifierCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/CommonAppException;->errIdentifiercode:Ljava/lang/String;

    return-object v0
.end method

.method public setErrIdentifierCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errIdentifiercode"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/CommonAppException;->errIdentifiercode:Ljava/lang/String;

    .line 67
    return-void
.end method
