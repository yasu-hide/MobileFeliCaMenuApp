.class public Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;
.super Lcom/felicanetworks/cmnlib/sg/SgMgr;
.source "MfmSgMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfmlib/sg/MfmSgMgr$ApplicationWayToGetKindChecker;,
        Lcom/felicanetworks/mfmlib/sg/MfmSgMgr$CooperativeKindChecker;
    }
.end annotation


# static fields
.field public static final KEY_APP_MAIN_CLSNAME:I = 0x1

.field public static final KEY_APP_MAIN_HASHVAL:I = 0x2

.field public static final KEY_APP_MAIN_PKGGETURL:I = 0x3

.field public static final KEY_APP_MAIN_PKGNAME:I = 0x0

.field protected static final RES_ID_APP_ID:I = 0x7f050002

.field protected static final RES_ID_APP_NAME:I = 0x7f050003

.field protected static final RES_ID_APP_SG_FILEPATH:I = 0x7f050001

.field protected static final RES_ID_COMMON_SG_FILEPATH:I = 0x7f050000

.field private static final supportedIndividualSgInformationTable:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->supportedIndividualSgInformationTable:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x100001f
        0x501
        0x0
        0x1
        0x80
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1000018
        0x30c
        0x1
        0x40
        0x80
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa01
        0x1
        0x40
        0x80
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0xa02
        0x1
        0x60
        0x80
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x2
        0xa03
        0x0
        0x40
        0x2
        0x0
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x3
        0xa04
        0x1
        0x3e7
        0x10
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/felicanetworks/mfmlib/MfmAppContext;)V
    .locals 0
    .param p1, "context"    # Lcom/felicanetworks/mfmlib/MfmAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnlib/sg/SgMgr;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    .line 180
    return-void
.end method

.method private getSgKey(I)I
    .locals 7
    .param p1, "vKey"    # I

    .prologue
    .line 189
    const/4 v4, -0x1

    .line 190
    .local v4, "ret":I
    sget-object v0, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->supportedIndividualSgInformationTable:[[I

    .local v0, "arr$":[[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 191
    .local v3, "record":[I
    const/4 v5, 0x0

    aget v5, v3, v5

    if-ne v5, p1, :cond_1

    .line 195
    const/4 v5, 0x1

    aget v5, v3, v5

    const v6, 0x7f050002

    invoke-virtual {p0, v6}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->getAppIdMask(Ljava/lang/String;)I

    move-result v6

    or-int v4, v5, v6

    .line 202
    .end local v3    # "record":[I
    :cond_0
    return v4

    .line 190
    .restart local v3    # "record":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected checkParamAdjustment()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation

    .prologue
    .line 220
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAppSgFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method protected getCommonSgFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 341
    const/16 v0, 0x17

    return v0
.end method

.method protected getIndividualSgCheckerTable()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;>;"
    const v1, 0x100001f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/felicanetworks/cmnlib/sg/SgMgr$LogOutputFlagChecker;

    invoke-direct {v2, p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$LogOutputFlagChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const v1, 0x1000018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/felicanetworks/cmnlib/sg/SgMgr$TimezoneChecker;

    invoke-direct {v2, p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$TimezoneChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;

    invoke-direct {v2, p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;

    invoke-direct {v2, p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-object v0
.end method

.method protected getIndividualSupportedSgInformationTable()[[I
    .locals 8

    .prologue
    .line 264
    sget-object v6, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->supportedIndividualSgInformationTable:[[I

    invoke-virtual {v6}, [[I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 265
    .local v1, "cloneArray":[[I
    const v6, 0x7f050002

    invoke-virtual {p0, v6}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->getResourceValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;->getAppIdMask(Ljava/lang/String;)I

    move-result v4

    .line 266
    .local v4, "mask":I
    move-object v0, v1

    .local v0, "arr$":[[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 267
    .local v5, "record":[I
    const/4 v6, 0x1

    aget v7, v5, v6

    or-int/2addr v7, v4

    aput v7, v5, v6

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v5    # "record":[I
    :cond_0
    return-object v1
.end method
