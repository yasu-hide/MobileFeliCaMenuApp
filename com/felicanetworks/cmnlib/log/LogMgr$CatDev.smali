.class public final enum Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;
.super Ljava/lang/Enum;
.source "LogMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/log/LogMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CatDev"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;->$VALUES:[Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;

    return-object v0
.end method

.method public static values()[Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;->$VALUES:[Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;

    invoke-virtual {v0}, [Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;

    return-object v0
.end method
