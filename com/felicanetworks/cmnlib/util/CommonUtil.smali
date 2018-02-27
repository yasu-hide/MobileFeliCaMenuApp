.class public final Lcom/felicanetworks/cmnlib/util/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static final HEX_CHARS:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 319
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 320
    .local v2, "buf":Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 324
    .local v1, "b":B
    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static changeEndian([B)[B
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 395
    array-length v2, p0

    new-array v0, v2, [B

    .line 396
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 397
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-object v0
.end method

.method public static getAppInfo(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 197
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const-string v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 198
    .local v2, "am":Landroid/app/ActivityManager;
    const v15, 0x7fffffff

    invoke-virtual {v2, v15}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v14

    .line 200
    .local v14, "rsiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    .local v10, "pkgMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 206
    .local v13, "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    iget v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v0, p1

    if-ne v0, v15, :cond_0

    .line 210
    iget-object v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "pkgName":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_0

    .line 216
    invoke-virtual {v10, v11, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v13    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 222
    .local v9, "pkgArray":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v6, "labelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v3, v4

    .line 228
    .local v8, "pkg":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v12, v8, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 229
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 232
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .line 234
    .local v5, "labelArray":[Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 238
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    new-array v5, v15, [Ljava/lang/String;

    .line 239
    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 245
    :cond_3
    return-object v5
.end method

.method public static getClassShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 411
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 412
    .local v0, "ix":I
    if-gez v0, :cond_0

    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSystemTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static hexStringListToIntList([Ljava/lang/String;)[I
    .locals 4
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 372
    array-length v3, p0

    new-array v1, v3, [I

    .line 373
    .local v1, "ints":[I
    const/4 v2, 0x0

    .local v2, "ix":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 377
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->hexStringToBin(Ljava/lang/String;)[B

    move-result-object v0

    .line 378
    .local v0, "b":[B
    invoke-static {v0}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->toInt([B)I

    move-result v3

    aput v3, v1, v2

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "b":[B
    :cond_0
    return-object v1
.end method

.method public static hexStringToBin(Ljava/lang/String;)[B
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 99
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 101
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v6, v7, 0x2

    .line 102
    .local v6, "size":I
    new-array v0, v6, [B

    .line 103
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 107
    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 108
    .local v1, "h":C
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 109
    .local v4, "l":C
    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 110
    .local v2, "hi":I
    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 111
    .local v5, "li":I
    if-ltz v2, :cond_2

    if-gez v5, :cond_3

    .line 115
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid hex char."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 117
    :cond_3
    shl-int/lit8 v7, v2, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "h":C
    .end local v2    # "hi":I
    .end local v4    # "l":C
    .end local v5    # "li":I
    :cond_4
    return-object v0
.end method

.method public static intToDecString(II)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I
    .param p1, "digits"    # I

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # I
    .param p1, "digits"    # I

    .prologue
    .line 257
    const/16 v1, 0x8

    .line 258
    .local v1, "sizeofInt":I
    const/4 v0, 0x4

    .line 261
    .local v0, "digitPerBit":I
    const/16 v2, 0x8

    if-le v2, p1, :cond_0

    .line 262
    rsub-int/lit8 v2, p1, 0x8

    mul-int/lit8 v2, v2, 0x4

    shl-int/2addr p0, v2

    .line 263
    rsub-int/lit8 v2, p1, 0x8

    mul-int/lit8 v2, v2, 0x4

    ushr-int/2addr p0, v2

    .line 267
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static paddingZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "targetLength"    # I

    .prologue
    .line 58
    move-object v3, p0

    .line 60
    .local v3, "paddingStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, p1, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, p1, v4

    .line 66
    .local v2, "lackCnt":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 71
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    .end local v2    # "lackCnt":I
    :cond_1
    return-object v3
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B

    .prologue
    .line 296
    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v1, v3, 0xf

    .line 297
    .local v1, "h":I
    and-int/lit8 v2, p0, 0xf

    .line 298
    .local v2, "l":I
    const/4 v3, 0x2

    new-array v0, v3, [C

    .line 299
    .local v0, "buf":[C
    const/4 v3, 0x0

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    .line 300
    const/4 v3, 0x1

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    .line 304
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static toInt([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, "val":I
    const/4 v0, 0x0

    .line 348
    .local v0, "bit":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 349
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 350
    add-int/lit8 v0, v0, 0x8

    .line 348
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 355
    :cond_0
    return v2
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 456
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "ix":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 457
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ix":I
    .local v6, "ix":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 458
    .local v2, "ch":C
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_3

    .line 459
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ix":I
    .restart local v5    # "ix":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 460
    .local v3, "e":C
    const/16 v8, 0x75

    if-ne v3, v8, :cond_1

    .line 461
    const/4 v7, 0x0

    .line 462
    .local v7, "value":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "ix":I
    .restart local v6    # "ix":I
    :goto_1
    const/4 v8, 0x4

    if-ge v4, v8, :cond_0

    .line 463
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ix":I
    .restart local v5    # "ix":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 464
    .local v0, "aChar":C
    sparse-switch v0, :sswitch_data_0

    .line 478
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Malformed \\uxxxx encoding."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 467
    :sswitch_0
    shl-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v0

    add-int/lit8 v7, v8, -0x30

    .line 462
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "ix":I
    .restart local v6    # "ix":I
    goto :goto_1

    .line 471
    .end local v6    # "ix":I
    .restart local v5    # "ix":I
    :sswitch_1
    shl-int/lit8 v8, v7, 0x4

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v0

    add-int/lit8 v7, v8, -0x61

    .line 472
    goto :goto_2

    .line 475
    :sswitch_2
    shl-int/lit8 v8, v7, 0x4

    add-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v0

    add-int/lit8 v7, v8, -0x41

    .line 476
    goto :goto_2

    .line 481
    .end local v0    # "aChar":C
    .end local v5    # "ix":I
    .restart local v6    # "ix":I
    :cond_0
    int-to-char v2, v7

    move v5, v6

    .line 494
    .end local v3    # "e":C
    .end local v4    # "i":I
    .end local v6    # "ix":I
    .end local v7    # "value":I
    .restart local v5    # "ix":I
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 483
    .restart local v3    # "e":C
    :cond_1
    sparse-switch v3, :sswitch_data_1

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 490
    move v2, v3

    goto :goto_3

    .line 484
    :sswitch_3
    const/16 v2, 0x9

    goto :goto_3

    .line 485
    :sswitch_4
    const/16 v2, 0xd

    goto :goto_3

    .line 486
    :sswitch_5
    const/16 v2, 0xa

    goto :goto_3

    .line 487
    :sswitch_6
    const/16 v2, 0x5c

    goto :goto_3

    .line 496
    .end local v2    # "ch":C
    .end local v3    # "e":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v5    # "ix":I
    .restart local v2    # "ch":C
    .restart local v6    # "ix":I
    :cond_3
    move v5, v6

    .end local v6    # "ix":I
    .restart local v5    # "ix":I
    goto :goto_3

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch

    .line 483
    :sswitch_data_1
    .sparse-switch
        0x5c -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_4
        0x74 -> :sswitch_3
    .end sparse-switch
.end method
