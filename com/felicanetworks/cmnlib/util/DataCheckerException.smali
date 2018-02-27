.class public Lcom/felicanetworks/cmnlib/util/DataCheckerException;
.super Lcom/felicanetworks/cmnlib/CommonAppException;
.source "DataCheckerException.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;


# static fields
.field public static final ID_ATTRIBUTE_ERROR:I = 0x1

.field public static final ID_LENGTH_ERROR:I


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;->id:I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;->id:I

    .line 41
    iput p1, p0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;->id:I

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felicanetworks/cmnlib/CommonAppException;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;->id:I

    .line 63
    iput p1, p0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;->id:I

    .line 64
    return-void
.end method


# virtual methods
.method public getErrorId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;->id:I

    return v0
.end method

.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x9

    return v0
.end method
