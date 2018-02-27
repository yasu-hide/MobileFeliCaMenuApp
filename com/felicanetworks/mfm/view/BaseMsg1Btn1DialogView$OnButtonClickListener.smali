.class public Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView$OnButtonClickListener;
.super Ljava/lang/Object;
.source "BaseMsg1Btn1DialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView$OnButtonClickListener;->this$0:Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView$OnButtonClickListener;->this$0:Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;

    invoke-virtual {v0}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn1DialogView;->onDialogButtonClick()V

    .line 373
    return-void
.end method
