.class public Lcom/felicanetworks/mfmlib/launch/AppLauncher;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# static fields
.field public static final ANDROID_MARKET_APP:I = 0x1

.field public static final FELICA_MENU_APP:I = 0x0

.field private static final STRING_ILLEGAL_SIGNATURE_ERROR:Ljava/lang/String; = "failed in the signature attestation"

.field private static final STRING_NAME_NOT_FOUND_ERROR:Ljava/lang/String; = "package, application, or component name can not be found"


# instance fields
.field private addInfo:Ljava/lang/String;

.field private context:Lcom/felicanetworks/mfmlib/MfmAppContext;

.field private startAppId:I


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfmlib/MfmAppContext;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lcom/felicanetworks/mfmlib/MfmAppContext;
    .param p2, "startAppId"    # I
    .param p3, "addInfo"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    .line 95
    iput p2, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->startAppId:I

    .line 96
    iput-object p3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->addInfo:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private getMarketAppIntent()Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "retIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->addInfo:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfmlib/MfmAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v3, 0x1000025

    invoke-virtual {v2, v3}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    return-object v1
.end method

.method private getMenuAppIntent()Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfmlib/MfmAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 295
    return-object v1
.end method

.method private getMessageDigest([B)[B
    .locals 2
    .param p1, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 423
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 424
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 425
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method private getMfmInfo()Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    iget-object v9, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfmlib/MfmAppContext;->androidContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v9, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfmlib/MfmAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v11, 0x40

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 331
    .local v5, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 332
    .local v1, "buf":[Landroid/content/pm/Signature;
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    .local v8, "sigList":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v0, v1

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 334
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 336
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_0
    new-instance v6, Lcom/felicanetworks/mfmlib/launch/PkgInfoData;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v9, v8}, Lcom/felicanetworks/mfmlib/launch/PkgInfoData;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v1    # "buf":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "sigList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v6, "ret":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    :goto_1
    return-object v6

    .line 341
    .end local v6    # "ret":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v9, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v10, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v9, v10, p0, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 347
    const/4 v6, 0x0

    .line 355
    .restart local v6    # "ret":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    goto :goto_1

    .line 349
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "ret":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    :catch_1
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v10, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v9, v10, p0, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 354
    throw v2
.end method

.method private isFormalSig(Lcom/felicanetworks/mfmlib/launch/PkgInfoData;[B)Z
    .locals 4
    .param p1, "pkgInfo"    # Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    .param p2, "formalHash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 392
    .local v1, "ret":Z
    iget-object v3, p1, Lcom/felicanetworks/mfmlib/launch/PkgInfoData;->signature:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 395
    .local v2, "sig":[B
    invoke-direct {p0, v2}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->getMessageDigest([B)[B

    move-result-object v3

    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    const/4 v1, 0x1

    .line 406
    .end local v2    # "sig":[B
    :cond_1
    return v1
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 443
    const/16 v0, 0x18

    return v0
.end method

.method public startApplication()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfmlib/launch/AppLauncherException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0xff

    .line 115
    const/4 v0, 0x0

    .line 118
    .local v0, "baseIntent":Landroid/content/Intent;
    :try_start_0
    iget v3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->startAppId:I

    if-nez v3, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->getMfmInfo()Lcom/felicanetworks/mfmlib/launch/PkgInfoData;

    move-result-object v2

    .line 125
    .local v2, "mfmInfo":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    if-nez v2, :cond_0

    .line 130
    new-instance v3, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    const/4 v4, 0x1

    const-string v5, "package, application, or component name can not be found"

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/mfmlib/launch/AppLauncherException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 178
    .end local v2    # "mfmInfo":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Lcom/felicanetworks/mfmlib/launch/AppLauncherException;
    invoke-virtual {v1}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->getErrorId()I

    move-result v3

    if-ne v6, v3, :cond_5

    .line 183
    iget-object v3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 188
    :goto_0
    throw v1

    .line 132
    .end local v1    # "e":Lcom/felicanetworks/mfmlib/launch/AppLauncherException;
    .restart local v2    # "mfmInfo":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {p0, v2, v3}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->isFormalSig(Lcom/felicanetworks/mfmlib/launch/PkgInfoData;[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->getMenuAppIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    .end local v2    # "mfmInfo":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    :goto_1
    if-nez v0, :cond_4

    .line 163
    new-instance v3, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    const/4 v4, 0x2

    const-string v5, "Start failure"

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/felicanetworks/mfmlib/launch/AppLauncherException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 192
    :catch_1
    move-exception v1

    .line 196
    .local v1, "e":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    new-instance v3, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    iget-object v4, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v5, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v4, v5, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4, v6}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v3

    .line 144
    .end local v1    # "e":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    .restart local v2    # "mfmInfo":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    :cond_1
    :try_start_2
    new-instance v3, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    const/4 v4, 0x0

    const-string v5, "failed in the signature attestation"

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lcom/felicanetworks/mfmlib/launch/AppLauncherException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    .end local v2    # "mfmInfo":Lcom/felicanetworks/mfmlib/launch/PkgInfoData;
    :catch_2
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    iget-object v4, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v5, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v4, v5, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4, v6}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v3

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget v3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->startAppId:I

    if-ne v3, v4, :cond_3

    .line 150
    invoke-direct {p0}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->getMarketAppIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 155
    :cond_3
    new-instance v3, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    const/16 v4, 0xff

    const-string v5, "Start application judgment ID is unjust"

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3
    .catch Lcom/felicanetworks/mfmlib/launch/AppLauncherException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 168
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->activeActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/felicanetworks/mfmlib/launch/AppLauncherException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_4 .. :try_end_4} :catch_1

    .line 206
    return-void

    .line 169
    :catch_3
    move-exception v1

    .line 173
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v3, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    const/4 v4, 0x2

    const-string v5, "Start failure"

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_5
    .catch Lcom/felicanetworks/mfmlib/launch/AppLauncherException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 186
    .local v1, "e":Lcom/felicanetworks/mfmlib/launch/AppLauncherException;
    :cond_5
    iget-object v3, p0, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->context:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method
