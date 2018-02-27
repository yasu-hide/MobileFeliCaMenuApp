.class public abstract Lcom/felicanetworks/cmnlib/log/LogMgr;
.super Ljava/lang/Object;
.source "LogMgr.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/cmnlib/log/LogMgr$1;,
        Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;,
        Lcom/felicanetworks/cmnlib/log/LogMgr$StackTraceFormatter;,
        Lcom/felicanetworks/cmnlib/log/LogMgr$CatDev;,
        Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    }
.end annotation


# static fields
.field private static final APP_STC:Ljava/lang/String; = "STC"

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final EXCEPTION_ATTR:I = 0x400

.field private static final EXP_MESSAGE_DIGITS_LINENUMBER:I = 0x4

.field private static final EXP_MESSAGE_DISPLAY_COUNT:I = 0x3

.field private static final EXP_MESSAGE_LINENUMBER_SEPARATOR:Ljava/lang/String; = ":"

.field private static final EXP_MESSAGE_METHOD_SEPARATOR:Ljava/lang/String; = "#"

.field private static final FIELD_SEPARATOR:Ljava/lang/String; = ","

.field private static final IDENTIFIRECODE_DIGITS_APPVERCODE:I = 0x4

.field private static final IDENTIFIRECODE_DIGITS_CLASSID:I = 0x3

.field private static final IDENTIFIRECODE_DIGITS_EXPID:I = 0x3

.field private static final IDENTIFIRECODE_DIGITS_FUNCID:I = 0x2

.field private static final IDENTIFIRECODE_DIGITS_LINENUMBER:I = 0x4

.field private static final IDENTIFIRECODE_NONE_ID:I = 0x0

.field private static final IDENTIFIRECODE_SEPARATOR:Ljava/lang/String; = "-"

.field private static final IDENTIFIRECODE_UNKNOWN_ERR_ID:I = 0xfff

.field private static final LOGGER_DIGITS_LINENUMBER:I = 0x4

.field private static final LOGGER_LINENUMBER_SEPARATOR:Ljava/lang/String; = ":"

.field private static final LOGGER_METHOD_SEPARATOR:Ljava/lang/String; = "#"

.field static final MSG_TIME_ZONE_CANT_GET:Ljava/lang/String; = "Timezone hasn\'t been set."

.field private static final RUNTIME_ATTR:I = 0x800

.field private static appName:Ljava/lang/String;

.field private static appVerCode:I

.field private static final exceptionIdentifierCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final runtimeExceptionIdentifierCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Lcom/felicanetworks/cmnlib/AppContext;

.field dateFormatter:Lcom/felicanetworks/cmnlib/util/DateFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->appName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->appVerCode:I

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    .line 260
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ActivityNotFoundException"

    const/16 v2, 0x801

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AndroidRuntimeException"

    const/16 v2, 0x802

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AnnotationTypeMismatchException"

    const/16 v2, 0x803

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ArithmeticException"

    const/16 v2, 0x804

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ArrayStoreException"

    const/16 v2, 0x805

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BufferOverflowException"

    const/16 v2, 0x806

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BufferUnderflowException"

    const/16 v2, 0x807

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ClassCastException"

    const/16 v2, 0x808

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ConcurrentModificationException"

    const/16 v2, 0x809

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "DOMException"

    const/16 v2, 0x80a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "EmptyStackException"

    const/16 v2, 0x80b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "EnumConstantNotPresentException"

    const/16 v2, 0x80c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "GLException"

    const/16 v2, 0x80d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalArgumentException"

    const/16 v2, 0x80e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalMonitorStateException"

    const/16 v2, 0x80f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalStateException"

    const/16 v2, 0x810

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IncompleteAnnotationException"

    const/16 v2, 0x811

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IndexOutOfBoundsException"

    const/16 v2, 0x812

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InflateException"

    const/16 v2, 0x813

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MalformedParameterizedTypeException"

    const/16 v2, 0x814

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MissingResourceException"

    const/16 v2, 0x815

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NegativeArraySizeException"

    const/16 v2, 0x816

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoSuchElementException"

    const/16 v2, 0x817

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NullPointerException"

    const/16 v2, 0x818

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ParcelFormatException"

    const/16 v2, 0x819

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ParseException"

    const/16 v2, 0x81a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ProviderException"

    const/16 v2, 0x81b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "RejectedExecutionException"

    const/16 v2, 0x81c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ActionException"

    const/16 v2, 0x81d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NotFoundException"

    const/16 v2, 0x81e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLException"

    const/16 v2, 0x81f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SecurityException"

    const/16 v2, 0x820

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "StaleDataException"

    const/16 v2, 0x821

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BadSurfaceTypeException"

    const/16 v2, 0x822

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "TimeFormatException"

    const/16 v2, 0x823

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "TypeNotPresentException"

    const/16 v2, 0x824

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UndeclaredThrowableException"

    const/16 v2, 0x825

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnsupportedDigestAlgorithmException"

    const/16 v2, 0x826

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnsupportedOperationException"

    const/16 v2, 0x827

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BadTokenException"

    const/16 v2, 0x828

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AccessControlException"

    const/16 v2, 0x829

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AlreadyConnectedException"

    const/16 v2, 0x82a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ArrayIndexOutOfBoundsException"

    const/16 v2, 0x82b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BadParcelableException"

    const/16 v2, 0x82c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CancellationException"

    const/16 v2, 0x82d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CancelledKeyException"

    const/16 v2, 0x82e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ClosedSelectorException"

    const/16 v2, 0x82f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ConnectionPendingException"

    const/16 v2, 0x830

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CursorIndexOutOfBoundsException"

    const/16 v2, 0x831

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "DuplicateFormatFlagsException"

    const/16 v2, 0x832

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "FormatFlagsConversionMismatchException"

    const/16 v2, 0x833

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "FormatterClosedException"

    const/16 v2, 0x834

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalBlockingModeException"

    const/16 v2, 0x835

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalCharsetNameException"

    const/16 v2, 0x836

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalFormatCodePointException"

    const/16 v2, 0x837

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalFormatConversionException"

    const/16 v2, 0x838

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalFormatException"

    const/16 v2, 0x839

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalFormatFlagsException"

    const/16 v2, 0x83a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalFormatPrecisionException"

    const/16 v2, 0x83b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalFormatWidthException"

    const/16 v2, 0x83c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalSelectorException"

    const/16 v2, 0x83d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalThreadStateException"

    const/16 v2, 0x83e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InputMismatchException"

    const/16 v2, 0x840

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidMarkException"

    const/16 v2, 0x841

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidParameterException"

    const/16 v2, 0x842

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MissingFormatArgumentException"

    const/16 v2, 0x843

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MissingFormatWidthException"

    const/16 v2, 0x844

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoConnectionPendingException"

    const/16 v2, 0x845

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NonReadableChannelException"

    const/16 v2, 0x846

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NonWritableChannelException"

    const/16 v2, 0x847

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NotYetBoundException"

    const/16 v2, 0x848

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NotYetConnectedException"

    const/16 v2, 0x849

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NumberFormatException"

    const/16 v2, 0x84a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "OverlappingFileLockException"

    const/16 v2, 0x84b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "PatternSyntaxException"

    const/16 v2, 0x84c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ReadOnlyBufferException"

    const/16 v2, 0x84d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ReceiverCallNotAllowedException"

    const/16 v2, 0x84e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLiteAbortException"

    const/16 v2, 0x84f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLiteConstraintException"

    const/16 v2, 0x850

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLiteDatabaseCorruptException"

    const/16 v2, 0x851

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLiteDiskIOException"

    const/16 v2, 0x852

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLiteDoneException"

    const/16 v2, 0x853

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLiteException"

    const/16 v2, 0x854

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLiteFullException"

    const/16 v2, 0x855

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLiteMisuseException"

    const/16 v2, 0x856

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "StringIndexOutOfBoundsException"

    const/16 v2, 0x857

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnknownFormatConversionException"

    const/16 v2, 0x858

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnknownFormatFlagsException"

    const/16 v2, 0x859

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnresolvedAddressException"

    const/16 v2, 0x85a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnsupportedAddressTypeException"

    const/16 v2, 0x85b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnsupportedCharsetException"

    const/16 v2, 0x85c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    .line 506
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "Exception"

    const/16 v2, 0x401

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AccountsException"

    const/16 v2, 0x402

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AuthenticatorException"

    const/16 v2, 0x403

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NetworkErrorException"

    const/16 v2, 0x404

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "OperationCanceledException"

    const/16 v2, 0x405

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AclNotFoundException"

    const/16 v2, 0x406

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AndroidException"

    const/16 v2, 0x407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BackingStoreException"

    const/16 v2, 0x408

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BrokenBarrierException"

    const/16 v2, 0x409

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CertificateException"

    const/16 v2, 0x40a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CertificateEncodingException"

    const/16 v2, 0x40b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CertificateExpiredException"

    const/16 v2, 0x40c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CertificateNotYetValidException"

    const/16 v2, 0x40d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CertificateParsingException"

    const/16 v2, 0x40e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ClassNotFoundException"

    const/16 v2, 0x40f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CloneNotSupportedException"

    const/16 v2, 0x410

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "DataFormatException"

    const/16 v2, 0x411

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "DateParseException"

    const/16 v2, 0x412

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "DestroyFailedException"

    const/16 v2, 0x413

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ExecutionException"

    const/16 v2, 0x414

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "GeneralSecurityException"

    const/16 v2, 0x415

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BadPaddingException"

    const/16 v2, 0x416

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CRLException"

    const/16 v2, 0x417

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CertPathBuilderException"

    const/16 v2, 0x418

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CertPathValidatorException"

    const/16 v2, 0x419

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CertStoreException"

    const/16 v2, 0x41a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "DigestException"

    const/16 v2, 0x41c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ExemptionMechanismException"

    const/16 v2, 0x41d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalBlockSizeException"

    const/16 v2, 0x41e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidAlgorithmParameterException"

    const/16 v2, 0x420

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidKeySpecException"

    const/16 v2, 0x421

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidParameterSpecException"

    const/16 v2, 0x422

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "KeyException"

    const/16 v2, 0x423

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "KeyStoreException"

    const/16 v2, 0x424

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "LoginException"

    const/16 v2, 0x425

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoSuchAlgorithmException"

    const/16 v2, 0x426

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoSuchPaddingException"

    const/16 v2, 0x427

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoSuchProviderException"

    const/16 v2, 0x428

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ShortBufferException"

    const/16 v2, 0x429

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SignatureException"

    const/16 v2, 0x42a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnrecoverableEntryException"

    const/16 v2, 0x42b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnrecoverableKeyException"

    const/16 v2, 0x42c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidKeyException"

    const/16 v2, 0x42d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "KeyManagementException"

    const/16 v2, 0x42e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "HttpException"

    const/16 v2, 0x42f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MethodNotSupportedException"

    const/16 v2, 0x430

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ProtocolException"

    const/16 v2, 0x431

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "TunnelRefusedException"

    const/16 v2, 0x432

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AuthenticationException"

    const/16 v2, 0x433

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CircularRedirectException"

    const/16 v2, 0x434

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidCredentialsException"

    const/16 v2, 0x435

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MalformedChallengeException"

    const/16 v2, 0x436

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MalformedCookieException"

    const/16 v2, 0x437

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NTLMEngineException"

    const/16 v2, 0x438

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NonRepeatableRequestException"

    const/16 v2, 0x439

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "RedirectException"

    const/16 v2, 0x43a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnsupportedHttpVersionException"

    const/16 v2, 0x43b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IOException"

    const/16 v2, 0x43c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CharConversionException"

    const/16 v2, 0x43d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "CharacterCodingException"

    const/16 v2, 0x43e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ClientProtocolException"

    const/16 v2, 0x43f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ClosedChannelException"

    const/16 v2, 0x440

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ConnectionClosedException"

    const/16 v2, 0x441

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "EOFException"

    const/16 v2, 0x442

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "FileLockInterruptionException"

    const/16 v2, 0x443

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "FileNotFoundException"

    const/16 v2, 0x444

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "HttpRetryException"

    const/16 v2, 0x445

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InterruptedIOException"

    const/16 v2, 0x446

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidPropertiesFormatException"

    const/16 v2, 0x447

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MalformedChunkCodingException"

    const/16 v2, 0x448

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MalformedURLException"

    const/16 v2, 0x449

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoHttpResponseException"

    const/16 v2, 0x44a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ObjectStreamException"

    const/16 v2, 0x44b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SSLException"

    const/16 v2, 0x44d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SocketException"

    const/16 v2, 0x44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SyncFailedException"

    const/16 v2, 0x44f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UTFDataFormatException"

    const/16 v2, 0x450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnknownHostException"

    const/16 v2, 0x451

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnknownServiceException"

    const/16 v2, 0x452

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnsupportedEncodingException"

    const/16 v2, 0x453

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ZipException"

    const/16 v2, 0x454

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "AsynchronousCloseException"

    const/16 v2, 0x455

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BindException"

    const/16 v2, 0x456

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ClosedByInterruptException"

    const/16 v2, 0x457

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ConnectException"

    const/16 v2, 0x458

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ConnectTimeoutException"

    const/16 v2, 0x459

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ConnectionPoolTimeoutException"

    const/16 v2, 0x45a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "HttpHostConnectException"

    const/16 v2, 0x45b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "HttpResponseException"

    const/16 v2, 0x45c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidClassException"

    const/16 v2, 0x45d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidObjectException"

    const/16 v2, 0x45e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "JarException"

    const/16 v2, 0x45f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "MalformedInputException"

    const/16 v2, 0x460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoRouteToHostException"

    const/16 v2, 0x461

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NotActiveException"

    const/16 v2, 0x462

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NotSerializableException"

    const/16 v2, 0x463

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "OptionalDataException"

    const/16 v2, 0x464

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "PortUnreachableException"

    const/16 v2, 0x465

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SSLHandshakeException"

    const/16 v2, 0x466

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SSLKeyException"

    const/16 v2, 0x467

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SSLPeerUnverifiedException"

    const/16 v2, 0x468

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SSLProtocolException"

    const/16 v2, 0x469

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SocketTimeoutException"

    const/16 v2, 0x46a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "StreamCorruptedException"

    const/16 v2, 0x46b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnmappableCharacterException"

    const/16 v2, 0x46c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "WriteAbortedException"

    const/16 v2, 0x46d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "IllegalAccessException"

    const/16 v2, 0x46e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InstantiationException"

    const/16 v2, 0x46f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InterruptedException"

    const/16 v2, 0x470

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvalidPreferencesFormatException"

    const/16 v2, 0x471

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "InvocationTargetException"

    const/16 v2, 0x472

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "JSONException"

    const/16 v2, 0x473

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "LastOwnerException"

    const/16 v2, 0x474

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoSuchFieldException"

    const/16 v2, 0x475

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NoSuchMethodException"

    const/16 v2, 0x476

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "NotOwnerException"

    const/16 v2, 0x477

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "OperationApplicationException"

    const/16 v2, 0x478

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ParseException"

    const/16 v2, 0x479

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "ParserConfigurationException"

    const/16 v2, 0x47a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "PrivilegedActionException"

    const/16 v2, 0x47b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SAXException"

    const/16 v2, 0x47c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SAXNotRecognizedException"

    const/16 v2, 0x47d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SAXNotSupportedException"

    const/16 v2, 0x47e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SAXParseException"

    const/16 v2, 0x480

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLException"

    const/16 v2, 0x481

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "BatchUpdateException"

    const/16 v2, 0x482

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "SQLWarning"

    const/16 v2, 0x483

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "DataTruncation"

    const/16 v2, 0x484

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "OutOfResourcesException"

    const/16 v2, 0x485

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "TimeoutException"

    const/16 v2, 0x486

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "TooManyListenersException"

    const/16 v2, 0x487

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "URISyntaxException"

    const/16 v2, 0x488

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "UnsupportedCallbackException"

    const/16 v2, 0x489

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "XmlPullParserException"

    const/16 v2, 0x48a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    const-string v1, "FelicaException"

    const/16 v2, 0x48b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 5
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/log/LogMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 60
    :try_start_0
    new-instance v2, Lcom/felicanetworks/cmnlib/util/DateFormatter;

    const-string v3, "yyyyMMddHHmmssSSS"

    iget-object v1, p1, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v4, 0x1000018

    invoke-virtual {v1, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/felicanetworks/cmnlib/util/DateFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/felicanetworks/cmnlib/log/LogMgr;->dateFormatter:Lcom/felicanetworks/cmnlib/util/DateFormatter;
    :try_end_0
    .catch Lcom/felicanetworks/cmnlib/sg/SgMgrException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Timezone hasn\'t been set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static doOut(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "category"    # Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 674
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr$1;->$SwitchMap$com$felicanetworks$cmnlib$log$LogMgr$CatExp:[I

    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 685
    :goto_0
    return-void

    .line 676
    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getAppVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1690
    const/4 v1, 0x0

    .line 1692
    .local v1, "verCode":I
    sget v3, Lcom/felicanetworks/cmnlib/log/LogMgr;->appVerCode:I

    if-nez v3, :cond_1

    .line 1693
    if-nez p0, :cond_0

    .line 1706
    :goto_0
    return v2

    .line 1697
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1698
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    move v2, v1

    .line 1706
    goto :goto_0

    .line 1704
    :cond_1
    sget v1, Lcom/felicanetworks/cmnlib/log/LogMgr;->appVerCode:I

    goto :goto_1

    .line 1699
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getErrIdentifierCode(Landroid/content/Context;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 7
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "functionInfo"    # Lcom/felicanetworks/cmnlib/FunctionCodeInterface;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1651
    :try_start_0
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v5, v6

    .line 1654
    .local v4, "ste":Ljava/lang/StackTraceElement;
    invoke-static {p0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getAppVersionCode(Landroid/content/Context;)I

    move-result v5

    sput v5, Lcom/felicanetworks/cmnlib/log/LogMgr;->appVerCode:I

    .line 1657
    invoke-static {p1, v4, p2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getErrIdentifierCodeElement(Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/StackTraceElement;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 1660
    .local v2, "errIdentifierCode":Ljava/lang/String;
    instance-of v5, p2, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;

    if-eqz v5, :cond_0

    .line 1661
    move-object v0, p2

    check-cast v0, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;

    move-object v5, v0

    invoke-interface {v5}, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1663
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1664
    .local v1, "buf":Ljava/lang/StringBuffer;
    sget v5, Lcom/felicanetworks/cmnlib/log/LogMgr;->appVerCode:I

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->intToDecString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1665
    check-cast p2, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;

    .end local p2    # "e":Ljava/lang/Exception;
    invoke-interface {p2}, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1666
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1676
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    :cond_0
    :goto_0
    return-object v2

    .line 1669
    .end local v2    # "errIdentifierCode":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1674
    .local v3, "exp":Ljava/lang/Exception;
    const-string v2, ""

    .restart local v2    # "errIdentifierCode":Ljava/lang/String;
    goto :goto_0
.end method

.method protected static getErrIdentifierCodeElement(Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/StackTraceElement;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 6
    .param p0, "functionInfo"    # Lcom/felicanetworks/cmnlib/FunctionCodeInterface;
    .param p1, "functionEl"    # Ljava/lang/StackTraceElement;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 898
    const/4 v0, 0x0

    .line 901
    .local v0, "expId":I
    if-eqz p2, :cond_0

    .line 902
    invoke-static {p2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getExpIdentifierID(Ljava/lang/Exception;)I

    move-result v0

    .line 906
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/felicanetworks/cmnlib/log/LogMgr;->appVerCode:I

    invoke-static {v2, v5}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->intToDecString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/felicanetworks/cmnlib/FunctionCodeInterface;->getFunctionCode()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->intToHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/felicanetworks/cmnlib/FunctionCodeInterface;->getClassCode()I

    move-result v2

    invoke-static {v2, v4}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->intToHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v5}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->intToDecString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v4}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->intToHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getExpIdentifierID(Ljava/lang/Exception;)I
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 842
    instance-of v1, p0, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;

    if-eqz v1, :cond_0

    .line 844
    check-cast p0, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;

    .end local p0    # "e":Ljava/lang/Exception;
    invoke-interface {p0}, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;->getExceptionCode()I

    move-result v0

    .line 853
    .local v0, "id":I
    :goto_0
    return v0

    .line 845
    .end local v0    # "id":I
    .restart local p0    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 848
    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr;->runtimeExceptionIdentifierCodeMap:Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getExpIdentifierIDFromIdentifierCodeArray(Ljava/lang/Exception;Ljava/util/Map;)I

    move-result v0

    .restart local v0    # "id":I
    goto :goto_0

    .line 851
    .end local v0    # "id":I
    :cond_1
    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr;->exceptionIdentifierCodeMap:Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getExpIdentifierIDFromIdentifierCodeArray(Ljava/lang/Exception;Ljava/util/Map;)I

    move-result v0

    .restart local v0    # "id":I
    goto :goto_0
.end method

.method protected static getExpIdentifierIDFromIdentifierCodeArray(Ljava/lang/Exception;Ljava/util/Map;)I
    .locals 4
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v2, 0xfff

    .line 789
    .local v2, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "expName":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 793
    .local v0, "expId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 797
    :cond_0
    return v2
.end method

.method protected static getLoggerInfoElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 3
    .param p0, "functionEl"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->getClassShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->intToDecString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 1714
    const/4 v0, 0x2

    return v0
.end method

.method protected getContext()Lcom/felicanetworks/cmnlib/AppContext;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    return-object v0
.end method

.method protected getDateElement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr;->dateFormatter:Lcom/felicanetworks/cmnlib/util/DateFormatter;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnlib/util/DateFormatter;->getSystemTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getExpMsgElement(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1046
    if-nez p1, :cond_0

    .line 1047
    const-string v0, ""

    .line 1049
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getExpNameElement(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1022
    if-nez p1, :cond_0

    .line 1023
    const-string v0, ""

    .line 1025
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 1722
    const/4 v0, 0x6

    return v0
.end method

.method protected getTagElement(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;)Ljava/lang/String;
    .locals 1
    .param p1, "category"    # Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    .prologue
    .line 752
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/LogMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v0, v0, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->appName:Ljava/lang/String;

    .line 755
    :cond_0
    sget-object v0, Lcom/felicanetworks/cmnlib/log/LogMgr;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 10
    .param p1, "category"    # Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;
    .param p2, "functionInfo"    # Lcom/felicanetworks/cmnlib/FunctionCodeInterface;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 1196
    const/4 v4, 0x0

    .line 1200
    .local v4, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/felicanetworks/cmnlib/log/LogMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v8, 0x100001f

    invoke-virtual {v6, v8}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1201
    const/4 v1, 0x1

    .line 1207
    .local v1, "isEnableOutput":Z
    :goto_0
    if-nez v1, :cond_1

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    if-eq p1, v6, :cond_1

    move-object v6, v7

    .line 1283
    .end local v1    # "isEnableOutput":Z
    .end local p3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 1203
    .restart local p3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isEnableOutput":Z
    goto :goto_0

    .line 1211
    :cond_1
    new-instance v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;

    invoke-direct {v2}, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;-><init>()V

    .line 1215
    .local v2, "log":Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v6, v7

    .line 1218
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {p0, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getTagElement(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->tag:Ljava/lang/String;

    .line 1221
    iget-object v6, p0, Lcom/felicanetworks/cmnlib/log/LogMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getAppVersionCode(Landroid/content/Context;)I

    move-result v6

    sput v6, Lcom/felicanetworks/cmnlib/log/LogMgr;->appVerCode:I

    .line 1224
    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    if-ne p1, v6, :cond_4

    .line 1225
    invoke-static {p2, v5, p3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getErrIdentifierCodeElement(Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/StackTraceElement;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->identifyCode:Ljava/lang/String;

    .line 1230
    :goto_2
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getDateElement()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->date:Ljava/lang/String;

    .line 1232
    invoke-static {v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getLoggerInfoElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->loggerInfo:Ljava/lang/String;

    .line 1234
    invoke-virtual {p0, p3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getExpNameElement(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->expClassName:Ljava/lang/String;

    .line 1236
    invoke-virtual {p0, p3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getExpMsgElement(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->expMsg:Ljava/lang/String;

    .line 1238
    new-instance v6, Lcom/felicanetworks/cmnlib/log/LogMgr$StackTraceFormatter;

    invoke-virtual {p3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/felicanetworks/cmnlib/log/LogMgr$StackTraceFormatter;-><init>([Ljava/lang/StackTraceElement;)V

    invoke-virtual {v6}, Lcom/felicanetworks/cmnlib/log/LogMgr$StackTraceFormatter;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->dbgData:Ljava/lang/String;

    .line 1241
    invoke-virtual {v2}, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1255
    .local v3, "logData":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1256
    iget-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->tag:Ljava/lang/String;

    invoke-static {p1, v6, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->doOut(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_2
    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    if-ne p1, v6, :cond_3

    .line 1266
    iget-object v4, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->identifyCode:Ljava/lang/String;

    .line 1269
    instance-of v6, p3, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;

    if-eqz v6, :cond_3

    .line 1270
    move-object v0, p3

    check-cast v0, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;

    move-object v6, v0

    invoke-interface {v6}, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1271
    check-cast p3, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;

    .end local p3    # "e":Ljava/lang/Exception;
    invoke-interface {p3}, Lcom/felicanetworks/cmnlib/ExceptionCodeInterface;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v4

    .end local v1    # "isEnableOutput":Z
    .end local v2    # "log":Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;
    .end local v3    # "logData":Ljava/lang/String;
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    :cond_3
    :goto_3
    move-object v6, v4

    .line 1283
    goto :goto_1

    .line 1227
    .restart local v1    # "isEnableOutput":Z
    .restart local v2    # "log":Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;
    .restart local v5    # "ste":Ljava/lang/StackTraceElement;
    .restart local p3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v6, 0x0

    invoke-static {p2, v5, v6}, Lcom/felicanetworks/cmnlib/log/LogMgr;->getErrIdentifierCodeElement(Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/StackTraceElement;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;->identifyCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1276
    .end local v1    # "isEnableOutput":Z
    .end local v2    # "log":Lcom/felicanetworks/cmnlib/log/LogMgr$LogFormatter;
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    .end local p3    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v6

    goto :goto_3
.end method
