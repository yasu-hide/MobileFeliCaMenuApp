.class public final Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;
.super Ljava/lang/Object;
.source "DataCheckerUtil.java"


# static fields
.field public static final MATCH_ALPHA_NUM:Ljava/lang/String; = "^[0-9a-zA-Z]+"

.field public static final MATCH_ALPHA_SIGN:Ljava/lang/String; = "^[ -~]+"

.field public static final MATCH_HEX_NUM:Ljava/lang/String; = "^[0-9A-F]+"

.field public static final MATCH_NUMBER:Ljava/lang/String; = "^[0-9]+"

.field public static final MATCH_PACKAGE:Ljava/lang/String; = "^[0-9a-zA-Z.]+"

.field static final MATCH_PROTOCOL:[Ljava/lang/String;

.field public static final MATCH_URI:Ljava/lang/String; = "[#-;?-Za-z!=_~]+"

.field public static final MSG_INVALID_PROTOCOL:Ljava/lang/String; = "invalid protocol."


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "market:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->MATCH_PROTOCOL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAlphaNumberFormat(Ljava/lang/String;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 175
    const-string v0, "^[0-9a-zA-Z]+"

    invoke-static {v0, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static checkAlphaSignFormat(Ljava/lang/String;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v0, "^[ -~]+"

    invoke-static {v0, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static checkByteLength(Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "fixFlg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 379
    if-eqz p2, :cond_0

    .line 381
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    .line 385
    new-instance v0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    invoke-direct {v0, v1, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, p1, :cond_1

    .line 393
    new-instance v0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    invoke-direct {v0, v1, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    return-void
.end method

.method public static checkDecNumberFormat(Ljava/lang/String;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "^[0-9]+"

    invoke-static {v0, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static checkEqualLength(II)V
    .locals 4
    .param p0, "source"    # I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 433
    if-eq p0, p1, :cond_0

    .line 437
    new-instance v0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not equal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    return-void
.end method

.method public static checkFixValue(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "targetValue"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 336
    if-nez p0, :cond_0

    .line 340
    new-instance v5, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 342
    :cond_0
    const/4 v1, 0x0

    .line 343
    .local v1, "checkOkFlag":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 344
    .local v2, "checkStr":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    const/4 v1, 0x1

    .line 352
    .end local v2    # "checkStr":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_3

    .line 356
    new-instance v5, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 343
    .restart local v2    # "checkStr":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    .end local v2    # "checkStr":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static checkFormat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 501
    new-instance v0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    new-instance v0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 512
    :cond_1
    return-void
.end method

.method public static checkHexNumberFormat(Ljava/lang/String;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "^[0-9A-F]+"

    invoke-static {v0, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static checkLessEqualLength(II)V
    .locals 4
    .param p0, "source"    # I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 413
    if-le p0, p1, :cond_0

    .line 417
    new-instance v0, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " greater than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    return-void
.end method

.method public static checkPackageFormat(Ljava/lang/String;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 484
    const-string v0, "^[0-9a-zA-Z.]+"

    invoke-static {v0, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public static checkUrlCharFormat(Ljava/lang/String;)V
    .locals 8
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 287
    if-nez p0, :cond_0

    .line 291
    new-instance v5, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 293
    :cond_0
    const/4 v1, 0x0

    .line 294
    .local v1, "check":Z
    sget-object v0, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->MATCH_PROTOCOL:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 295
    .local v4, "protocal":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 299
    const/4 v1, 0x1

    .line 303
    .end local v4    # "protocal":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_3

    .line 307
    new-instance v5, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    const-string v6, "invalid protocol."

    invoke-direct {v5, v7, p0, v6}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 294
    .restart local v4    # "protocal":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v4    # "protocal":Ljava/lang/String;
    :cond_3
    const-string v5, "[#-;?-Za-z!=_~]+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 314
    new-instance v5, Lcom/felicanetworks/cmnlib/util/DataCheckerException;

    invoke-direct {v5, v7, p0}, Lcom/felicanetworks/cmnlib/util/DataCheckerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 319
    :cond_4
    return-void
.end method
