.class public Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfm/view/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    .line 290
    return-void
.end method


# virtual methods
.method public create()Lcom/felicanetworks/mfm/view/CustomAlertDialog;
    .locals 3

    .prologue
    .line 802
    new-instance v0, Lcom/felicanetworks/mfm/view/CustomAlertDialog;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;-><init>(Landroid/content/Context;)V

    .line 803
    .local v0, "dialog":Lcom/felicanetworks/mfm/view/CustomAlertDialog;
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    invoke-static {v0}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->access$000(Lcom/felicanetworks/mfm/view/CustomAlertDialog;)Lcom/felicanetworks/mfm/view/CustomAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->apply(Lcom/felicanetworks/mfm/view/CustomAlertController;)V

    .line 804
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setCancelable(Z)V

    .line 805
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 806
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 809
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 513
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 514
    return-object p0
.end method

.method public setCancelable(Z)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCancelable:Z

    .line 453
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 532
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 534
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 325
    return-object p0
.end method

.method public setIcon(I)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIconId:I

    .line 355
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 365
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 782
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mForceInverseBackground:Z

    .line 783
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 485
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 486
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 497
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 498
    return-object p0
.end method

.method public setMessage(I)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 335
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 345
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 558
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 559
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCheckedItems:[Z

    .line 560
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    .line 561
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 612
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p4, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 613
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    .line 616
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 584
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 585
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCheckedItems:[Z

    .line 586
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsMultiChoice:Z

    .line 587
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 403
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 404
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 416
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 417
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 429
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 430
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 442
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 443
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 464
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 723
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 474
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 377
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 378
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 390
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 391
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 790
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 791
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 637
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 638
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 639
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    .line 640
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 662
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p4, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 663
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 664
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 665
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    .line 666
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 707
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 708
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 709
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    .line 710
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 685
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 686
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mCheckedItem:I

    .line 687
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    .line 688
    return-object p0
.end method

.method public setTitle(I)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v1, v1, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 299
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 309
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    .line 736
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 737
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 764
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mView:Landroid/view/View;

    .line 765
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 766
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p2, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mViewSpacingLeft:I

    .line 767
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p3, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mViewSpacingTop:I

    .line 768
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p4, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mViewSpacingRight:I

    .line 769
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->P:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput p5, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mViewSpacingBottom:I

    .line 770
    return-object p0
.end method

.method public show()Lcom/felicanetworks/mfm/view/CustomAlertDialog;
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/felicanetworks/mfm/view/CustomAlertDialog$Builder;->create()Lcom/felicanetworks/mfm/view/CustomAlertDialog;

    move-result-object v0

    .line 818
    .local v0, "dialog":Lcom/felicanetworks/mfm/view/CustomAlertDialog;
    invoke-virtual {v0}, Lcom/felicanetworks/mfm/view/CustomAlertDialog;->show()V

    .line 819
    return-object v0
.end method
