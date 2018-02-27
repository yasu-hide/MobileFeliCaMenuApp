.class public Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;
.super Ljava/lang/Object;
.source "LogMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/log/LogMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LogFormatter"
.end annotation


# instance fields
.field protected date:Ljava/lang/String;

.field protected dbgData:Ljava/lang/String;

.field protected dbgMsg:Ljava/lang/String;

.field protected expClassName:Ljava/lang/String;

.field protected expMsg:Ljava/lang/String;

.field protected identifyCode:Ljava/lang/String;

.field protected loggerInfo:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->tag:Ljava/lang/String;

    .line 1121
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->date:Ljava/lang/String;

    .line 1123
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->identifyCode:Ljava/lang/String;

    .line 1125
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->loggerInfo:Ljava/lang/String;

    .line 1127
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->expClassName:Ljava/lang/String;

    .line 1129
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->expMsg:Ljava/lang/String;

    .line 1131
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->dbgMsg:Ljava/lang/String;

    .line 1133
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->dbgData:Ljava/lang/String;

    .line 1117
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->identifyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->loggerInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->expClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->expMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->dbgMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->dbgData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
