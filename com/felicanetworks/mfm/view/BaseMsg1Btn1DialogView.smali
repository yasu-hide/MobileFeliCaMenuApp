.class public abstract Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;
.super Lcom/felicanetworks/cmnview/BaseDialogView;
.source "BaseMsg1Btn1DialogView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private _button1:Landroid/widget/Button;

.field private _message1:Landroid/widget/TextView;

.field private _titleIcon:Landroid/widget/ImageView;

.field private _titleMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseDialogView;-><init>(Landroid/app/Activity;)V

    .line 45
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_titleIcon:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_titleMsg:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_message1:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_button1:Landroid/widget/Button;

    .line 80
    return-void
.end method


# virtual methods
.method public defaultButton()V
    .locals 0

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->onDialogButtonClick()V

    .line 411
    return-void
.end method

.method public onCreateDialogView(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "dialog":Lcom/felicanetworks/mfm/view/CustomAlertDialog;
    const/4 v0, 0x0

    .line 160
    .local v0, "builder":Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    const/4 v2, 0x0

    .line 161
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 163
    .local v3, "layout":Landroid/view/View;
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 164
    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 167
    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_titleMsg:Landroid/widget/TextView;

    .line 169
    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_titleIcon:Landroid/widget/ImageView;

    .line 172
    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_message1:Landroid/widget/TextView;

    .line 175
    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_button1:Landroid/widget/Button;

    .line 177
    iget-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_button1:Landroid/widget/Button;

    new-instance v5, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView$OnButtonClickListener;

    invoke-direct {v5, p0}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView$OnButtonClickListener;-><init>(Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;

    .end local v0    # "builder":Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    invoke-direct {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .restart local v0    # "builder":Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->create()Lcom/felicanetworks/mfm/view/CustomAlertDialog;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v3}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 189
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->onSetViewParts()V

    .line 202
    return-object v1
.end method

.method public abstract onDialogButtonClick()V
.end method

.method public abstract onSetViewParts()V
.end method

.method public setBtn1Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_button1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 266
    return-void
.end method

.method public setMsg1Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_message1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    return-void
.end method

.method public setTitleMsg(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->_titleMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 298
    return-void
.end method
