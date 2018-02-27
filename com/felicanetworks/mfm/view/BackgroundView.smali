.class public Lcom/felicanetworks/mfm/view/BackgroundView;
.super Lcom/felicanetworks/cmnview/BaseWindowView;
.source "BackgroundView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseWindowView;-><init>(Landroid/app/Activity;)V

    .line 45
    const v0, 0x7f030009

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x6

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x10

    return v0
.end method
