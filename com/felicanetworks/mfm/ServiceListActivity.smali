.class public Lcom/felicanetworks/mfm/ServiceListActivity;
.super Landroid/app/Activity;
.source "ServiceListActivity.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;
    }
.end annotation


# instance fields
.field private _appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

.field private _isAlive:Z

.field private _viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

.field private currentLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    .line 44
    iput-object v1, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_isAlive:Z

    .line 50
    iput-object v1, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->currentLocale:Ljava/util/Locale;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/mfmlib/MfmAppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfm/ServiceListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/felicanetworks/mfm/ServiceListActivity;)Lcom/felicanetworks/cmnview/ViewLayer;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfm/ServiceListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/felicanetworks/mfm/ServiceListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfm/ServiceListActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_isAlive:Z

    return v0
.end method

.method private destroyProc()V
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_isAlive:Z

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_isAlive:Z

    .line 449
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v0, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    if-eqz v0, :cond_0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v0, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnview/BaseView;->onActivityDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showFatalErrorView(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorId"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    new-instance v1, Lcom/felicanetworks/mfm/view/BackgroundView;

    invoke-direct {v1, p0}, Lcom/felicanetworks/mfm/view/BackgroundView;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 279
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    new-instance v1, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;

    invoke-direct {v1, p0, p1}, Lcom/felicanetworks/mfm/view/FatalErrorBeforeAppInitView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 280
    iget-object v0, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v1, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    iget-object v1, v1, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v1, v0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    .line 284
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 478
    const/16 v0, 0x10

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f060017

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/ServiceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->currentLocale:Ljava/util/Locale;

    .line 310
    new-instance v3, Lcom/felicanetworks/mfmlib/MfmAppContext;

    invoke-direct {v3}, Lcom/felicanetworks/mfmlib/MfmAppContext;-><init>()V

    iput-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    .line 311
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    invoke-virtual {p0}, Lcom/felicanetworks/mfm/ServiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->androidContext:Landroid/content/Context;

    .line 312
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iput-object p0, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->activeActivity:Landroid/app/Activity;

    .line 315
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    new-instance v4, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfmlib/sg/MfmSgMgr;-><init>(Lcom/felicanetworks/mfmlib/MfmAppContext;)V

    iput-object v4, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    .line 317
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v3}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->loadSg()V

    .line 320
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    new-instance v4, Lcom/felicanetworks/mfmlib/log/MfmLogMgr;

    iget-object v5, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    invoke-direct {v4, v5}, Lcom/felicanetworks/mfmlib/log/MfmLogMgr;-><init>(Lcom/felicanetworks/mfmlib/MfmAppContext;)V

    iput-object v4, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    .line 321
    invoke-static {}, Lcom/felicanetworks/mfm/MfmAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v4

    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    check-cast v3, Lcom/felicanetworks/mfmlib/log/MfmLogMgr;

    iput-object v3, v4, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    .line 324
    new-instance v3, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;

    invoke-direct {v3, p0}, Lcom/felicanetworks/mfm/ServiceListActivity$LaunchMfmActivityTransferStateListener;-><init>(Lcom/felicanetworks/mfm/ServiceListActivity;)V

    invoke-static {v3}, Lcom/felicanetworks/cmnview/TransferState;->setTransferStateListener(Lcom/felicanetworks/cmnview/TransferStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :try_start_1
    new-instance v1, Lcom/felicanetworks/mfmlib/launch/AppLauncher;

    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;-><init>(Lcom/felicanetworks/mfmlib/MfmAppContext;ILjava/lang/String;)V

    .line 346
    .local v1, "al":Lcom/felicanetworks/mfmlib/launch/AppLauncher;
    invoke-virtual {v1}, Lcom/felicanetworks/mfmlib/launch/AppLauncher;->startApplication()V

    .line 348
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 349
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/ServiceListActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    .end local v1    # "al":Lcom/felicanetworks/mfmlib/launch/AppLauncher;
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v6}, Lcom/felicanetworks/mfm/ServiceListActivity;->setTheme(I)V

    .line 331
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 332
    new-instance v3, Lcom/felicanetworks/cmnview/ViewLayer;

    invoke-direct {v3}, Lcom/felicanetworks/cmnview/ViewLayer;-><init>()V

    iput-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    .line 336
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/ServiceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getErrIdentifierCode(Landroid/content/Context;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/felicanetworks/mfm/ServiceListActivity;->showFatalErrorView(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 355
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v6}, Lcom/felicanetworks/mfm/ServiceListActivity;->setTheme(I)V

    .line 356
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 357
    new-instance v3, Lcom/felicanetworks/cmnview/ViewLayer;

    invoke-direct {v3}, Lcom/felicanetworks/cmnview/ViewLayer;-><init>()V

    iput-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_viewLayer:Lcom/felicanetworks/cmnview/ViewLayer;

    .line 360
    instance-of v3, v2, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 364
    check-cast v0, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;

    .line 365
    .local v0, "ae":Lcom/felicanetworks/mfmlib/launch/AppLauncherException;
    invoke-virtual {v0}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->getErrorId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 370
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v0}, Lcom/felicanetworks/mfmlib/launch/AppLauncherException;->getErrorId()I

    move-result v3

    if-nez v3, :cond_1

    .line 377
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto :goto_0

    .line 382
    .end local v0    # "ae":Lcom/felicanetworks/mfmlib/launch/AppLauncherException;
    :cond_1
    iget-object v3, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->_appContext:Lcom/felicanetworks/mfmlib/MfmAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfmlib/MfmAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 405
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/ServiceListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/ServiceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 410
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->currentLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/felicanetworks/mfm/ServiceListActivity;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/ServiceListActivity;->finish()V

    .line 420
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-direct {p0}, Lcom/felicanetworks/mfm/ServiceListActivity;->destroyProc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v1

    goto :goto_0
.end method
