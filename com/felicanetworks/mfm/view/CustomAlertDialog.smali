.class public Lcom/felicanetworks/mfm/view/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const v0, 0x7f060018

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 74
    new-instance v0, Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {p0}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    .line 75
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 78
    const v0, 0x7f060018

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setCancelable(Z)V

    .line 83
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 84
    new-instance v0, Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {p0}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/mfm/view/CustomAlertDialog;)Lcom/felicanetworks/mfm/view/CustomAlertController;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfm/view/CustomAlertDialog;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    return-object v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0}, Lcom/felicanetworks/mfm/view/CustomAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 267
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0}, Lcom/felicanetworks/mfm/view/CustomAlertController;->installContent()V

    .line 268
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/mfm/view/CustomAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/mfm/view/CustomAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 178
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 164
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 219
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 187
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 196
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 245
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 205
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setIcon(I)V

    .line 254
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 258
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setInverseBackgroundForced(Z)V

    .line 262
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->mAlert:Lcom/felicanetworks/mfm/view/CustomAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/mfm/view/CustomAlertController;->setView(Landroid/view/View;IIII)V

    .line 150
    return-void
.end method
