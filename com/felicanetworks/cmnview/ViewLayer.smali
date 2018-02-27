.class public Lcom/felicanetworks/cmnview/ViewLayer;
.super Ljava/lang/Object;
.source "ViewLayer.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field public activeView:Lcom/felicanetworks/cmnview/BaseView;

.field public dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

.field public windowView:Lcom/felicanetworks/cmnview/BaseWindowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    .line 27
    iput-object v0, p0, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 32
    iput-object v0, p0, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x5

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
