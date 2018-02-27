.class Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On2ndButtonClockListener;
.super Ljava/lang/Object;
.source "BaseMsg1Btn2DialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "On2ndButtonClockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On2ndButtonClockListener;->this$0:Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;
    .param p2, "x1"    # Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$1;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On2ndButtonClockListener;-><init>(Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView$On2ndButtonClockListener;->this$0:Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;

    invoke-virtual {v0}, Lcom/felicanetworks/mfm/view/BaseMsg1Btn2DialogView;->on2ndDialogButtonClick()V

    .line 437
    return-void
.end method
