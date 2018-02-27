.class Lcom/felicanetworks/cmnview/BaseDialogView$DismissListenerImpl;
.super Ljava/lang/Object;
.source "BaseDialogView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnview/BaseDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnview/BaseDialogView;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/cmnview/BaseDialogView;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/felicanetworks/cmnview/BaseDialogView$DismissListenerImpl;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/cmnview/BaseDialogView;Lcom/felicanetworks/cmnview/BaseDialogView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/cmnview/BaseDialogView;
    .param p2, "x1"    # Lcom/felicanetworks/cmnview/BaseDialogView$1;

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseDialogView$DismissListenerImpl;-><init>(Lcom/felicanetworks/cmnview/BaseDialogView;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView$DismissListenerImpl;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-static {v0}, Lcom/felicanetworks/cmnview/BaseDialogView;->access$500(Lcom/felicanetworks/cmnview/BaseDialogView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/felicanetworks/cmnview/BaseDialogView$DismissListenerImpl;->this$0:Lcom/felicanetworks/cmnview/BaseDialogView;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnview/BaseDialogView;->defaultButton()V

    .line 468
    :cond_0
    return-void
.end method
