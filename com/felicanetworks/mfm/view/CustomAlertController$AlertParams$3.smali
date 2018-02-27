.class Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "CustomAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->createListView(Lcom/felicanetworks/mfm/view/CustomAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/felicanetworks/mfm/view/CustomAlertController;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;Lcom/felicanetworks/mfm/view/CustomAlertController;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams$3;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iput-object p2, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams$3;->val$dialog:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 943
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams$3;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-object v0, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams$3;->val$dialog:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v1}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$600(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 944
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams$3;->this$0:Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/CustomAlertController$AlertParams$3;->val$dialog:Lcom/felicanetworks/mfm/view/CustomAlertController;

    invoke-static {v0}, Lcom/felicanetworks/mfm/view/CustomAlertController;->access$600(Lcom/felicanetworks/mfm/view/CustomAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 947
    :cond_0
    return-void
.end method
