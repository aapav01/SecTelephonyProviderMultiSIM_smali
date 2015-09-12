.class public Lcom/android/providers/telephony/TelephonyProvider;
.super Landroid/content/ContentProvider;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/TelephonyProvider$ChangesHelper;,
        Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static PARTNER_APNS_PATH:Ljava/lang/String;

.field static final SHIP_BUILD:Z

.field private static s_currentNullMaps:[Landroid/content/ContentValues;

.field private static s_currentSetMaps:[Landroid/content/ContentValues;

.field private static final s_persistentList:Ljava/util/ArrayList;

.field private static final s_urlMatcher:Landroid/content/UriMatcher;

.field private static simSlotMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChangesHelper:Lcom/android/providers/telephony/TelephonyProvider$ChangesHelper;

.field private mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 94
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/TelephonyProvider;->SHIP_BUILD:Z

    .line 139
    const-string v0, "etc/apns-conf.xml"

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->PARTNER_APNS_PATH:Ljava/lang/String;

    .line 142
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_persistentList:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    .line 154
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers"

    invoke-virtual {v0, v1, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/current"

    invoke-virtual {v0, v1, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/#"

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/restore"

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/preferapn"

    invoke-virtual {v0, v1, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/preferapn_no_update"

    invoke-virtual {v0, v1, v3, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/no_update"

    const/4 v4, 0x7

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/dm_change"

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/current2"

    const/16 v4, 0x9

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/preferapn2"

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/preferapn_no_update2"

    const/16 v4, 0xb

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/restore2"

    const/16 v4, 0xc

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/preferapn_no_update_4G"

    const/16 v4, 0xd

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v3, "carriers/preferapn_4G"

    const/16 v4, 0xe

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMaps:[Landroid/content/ContentValues;

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMaps:[Landroid/content/ContentValues;

    move v1, v2

    .line 178
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMaps:[Landroid/content/ContentValues;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v3, v0, v1

    .line 180
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMaps:[Landroid/content/ContentValues;

    aget-object v3, v0, v1

    const-string v0, "current"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMaps:[Landroid/content/ContentValues;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v3, v0, v1

    .line 183
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMaps:[Landroid/content/ContentValues;

    aget-object v0, v0, v1

    const-string v3, "current"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 187
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_persistentList:Ljava/util/ArrayList;

    const-string v1, "default,dun"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_persistentList:Ljava/util/ArrayList;

    const-string v1, "fota"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_persistentList:Ljava/util/ArrayList;

    const-string v1, "default,dun,supl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 900
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->PARTNER_APNS_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider;->tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static addAtrribute(Landroid/content/ContentValues;Lorg/xmlpull/v1/XmlSerializer;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2197
    const/4 v0, 0x1

    .line 2199
    :try_start_0
    const-string v2, ""

    const-string v3, "apn"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2200
    const-string v2, "mcc"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2201
    const-string v2, ""

    const-string v3, "mcc"

    const-string v4, "mcc"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2202
    :cond_0
    const-string v2, "mnc"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2203
    const-string v2, ""

    const-string v3, "mnc"

    const-string v4, "mnc"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2204
    :cond_1
    const-string v2, "type"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2205
    const-string v2, ""

    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2206
    :cond_2
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2207
    const-string v3, ""

    const-string v4, "carrier_enabled"

    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "1"

    :goto_0
    invoke-interface {p1, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2208
    :cond_3
    const-string v2, "protocol"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2209
    const-string v2, ""

    const-string v3, "protocol"

    const-string v4, "protocol"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2210
    :cond_4
    const-string v2, "apn"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2211
    const-string v2, ""

    const-string v3, "apn"

    const-string v4, "apn"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2212
    :cond_5
    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2213
    const-string v2, ""

    const-string v3, "bearer"

    const-string v4, "bearer"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2214
    :cond_6
    const-string v2, "name"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2215
    const-string v2, ""

    const-string v3, "carrier"

    const-string v4, "name"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2216
    :cond_7
    const-string v2, "numeric"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2217
    const-string v2, ""

    const-string v3, "numeric"

    const-string v4, "numeric"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2218
    :cond_8
    const-string v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2219
    const-string v2, ""

    const-string v3, "user"

    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2220
    :cond_9
    const-string v2, "server"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2221
    const-string v2, ""

    const-string v3, "server"

    const-string v4, "server"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2222
    :cond_a
    const-string v2, "password"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2223
    const-string v2, ""

    const-string v3, "password"

    const-string v4, "password"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2224
    :cond_b
    const-string v2, "proxy"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 2225
    const-string v2, ""

    const-string v3, "proxy"

    const-string v4, "proxy"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2226
    :cond_c
    const-string v2, "port"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2227
    const-string v2, ""

    const-string v3, "port"

    const-string v4, "port"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2228
    :cond_d
    const-string v2, "mmsproxy"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2229
    const-string v2, ""

    const-string v3, "mmsproxy"

    const-string v4, "mmsproxy"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2230
    :cond_e
    const-string v2, "mmsport"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 2231
    const-string v2, ""

    const-string v3, "mmsport"

    const-string v4, "mmsport"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2232
    :cond_f
    const-string v2, "mmsc"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 2233
    const-string v2, ""

    const-string v3, "mmsc"

    const-string v4, "mmsc"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2234
    :cond_10
    const-string v2, "authtype"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 2235
    const-string v2, ""

    const-string v3, "authtype"

    const-string v4, "authtype"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2236
    :cond_11
    const-string v2, "current"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 2237
    const-string v2, ""

    const-string v3, "current"

    const-string v4, "current"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2238
    :cond_12
    const-string v2, "profile_type"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 2239
    const-string v2, ""

    const-string v3, "profile_type"

    const-string v4, "profile_type"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2240
    :cond_13
    const-string v2, "roaming_protocol"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 2241
    const-string v2, ""

    const-string v3, "roaming_protocol"

    const-string v4, "roaming_protocol"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2243
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2244
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 2245
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2246
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2247
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2248
    const-string v3, ""

    const-string v4, "apn_extra"

    invoke-interface {p1, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2249
    const-string v2, ""

    const-string v3, "apn"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2260
    :goto_1
    return v0

    .line 2207
    :cond_15
    const-string v2, "0"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 2250
    :catch_0
    move-exception v0

    .line 2251
    const-string v2, "TelephonyProvider"

    const-string v3, "IOException: writeInXml "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 2259
    goto :goto_1

    .line 2253
    :catch_1
    move-exception v0

    .line 2254
    const-string v2, "TelephonyProvider"

    const-string v3, "IllegalArgumentException: writeInXml "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 2259
    goto :goto_1

    .line 2256
    :catch_2
    move-exception v0

    .line 2257
    const-string v2, "TelephonyProvider"

    const-string v3, "IllegalStateException: writeInXml "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 2258
    goto :goto_1
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    .line 2264
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    const-string v2, "No permission to write APN settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    return-void
.end method

.method private static copyPrevValue(Landroid/content/ContentValues;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 2135
    if-eqz p1, :cond_16

    .line 2136
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2137
    const-string v1, "mcc"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2138
    const-string v1, "mcc"

    const-string v2, "mcc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    :cond_0
    const-string v1, "mnc"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2140
    const-string v1, "mnc"

    const-string v2, "mnc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    :cond_1
    const-string v1, "type"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2142
    const-string v1, "type"

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    :cond_2
    const-string v1, "carrier_enabled"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2144
    const-string v1, "carrier_enabled"

    const-string v2, "carrier_enabled"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_15

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2145
    :cond_3
    const-string v0, "protocol"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2146
    const-string v0, "protocol"

    const-string v1, "protocol"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    :cond_4
    const-string v0, "apn"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2148
    const-string v0, "apn"

    const-string v1, "apn"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_5
    const-string v0, "bearer"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2150
    const-string v0, "bearer"

    const-string v1, "bearer"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2151
    :cond_6
    const-string v0, "name"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2152
    const-string v0, "name"

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    :cond_7
    const-string v0, "numeric"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2154
    const-string v0, "numeric"

    const-string v1, "numeric"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    :cond_8
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2156
    const-string v0, "user"

    const-string v1, "user"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    :cond_9
    const-string v0, "server"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2158
    const-string v0, "server"

    const-string v1, "server"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    :cond_a
    const-string v0, "password"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2160
    const-string v0, "password"

    const-string v1, "password"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    :cond_b
    const-string v0, "proxy"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    .line 2162
    const-string v0, "proxy"

    const-string v1, "proxy"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    :cond_c
    const-string v0, "port"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2164
    const-string v0, "port"

    const-string v1, "port"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    :cond_d
    const-string v0, "mmsproxy"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2166
    const-string v0, "mmsproxy"

    const-string v1, "mmsproxy"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    :cond_e
    const-string v0, "mmsport"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2168
    const-string v0, "mmsport"

    const-string v1, "mmsport"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    :cond_f
    const-string v0, "mmsc"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2170
    const-string v0, "mmsc"

    const-string v1, "mmsc"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    :cond_10
    const-string v0, "authtype"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2172
    const-string v0, "authtype"

    const-string v1, "authtype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2173
    :cond_11
    const-string v0, "current"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2174
    const-string v0, "current"

    const-string v1, "current"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2175
    :cond_12
    const-string v0, "profile_type"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2176
    const-string v0, "profile_type"

    const-string v1, "profile_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    :cond_13
    const-string v0, "roaming_protocol"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 2178
    const-string v0, "roaming_protocol"

    const-string v1, "roaming_protocol"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    :cond_14
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2182
    :goto_1
    return-object v0

    .line 2144
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2182
    :cond_16
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 2401
    const/4 v0, 0x0

    .line 2402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pragma table_info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2404
    if-eqz v1, :cond_2

    .line 2405
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2409
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2410
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2412
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2413
    const/4 v0, 0x1

    goto :goto_0

    .line 2417
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2420
    :cond_2
    return v0
.end method

.method private getAPNConfigCheckSum()J
    .locals 4

    .prologue
    .line 1122
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-apn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1123
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "apn_conf_checksum"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPreferredApnId(I)J
    .locals 5
    .param p1, "simSlot"    # I

    .prologue
    .line 1108
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-apn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1109
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v0, "apn_id"

    .line 1117
    .local v0, "columnApnId":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private isLteOnCdma()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1056
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFromXML([Ljava/lang/String;)V
    .locals 14
    .param p1, "projectionIn"    # [Ljava/lang/String;

    .prologue
    .line 1231
    const/4 v9, 0x0

    .line 1233
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/File;

    const-string v0, "/efs/apn-changes.xml"

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v10, "persistentFile":Ljava/io/File;
    const/4 v11, 0x0

    .line 1236
    .local v11, "reader":Ljava/io/FileReader;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 1237
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1238
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v12, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 1239
    invoke-interface {v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1240
    const-string v0, "apns"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1284
    if-eqz v9, :cond_5

    .line 1286
    :goto_0
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1287
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1288
    .local v13, "startName":Ljava/lang/String;
    const-string v0, "apn"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1290
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "carrier"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1291
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "apn"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1292
    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "proxy"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1293
    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, "port"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1294
    const/4 v0, 0x5

    const/4 v1, 0x0

    const-string v2, "user"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1295
    const/4 v0, 0x6

    const/4 v1, 0x0

    const-string v2, "server"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1296
    const/4 v0, 0x7

    const/4 v1, 0x0

    const-string v2, "password"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1297
    const/16 v0, 0x8

    const/4 v1, 0x0

    const-string v2, "mmsc"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1298
    const/16 v0, 0x9

    const/4 v1, 0x0

    const-string v2, "mcc"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1299
    const/16 v0, 0xa

    const/4 v1, 0x0

    const-string v2, "mnc"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1300
    const/16 v0, 0xb

    const/4 v1, 0x0

    const-string v2, "numeric"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1301
    const/16 v0, 0xc

    const/4 v1, 0x0

    const-string v2, "mmsproxy"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1302
    const/16 v0, 0xd

    const/4 v1, 0x0

    const-string v2, "mmsport"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1303
    const/16 v0, 0xe

    const/4 v1, 0x0

    const-string v2, "authtype"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1304
    const/16 v0, 0xf

    const/4 v1, 0x0

    const-string v2, "type"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1305
    const/16 v0, 0x10

    const/4 v1, 0x0

    const-string v2, "apn_extra"

    invoke-interface {v9, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_0

    .line 1314
    .end local v13    # "startName":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v11, v12

    .line 1315
    .end local v12    # "reader":Ljava/io/FileReader;
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "reader":Ljava/io/FileReader;
    :goto_1
    :try_start_2
    const-string v0, "TelephonyProvider"

    const-string v1, "XmlPullParserException: readFromXML "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1324
    if-eqz v11, :cond_0

    .line 1325
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 1331
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_2
    return-void

    .line 1242
    :cond_1
    :try_start_4
    const-string v0, "TelephonyProvider"

    const-string v1, "No apn change xml."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v6, 0x0

    .line 1246
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1247
    .local v8, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like \'%default%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1249
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "TelephonyProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1251
    :try_start_5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1253
    if-eqz v6, :cond_2

    .line 1254
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1255
    const/4 v0, 0x1

    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1256
    const/4 v0, 0x2

    const-string v1, "apn"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1257
    const/4 v0, 0x3

    const-string v1, "proxy"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1258
    const/4 v0, 0x4

    const-string v1, "port"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1259
    const/4 v0, 0x5

    const-string v1, "user"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1260
    const/4 v0, 0x6

    const-string v1, "server"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1261
    const/4 v0, 0x7

    const-string v1, "password"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1262
    const/16 v0, 0x8

    const-string v1, "mmsc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1263
    const/16 v0, 0x9

    const-string v1, "mcc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1264
    const/16 v0, 0xa

    const-string v1, "mnc"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1265
    const/16 v0, 0xb

    const-string v1, "numeric"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1266
    const/16 v0, 0xc

    const-string v1, "mmsproxy"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1267
    const/16 v0, 0xd

    const-string v1, "port"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1268
    const/16 v0, 0xe

    const-string v1, "authtype"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1269
    const/16 v0, 0xf

    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1278
    :cond_2
    if-eqz v6, :cond_3

    .line 1279
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1324
    :cond_3
    :goto_3
    if-eqz v11, :cond_0

    .line 1325
    :try_start_7
    throw v11
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 1327
    :catch_1
    move-exception v7

    .line 1328
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "TelephonyProvider"

    const-string v1, "IOException: readFromXML when reader closing "

    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :goto_4
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1275
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :catch_2
    move-exception v7

    .line 1276
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_8
    const-string v0, "TelephonyProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught during insert : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1278
    if-eqz v6, :cond_3

    .line 1279
    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1314
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v8    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :catch_3
    move-exception v7

    goto/16 :goto_1

    .line 1278
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1278
    :cond_4
    throw v0
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1316
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :catch_4
    move-exception v7

    .line 1317
    .local v7, "e":Ljava/io/IOException;
    :goto_5
    :try_start_a
    const-string v0, "TelephonyProvider"

    const-string v1, "IOException: readFromXML "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1324
    if-eqz v11, :cond_0

    .line 1325
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    .line 1327
    :catch_5
    move-exception v7

    .line 1328
    const-string v0, "TelephonyProvider"

    const-string v1, "IOException: readFromXML when reader closing "

    goto :goto_4

    .line 1324
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "reader":Ljava/io/FileReader;
    :cond_5
    if-eqz v12, :cond_6

    .line 1325
    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    :cond_6
    :goto_6
    move-object v11, v12

    .line 1330
    .end local v12    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    goto/16 :goto_2

    .line 1318
    :catch_6
    move-exception v7

    .line 1319
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :goto_7
    :try_start_d
    const-string v0, "TelephonyProvider"

    const-string v1, "IllegalArgumentException: readFromXML "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1324
    if-eqz v11, :cond_0

    .line 1325
    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_2

    .line 1327
    :catch_7
    move-exception v7

    .line 1328
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "TelephonyProvider"

    const-string v1, "IOException: readFromXML when reader closing "

    goto :goto_4

    .line 1320
    .end local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 1321
    .local v7, "e":Ljava/lang/IllegalStateException;
    :goto_8
    :try_start_f
    const-string v0, "TelephonyProvider"

    const-string v1, "IllegalStateException: readFromXML "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1324
    if-eqz v11, :cond_0

    .line 1325
    :try_start_10
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_2

    .line 1327
    :catch_9
    move-exception v7

    .line 1328
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "TelephonyProvider"

    const-string v1, "IOException: readFromXML when reader closing "

    goto :goto_4

    .line 1323
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    .line 1324
    :goto_9
    if-eqz v11, :cond_7

    .line 1325
    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 1323
    :cond_7
    :goto_a
    throw v0

    .line 1327
    :catch_a
    move-exception v7

    .line 1328
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v1, "TelephonyProvider"

    const-string v2, "IOException: readFromXML when reader closing "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1327
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_b
    move-exception v7

    .line 1328
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "TelephonyProvider"

    const-string v1, "IOException: readFromXML when reader closing "

    goto/16 :goto_4

    .line 1327
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "reader":Ljava/io/FileReader;
    :catch_c
    move-exception v7

    .line 1328
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "TelephonyProvider"

    const-string v1, "IOException: readFromXML when reader closing "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1323
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v0

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    goto :goto_9

    .line 1320
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "reader":Ljava/io/FileReader;
    :catch_d
    move-exception v7

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    goto :goto_8

    .line 1318
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "reader":Ljava/io/FileReader;
    :catch_e
    move-exception v7

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    goto :goto_7

    .line 1316
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "reader":Ljava/io/FileReader;
    :catch_f
    move-exception v7

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    goto :goto_5
.end method

.method private restoreDefaultAPN()V
    .locals 5

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2275
    :try_start_0
    const-string v0, "carriers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2282
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;I)V

    .line 2281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2276
    :catch_0
    move-exception v0

    .line 2277
    const-string v2, "TelephonyProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got exception when deleting to restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2286
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    # invokes: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$400(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2287
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    # invokes: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadPersistentApnData(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$500(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CSC_UPDATE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2291
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2292
    return-void
.end method

.method private restoreDefaultAPNEx(I)V
    .locals 5

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2335
    :try_start_0
    const-string v0, "carriers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    :goto_0
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;I)V

    .line 2342
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    # invokes: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$400(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2343
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    # invokes: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadPersistentApnData(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$500(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CSC_UPDATE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2348
    return-void

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    const-string v2, "TelephonyProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got exception when deleting to restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private serializePersistentAPNs(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 2082
    const-string v0, "TelephonyProvider"

    const-string v1, "serializePersistentAPNs entered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2084
    const-string v1, "TelephonyProvider"

    const-string v2, "writeInXml"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->writeInXml(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2088
    :cond_0
    return-void

    .line 2083
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setAPNConfigCheckSum(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 1127
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-apn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1128
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1129
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "apn_conf_checksum"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1131
    return-void
.end method

.method private setPreferredApnId(Ljava/lang/Long;I)V
    .locals 6
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "simSlot"    # I

    .prologue
    .line 1076
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "preferred-apn"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1077
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1079
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "apn_id"

    .line 1087
    .local v0, "columnApnId":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1089
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1090
    return-void

    .line 1087
    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private static tabbleIsExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2424
    .line 2425
    if-nez p1, :cond_1

    .line 2449
    :cond_0
    :goto_0
    return v0

    .line 2430
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select count(*) as c from Sqlite_master  where type =\'table\' and name =\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2431
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2432
    const-string v1, "TelephonyProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tabbleIsExist::cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    if-eqz v2, :cond_2

    .line 2434
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2435
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2436
    const-string v3, "TelephonyProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tabbleIsExist::count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2437
    if-lez v1, :cond_2

    .line 2438
    const/4 v0, 0x1

    .line 2446
    :cond_2
    if-eqz v2, :cond_0

    .line 2447
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2442
    :catch_0
    move-exception v1

    .line 2444
    :try_start_1
    const-string v3, "TelephonyProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception when searching exist table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2446
    if-eqz v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 2447
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2446
    :cond_3
    throw v0
.end method

.method private static writeInXml(Landroid/content/ContentValues;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2091
    const-string v0, "TelephonyProvider"

    const-string v1, "Entered writeInXml with contentValues"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    new-instance v1, Ljava/io/File;

    const-string v0, "/efs/apn-changes.xml"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2097
    const/4 v3, 0x0

    .line 2099
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 2100
    const-string v0, "TelephonyProvider"

    const-string v4, "persistentfile exist. delete and new file"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2102
    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/apn-changes.xml"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    :goto_0
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v4, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2105
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 2106
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 2107
    const-string v1, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2108
    const-string v1, ""

    const-string v5, "apns"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2110
    const-string v1, "TelephonyProvider"

    const-string v5, "do addAtrribute new value"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-static {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider;->addAtrribute(Landroid/content/ContentValues;Lorg/xmlpull/v1/XmlSerializer;)Z

    move-result v1

    .line 2112
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2124
    if-eqz v4, :cond_0

    .line 2125
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 2131
    :cond_0
    :goto_1
    invoke-virtual {v0, v8, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2132
    return v1

    .line 2113
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 2114
    :goto_2
    :try_start_4
    const-string v4, "TelephonyProvider"

    const-string v5, "IOException: writeInXml "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2124
    if-eqz v3, :cond_1

    .line 2125
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_3
    move v1, v2

    .line 2130
    goto :goto_1

    .line 2116
    :catch_1
    move-exception v0

    move-object v4, v3

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 2117
    :goto_4
    :try_start_6
    const-string v3, "TelephonyProvider"

    const-string v5, "IllegalArgumentException: writeInXml "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2124
    if-eqz v4, :cond_2

    .line 2125
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_5
    move v1, v2

    .line 2130
    goto :goto_1

    .line 2119
    :catch_2
    move-exception v0

    move-object v4, v3

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 2120
    :goto_6
    :try_start_8
    const-string v3, "TelephonyProvider"

    const-string v5, "IllegalStateException: writeInXml "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2124
    if-eqz v4, :cond_3

    .line 2125
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_3
    :goto_7
    move v1, v2

    .line 2130
    goto :goto_1

    .line 2123
    :catchall_0
    move-exception v0

    move-object v4, v3

    .line 2124
    :goto_8
    if-eqz v4, :cond_4

    .line 2125
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 2123
    :cond_4
    :goto_9
    throw v0

    .line 2127
    :catch_3
    move-exception v1

    .line 2128
    const-string v2, "TelephonyProvider"

    const-string v3, "IOException: writeInXml when writer closing "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2127
    :catch_4
    move-exception v1

    .line 2128
    const-string v3, "TelephonyProvider"

    const-string v4, "IOException: writeInXml when writer closing "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2127
    :catch_5
    move-exception v1

    .line 2128
    const-string v3, "TelephonyProvider"

    const-string v4, "IOException: writeInXml when writer closing "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2127
    :catch_6
    move-exception v1

    .line 2128
    const-string v3, "TelephonyProvider"

    const-string v4, "IOException: writeInXml when writer closing "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2127
    :catch_7
    move-exception v3

    .line 2128
    const-string v4, "TelephonyProvider"

    const-string v5, "IOException: writeInXml when writer closing "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2123
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v4, v3

    goto :goto_8

    .line 2119
    :catch_8
    move-exception v1

    move-object v4, v3

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_6

    .line 2116
    :catch_a
    move-exception v1

    move-object v4, v3

    goto :goto_4

    :catch_b
    move-exception v1

    goto :goto_4

    .line 2113
    :catch_c
    move-exception v1

    goto :goto_2

    :catch_d
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1616
    const/4 v0, 0x0

    .line 1618
    .local v0, "count":I
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1620
    iget-object v4, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1621
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1622
    .local v2, "match":I
    packed-switch v2, :pswitch_data_0

    .line 1692
    :pswitch_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Cannot delete that URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1626
    :pswitch_1
    const-string v4, "carriers"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1696
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 1697
    const-string v4, "TelephonyProvider"

    const-string v5, "APN deleted !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1701
    :cond_1
    return v0

    .line 1631
    :pswitch_2
    const-string v4, "carriers"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1632
    goto :goto_0

    .line 1637
    :pswitch_3
    const-string v4, "carriers"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1638
    goto :goto_0

    .line 1643
    :pswitch_4
    const-string v4, "carriers"

    const-string v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1645
    goto :goto_0

    .line 1649
    :pswitch_5
    const/4 v0, 0x1

    .line 1659
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPN()V

    goto :goto_0

    .line 1666
    :pswitch_6
    const/4 v0, 0x1

    .line 1670
    invoke-direct {p0, v6}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPNEx(I)V

    goto :goto_0

    .line 1683
    :pswitch_7
    sget-object v4, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1684
    .local v3, "simSlot":I
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;I)V

    .line 1685
    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1336
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1357
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    .line 1353
    :goto_0
    return-object v0

    .line 1342
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1346
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1353
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 16
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1364
    const/4 v6, 0x0

    .line 1366
    .local v6, "result":Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1368
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1369
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v12, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1370
    .local v3, "match":I
    const/4 v4, 0x0

    .line 1371
    .local v4, "notify":Z
    packed-switch v3, :pswitch_data_0

    .line 1605
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v4, :cond_1

    .line 1606
    const-string v12, "TelephonyProvider"

    const-string v13, "APN inserted !!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1610
    :cond_1
    return-object v6

    .line 1376
    :pswitch_1
    if-eqz p2, :cond_13

    .line 1377
    new-instance v11, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1384
    .local v11, "values":Landroid/content/ContentValues;
    :goto_1
    const-string v12, "name"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1385
    const-string v12, "name"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    :cond_2
    const-string v12, "apn"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1388
    const-string v12, "apn"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    :cond_3
    const-string v12, "port"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1391
    const-string v12, "port"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :cond_4
    const-string v12, "proxy"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1394
    const-string v12, "proxy"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_5
    const-string v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1397
    const-string v12, "user"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_6
    const-string v12, "server"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1400
    const-string v12, "server"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_7
    const-string v12, "password"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1403
    const-string v12, "password"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :cond_8
    const-string v12, "mmsport"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1406
    const-string v12, "mmsport"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    :cond_9
    const-string v12, "mmsproxy"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 1409
    const-string v12, "mmsproxy"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    :cond_a
    const-string v12, "authtype"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 1412
    const-string v12, "authtype"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    :cond_b
    const-string v12, "protocol"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1415
    const-string v12, "protocol"

    const-string v13, "IP"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_c
    const-string v12, "roaming_protocol"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 1418
    const-string v12, "roaming_protocol"

    const-string v13, "IP"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_d
    const-string v12, "carrier_enabled"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 1421
    const-string v12, "carrier_enabled"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1423
    :cond_e
    const-string v12, "bearer"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 1424
    const-string v12, "bearer"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    :cond_f
    const-string v12, "sim_slot"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 1428
    const-string v12, "sim_slot"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    :cond_10
    const-string v12, "mvno_type"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 1432
    const-string v12, "mvno_type"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :cond_11
    const-string v12, "mvno_match_data"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 1435
    const-string v12, "mvno_match_data"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_12
    const-string v12, "carriers"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 1453
    .local v7, "rowID":J
    const-wide/16 v12, 0x0

    cmp-long v12, v7, v12

    if-lez v12, :cond_0

    .line 1455
    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_0

    .line 1379
    .end local v7    # "rowID":J
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_13
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .restart local v11    # "values":Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 1464
    .end local v11    # "values":Landroid/content/ContentValues;
    :pswitch_2
    if-eqz p2, :cond_23

    .line 1465
    new-instance v11, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1472
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_2
    const-string v12, "name"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 1473
    const-string v12, "name"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    :cond_14
    const-string v12, "apn"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 1476
    const-string v12, "apn"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    :cond_15
    const-string v12, "port"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_16

    .line 1479
    const-string v12, "port"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    :cond_16
    const-string v12, "proxy"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_17

    .line 1482
    const-string v12, "proxy"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_17
    const-string v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 1485
    const-string v12, "user"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :cond_18
    const-string v12, "server"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 1488
    const-string v12, "server"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    :cond_19
    const-string v12, "password"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1a

    .line 1491
    const-string v12, "password"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_1a
    const-string v12, "mmsport"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1b

    .line 1494
    const-string v12, "mmsport"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :cond_1b
    const-string v12, "mmsproxy"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1c

    .line 1497
    const-string v12, "mmsproxy"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    :cond_1c
    const-string v12, "authtype"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1d

    .line 1500
    const-string v12, "authtype"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    :cond_1d
    const-string v12, "protocol"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1e

    .line 1503
    const-string v12, "protocol"

    const-string v13, "IP"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_1e
    const-string v12, "roaming_protocol"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 1506
    const-string v12, "roaming_protocol"

    const-string v13, "IP"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_1f
    const-string v12, "carrier_enabled"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_20

    .line 1509
    const-string v12, "carrier_enabled"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1511
    :cond_20
    const-string v12, "bearer"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_21

    .line 1512
    const-string v12, "bearer"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1515
    :cond_21
    const-string v12, "sim_slot"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_22

    .line 1516
    const-string v12, "sim_slot"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1535
    :cond_22
    const-string v12, "carriers"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 1536
    .restart local v7    # "rowID":J
    const-wide/16 v12, 0x0

    cmp-long v12, v7, v12

    if-lez v12, :cond_0

    .line 1538
    sget-object v12, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1539
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1467
    .end local v7    # "rowID":J
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_23
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .restart local v11    # "values":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 1550
    .end local v11    # "values":Landroid/content/ContentValues;
    :pswitch_3
    sget-object v12, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1552
    .local v9, "simSlot":I
    const-string v12, "carriers"

    sget-object v13, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMaps:[Landroid/content/ContentValues;

    aget-object v13, v13, v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "current"

    invoke-static {v15, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " IS NOT NULL"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1554
    const-string v12, "numeric"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1555
    .local v5, "numeric":Ljava/lang/String;
    const-string v12, "carriers"

    sget-object v13, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMaps:[Landroid/content/ContentValues;

    aget-object v13, v13, v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(sim_slot = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " OR sim_slot = \'-1\') AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "numeric = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1560
    .local v10, "updated":I
    if-lez v10, :cond_0

    goto/16 :goto_0

    .line 1586
    .end local v5    # "numeric":Ljava/lang/String;
    .end local v9    # "simSlot":I
    .end local v10    # "updated":I
    :pswitch_4
    sget-object v12, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1587
    .restart local v9    # "simSlot":I
    const-string v1, "apn_id"

    .line 1595
    .local v1, "columnApnId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1596
    invoke-static {v1, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1597
    invoke-static {v1, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;I)V

    goto/16 :goto_0

    .line 1371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 10

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getAPNConfigCheckSum()J

    move-result-wide v5

    .line 991
    .local v5, "oldCheckSum":J
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lcom/android/providers/telephony/TelephonyProvider;->PARTNER_APNS_PATH:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 992
    .local v0, "confFile":Ljava/io/File;
    const-wide/16 v3, -0x1

    .line 995
    .local v3, "newCheckSum":J
    const-string v7, "TelephonyProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: confFile="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oldCheckSum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v7, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    .line 999
    new-instance v7, Lcom/android/providers/telephony/TelephonyProvider$ChangesHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/providers/telephony/TelephonyProvider$ChangesHelper;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/providers/telephony/TelephonyProvider;->mChangesHelper:Lcom/android/providers/telephony/TelephonyProvider$ChangesHelper;

    .line 1001
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->isLteOnCdma()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1038
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1039
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "carriers"

    const-string v8, "current2"

    invoke-static {v1, v7, v8}, Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1040
    const-string v7, "TelephonyProvider"

    const-string v8, "onCreate CARRIERS_TABLE : current2 Column Exist"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1052
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 1003
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1004
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "carriers"

    const-string v8, "profile_type"

    invoke-static {v1, v7, v8}, Lcom/android/providers/telephony/TelephonyProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1005
    const-string v7, "TelephonyProvider"

    const-string v8, "onCreate CARRIERS_TABLE : profile_type Column Exist"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1019
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_2
    :try_start_2
    invoke-static {v0}, Landroid/os/FileUtils;->checksumCrc32(Ljava/io/File;)J

    move-result-wide v3

    .line 1020
    const-string v7, "TelephonyProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: newCheckSum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    cmp-long v7, v5, v3

    if-eqz v7, :cond_0

    .line 1022
    const-string v7, "TelephonyProvider"

    const-string v8, "Rebuilding Telephony.db"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPN()V

    .line 1029
    invoke-direct {p0, v3, v4}, Lcom/android/providers/telephony/TelephonyProvider;->setAPNConfigCheckSum(J)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v2

    .line 1032
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v7, "TelephonyProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1007
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :try_start_3
    const-string v7, "ALTER TABLE carriers ADD COLUMN profile_type TEXT"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1008
    const-string v7, "TelephonyProvider"

    const-string v8, "onCreate CARRIERS_TABLE : profile_type Column created..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1010
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v2

    .line 1011
    .local v2, "e":Landroid/database/SQLException;
    const-string v7, "TelephonyProvider"

    const-string v8, "onCreate CARRIERS_TABLE : profile_type Column ADD error occured "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1033
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_2
    move-exception v2

    .line 1034
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "TelephonyProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1042
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :try_start_4
    const-string v7, "ALTER TABLE carriers ADD COLUMN current2 INTEGER;"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1043
    const-string v7, "TelephonyProvider"

    const-string v8, "onCreate CARRIERS_TABLE : current2 Column create."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const-string v7, "ALTER TABLE carriers ADD COLUMN sim_slot INTEGER DEFAULT -1;"

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1045
    const-string v7, "TelephonyProvider"

    const-string v8, "onCreate CARRIERS_TABLE : sim_slot Column create."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPN()V

    .line 1047
    const-string v7, "TelephonyProvider"

    const-string v8, "onCreate CARRIERS_TABLE : Restore db. restoreDefaultAPN()"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 1049
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_3
    move-exception v2

    .line 1050
    .local v2, "e":Landroid/database/SQLException;
    const-string v7, "TelephonyProvider"

    const-string v8, "onCreate CARRIERS_TABLE : current2 Column ADD error occured "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 23
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 1136
    new-instance v6, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1137
    .local v6, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 1138
    const-string v2, "carriers"

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1140
    sget-object v2, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 1141
    .local v19, "match":I
    packed-switch v19, :pswitch_data_0

    .line 1195
    :pswitch_0
    const/16 v20, 0x0

    .line 1226
    .end local v6    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_0
    :goto_0
    return-object v20

    .line 1151
    .restart local v6    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_1
    sget-object v2, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1152
    .local v21, "simSlot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(sim_slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR sim_slot = -1) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current"

    move/from16 v0, v21

    invoke-static {v3, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1199
    .end local v21    # "simSlot":I
    :goto_1
    :pswitch_2
    if-eqz p2, :cond_4

    .line 1200
    move-object/from16 v14, p2

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v15, v14, v17

    .line 1201
    .local v15, "column":Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mmsc"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mmsproxy"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mmsport"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "apn"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1200
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1163
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v15    # "column":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1174
    :pswitch_4
    sget-object v2, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1175
    .restart local v21    # "simSlot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApnId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1181
    .end local v21    # "simSlot":I
    :pswitch_5
    const/16 v2, 0x11

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1182
    .local v22, "valueFromXML":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->readFromXML([Ljava/lang/String;)V

    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    aget-object v3, v22, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    aget-object v3, v22, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v22, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v22, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1188
    .local v5, "selectionForQuery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v4, 0x16

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "name"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "apn"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "proxy"

    aput-object v9, v4, v8

    const/4 v8, 0x4

    const-string v9, "port"

    aput-object v9, v4, v8

    const/4 v8, 0x5

    const-string v9, "user"

    aput-object v9, v4, v8

    const/4 v8, 0x6

    const-string v9, "server"

    aput-object v9, v4, v8

    const/4 v8, 0x7

    const-string v9, "password"

    aput-object v9, v4, v8

    const/16 v8, 0x8

    const-string v9, "mmsc"

    aput-object v9, v4, v8

    const/16 v8, 0x9

    const-string v9, "mcc"

    aput-object v9, v4, v8

    const/16 v8, 0xa

    const-string v9, "mnc"

    aput-object v9, v4, v8

    const/16 v8, 0xb

    const-string v9, "numeric"

    aput-object v9, v4, v8

    const/16 v8, 0xc

    const-string v9, "mmsproxy"

    aput-object v9, v4, v8

    const/16 v8, 0xd

    const-string v9, "mmsport"

    aput-object v9, v4, v8

    const/16 v8, 0xe

    const-string v9, "authtype"

    aput-object v9, v4, v8

    const/16 v8, 0xf

    const-string v9, "type"

    aput-object v9, v4, v8

    const/16 v8, 0x10

    const-string v9, "protocol"

    aput-object v9, v4, v8

    const/16 v8, 0x11

    const-string v9, "carrier_enabled"

    aput-object v9, v4, v8

    const/16 v8, 0x12

    const-string v9, "roaming_protocol"

    aput-object v9, v4, v8

    const/16 v8, 0x13

    const-string v9, "bearer"

    aput-object v9, v4, v8

    const/16 v8, 0x14

    const-string v9, "current"

    aput-object v9, v4, v8

    const/16 v8, 0x15

    const-string v9, "profile_type"

    aput-object v9, v4, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v6    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v20

    goto/16 :goto_0

    .line 1208
    .end local v5    # "selectionForQuery":Ljava/lang/String;
    .end local v22    # "valueFromXML":[Ljava/lang/String;
    .restart local v6    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v14    # "arr$":[Ljava/lang/String;
    .restart local v15    # "column":Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v18    # "len$":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1217
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v15    # "column":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1218
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    .line 1220
    .local v20, "ret":Landroid/database/Cursor;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p5

    :try_start_0
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 1224
    :goto_4
    if-eqz v20, :cond_0

    .line 1225
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v2, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1214
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v20    # "ret":Landroid/database/Cursor;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    goto :goto_3

    .line 1221
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v20    # "ret":Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 1222
    .local v16, "e":Landroid/database/SQLException;
    const-string v2, "TelephonyProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got exception when querying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1707
    const/16 v17, 0x0

    .line 1708
    .local v17, "count":I
    const/16 v18, 0x0

    .line 1709
    .local v18, "cursorDb":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 1711
    .local v19, "cursorXml":Landroid/database/Cursor;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    .line 1714
    .local v20, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/TelephonyProvider;->mChangesHelper:Lcom/android/providers/telephony/TelephonyProvider$ChangesHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1715
    .local v15, "changesDb":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 1749
    .local v21, "match":I
    packed-switch v21, :pswitch_data_0

    .line 1870
    :pswitch_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Cannot update that URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1754
    :pswitch_1
    const-string v4, "carriers"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1874
    :cond_0
    :goto_0
    if-lez v17, :cond_1

    .line 1913
    const-string v4, "TelephonyProvider"

    const-string v5, "APN updated !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1924
    :cond_1
    return v17

    .line 1760
    :pswitch_2
    const-string v4, "carriers"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1761
    goto :goto_0

    .line 1766
    :pswitch_3
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1767
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Cannot update URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with a where clause"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1770
    :cond_3
    const-string v4, "carriers"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1772
    goto :goto_0

    .line 1785
    :pswitch_4
    sget-object v4, Lcom/android/providers/telephony/TelephonyProvider;->simSlotMap:Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1786
    .local v24, "simSlot":I
    const-string v16, "apn_id"

    .line 1794
    .local v16, "columnApnId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1795
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1796
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;I)V

    .line 1797
    const/4 v4, 0x5

    move/from16 v0, v21

    if-eq v0, v4, :cond_4

    const/16 v4, 0xa

    move/from16 v0, v21

    if-eq v0, v4, :cond_4

    const/16 v4, 0xe

    move/from16 v0, v21

    if-ne v0, v4, :cond_0

    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1806
    .end local v16    # "columnApnId":Ljava/lang/String;
    .end local v24    # "simSlot":I
    :pswitch_5
    const-string v4, "TelephonyProvider"

    const-string v5, "URL_TELEPHONY_DM_CHANGE: updated default apn!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/16 v4, 0x11

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1809
    .local v23, "prevValue":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->readFromXML([Ljava/lang/String;)V

    .line 1810
    const/4 v14, 0x0

    .line 1811
    .local v14, "_id":Ljava/lang/String;
    if-nez p2, :cond_5

    .line 1812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnc=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    aget-object v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mcc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    aget-object v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xf

    aget-object v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1815
    .local v7, "selectionForQuery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v6, 0x16

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "name"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "apn"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string v9, "proxy"

    aput-object v9, v6, v8

    const/4 v8, 0x4

    const-string v9, "port"

    aput-object v9, v6, v8

    const/4 v8, 0x5

    const-string v9, "user"

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-string v9, "server"

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-string v9, "password"

    aput-object v9, v6, v8

    const/16 v8, 0x8

    const-string v9, "mmsc"

    aput-object v9, v6, v8

    const/16 v8, 0x9

    const-string v9, "mcc"

    aput-object v9, v6, v8

    const/16 v8, 0xa

    const-string v9, "mnc"

    aput-object v9, v6, v8

    const/16 v8, 0xb

    const-string v9, "numeric"

    aput-object v9, v6, v8

    const/16 v8, 0xc

    const-string v9, "mmsproxy"

    aput-object v9, v6, v8

    const/16 v8, 0xd

    const-string v9, "mmsport"

    aput-object v9, v6, v8

    const/16 v8, 0xe

    const-string v9, "authtype"

    aput-object v9, v6, v8

    const/16 v8, 0xf

    const-string v9, "type"

    aput-object v9, v6, v8

    const/16 v8, 0x10

    const-string v9, "protocol"

    aput-object v9, v6, v8

    const/16 v8, 0x11

    const-string v9, "carrier_enabled"

    aput-object v9, v6, v8

    const/16 v8, 0x12

    const-string v9, "roaming_protocol"

    aput-object v9, v6, v8

    const/16 v8, 0x13

    const-string v9, "bearer"

    aput-object v9, v6, v8

    const/16 v8, 0x14

    const-string v9, "current"

    aput-object v9, v6, v8

    const/16 v8, 0x15

    const-string v9, "profile_type"

    aput-object v9, v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1819
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1820
    .local v22, "newValue":Landroid/content/ContentValues;
    const-string v4, "mcc"

    const/16 v5, 0x9

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string v4, "mnc"

    const/16 v5, 0xa

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const-string v4, "type"

    const/16 v5, 0xf

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-string v4, "apn"

    const/4 v5, 0x2

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const-string v4, "name"

    const/4 v5, 0x1

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v4, "numeric"

    const/16 v5, 0xb

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    const-string v4, "user"

    const/4 v5, 0x5

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string v4, "server"

    const/4 v5, 0x6

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string v4, "password"

    const/4 v5, 0x7

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string v4, "proxy"

    const/4 v5, 0x3

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const-string v4, "port"

    const/4 v5, 0x4

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-string v4, "mmsproxy"

    const/16 v5, 0xc

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const-string v4, "mmsport"

    const/16 v5, 0xd

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    const-string v4, "mmsc"

    const/16 v5, 0x8

    aget-object v5, v23, v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const-string v4, "authtype"

    const/16 v5, 0xe

    aget-object v5, v23, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1835
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->copyPrevValue(Landroid/content/ContentValues;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    .line 1836
    const-string v4, "carriers"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v14, v6, v8

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1837
    const-string v4, "nwkname"

    const-string v5, "ATT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string v4, "preferred"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1839
    const-string v4, "editable"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1840
    const-string v4, "profile_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1841
    const-string v4, "current"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1842
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0, v7, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1861
    .end local v22    # "newValue":Landroid/content/ContentValues;
    :goto_1
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL_TELEPHONY_DM_CHANGE: count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    if-eqz v18, :cond_6

    .line 1863
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1845
    .end local v7    # "selectionForQuery":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/providers/telephony/TelephonyProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1846
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->copyPrevValue(Landroid/content/ContentValues;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v14

    .line 1847
    const-string v4, "type"

    const/16 v5, 0xf

    aget-object v5, v23, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    const-string v4, "carriers"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v14, v6, v8

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1849
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->serializePersistentAPNs(Landroid/content/ContentValues;)V

    .line 1850
    const-string v4, "nwkname"

    const-string v5, "ATT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    const-string v4, "preferred"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1852
    const-string v4, "editable"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1853
    const-string v4, "profile_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1854
    const-string v4, "current"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnc=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mnc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mcc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mcc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1858
    .restart local v7    # "selectionForQuery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0, v7, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1865
    :cond_6
    const-string v4, "TelephonyProvider"

    const-string v5, "URL_TELEPHONY_DM_CHANGE: cursordb null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
