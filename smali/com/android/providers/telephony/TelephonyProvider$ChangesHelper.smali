.class Lcom/android/providers/telephony/TelephonyProvider$ChangesHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangesHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 903
    const-string v0, "telephony_changes.db"

    const/4 v1, 0x0

    # invokes: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$300(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 904
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$ChangesHelper;->mContext:Landroid/content/Context;

    .line 905
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 910
    const-string v0, "CREATE TABLE changes(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,current2 INTEGER,sim_slot INTEGER DEFAULT -1,protocol TEXT,profile_type TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,target_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 942
    const v0, 0x50006

    if-ge p2, v0, :cond_0

    .line 943
    const-string v0, "ALTER TABLE changes ADD COLUMN authtype INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 945
    const p2, 0x50006

    .line 947
    :cond_0
    const v0, 0x60006

    if-ge p2, v0, :cond_1

    .line 949
    const-string v0, "ALTER TABLE changes ADD COLUMN protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 951
    const-string v0, "ALTER TABLE changes ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 953
    const p2, 0x60006

    .line 955
    :cond_1
    const v0, 0x70006

    if-ge p2, v0, :cond_2

    .line 957
    const-string v0, "ALTER TABLE changes ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 959
    const-string v0, "ALTER TABLE changes ADD COLUMN bearer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 961
    const p2, 0x70006

    .line 963
    :cond_2
    const v0, 0x80006

    if-ge p2, v0, :cond_3

    .line 965
    const-string v0, "changes"

    const-string v1, "profile_type"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CHANGES_TABLE : profile_type Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :goto_0
    const p2, 0x80006

    .line 974
    :cond_3
    const-string v0, "changes"

    const-string v1, "current2"

    # invokes: Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 975
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CHANGES_TABLE : current2 Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :goto_1
    return-void

    .line 968
    :cond_4
    const-string v0, "ALTER TABLE changes ADD COLUMN profile_type TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CHANGES_TABLE : profile_type Column created..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 977
    :cond_5
    const-string v0, "ALTER TABLE changes ADD COLUMN current2 TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 978
    const-string v0, "TelephonyProvider"

    const-string v1, "onUpgrade CHANGES_TABLE : current2 Column created..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
