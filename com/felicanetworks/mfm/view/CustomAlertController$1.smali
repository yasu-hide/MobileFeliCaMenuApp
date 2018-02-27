.class Lcom/felicanetworks/mfm/view/CustomAlertController$1;
.super Ljava/lang/Object;
.source "CustomAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfm/view/CustomAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfm/view/CustomAlertController;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$000(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$100(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$100(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 139
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$700(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v3}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$600(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$200(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$300(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$300(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$400(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$500(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$1;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$500(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
