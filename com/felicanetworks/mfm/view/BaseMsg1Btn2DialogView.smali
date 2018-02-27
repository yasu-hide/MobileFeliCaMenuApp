.class public abstract Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;
.super Lcom/felicanetworks/cmnview/BaseDialogView;
.source "BaseMsg1Btn2DialogView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$1;,
        Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On2ndButtonClockListener;,
        Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On1stButtonClockListener;
    }
.end annotation


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _button1:Landroid/widget/Button;

.field private _button2:Landroid/widget/Button;

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

    .line 43
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_activity:Landroid/app/Activity;

    .line 44
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_titleMsg:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_titleIcon:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_message1:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_button1:Landroid/widget/Button;

    .line 48
    iput-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_button2:Landroid/widget/Button;

    .line 80
    return-void
.end method


# virtual methods
.method public defaultButton()V
    .locals 0

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->on2ndDialogButtonClick()V

    .line 486
    return-void
.end method

.method public abstract on1stDialogButtonClick()V
.end method

.method public abstract on2ndDialogButtonClick()V
.end method

.method public onCreateDialogView(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 143
    iput-object p1, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_activity:Landroid/app/Activity;

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "dialog":Lcom/felicanetworks/mfm/view/CustomAlertDialog;
    const/4 v0, 0x0

    .line 147
    .local v0, "builder":Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    const/4 v2, 0x0

    .line 148
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 150
    .local v3, "layout":Landroid/view/View;
    iget-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 151
    const v4, 0x7f030003

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 154
    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_titleMsg:Landroid/widget/TextView;

    .line 156
    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_titleIcon:Landroid/widget/ImageView;

    .line 159
    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_message1:Landroid/widget/TextView;

    .line 162
    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_button1:Landroid/widget/Button;

    .line 163
    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_button2:Landroid/widget/Button;

    .line 165
    iget-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_button1:Landroid/widget/Button;

    new-instance v5, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On1stButtonClockListener;

    invoke-direct {v5, p0, v6}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On1stButtonClockListener;-><init>(Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_button2:Landroid/widget/Button;

    new-instance v5, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On2ndButtonClockListener;

    invoke-direct {v5, p0, v6}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On2ndButtonClockListener;-><init>(Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;

    .end local v0    # "builder":Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    iget-object v4, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .restart local v0    # "builder":Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->create()Lcom/felicanetworks/mfm/view/CustomAlertDialog;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v3}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 176
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->onSetViewParts()V

    .line 189
    return-object v1
.end method

.method public abstract onSetViewParts()V
.end method

.method public setBtn1Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_button1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 254
    return-void
.end method

.method public setBtn2Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_button2:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 287
    return-void
.end method

.method public setMsg1Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_message1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    return-void
.end method

.method public setTitleMsg(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->_titleMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 318
    return-void
.end method
