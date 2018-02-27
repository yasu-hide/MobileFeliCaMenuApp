.class public Lcom/felicanetworks/mfmlib/launch/AppLauncherException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "AppLauncherException.java"


# static fields
.field public static final ID_APP_NOT_FOUND_ERROR:I = 0x1

.field public static final ID_APP_START_ERROR:I = 0x2

.field public static final ID_ILLEGAL_SIGNATURE_ERROR:I = 0x0

.field public static final ID_OTHER_ERROR:I = 0xff

.field private static final serialVersionUID:J = -0x517b3ba9849f4bd2L


# instance fields
.field private errorId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p2}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 32
    const/16 v0, 0xff

    iput v0, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->errorId:I

    .line 42
    iput p1, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->errorId:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "identifierCode"    # Ljava/lang/String;
    .param p3, "errorId"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    const/16 v0, 0xff

    iput v0, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->errorId:I

    .line 54
    iput p3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->errorId:I

    .line 55
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->errorId:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x103

    return v0
.end method
