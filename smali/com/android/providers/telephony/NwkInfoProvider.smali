.class public Lcom/android/providers/telephony/NwkInfoProvider;
.super Landroid/content/ContentProvider;
.source "NwkInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final URI_CARRIERS:Landroid/net/Uri;

.field public static final URI_DORMPOLICY:Landroid/net/Uri;

.field public static final URI_NWKINFO:Landroid/net/Uri;

.field public static final URI_RESTORE:Landroid/net/Uri;

.field private static final s_currentNullMap:Landroid/content/ContentValues;

.field private static final s_currentSetMap:Landroid/content/ContentValues;

.field private static final s_urlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 80
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 97
    const-string v0, "content://nwkinfo/nwkinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    .line 98
    const-string v0, "content://nwkinfo/nwkinfo/dormpolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->URI_DORMPOLICY:Landroid/net/Uri;

    .line 99
    const-string v0, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->URI_CARRIERS:Landroid/net/Uri;

    .line 100
    const-string v0, "content://nwkinfo/nwkinfo/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->URI_RESTORE:Landroid/net/Uri;

    .line 106
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "nwkinfo"

    const-string v2, "nwkinfo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "nwkinfo"

    const-string v2, "nwkinfo/dormpolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "nwkinfo"

    const-string v2, "nwkinfo/carriers"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "nwkinfo"

    const-string v2, "nwkinfo/restore"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_currentNullMap:Landroid/content/ContentValues;

    .line 112
    sget-object v1, Lcom/android/providers/telephony/NwkInfoProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v2, "current"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_currentSetMap:Landroid/content/ContentValues;

    .line 115
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_currentSetMap:Landroid/content/ContentValues;

    const-string v1, "current"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 118
    return-void
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    const-string v2, "No permission to write APN settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method private restoreTables()V
    .locals 2

    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 729
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    check-cast v1, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;

    # invokes: Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->updateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;->access$000(Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 730
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->checkPermission()V

    .line 651
    iget-object v3, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 652
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 653
    .local v2, "match":I
    packed-switch v2, :pswitch_data_0

    .line 678
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 657
    :pswitch_0
    const-string v3, "carriers"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 682
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 686
    :cond_0
    return v0

    .line 662
    .end local v0    # "count":I
    :pswitch_1
    const-string v3, "nwkinfo"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 663
    .restart local v0    # "count":I
    goto :goto_0

    .line 667
    .end local v0    # "count":I
    :pswitch_2
    const-string v3, "dormpolicy"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 668
    .restart local v0    # "count":I
    goto :goto_0

    .line 672
    .end local v0    # "count":I
    :pswitch_3
    const/4 v0, 0x1

    .line 673
    .restart local v0    # "count":I
    invoke-direct {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->restoreTables()V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 440
    sget-object v0, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 450
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

    .line 442
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    .line 448
    :goto_0
    return-object v0

    .line 445
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    goto :goto_0

    .line 448
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 456
    const/4 v5, 0x0

    .line 458
    .local v5, "result":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->checkPermission()V

    .line 460
    iget-object v10, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 461
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v10, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 462
    .local v1, "match":I
    const/4 v2, 0x0

    .line 463
    .local v2, "notify":Z
    packed-switch v1, :pswitch_data_0

    .line 638
    :goto_0
    if-eqz v2, :cond_0

    .line 639
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 642
    :cond_0
    return-object v5

    .line 468
    :pswitch_0
    if-eqz p2, :cond_15

    .line 469
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 474
    .local v8, "values":Landroid/content/ContentValues;
    :goto_1
    const-string v10, "name"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 475
    const-string v10, "name"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_1
    const-string v10, "apn"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 478
    const-string v10, "apn"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_2
    const-string v10, "port"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 481
    const-string v10, "port"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_3
    const-string v10, "proxy"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 484
    const-string v10, "proxy"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_4
    const-string v10, "user"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 487
    const-string v10, "user"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_5
    const-string v10, "server"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 490
    const-string v10, "server"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_6
    const-string v10, "password"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 493
    const-string v10, "password"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_7
    const-string v10, "mmsport"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 496
    const-string v10, "mmsport"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_8
    const-string v10, "mmsproxy"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 499
    const-string v10, "mmsproxy"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_9
    const-string v10, "authtype"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 502
    const-string v10, "authtype"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    :cond_a
    const-string v10, "protocol"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 505
    const-string v10, "protocol"

    const-string v11, "IP"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_b
    const-string v10, "roaming_protocol"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 508
    const-string v10, "roaming_protocol"

    const-string v11, "IP"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_c
    const-string v10, "carrier_enabled"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 511
    const-string v10, "carrier_enabled"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 514
    :cond_d
    const-string v10, "carrier_enabled_roaming"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 515
    const-string v10, "carrier_enabled_roaming"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 518
    :cond_e
    const-string v10, "bearer"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 519
    const-string v10, "bearer"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    :cond_f
    const-string v10, "homeurl"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 522
    const-string v10, "homeurl"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_10
    const-string v10, "nwkname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 525
    const-string v10, "nwkname"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_11
    const-string v10, "preferred"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 528
    const-string v10, "preferred"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    :cond_12
    const-string v10, "editable"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 531
    const-string v10, "editable"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 534
    :cond_13
    const-string v10, "carriers"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 535
    .local v6, "rowID":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_14

    .line 537
    sget-object v10, Lcom/android/providers/telephony/NwkInfoProvider;->URI_CARRIERS:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 538
    const/4 v2, 0x0

    .line 541
    :cond_14
    const-string v10, "NwkInfoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inserted rowID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    .end local v6    # "rowID":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_15
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8    # "values":Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 548
    .end local v8    # "values":Landroid/content/ContentValues;
    :pswitch_1
    if-eqz p2, :cond_1e

    .line 549
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 553
    .restart local v8    # "values":Landroid/content/ContentValues;
    :goto_2
    const-string v10, "plmn"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 554
    const-string v10, "plmn"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_16
    const-string v10, "nwkname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 557
    const-string v10, "nwkname"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_17
    const-string v10, "dormancy"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 560
    const-string v10, "dormancy"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_18
    const-string v10, "mtu"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 563
    const-string v10, "mtu"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_19
    const-string v10, "subsetcode"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 566
    const-string v10, "subsetcode"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_1a
    const-string v10, "subsetcode"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 569
    const-string v10, "subsetcode"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_1b
    const-string v10, "spname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 572
    const-string v10, "spname"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_1c
    const-string v10, "nwkinfo"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 576
    .restart local v6    # "rowID":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_1d

    .line 578
    sget-object v10, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 579
    const/4 v2, 0x1

    .line 582
    :cond_1d
    const-string v10, "NwkInfoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inserted rowID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 551
    .end local v6    # "rowID":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_1e
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8    # "values":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 589
    .end local v8    # "values":Landroid/content/ContentValues;
    :pswitch_2
    if-eqz p2, :cond_26

    .line 590
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 597
    .restart local v8    # "values":Landroid/content/ContentValues;
    :goto_3
    const-string v10, "plmn"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1f

    .line 598
    const-string v10, "plmn"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1f
    const-string v10, "nwkname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_20

    .line 601
    const-string v10, "nwkname"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_20
    const-string v10, "lcdonfdtime"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 604
    const-string v10, "lcdonfdtime"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_21
    const-string v10, "lcdofffdtime"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    .line 607
    const-string v10, "lcdofffdtime"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_22
    const-string v10, "lcdonfdtime_Rel8"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_23

    .line 610
    const-string v10, "lcdonfdtime_Rel8"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_23
    const-string v10, "lcdofffdtime_Rel8"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_24

    .line 613
    const-string v10, "lcdofffdtime_Rel8"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_24
    const-string v10, "plmn"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "plmn":Ljava/lang/String;
    const-string v10, "nwkname"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "nwkname":Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(plmn = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' AND nwkname = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\')"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 623
    .local v9, "whereClause":Ljava/lang/String;
    const-string v10, "dormpolicy"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 625
    const-string v10, "dormpolicy"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 626
    .restart local v6    # "rowID":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_25

    .line 628
    sget-object v10, Lcom/android/providers/telephony/NwkInfoProvider;->URI_DORMPOLICY:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 629
    const/4 v2, 0x1

    .line 632
    :cond_25
    const-string v10, "NwkInfoProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inserted rowID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    .end local v3    # "nwkname":Ljava/lang/String;
    .end local v4    # "plmn":Ljava/lang/String;
    .end local v6    # "rowID":J
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "whereClause":Ljava/lang/String;
    :cond_26
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8    # "values":Landroid/content/ContentValues;
    goto/16 :goto_3

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 398
    const-string v0, "NwkInfoProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v0, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/NwkInfoProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 407
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 409
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 410
    .local v8, "match":I
    packed-switch v8, :pswitch_data_0

    .line 435
    :goto_0
    return-object v5

    .line 413
    :pswitch_0
    const-string v2, "carriers"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 432
    :goto_1
    iget-object v2, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 433
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 434
    .local v9, "ret":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v5, v9

    .line 435
    goto :goto_0

    .line 418
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "ret":Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "nwkinfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :pswitch_2
    const-string v2, "dormpolicy"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "count":I
    invoke-direct {p0}, Lcom/android/providers/telephony/NwkInfoProvider;->checkPermission()V

    .line 694
    iget-object v3, p0, Lcom/android/providers/telephony/NwkInfoProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 695
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/NwkInfoProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 696
    .local v2, "match":I
    packed-switch v2, :pswitch_data_0

    .line 716
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 700
    :pswitch_0
    const-string v3, "carriers"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 720
    :goto_0
    if-lez v0, :cond_0

    .line 721
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 724
    :cond_0
    return v0

    .line 705
    :pswitch_1
    const-string v3, "nwkinfo"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 706
    goto :goto_0

    .line 711
    :pswitch_2
    const-string v3, "dormpolicy"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 712
    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
