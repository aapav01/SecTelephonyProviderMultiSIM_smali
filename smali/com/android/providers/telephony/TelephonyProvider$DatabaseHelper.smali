.class Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string v0, "telephony.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 218
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 219
    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadPersistentApnData(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private buildWhereClause(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x0

    .line 718
    const/4 v4, 0x0

    .line 720
    .local v4, "str":Ljava/lang/String;
    const-string v6, "mcc"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "mcc":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 722
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mcc=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 725
    :cond_0
    const-string v6, "mnc"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "mnc":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 727
    if-nez v4, :cond_5

    .line 728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mnc=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 735
    :cond_1
    :goto_0
    const-string v6, "numeric"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, "numeric":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 737
    if-nez v4, :cond_6

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numeric=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 745
    :cond_2
    :goto_1
    const-string v6, "type"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 746
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 747
    if-nez v4, :cond_7

    .line 748
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type like \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 755
    :cond_3
    :goto_2
    const-string v6, "bearer"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "bearer":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 757
    if-nez v4, :cond_8

    .line 758
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bearer IN (0,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 764
    :cond_4
    :goto_3
    return-object v4

    .line 730
    .end local v0    # "bearer":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mnc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 740
    .restart local v3    # "numeric":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "numeric"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 750
    .restart local v5    # "type":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " like \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 760
    .restart local v0    # "bearer":Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bearer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IN (0,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 511
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 513
    .local v6, "map":Landroid/content/ContentValues;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 514
    .local v15, "prof_type":Ljava/lang/String;
    const-string v20, "apn"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 515
    const-string v20, "profile_type"

    const-string v21, "apn"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :goto_0
    const/16 v20, 0x0

    const-string v21, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, "mcc":Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 523
    .local v10, "mnc":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 525
    .local v13, "numeric":Ljava/lang/String;
    const-string v20, "numeric"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v20, "mcc"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v20, "mnc"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v20, "name"

    const/16 v21, 0x0

    const-string v22, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v20, "apn"

    const/16 v21, 0x0

    const-string v22, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v20, "user"

    const/16 v21, 0x0

    const-string v22, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v20, "server"

    const/16 v21, 0x0

    const-string v22, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v20, "password"

    const/16 v21, 0x0

    const-string v22, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/16 v20, 0x0

    const-string v21, "proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 536
    .local v17, "proxy":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 537
    const-string v20, "proxy"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_0
    const/16 v20, 0x0

    const-string v21, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 540
    .local v14, "port":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 541
    const-string v20, "port"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_1
    const/16 v20, 0x0

    const-string v21, "mmsproxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 544
    .local v9, "mmsproxy":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 545
    const-string v20, "mmsproxy"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_2
    const/16 v20, 0x0

    const-string v21, "mmsport"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, "mmsport":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 549
    const-string v20, "mmsport"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_3
    const-string v20, "mmsc"

    const/16 v21, 0x0

    const-string v22, "mmsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/16 v20, 0x0

    const-string v21, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 553
    .local v19, "type":Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 554
    const-string v20, "type"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_4
    const/16 v20, 0x0

    const-string v21, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "auth":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 559
    const-string v20, "authtype"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    :cond_5
    const/16 v20, 0x0

    const-string v21, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 563
    .local v16, "protocol":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 564
    const-string v20, "protocol"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_6
    const/16 v20, 0x0

    const-string v21, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 568
    .local v18, "roamingProtocol":Ljava/lang/String;
    if-eqz v18, :cond_7

    .line 569
    const-string v20, "roaming_protocol"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_7
    const/16 v20, 0x0

    const-string v21, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, "carrierEnabled":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 574
    const-string v20, "carrier_enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 577
    :cond_8
    const/16 v20, 0x0

    const-string v21, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "bearer":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 579
    const-string v20, "bearer"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    :cond_9
    const/16 v20, 0x0

    const-string v21, "mvno_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 583
    .local v12, "mvno_type":Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 584
    const/16 v20, 0x0

    const-string v21, "mvno_match_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 585
    .local v11, "mvno_match_data":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 586
    const-string v20, "mvno_type"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v20, "mvno_match_data"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "bearer":Ljava/lang/String;
    .end local v5    # "carrierEnabled":Ljava/lang/String;
    .end local v6    # "map":Landroid/content/ContentValues;
    .end local v7    # "mcc":Ljava/lang/String;
    .end local v8    # "mmsport":Ljava/lang/String;
    .end local v9    # "mmsproxy":Ljava/lang/String;
    .end local v10    # "mnc":Ljava/lang/String;
    .end local v11    # "mvno_match_data":Ljava/lang/String;
    .end local v12    # "mvno_type":Ljava/lang/String;
    .end local v13    # "numeric":Ljava/lang/String;
    .end local v14    # "port":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v17    # "proxy":Ljava/lang/String;
    .end local v18    # "roamingProtocol":Ljava/lang/String;
    .end local v19    # "type":Ljava/lang/String;
    :cond_a
    :goto_1
    return-object v6

    .line 516
    .restart local v6    # "map":Landroid/content/ContentValues;
    :cond_b
    const-string v20, "nai"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 517
    const-string v20, "profile_type"

    const-string v21, "nai"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_c
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x80000

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 224
    .local v3, "r":Landroid/content/res/Resources;
    const/high16 v5, 0x10f0000

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 226
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v5, "apns"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 227
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 228
    .local v2, "publicversion":I
    or-int/2addr v4, v2

    .line 233
    .end local v2    # "publicversion":I
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 231
    return v4

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "TelephonyProvider"

    const-string v6, "Can\'t get version of APN database"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 281
    iget-object v9, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 282
    .local v8, "r":Landroid/content/res/Resources;
    const/high16 v9, 0x10f0000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 283
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v7, -0x1

    .line 285
    .local v7, "publicversion":I
    :try_start_0
    const-string v9, "apns"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 286
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v6, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 287
    invoke-direct {p0, p1, v6}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 295
    const/4 v1, 0x0

    .line 302
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    # getter for: Lcom/android/providers/telephony/TelephonyProvider;->PARTNER_APNS_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$000()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v0, "confFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 305
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v3, "confreader":Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 307
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 308
    const-string v9, "apns"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 311
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 312
    .local v4, "confversion":I
    if-eq v7, v4, :cond_1

    .line 313
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Internal APNS file version doesn\'t match "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 318
    .end local v4    # "confversion":I
    :catch_0
    move-exception v9

    move-object v2, v3

    .line 324
    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 326
    :cond_0
    :goto_2
    return-void

    .line 288
    .end local v0    # "confFile":Ljava/io/File;
    .end local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "confreader":Ljava/io/FileReader;
    :catch_1
    move-exception v5

    .line 289
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v9, "TelephonyProvider"

    const-string v10, "Got exception while loading APN database."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 291
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v9

    .line 317
    .restart local v0    # "confFile":Ljava/io/File;
    .restart local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    .restart local v4    # "confversion":I
    :cond_1
    :try_start_5
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 324
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_2
    :goto_3
    move-object v2, v3

    .line 325
    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_2

    .line 321
    .end local v4    # "confversion":I
    :catch_2
    move-exception v5

    .line 322
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    const-string v9, "TelephonyProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 324
    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_2

    :catchall_1
    move-exception v9

    :goto_5
    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_3
    :goto_6
    throw v9

    :catch_4
    move-exception v10

    goto :goto_6

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    .restart local v4    # "confversion":I
    :catch_5
    move-exception v9

    goto :goto_3

    .end local v4    # "confversion":I
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_5

    .line 321
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_4

    .line 318
    :catch_7
    move-exception v9

    goto :goto_1
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "row"    # Landroid/content/ContentValues;

    .prologue
    .line 679
    const-string v0, "authtype"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    const-string v0, "authtype"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    :cond_0
    const-string v0, "protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 689
    const-string v0, "protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_1
    const-string v0, "roaming_protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 693
    const-string v0, "roaming_protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_2
    const-string v0, "carrier_enabled"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 696
    const-string v0, "carrier_enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 698
    :cond_3
    const-string v0, "bearer"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 699
    const-string v0, "bearer"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    :cond_4
    const-string v0, "mvno_type"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 702
    const-string v0, "mvno_type"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_5
    const-string v0, "mvno_match_data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 705
    const-string v0, "mvno_match_data"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_6
    const-string v0, "carriers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 708
    return-void
.end method

.method private loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 614
    if-eqz p2, :cond_0

    .line 616
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 617
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 618
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 619
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 620
    .local v1, "row":Landroid/content/ContentValues;
    if-nez v1, :cond_1

    .line 621
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected \'apn\' tag"

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .end local v1    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v2, "TelephonyProvider"

    const-string v3, "Got XmlPullParserException while loading apns."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 637
    :cond_0
    return-void

    .line 623
    .restart local v1    # "row":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    const-string v2, "carriers"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 624
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 629
    .end local v1    # "row":Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "TelephonyProvider"

    const-string v3, "Got IOException while loading apns."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 634
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 626
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 631
    :catch_2
    move-exception v0

    .line 632
    .local v0, "e":Landroid/database/SQLException;
    :try_start_5
    const-string v2, "TelephonyProvider"

    const-string v3, "Got SQLException while loading apns."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private loadPersistentApnData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 376
    const/4 v2, 0x0

    .line 379
    .local v2, "persistentparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/File;

    const-string v5, "/efs/apn-changes.xml"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "persistentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 381
    const/4 v3, 0x0

    .line 383
    .local v3, "persistentreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v3    # "persistentreader":Ljava/io/FileReader;
    .local v4, "persistentreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 385
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 386
    const-string v5, "apns"

    invoke-static {v2, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 388
    if-eqz v2, :cond_0

    .line 389
    invoke-direct {p0, p1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->updateApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    :cond_0
    if-eqz v4, :cond_1

    .line 396
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 401
    .end local v4    # "persistentreader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    return-void

    .line 390
    .restart local v3    # "persistentreader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "TelephonyProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    if-eqz v3, :cond_1

    .line 396
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "persistentreader":Ljava/io/FileReader;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 394
    .restart local v3    # "persistentreader":Ljava/io/FileReader;
    :catchall_0
    move-exception v5

    .line 395
    :goto_2
    if-eqz v3, :cond_2

    .line 396
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 394
    :cond_2
    :goto_3
    throw v5

    .line 397
    :catch_2
    move-exception v6

    goto :goto_3

    .line 394
    .end local v3    # "persistentreader":Ljava/io/FileReader;
    .restart local v4    # "persistentreader":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "persistentreader":Ljava/io/FileReader;
    .restart local v3    # "persistentreader":Ljava/io/FileReader;
    goto :goto_2

    .line 390
    .end local v3    # "persistentreader":Ljava/io/FileReader;
    .restart local v4    # "persistentreader":Ljava/io/FileReader;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "persistentreader":Ljava/io/FileReader;
    .restart local v3    # "persistentreader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private updateAPNChange(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 26
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 768
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->buildWhereClause(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v22

    .line 769
    .local v22, "where":Ljava/lang/String;
    if-nez v22, :cond_0

    .line 865
    :goto_0
    return-void

    .line 772
    :cond_0
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v21, "value":Landroid/content/ContentValues;
    const/16 v23, 0x0

    const-string v24, "carrier_enabled"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 776
    .local v8, "carrierEnabled":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 777
    const-string v23, "carrier_enabled"

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 781
    :cond_1
    const/16 v23, 0x0

    const-string v24, "carrier"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 782
    .local v7, "carrier":Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v23, "EHRPD"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    const-string v23, "LTE"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 783
    const-string v23, "name"

    const/16 v24, 0x0

    const-string v25, "carrier"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_2
    const/16 v23, 0x0

    const-string v24, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "apn":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 789
    const-string v23, "apn"

    const/16 v24, 0x0

    const-string v25, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_3
    const/16 v23, 0x0

    const-string v24, "user"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 794
    .local v20, "user":Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 795
    const-string v23, "user"

    const/16 v24, 0x0

    const-string v25, "user"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_4
    const/16 v23, 0x0

    const-string v24, "server"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 800
    .local v18, "server":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 801
    const-string v23, "server"

    const/16 v24, 0x0

    const-string v25, "server"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_5
    const/16 v23, 0x0

    const-string v24, "password"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 806
    .local v13, "password":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 807
    const-string v23, "password"

    const/16 v24, 0x0

    const-string v25, "password"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_6
    const/16 v23, 0x0

    const-string v24, "proxy"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 812
    .local v16, "proxy":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 813
    const-string v23, "proxy"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_7
    const/16 v23, 0x0

    const-string v24, "port"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 817
    .local v14, "port":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 818
    const-string v23, "port"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_8
    const/16 v23, 0x0

    const-string v24, "mmsproxy"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 822
    .local v12, "mmsproxy":Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 823
    const-string v23, "mmsproxy"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_9
    const/16 v23, 0x0

    const-string v24, "mmsport"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 827
    .local v11, "mmsport":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 828
    const-string v23, "mmsport"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_a
    const/16 v23, 0x0

    const-string v24, "mmsc"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 832
    .local v10, "mmsc":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 833
    const-string v23, "mmsc"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_b
    const/16 v23, 0x0

    const-string v24, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 837
    .local v19, "type":Ljava/lang/String;
    if-eqz v19, :cond_c

    .line 845
    const-string v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_c
    const/16 v23, 0x0

    const-string v24, "authtype"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 849
    .local v6, "auth":Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 850
    const-string v23, "authtype"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    :cond_d
    const/16 v23, 0x0

    const-string v24, "protocol"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 854
    .local v15, "protocol":Ljava/lang/String;
    if-eqz v15, :cond_e

    .line 855
    const-string v23, "protocol"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_e
    const/16 v23, 0x0

    const-string v24, "roaming_protocol"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 859
    .local v17, "roamingProtocol":Ljava/lang/String;
    if-eqz v17, :cond_f

    .line 860
    const-string v23, "roaming_protocol"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_f
    const-string v23, "carriers"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 864
    .local v9, "count":I
    const-string v23, "TelephonyProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateAPNChange... count = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 876
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 877
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 878
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 879
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "name":Ljava/lang/String;
    const-string v2, "apn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->updateAPNChange(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 885
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 888
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v2, "TelephonyProvider"

    const-string v3, "Got XmlPullParserException while updateApns."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 897
    return-void

    .line 887
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 890
    :catch_1
    move-exception v0

    .line 891
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "TelephonyProvider"

    const-string v3, "Got IOException while updateApns."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 895
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 892
    :catch_2
    move-exception v0

    .line 893
    .local v0, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v2, "TelephonyProvider"

    const-string v3, "Got SQLException while updateApns."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 240
    const-string v0, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,current2 INTEGER,sim_slot INTEGER DEFAULT -1,protocol TEXT,profile_type TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,mvno_type TEXT,mvno_match_data TEXT,ppp_digit TEXT,databearer TEXT,network_flag TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadPersistentApnData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 277
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 405
    const v0, 0x50006

    if-ge p2, v0, :cond_0

    .line 418
    const-string v0, "ALTER TABLE carriers ADD COLUMN authtype INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    const p2, 0x50006

    .line 423
    :cond_0
    const v0, 0x60006

    if-ge p2, v0, :cond_1

    .line 425
    const-string v0, "ALTER TABLE carriers ADD COLUMN protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    const-string v0, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 429
    const p2, 0x60006

    .line 431
    :cond_1
    const v0, 0x70006

    if-ge p2, v0, :cond_2

    .line 433
    const-string v0, "ALTER TABLE carriers ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    const-string v0, "ALTER TABLE carriers ADD COLUMN bearer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const p2, 0x70006

    .line 439
    :cond_2
    const v0, 0x80006

    if-ge p2, v0, :cond_4

    .line 442
    const-string v0, "cdmacarriers"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {p1, v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    :cond_3
    const-string v0, "carriers"

    const-string v1, "profile_type"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : profile_type Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    const p2, 0x80006

    .line 459
    :cond_4
    const v0, 0x90006

    if-ge p2, v0, :cond_5

    .line 461
    const-string v0, "carriers"

    const-string v1, "profile_type"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 462
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : profile_type Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_1
    const-string v0, "carriers"

    const-string v1, "mvno_type"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 472
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : mvno_type Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_2
    const-string v0, "carriers"

    const-string v1, "mvno_match_data"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 479
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : mvno_match_data Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_3
    const p2, 0x90006

    .line 488
    :cond_5
    const-string v0, "carriers"

    const-string v1, "current2"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 489
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : current2 Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_4
    const-string v0, "carriers"

    const-string v1, "sim_slot"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 496
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : sim_slot Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_5
    return-void

    .line 452
    :cond_6
    const-string v0, "ALTER TABLE carriers ADD COLUMN profile_type TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : profile_type Column created..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :cond_7
    const-string v0, "ALTER TABLE carriers ADD COLUMN profile_type TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 465
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : profile_type Column created..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 474
    :cond_8
    const-string v0, "ALTER TABLE carriers ADD COLUMN mvno_type TEXT DEFAULT \'\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 476
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : mvno_type Column created..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 481
    :cond_9
    const-string v0, "ALTER TABLE carriers ADD COLUMN mvno_match_data TEXT DEFAULT \'\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : mvno_match_data Column created..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 491
    :cond_a
    const-string v0, "ALTER TABLE carriers ADD COLUMN current2 INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 493
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : current2 Column created..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 498
    :cond_b
    const-string v0, "ALTER TABLE carriers ADD COLUMN sim_slot INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 500
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CARRIERS_TABLE : sim_slot Column created..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
