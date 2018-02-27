.class public final enum Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
.super Ljava/lang/Enum;
.source "LogMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/log/LogMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CatExp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

.field public static final enum ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

.field public static final enum WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    const-string v1, "ERR"

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 74
    new-instance v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    const-string v1, "WAR"

    invoke-direct {v0, v1, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    aput-object v1, v0, v3

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->$VALUES:[Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    return-object v0
.end method

.method public static values()[Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->$VALUES:[Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v0}, [Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    return-object v0
.end method
