.class Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NwkInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/NwkInfoProvider;
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
    .line 130
    const-string v0, "nwk_info.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 131
    const-string v0, "NwkInfoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DB Version] getVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - DatabaseHelper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object p1, p0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->updateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 297
    const-string v0, "NwkInfoProvider"

    const-string v1, "createCarriersTable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v0, "DROP TABLE IF EXISTS carriers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v0, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY, name TEXT, numeric TEXT, mcc TEXT, mnc TEXT, apn TEXT, user TEXT, server TEXT, password TEXT, proxy TEXT, port TEXT, mmsproxy TEXT, mmsport TEXT, mmsc TEXT, authtype INTEGER, type TEXT, protocol TEXT, roaming_protocol TEXT, carrier_enabled BOOLEAN, carrier_enabled_roaming BOOLEAN, bearer INTEGER, homeurl TEXT, nwkname TEXT, preferred BOOLEAN, editable BOOLEAN);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private createDormPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 314
    const-string v0, "NwkInfoProvider"

    const-string v1, "createDormPolicyTable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v0, "DROP TABLE IF EXISTS dormpolicy"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v0, "CREATE TABLE dormpolicy(plmn TEXT, nwkname TEXT, lcdonfdtime TEXT, lcdofffdtime TEXT, lcdonfdtime_Rel8 TEXT, lcdofffdtime_Rel8 TEXT, CONSTRAINT PKcompKey PRIMARY KEY (plmn, nwkname))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private createNetworkInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 306
    const-string v0, "NwkInfoProvider"

    const-string v1, "createNetworkInfoTable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "DROP TABLE IF EXISTS nwkinfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    const-string v0, "CREATE TABLE nwkinfo(plmn TEXT, nwkname TEXT, dormancy TEXT, mtu INTEGER, subsetcode TEXT, spcode TEXT, spname TEXT, CONSTRAINT PKcompKey PRIMARY KEY (plmn, nwkname))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private getDormPolicyRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 260
    const-string v3, "NwkInfoProvider"

    const-string v4, "getDormPolicyRow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v3, "DormPolicy"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    const-string v3, "NwkInfoProvider"

    const-string v4, "dormpolicy != parser.getName()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v2, 0x0

    .line 285
    :goto_0
    return-object v2

    .line 267
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v2, "map":Landroid/content/ContentValues;
    const-string v3, "plmn"

    const-string v4, ""

    const-string v5, "plmn"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v3, "nwkname"

    const-string v4, ""

    const-string v5, "nwkname"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v3, "lcdonfdtime"

    const-string v4, ""

    const-string v5, "lcdonfdtime"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v3, "lcdofffdtime"

    const-string v4, ""

    const-string v5, "lcdofffdtime"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v3, ""

    const-string v4, "lcdonfdtime_Rel8"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "lcdontime_rel8":Ljava/lang/String;
    const-string v3, ""

    const-string v4, "lcdofffdtime_Rel8"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "lcdofftime_rel8":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    const-string v1, "-1"

    .line 278
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    const-string v0, "-1"

    .line 282
    :cond_2
    const-string v3, "lcdonfdtime_Rel8"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v3, "lcdofffdtime_Rel8"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNetworkInfoRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 240
    const-string v1, "NwkInfoProvider"

    const-string v2, "getNetowkrInfoRow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v1, "NetworkInfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    const-string v1, "NwkInfoProvider"

    const-string v2, "NetworkInfo != parser.getName()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    .line 247
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v0, "map":Landroid/content/ContentValues;
    const-string v1, "plmn"

    const-string v2, ""

    const-string v3, "plmn"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "nwkname"

    const-string v2, ""

    const-string v3, "nwkname"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "dormancy"

    const-string v2, ""

    const-string v3, "dormancy"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "mtu"

    const-string v2, ""

    const-string v3, "mtu"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "subsetcode"

    const-string v2, ""

    const-string v3, "subsetcode"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "subsetcode"

    const-string v2, ""

    const-string v3, "subsetcode"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "spname"

    const-string v2, ""

    const-string v3, "spname"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x2b0000

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 139
    .local v3, "r":Landroid/content/res/Resources;
    const/high16 v5, 0x10f0000

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 141
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v5, "apns"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 142
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 143
    .local v2, "publicversion":I
    or-int/2addr v4, v2

    .line 148
    .end local v2    # "publicversion":I
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 146
    return v4

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "NwkInfoProvider"

    const-string v6, "Can\'t get version of APN database"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
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
    .line 170
    const-string v9, "NwkInfoProvider"

    const-string v10, "initDatabase"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v9, p0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 173
    .local v8, "r":Landroid/content/res/Resources;
    const/high16 v9, 0x10f0000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 174
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v7, -0x1

    .line 176
    .local v7, "publicversion":I
    :try_start_0
    const-string v9, "apns"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 177
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v6, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 178
    invoke-direct {p0, p1, v6}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->loadNetworkInfos(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 186
    const/4 v1, 0x0

    .line 189
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/nwk_info.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .local v0, "confFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 192
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v3, "confreader":Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 194
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 195
    const-string v9, "NetworkInfos"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 198
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 199
    .local v4, "confversion":I
    if-eq v7, v4, :cond_1

    .line 200
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

    .line 209
    .end local v4    # "confversion":I
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 211
    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v9, "NwkInfoProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File not found: \'"

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

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 217
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 179
    .end local v0    # "confFile":Ljava/io/File;
    .end local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "confreader":Ljava/io/FileReader;
    :catch_1
    move-exception v5

    .line 180
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v9, "NwkInfoProvider"

    const-string v10, "Got exception while loading APN database."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 182
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v9

    .line 204
    .restart local v0    # "confFile":Ljava/io/File;
    .restart local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    .restart local v4    # "confversion":I
    :cond_1
    :try_start_6
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->loadNetworkInfos(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 206
    const-string v9, "DormPolicy"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->loadDormPolicys(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 215
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_3
    move-object v2, v3

    .line 216
    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_2

    .line 212
    .end local v4    # "confversion":I
    :catch_2
    move-exception v5

    .line 213
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    const-string v9, "NwkInfoProvider"

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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 215
    if-eqz v2, :cond_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_2

    :catchall_1
    move-exception v9

    :goto_5
    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

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

    .line 212
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_4

    .line 209
    :catch_7
    move-exception v5

    goto/16 :goto_1
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "row"    # Landroid/content/ContentValues;

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 393
    return-void
.end method

.method private loadDormPolicys(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 364
    const-string v2, "NwkInfoProvider"

    const-string v3, "loadDormPolicys"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz p2, :cond_0

    .line 367
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 369
    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 370
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->getDormPolicyRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 372
    .local v1, "row":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 373
    const-string v2, "dormpolicy"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 378
    .end local v1    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v2, "NwkInfoProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 386
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 389
    :cond_0
    return-void

    .line 380
    :catch_1
    move-exception v0

    .line 381
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "NwkInfoProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 382
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 383
    .local v0, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "NwkInfoProvider"

    const-string v3, "dormpolicy sql exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 386
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    throw v2

    .restart local v1    # "row":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1
.end method

.method private loadNetworkInfos(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 337
    const-string v2, "NwkInfoProvider"

    const-string v3, "loadNetworkInfos"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-eqz p2, :cond_0

    .line 340
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 342
    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 343
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->getNetworkInfoRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 344
    .local v1, "row":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 345
    const-string v2, "nwkinfo"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 350
    .end local v1    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v2, "NwkInfoProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 358
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 361
    :cond_0
    return-void

    .line 352
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "NwkInfoProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .line 354
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 355
    .local v0, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "NwkInfoProvider"

    const-string v3, "networkinfos sql exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1

    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 358
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 357
    throw v2

    .restart local v1    # "row":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_1
.end method

.method private updateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 321
    const-string v0, "NwkInfoProvider"

    const-string v1, "updateTables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createNetworkInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createDormPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 334
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 154
    const-string v1, "NwkInfoProvider"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createNetworkInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->createDormPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 167
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "NwkInfoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught during creating nwkinfo table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 221
    const-string v1, "NwkInfoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DB Version] oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->updateTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CSC_UPDATE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "OPERATION"

    const-string v2, "ignore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v1, p0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 231
    return-void
.end method
