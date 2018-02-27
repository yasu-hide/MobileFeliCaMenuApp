.class public abstract Lcom/felicanetworks/cmnlib/sg/SgMgr;
.super Ljava/lang/Object;
.source "SgMgr.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/cmnlib/sg/SgMgr$ClassNameChecker;,
        Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;,
        Lcom/felicanetworks/cmnlib/sg/SgMgr$StringValueChecker;,
        Lcom/felicanetworks/cmnlib/sg/SgMgr$TimezoneChecker;,
        Lcom/felicanetworks/cmnlib/sg/SgMgr$ZeroOrOneChecker;,
        Lcom/felicanetworks/cmnlib/sg/SgMgr$LogOutputFlagChecker;,
        Lcom/felicanetworks/cmnlib/sg/SgMgr$FirstIssueExecFlagChecker;,
        Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    }
.end annotation


# static fields
.field protected static final ATTR_ALPHA_NUMBER:I = 0x4

.field protected static final ATTR_ALPHA_SIGN:I = 0x8

.field protected static final ATTR_DEC_NUMBER:I = 0x1

.field protected static final ATTR_HEX_NUMBER:I = 0x2

.field protected static final ATTR_INDIVIDUAL:I = 0x80

.field protected static final ATTR_NONE:I = 0x0

.field protected static final ATTR_URI:I = 0x10

.field protected static final DATAFORM_BIN:I = 0x2

.field protected static final DATAFORM_INT:I = 0x1

.field protected static final DATAFORM_STRING:I = 0x0

.field protected static final DATASIZE_CHANGEABLE:I = 0x1

.field protected static final DATASIZE_CHECKNON:I = 0x2

.field protected static final DATASIZE_FIXED:I = 0x0

.field private static final DISP_ERROR_CODE_FORMAT:Ljava/lang/String; = "%02X-%03X-%04d-%03X"

.field protected static final ELEMENT_CHECK_TABLE_CNT:I = 0x7

.field protected static final ISMANDATERY_MUST:I = 0x0

.field protected static final ISMANDATERY_OPT:I = 0x1

.field public static final KEY_APP_MARKETAPP_PKGNAME:I = 0x1000025

.field public static final KEY_LOG_OUTPUT_FLG:I = 0x100001f

.field public static final KEY_SRV_TIMEZONE:I = 0x1000018

.field protected static final LOGIC_KEY_MASK:I = 0x1000000

.field protected static final LOG_FORMAT_KEY:Ljava/lang/String; = "key  = %08X : %s"

.field private static final LOG_TAG_STR:Ljava/lang/String; = "%s"

.field protected static final SGFILE_COLUMN_ATTR_KEY_BASE:I = 0x10

.field protected static final SGFILE_COLUMN_COUNT:I = 0x2

.field protected static final SGFILE_COLUMN_NUMBER_KEY:I = 0x0

.field protected static final SGFILE_COLUMN_NUMBER_VALUE:I = 0x1

.field protected static final SGFILE_FORMAT_SEPARATOR:Ljava/lang/String; = ","

.field protected static final SGFILE_SUPPORTED_LINE_FORMAT:Ljava/lang/String; = "^[0-9A-F]{8},.*"

.field protected static final SGFILE_UNSUPPORTED_LINE_FORMAT:Ljava/lang/String; = ".*,.*,"

.field protected static final SG_INFO_TABLE_CLM_ATTRIBUTE:I = 0x4

.field protected static final SG_INFO_TABLE_CLM_DATA_TYPE:I = 0x6

.field protected static final SG_INFO_TABLE_CLM_MANDATERY:I = 0x5

.field protected static final SG_INFO_TABLE_CLM_REAL_KEY:I = 0x1

.field protected static final SG_INFO_TABLE_CLM_SIZE:I = 0x3

.field protected static final SG_INFO_TABLE_CLM_SIZE_TYPE:I = 0x2

.field protected static final SG_INFO_TABLE_CLM_VIRTUAL_KEY:I = 0x0

.field protected static final TBL_ELEMENT_IVALUE_ISMANDATERY:I = 0x3

.field protected static final TBL_ELEMENT_SG_CODE:I = 0x0

.field protected static final TBL_ELEMENT_VALUE_ATTR:I = 0x2

.field protected static final TBL_ELEMENT_VALUE_SIZE:I = 0x1

.field private static final UNKNOWN_EXCEPTION_CODE:I = 0xfff

.field private static final commonSupportedSgInformationTable:[[I


# instance fields
.field private context:Lcom/felicanetworks/cmnlib/AppContext;

.field private errorFlg:Z

.field protected sgTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    sput-object v0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->commonSupportedSgInformationTable:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1000025
        0x4
        0x1
        0x40
        0x80
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 1
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z

    .line 494
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgTable:Ljava/util/Map;

    .line 499
    return-void
.end method

.method private checkMandatery([[I)V
    .locals 8
    .param p1, "checkTbl"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 886
    array-length v4, p1

    iget-object v5, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgTable:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 890
    move-object v0, p1

    .local v0, "arr$":[[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 893
    .local v1, "checkData":[I
    const/4 v4, 0x5

    aget v4, v1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgTable:Ljava/util/Map;

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 898
    const-string v4, "key  = %08X : %s"

    aget v5, v1, v7

    const-string v6, "Must be corrected."

    invoke-virtual {p0, v4, v5, v6}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgLogOut(Ljava/lang/String;ILjava/lang/String;)V

    .line 899
    iput-boolean v7, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z

    .line 890
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "arr$":[[I
    .end local v1    # "checkData":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-void
.end method

.method private checkSg(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "checkList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 740
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;

    .line 742
    .local v0, "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 746
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    if-nez v6, :cond_0

    .line 750
    const-string v6, "key  = %08X : %s"

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v7, v7, v4

    const-string v8, "Not specified."

    invoke-virtual {p0, v6, v7, v8}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgLogOut(Ljava/lang/String;ILjava/lang/String;)V

    .line 751
    iput-boolean v4, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z

    goto :goto_0

    .line 756
    :cond_1
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v6, v6, v9

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v6, v6, v9

    if-ne v4, v6, :cond_3

    .line 758
    :cond_2
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v6, v6, v9

    if-nez v6, :cond_4

    move v2, v4

    .line 763
    .local v2, "fixFlg":Z
    :goto_1
    :try_start_0
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-static {v6, v7, v2}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkByteLength(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lcom/felicanetworks/cmnlib/util/DataCheckerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .end local v2    # "fixFlg":Z
    :cond_3
    :try_start_1
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    const/4 v7, 0x4

    aget v6, v6, v7
    :try_end_1
    .catch Lcom/felicanetworks/cmnlib/util/DataCheckerException; {:try_start_1 .. :try_end_1} :catch_1

    sparse-switch v6, :sswitch_data_0

    .line 824
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgTable:Ljava/util/Map;

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 828
    const-string v6, "key  = %08X : %s"

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v7, v7, v4

    const-string v8, "Already exists."

    invoke-virtual {p0, v6, v7, v8}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgLogOut(Ljava/lang/String;ILjava/lang/String;)V

    .line 829
    iput-boolean v4, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z

    goto :goto_0

    :cond_4
    move v2, v5

    .line 758
    goto :goto_1

    .line 764
    .restart local v2    # "fixFlg":Z
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Lcom/felicanetworks/cmnlib/util/DataCheckerException;
    const-string v6, "key  = %08X : %s"

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v7, v7, v4

    const-string v8, "Invalid size."

    invoke-virtual {p0, v6, v7, v8}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgLogOut(Ljava/lang/String;ILjava/lang/String;)V

    .line 769
    iput-boolean v4, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z

    goto :goto_0

    .line 780
    .end local v1    # "e":Lcom/felicanetworks/cmnlib/util/DataCheckerException;
    .end local v2    # "fixFlg":Z
    :sswitch_0
    :try_start_2
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkDecNumberFormat(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/felicanetworks/cmnlib/util/DataCheckerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 814
    :catch_1
    move-exception v1

    .line 818
    .restart local v1    # "e":Lcom/felicanetworks/cmnlib/util/DataCheckerException;
    const-string v6, "key  = %08X : %s"

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v7, v7, v4

    const-string v8, "Invalid attribute."

    invoke-virtual {p0, v6, v7, v8}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgLogOut(Ljava/lang/String;ILjava/lang/String;)V

    .line 819
    iput-boolean v4, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z

    goto/16 :goto_0

    .line 786
    .end local v1    # "e":Lcom/felicanetworks/cmnlib/util/DataCheckerException;
    :sswitch_1
    :try_start_3
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkHexNumberFormat(Ljava/lang/String;)V

    goto :goto_2

    .line 792
    :sswitch_2
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkAlphaNumberFormat(Ljava/lang/String;)V

    goto :goto_2

    .line 798
    :sswitch_3
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkAlphaSignFormat(Ljava/lang/String;)V

    goto :goto_2

    .line 804
    :sswitch_4
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-static {v6}, Lcom/felicanetworks/cmnlib/util/DataCheckerUtil;->checkUrlCharFormat(Ljava/lang/String;)V

    goto :goto_2

    .line 810
    :sswitch_5
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->indivChecker:Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;->checkAttribute(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/felicanetworks/cmnlib/util/DataCheckerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 834
    :cond_5
    :try_start_4
    iget-object v6, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 857
    new-instance v6, Lcom/felicanetworks/cmnlib/sg/SgMgrException;

    const-string v7, "Invalid data type."

    invoke-direct {v6, v7}, Lcom/felicanetworks/cmnlib/sg/SgMgrException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 859
    :catch_2
    move-exception v1

    .line 863
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "key  = %08X : %s"

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    aget v7, v7, v4

    const-string v8, "Invalid type."

    invoke-virtual {p0, v6, v7, v8}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgLogOut(Ljava/lang/String;ILjava/lang/String;)V

    .line 864
    iput-boolean v4, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z

    goto/16 :goto_0

    .line 839
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_5
    iget-object v6, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgTable:Ljava/util/Map;

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 845
    :pswitch_1
    iget-object v6, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgTable:Ljava/util/Map;

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 851
    :pswitch_2
    iget-object v6, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgTable:Ljava/util/Map;

    iget-object v7, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    invoke-static {v8}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->hexStringToBin(Ljava/lang/String;)[B

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 870
    .end local v0    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    :cond_6
    return-void

    .line 775
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x80 -> :sswitch_5
    .end sparse-switch

    .line 834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createSgManagerException(Ljava/lang/Exception;)Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    .locals 8
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v7, 0x1

    .line 628
    new-instance v2, Lcom/felicanetworks/cmnlib/sg/SgMgrException;

    invoke-direct {v2, p1}, Lcom/felicanetworks/cmnlib/sg/SgMgrException;-><init>(Ljava/lang/Throwable;)V

    .line 629
    .local v2, "sgExp":Lcom/felicanetworks/cmnlib/sg/SgMgrException;
    if-nez p1, :cond_0

    const/16 v1, 0xfff

    .line 630
    .local v1, "errorCode":I
    :goto_0
    invoke-virtual {v2}, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 631
    .local v0, "eml":[Ljava/lang/StackTraceElement;
    const-string v3, "%02X-%03X-%04d-%03X"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getFunctionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getClassCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aget-object v6, v0, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->setErrIdentifierCode(Ljava/lang/String;)V

    .line 635
    return-object v2

    .line 629
    .end local v0    # "eml":[Ljava/lang/StackTraceElement;
    .end local v1    # "errorCode":I
    :cond_0
    invoke-virtual {v2}, Lcom/felicanetworks/cmnlib/sg/SgMgrException;->getExceptionCode()I

    move-result v1

    goto :goto_0
.end method

.method protected static getAppIdMask(Ljava/lang/String;)I
    .locals 1
    .param p0, "appIdStr"    # Ljava/lang/String;

    .prologue
    .line 1165
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private getSgCheckerTable()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1108
    .local v0, "tbl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;>;"
    invoke-direct {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getcommonSgCheckerTable()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1110
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getIndividualSgCheckerTable()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1114
    return-object v0
.end method

.method private getSupportedSgInformationTable()[[I
    .locals 2

    .prologue
    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v0, "supportedSgInfoList":Ljava/util/List;, "Ljava/util/List<[I>;"
    sget-object v1, Lcom/felicanetworks/cmnlib/sg/SgMgr;->commonSupportedSgInformationTable:[[I

    invoke-virtual {v1}, [[I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1057
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getIndividualSupportedSgInformationTable()[[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1062
    const/4 v1, 0x0

    new-array v1, v1, [[I

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    return-object v1
.end method

.method private getcommonSgCheckerTable()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v0, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;>;"
    const v1, 0x1000025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;

    invoke-direct {v2, p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$PackageNameChecker;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-object v0
.end method

.method private isNoError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->createSgManagerException(Ljava/lang/Exception;)Lcom/felicanetworks/cmnlib/sg/SgMgrException;

    move-result-object v0

    throw v0

    .line 615
    :cond_0
    return-void
.end method

.method private readSgFile(Ljava/lang/String;[[ILjava/util/Map;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "checkTbl"    # [[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[[I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 649
    .local p3, "indivChecker":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;>;"
    const/4 v8, 0x0

    .line 650
    .local v8, "line":Ljava/lang/String;
    const/4 v13, 0x0

    .line 651
    .local v13, "strbuf":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 652
    .local v3, "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    const/4 v6, 0x0

    .line 653
    .local v6, "key":I
    const/4 v11, 0x0

    .line 654
    .local v11, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    const/4 v9, 0x0

    .line 660
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    .end local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .local v12, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    :try_start_1
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 663
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    move-object v4, v3

    .line 664
    .end local v3    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .local v4, "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    :goto_0
    if-eqz v8, :cond_3

    .line 670
    const/4 v14, 0x1

    :try_start_3
    const-string v15, "^[0-9A-F]{8},.*"

    invoke-virtual {v8, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-ne v14, v15, :cond_6

    const-string v14, ".*,.*,"

    invoke-virtual {v8, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 674
    const-string v14, ","

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 675
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    long-to-int v6, v14

    .line 676
    move-object/from16 v1, p2

    .local v1, "arr$":[[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v2, v1, v5

    .line 678
    .local v2, "checkData":[I
    const/4 v14, 0x1

    aget v14, v2, v14

    if-ne v14, v6, :cond_2

    .line 682
    new-instance v3, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;-><init>(Lcom/felicanetworks/cmnlib/sg/SgMgr;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 683
    .end local v4    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .restart local v3    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    :try_start_4
    iput-object v2, v3, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->checkData:[I

    .line 687
    const/4 v14, 0x2

    array-length v15, v13

    if-ne v14, v15, :cond_0

    const/4 v14, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 691
    const/4 v14, 0x1

    aget-object v14, v13, v14

    iput-object v14, v3, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->value:Ljava/lang/String;

    .line 693
    :cond_0
    const/16 v14, 0x80

    const/4 v15, 0x4

    aget v15, v2, v15

    if-ne v14, v15, :cond_1

    .line 697
    const/4 v14, 0x0

    aget v14, v2, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;

    iput-object v14, v3, Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;->indivChecker:Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;

    .line 699
    :cond_1
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v1    # "arr$":[[I
    .end local v2    # "checkData":[I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :goto_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v8

    move-object v4, v3

    .end local v3    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .restart local v4    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    goto :goto_0

    .line 676
    .restart local v1    # "arr$":[[I
    .restart local v2    # "checkData":[I
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 717
    .end local v1    # "arr$":[[I
    .end local v2    # "checkData":[I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    if-eqz v10, :cond_4

    .line 721
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    :cond_4
    return-object v12

    .line 717
    .end local v4    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .restart local v3    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v9, :cond_5

    .line 721
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    :cond_5
    throw v14

    .line 717
    .end local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .restart local v12    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    :catchall_1
    move-exception v14

    move-object v11, v12

    .end local v12    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .restart local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    goto :goto_3

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    :catchall_2
    move-exception v14

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .restart local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    goto :goto_3

    .end local v3    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .restart local v4    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    :catchall_3
    move-exception v14

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .restart local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    move-object v3, v4

    .end local v4    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .restart local v3    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    goto :goto_3

    .end local v3    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .restart local v4    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    :cond_6
    move-object v3, v4

    .end local v4    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    .restart local v3    # "checkInfo":Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;
    goto :goto_2
.end method


# virtual methods
.method protected abstract checkParamAdjustment()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/util/DataCheckerException;
        }
    .end annotation
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method protected abstract getAppSgFilePath()Ljava/lang/String;
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getCommonSgFilePath()Ljava/lang/String;
.end method

.method protected getContext()Lcom/felicanetworks/cmnlib/AppContext;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    return-object v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x7

    return v0
.end method

.method protected abstract getIndividualSgCheckerTable()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getIndividualSupportedSgInformationTable()[[I
.end method

.method protected getResourceValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "retStr":Ljava/lang/String;
    return-object v0
.end method

.method public getSgValue(I)Ljava/lang/Object;
    .locals 3
    .param p1, "sgKeyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    .line 932
    iget-object v1, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 933
    .local v0, "retObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 940
    new-instance v1, Lcom/felicanetworks/cmnlib/sg/SgMgrException;

    invoke-direct {v1}, Lcom/felicanetworks/cmnlib/sg/SgMgrException;-><init>()V

    throw v1

    .line 948
    :cond_0
    return-object v0
.end method

.method public loadSg()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v2, 0x0

    check-cast v2, [[I

    .line 546
    .local v2, "checkTbl":[[I
    :try_start_0
    invoke-direct {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSupportedSgInformationTable()[[I

    move-result-object v2

    .line 547
    invoke-direct {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgCheckerTable()Ljava/util/Map;

    move-result-object v5

    .line 549
    .local v5, "indivChecker":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;>;"
    const/4 v1, 0x0

    .line 553
    .local v1, "checkList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getAppSgFilePath()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "appSgFileName":Ljava/lang/String;
    invoke-direct {p0, v0, v2, v5}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->readSgFile(Ljava/lang/String;[[ILjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    .line 557
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getCommonSgFilePath()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "commonSgFileName":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v5}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->readSgFile(Ljava/lang/String;[[ILjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    invoke-direct {p0, v1}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->checkSg(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->checkParamAdjustment()V
    :try_end_1
    .catch Lcom/felicanetworks/cmnlib/util/DataCheckerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    :goto_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->checkMandatery([[I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 586
    invoke-direct {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->isNoError()V

    .line 592
    return-void

    .line 568
    :catch_0
    move-exception v4

    .line 569
    .local v4, "e":Lcom/felicanetworks/cmnlib/util/DataCheckerException;
    const/4 v6, 0x1

    :try_start_3
    iput-boolean v6, p0, Lcom/felicanetworks/cmnlib/sg/SgMgr;->errorFlg:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 576
    .end local v0    # "appSgFileName":Ljava/lang/String;
    .end local v1    # "checkList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/cmnlib/sg/SgMgr$SystemFileKeyCodeInfo;>;"
    .end local v3    # "commonSgFileName":Ljava/lang/String;
    .end local v4    # "e":Lcom/felicanetworks/cmnlib/util/DataCheckerException;
    .end local v5    # "indivChecker":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/felicanetworks/cmnlib/util/DataCheckerInterface;>;"
    :catch_1
    move-exception v4

    .line 581
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "Unknown error occurred."

    invoke-virtual {p0, v6}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgLogOut(Ljava/lang/String;)V

    .line 582
    invoke-direct {p0, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->createSgManagerException(Ljava/lang/Exception;)Lcom/felicanetworks/cmnlib/sg/SgMgrException;

    move-result-object v6

    throw v6
.end method

.method protected sgLogOut(Ljava/lang/String;)V
    .locals 4
    .param p1, "messae"    # Ljava/lang/String;

    .prologue
    .line 1156
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getAppName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void
.end method

.method protected sgLogOut(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "part"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 1148
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->sgLogOut(Ljava/lang/String;)V

    .line 1149
    return-void
.end method
