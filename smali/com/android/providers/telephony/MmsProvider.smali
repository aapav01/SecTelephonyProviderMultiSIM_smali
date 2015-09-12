.class public Lcom/android/providers/telephony/MmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsProvider.java"


# static fields
.field private static final SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

.field private static mEnableMultiDraftMsgBox:Z

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 88
    const-string v0, "content://spammms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsProvider;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    .line 90
    sput-boolean v2, Lcom/android/providers/telephony/MmsProvider;->mEnableMultiDraftMsgBox:Z

    .line 1632
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 1635
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1636
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1637
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1638
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1639
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1640
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1641
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1642
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1643
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1644
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1645
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "part"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1646
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#/part"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1647
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "part/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1648
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#/addr"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1649
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "rate"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1650
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "report-status/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1651
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "report-request/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1652
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drm"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1653
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drm/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1654
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "threads"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1655
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "resetFilePerm/*"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1657
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spammms"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1658
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spammms"

    const-string v2, "#"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1659
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spammms"

    const-string v2, "inbox"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1660
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spammms"

    const-string v2, "inbox/#"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1661
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spammms"

    const-string v2, "#/spamaddr"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1662
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spammms"

    const-string v2, "#/spampart"

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1663
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spammms"

    const-string v2, "spampart/#"

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1664
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "csnam"    # Ljava/lang/String;

    .prologue
    .line 1689
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 1690
    .local v0, "enc":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1691
    const/4 v1, 0x1

    .line 1693
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1669
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    :goto_0
    return-object p1

    .line 1671
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 1672
    goto :goto_0

    .line 1674
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "msgBox"    # I

    .prologue
    .line 346
    const-string v0, "pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 348
    if-eqz p2, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 351
    :cond_0
    return-void
.end method

.method static deleteAllMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I
    .locals 11

    .prologue
    .line 1148
    .line 1151
    const-string v8, "/data/data/com.android.providers.telephony/app_parts/"

    .line 1153
    const-string v1, "pdu"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1156
    if-nez v9, :cond_1

    .line 1157
    const/4 v0, 0x0

    .line 1220
    :cond_0
    :goto_0
    return v0

    .line 1160
    :cond_1
    const-string v1, "pdu"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1163
    if-nez v10, :cond_2

    .line 1164
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1165
    const/4 v0, 0x0

    goto :goto_0

    .line 1168
    :cond_2
    const-string v1, "spam_pdu"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1172
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1173
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1175
    if-eqz v1, :cond_3

    .line 1176
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1181
    :goto_1
    if-nez v2, :cond_4

    .line 1182
    const/4 v0, 0x0

    .line 1204
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1205
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1207
    if-eqz v1, :cond_0

    .line 1208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1178
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1185
    :cond_4
    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_7

    .line 1186
    :cond_5
    :goto_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1187
    const-string v0, "mid = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1204
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1205
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1207
    if-eqz v1, :cond_6

    .line 1208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 1191
    :cond_7
    :try_start_1
    const-string v0, "part"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1192
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1196
    if-eqz v2, :cond_8

    .line 1197
    const/4 v0, 0x0

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 1198
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1204
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1205
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1207
    if-eqz v1, :cond_9

    .line 1208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1212
    :cond_9
    const-string v0, "pdu"

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1213
    if-lez v0, :cond_0

    .line 1214
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CONTENT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    const-string v2, "deleted_contents"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1216
    const-string v2, "TP/MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private static deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1240
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1242
    if-nez v1, :cond_0

    move v0, v8

    .line 1291
    :goto_0
    return v0

    .line 1249
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    .line 1253
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 1255
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_1

    .line 1258
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1259
    if-ltz v2, :cond_4

    .line 1260
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1261
    const-string v4, "dm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1263
    :cond_2
    const-string v4, "dcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1264
    const-string v4, "TP/MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister dcf file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_3
    const-string v4, "dm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1269
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1271
    const-string v4, "TP/MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister dm file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string v4, "TP/MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete converted dm file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1281
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    :try_start_3
    const-string v2, "TP/MmsProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1288
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1291
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method static deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1079
    const-wide/16 v9, 0x0

    .line 1081
    const-string v1, "pdu"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "thread_id"

    aput-object v0, v2, v3

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1083
    if-nez v3, :cond_1

    move v0, v8

    .line 1111
    :cond_0
    :goto_0
    return v0

    .line 1088
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1098
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    .line 1092
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1093
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1094
    const-string v2, "mid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p1, v2, v4}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v0

    goto :goto_1

    .line 1098
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1101
    const-string v0, "pdu"

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1102
    if-lez v0, :cond_0

    .line 1103
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CONTENT_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    const-string v4, "deleted_contents"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1105
    const-string v4, "TP/MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1108
    invoke-static {p1, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 1098
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    move-wide v1, v9

    goto :goto_1
.end method

.method private static deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1225
    const-string v0, "part"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteSpamDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1296
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1298
    if-nez v1, :cond_0

    move v0, v8

    .line 1347
    :goto_0
    return v0

    .line 1305
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1344
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    .line 1309
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 1311
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_1

    .line 1314
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1315
    if-ltz v2, :cond_4

    .line 1316
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1317
    const-string v4, "dm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1319
    :cond_2
    const-string v4, "dcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1320
    const-string v4, "TP/MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister dcf file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_3
    const-string v4, "dm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1327
    const-string v4, "TP/MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregister dm file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const-string v4, "TP/MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete converted dm file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1337
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    :try_start_3
    const-string v2, "TP/MmsProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1344
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1347
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method static deleteSpamMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1116
    const-string v1, "spam_pdu"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1118
    if-nez v1, :cond_0

    move v0, v8

    .line 1142
    :goto_0
    return v0

    .line 1123
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1132
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    .line 1127
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1128
    const-string v0, "mid = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->deleteSpamParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1132
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1135
    const-string v0, "spam_pdu"

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static deleteSpamParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1230
    const-string v0, "spam_part"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteSpamDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1235
    const-string v0, "drm"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private filterUnsupportedKeys(Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 1548
    const-string v0, "d_tm_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1549
    const-string v0, "s_vis"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1550
    const-string v0, "r_chg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1551
    const-string v0, "r_chg_dl_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1552
    const-string v0, "r_chg_dl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1553
    const-string v0, "r_chg_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1554
    const-string v0, "r_chg_sz"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1555
    const-string v0, "p_s_by"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1556
    const-string v0, "p_s_d"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1557
    const-string v0, "store"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1558
    const-string v0, "mm_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1559
    const-string v0, "mm_flg_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1560
    const-string v0, "mm_flg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1561
    const-string v0, "store_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1562
    const-string v0, "store_st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1563
    const-string v0, "stored"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1564
    const-string v0, "totals"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1565
    const-string v0, "mb_t"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1566
    const-string v0, "mb_t_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1567
    const-string v0, "qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1568
    const-string v0, "mb_qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1569
    const-string v0, "mb_qt_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1570
    const-string v0, "m_cnt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1571
    const-string v0, "start"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1572
    const-string v0, "d_ind"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1573
    const-string v0, "e_des"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1574
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1575
    const-string v0, "r_r_mod"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1576
    const-string v0, "r_r_mod_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1577
    const-string v0, "st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1578
    const-string v0, "apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1579
    const-string v0, "r_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1580
    const-string v0, "aux_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1581
    const-string v0, "drm_c"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1582
    const-string v0, "adp_a"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1583
    const-string v0, "repl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1584
    const-string v0, "cl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1585
    const-string v0, "cl_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1588
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1589
    return-void
.end method

.method private getMessageBoxByMatch(I)I
    .locals 3
    .param p1, "match"    # I

    .prologue
    .line 933
    packed-switch p1, :pswitch_data_0

    .line 947
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad Arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :pswitch_0
    const/4 v0, 0x1

    .line 945
    :goto_0
    return v0

    .line 939
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 942
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 945
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 933
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private insertInner(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 45
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 408
    if-nez p2, :cond_1

    .line 409
    const-string v41, "TP/MmsProvider"

    const-string v42, "insertInner value is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v31, 0x0

    .line 759
    :cond_0
    :goto_0
    return-object v31

    .line 414
    :cond_1
    if-eqz p2, :cond_2

    const-string v41, "_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 415
    const/16 v31, 0x0

    goto :goto_0

    .line 417
    :cond_2
    const/16 v19, 0x0

    .line 418
    .local v19, "msgBox":I
    const/16 v23, 0x1

    .line 420
    .local v23, "notify":Z
    sget-object v41, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 421
    .local v17, "match":I
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Insert uri="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", match="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v37, "pdu"

    .line 424
    .local v37, "table":Ljava/lang/String;
    sparse-switch v17, :sswitch_data_0

    .line 470
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "insert: invalid request: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/16 v31, 0x0

    goto :goto_0

    .line 426
    :sswitch_0
    const-string v41, "msg_box"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 427
    .local v20, "msgBoxObj":Ljava/lang/Integer;
    if-eqz v20, :cond_b

    .line 428
    check-cast v20, Ljava/lang/Integer;

    .end local v20    # "msgBoxObj":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 474
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 476
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v31, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 477
    .local v31, "res":Landroid/net/Uri;
    const-wide/16 v33, 0x0

    .line 479
    .local v33, "rowId":J
    const-string v41, "pdu"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_17

    .line 480
    const-string v41, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_c

    const/16 v21, 0x1

    .line 481
    .local v21, "needToAddDate":Z
    :goto_2
    const-string v41, "msg_box"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_d

    const/16 v22, 0x1

    .line 482
    .local v22, "needToAddMsgBox":Z
    :goto_3
    const-string v41, "reserved"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v32

    .line 485
    .local v32, "reserved":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 489
    new-instance v12, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 491
    .local v12, "finalValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 493
    .local v14, "localTimeInMillis":J
    if-eqz v21, :cond_3

    if-nez v32, :cond_3

    .line 494
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "insert() Mms.Date = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " reserved = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v41, "date"

    const-wide/16 v42, 0x3e8

    div-long v42, v14, v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 500
    :cond_3
    if-eqz v22, :cond_4

    if-eqz v19, :cond_4

    .line 501
    const-string v41, "msg_box"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    :cond_4
    const/16 v41, 0x1

    move/from16 v0, v19

    move/from16 v1, v41

    if-eq v0, v1, :cond_5

    .line 506
    const-string v41, "read"

    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    :cond_5
    const-string v41, "thread_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v38

    .line 511
    .local v38, "threadId":Ljava/lang/Long;
    const-string v41, "address"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, "address":Ljava/lang/String;
    if-eqz v38, :cond_6

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    const-wide/16 v43, 0x0

    cmp-long v41, v41, v43

    if-nez v41, :cond_8

    .line 514
    :cond_6
    if-nez v4, :cond_7

    .line 515
    const-string v4, ""

    .line 517
    :cond_7
    const-string v41, "thread_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    :cond_8
    const-string v41, "sub"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 523
    .local v36, "sub":Ljava/lang/String;
    if-eqz v36, :cond_e

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v41

    if-eqz v41, :cond_e

    .line 524
    const-string v41, "ISO-8859-1"

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_9

    .line 525
    const-string v41, "sub"

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/android/providers/telephony/MmsSmsProvider;->toIsoString([B)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v41, "sub_cs"

    const/16 v42, 0x6a

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v41, "TP/MmsProvider"

    const-string v42, "change Subject to ISO"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_9
    const-string v41, "sub_cs"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_a

    .line 530
    const-string v41, "sub_cs"

    const/16 v42, 0x6a

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    :cond_a
    :goto_4
    const/16 v41, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v8, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v33

    const-wide/16 v41, 0x0

    cmp-long v41, v33, v41

    if-gtz v41, :cond_f

    .line 537
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "MmsProvider.insert: failed! "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 432
    .end local v4    # "address":Ljava/lang/String;
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "finalValues":Landroid/content/ContentValues;
    .end local v14    # "localTimeInMillis":J
    .end local v21    # "needToAddDate":Z
    .end local v22    # "needToAddMsgBox":Z
    .end local v31    # "res":Landroid/net/Uri;
    .end local v32    # "reserved":Z
    .end local v33    # "rowId":J
    .end local v36    # "sub":Ljava/lang/String;
    .end local v38    # "threadId":Ljava/lang/Long;
    .restart local v20    # "msgBoxObj":Ljava/lang/Integer;
    :cond_b
    const/16 v19, 0x1

    .line 434
    goto/16 :goto_1

    .line 436
    .end local v20    # "msgBoxObj":Ljava/lang/Integer;
    :sswitch_1
    const/16 v19, 0x1

    .line 437
    goto/16 :goto_1

    .line 439
    :sswitch_2
    const/16 v19, 0x2

    .line 440
    goto/16 :goto_1

    .line 442
    :sswitch_3
    const/16 v19, 0x3

    .line 443
    goto/16 :goto_1

    .line 445
    :sswitch_4
    const/16 v19, 0x4

    .line 446
    goto/16 :goto_1

    .line 448
    :sswitch_5
    const/16 v23, 0x0

    .line 449
    const-string v37, "part"

    .line 450
    goto/16 :goto_1

    .line 452
    :sswitch_6
    const/16 v23, 0x0

    .line 453
    const-string v37, "addr"

    .line 454
    goto/16 :goto_1

    .line 456
    :sswitch_7
    const/16 v23, 0x0

    .line 457
    const-string v37, "rate"

    .line 458
    goto/16 :goto_1

    .line 460
    :sswitch_8
    const/16 v23, 0x0

    .line 461
    const-string v37, "drm"

    .line 462
    goto/16 :goto_1

    .line 464
    :sswitch_9
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsProvider;->insertSpamMms(Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v31

    goto/16 :goto_0

    .line 466
    :sswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsProvider;->insertSpamAddr(Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v31

    goto/16 :goto_0

    .line 468
    :sswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/telephony/MmsProvider;->insertSpamPart(Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v31

    goto/16 :goto_0

    .line 480
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v31    # "res":Landroid/net/Uri;
    .restart local v33    # "rowId":J
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 481
    .restart local v21    # "needToAddDate":Z
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 533
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v12    # "finalValues":Landroid/content/ContentValues;
    .restart local v14    # "localTimeInMillis":J
    .restart local v22    # "needToAddMsgBox":Z
    .restart local v32    # "reserved":Z
    .restart local v36    # "sub":Ljava/lang/String;
    .restart local v38    # "threadId":Ljava/lang/Long;
    :cond_e
    const-string v41, "TP/MmsProvider"

    const-string v42, "no change Subject.... "

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 541
    :cond_f
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 542
    if-eqz v31, :cond_16

    .line 543
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Insert rowId = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v4    # "address":Ljava/lang/String;
    .end local v12    # "finalValues":Landroid/content/ContentValues;
    .end local v14    # "localTimeInMillis":J
    .end local v21    # "needToAddDate":Z
    .end local v22    # "needToAddMsgBox":Z
    .end local v32    # "reserved":Z
    .end local v36    # "sub":Ljava/lang/String;
    .end local v38    # "threadId":Ljava/lang/Long;
    :cond_10
    :goto_5
    if-eqz v23, :cond_11

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    .line 733
    :cond_11
    const/16 v41, 0x3

    move/from16 v0, v19

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    sget-object v42, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 738
    :cond_12
    const/16 v41, 0x1

    move/from16 v0, v19

    move/from16 v1, v41

    if-eq v0, v1, :cond_13

    const/16 v41, 0x2

    move/from16 v0, v19

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 739
    :cond_13
    new-instance v13, Landroid/content/Intent;

    const-string v41, "com.android.mms.INSERTED_MESSAGE"

    move-object/from16 v0, v41

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v13, "intent":Landroid/content/Intent;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v42, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 741
    .local v18, "mmsUri":Landroid/net/Uri;
    const-string v41, "msgUri"

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 742
    const-string v42, "boxType"

    const/16 v41, 0x1

    move/from16 v0, v19

    move/from16 v1, v41

    if-ne v0, v1, :cond_26

    const/16 v41, 0x0

    :goto_6
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    if-eqz p2, :cond_15

    .line 744
    const/16 v16, 0x0

    .line 746
    .local v16, "m_type":I
    :try_start_0
    const-string v41, "m_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v40

    .line 747
    .local v40, "type":Ljava/lang/Integer;
    if-eqz v40, :cond_14

    .line 748
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 750
    :cond_14
    if-lez v16, :cond_15

    .line 751
    const-string v41, "m_type"

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 757
    .end local v16    # "m_type":I
    .end local v40    # "type":Ljava/lang/Integer;
    :cond_15
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 545
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "mmsUri":Landroid/net/Uri;
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v12    # "finalValues":Landroid/content/ContentValues;
    .restart local v14    # "localTimeInMillis":J
    .restart local v21    # "needToAddDate":Z
    .restart local v22    # "needToAddMsgBox":Z
    .restart local v32    # "reserved":Z
    .restart local v36    # "sub":Ljava/lang/String;
    .restart local v38    # "threadId":Ljava/lang/Long;
    :cond_16
    const-string v41, "TP/MmsProvider"

    const-string v42, "Insert rowId is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 547
    .end local v4    # "address":Ljava/lang/String;
    .end local v12    # "finalValues":Landroid/content/ContentValues;
    .end local v14    # "localTimeInMillis":J
    .end local v21    # "needToAddDate":Z
    .end local v22    # "needToAddMsgBox":Z
    .end local v32    # "reserved":Z
    .end local v36    # "sub":Ljava/lang/String;
    .end local v38    # "threadId":Ljava/lang/Long;
    :cond_17
    const-string v41, "addr"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_19

    .line 548
    new-instance v12, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 549
    .restart local v12    # "finalValues":Landroid/content/ContentValues;
    const-string v42, "msg_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v41

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/16 v41, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v8, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v33

    const-wide/16 v41, 0x0

    cmp-long v41, v33, v41

    if-gtz v41, :cond_18

    .line 552
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Failed to insert address: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 556
    :cond_18
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/addr/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    goto/16 :goto_5

    .line 557
    .end local v12    # "finalValues":Landroid/content/ContentValues;
    :cond_19
    const-string v41, "part"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_21

    .line 558
    new-instance v12, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 560
    .restart local v12    # "finalValues":Landroid/content/ContentValues;
    const/16 v41, 0xb

    move/from16 v0, v17

    move/from16 v1, v41

    if-ne v0, v1, :cond_1a

    .line 561
    const-string v42, "mid"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v41

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_1a
    const-string v41, "ct"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 568
    .local v6, "contentType":Ljava/lang/String;
    const-string v41, "text/plain"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 569
    .local v30, "plainText":Z
    const-string v41, "application/smil"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 570
    .local v35, "smilText":Z
    if-nez v30, :cond_1d

    if-nez v35, :cond_1d

    .line 572
    const-string v41, "cl"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, "contentLocation":Ljava/lang/String;
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "org_contentLocation:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_1e

    .line 597
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    .local v11, "f":Ljava/io/File;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 603
    .end local v11    # "f":Ljava/io/File;
    :goto_8
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_1b

    .line 604
    const-string v41, " "

    const-string v42, "_"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "TempContentLocation":Ljava/lang/String;
    move-object v5, v3

    .line 607
    .end local v3    # "TempContentLocation":Ljava/lang/String;
    :cond_1b
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "converted_contentLocation:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v42

    const-string v43, "parts"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/PART_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 627
    .local v29, "path":Ljava/lang/String;
    const-string v41, "_data"

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance v28, Ljava/io/File;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    .local v28, "partFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v41

    if-nez v41, :cond_1c

    .line 632
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->createNewFile()Z

    move-result v41

    if-nez v41, :cond_1c

    .line 633
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unable to create new partFile: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 636
    :catch_0
    move-exception v9

    .line 637
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_1f

    const-string v41, "."

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v41

    const/16 v42, 0x32

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_1f

    .line 638
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "MmsProvider.insert.OrigLength = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/16 v41, 0x0

    const/16 v42, 0x2d

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 640
    .local v39, "trimmed":Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "."

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v42

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 641
    move-object/from16 v5, v39

    .line 642
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v42

    const-string v43, "parts"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/PART_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 643
    const-string v41, "_data"

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v28, Ljava/io/File;

    .end local v28    # "partFile":Ljava/io/File;
    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .restart local v28    # "partFile":Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 658
    .end local v9    # "e":Ljava/io/IOException;
    .end local v39    # "trimmed":Ljava/lang/String;
    :cond_1c
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1d

    .line 661
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "chmod 664 "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 668
    .end local v5    # "contentLocation":Ljava/lang/String;
    .end local v28    # "partFile":Ljava/io/File;
    .end local v29    # "path":Ljava/lang/String;
    :cond_1d
    :goto_9
    const/16 v41, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v8, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v33

    const-wide/16 v41, 0x0

    cmp-long v41, v33, v41

    if-gtz v41, :cond_20

    .line 669
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "MmsProvider.insert: failed! "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 600
    .restart local v5    # "contentLocation":Ljava/lang/String;
    :cond_1e
    const-string v5, ""

    goto/16 :goto_8

    .line 647
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v28    # "partFile":Ljava/io/File;
    .restart local v29    # "path":Ljava/lang/String;
    .restart local v39    # "trimmed":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 648
    .local v10, "ex":Ljava/io/IOException;
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unable to create new partFile again: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 651
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v39    # "trimmed":Ljava/lang/String;
    :cond_1f
    const-string v41, "TP/MmsProvider"

    const-string v42, "createNewFile"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unable to create new partFile: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 662
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 663
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "MmsProvider : drm media file permission change failed "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 673
    .end local v5    # "contentLocation":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v28    # "partFile":Ljava/io/File;
    .end local v29    # "path":Ljava/lang/String;
    :cond_20
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/part/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 678
    if-eqz v30, :cond_10

    .line 682
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 687
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v41, "_id"

    const-wide/16 v42, 0x2

    add-long v42, v42, v33

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 688
    const-string v41, "index_text"

    const-string v42, "text"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v41, "source_id"

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 690
    const-string v41, "table_to_use"

    const/16 v42, 0x2

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string v41, "words"

    const-string v42, "index_text"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v8, v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_5

    .line 693
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v12    # "finalValues":Landroid/content/ContentValues;
    .end local v30    # "plainText":Z
    .end local v35    # "smilText":Z
    :cond_21
    const-string v41, "rate"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_22

    .line 694
    const-string v41, "sent_time"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 695
    .local v24, "now":J
    const-wide/32 v41, 0x36ee80

    sub-long v26, v24, v41

    .line 697
    .local v26, "oneHourAgo":J
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "sent_time<="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 698
    const/16 v41, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    move-object/from16 v2, p2

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_5

    .line 699
    .end local v24    # "now":J
    .end local v26    # "oneHourAgo":J
    :cond_22
    const-string v41, "drm"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_25

    .line 700
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v42

    const-string v43, "parts"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/PART_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 702
    .restart local v29    # "path":Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 703
    .restart local v12    # "finalValues":Landroid/content/ContentValues;
    const-string v41, "_data"

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    new-instance v28, Ljava/io/File;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    .restart local v28    # "partFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v41

    if-nez v41, :cond_23

    .line 708
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->createNewFile()Z

    move-result v41

    if-nez v41, :cond_23

    .line 709
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unable to create new file: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 712
    :catch_3
    move-exception v9

    .line 713
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v41, "TP/MmsProvider"

    const-string v42, "createNewFile"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    new-instance v41, Ljava/lang/IllegalStateException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unable to create new file: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 719
    .end local v9    # "e":Ljava/io/IOException;
    :cond_23
    const/16 v41, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v8, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v33

    const-wide/16 v41, 0x0

    cmp-long v41, v33, v41

    if-gtz v41, :cond_24

    .line 720
    const-string v41, "TP/MmsProvider"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "MmsProvider.insert: failed! "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 723
    :cond_24
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "/drm/"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 724
    goto/16 :goto_5

    .line 725
    .end local v12    # "finalValues":Landroid/content/ContentValues;
    .end local v28    # "partFile":Ljava/io/File;
    .end local v29    # "path":Ljava/lang/String;
    :cond_25
    new-instance v41, Ljava/lang/AssertionError;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unknown table type: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v41

    .line 742
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v18    # "mmsUri":Landroid/net/Uri;
    :cond_26
    const/16 v41, 0x1

    goto/16 :goto_6

    .line 753
    .restart local v16    # "m_type":I
    :catch_4
    move-exception v9

    .line 754
    .local v9, "e":Ljava/lang/Exception;
    const-string v41, "TP/MmsProvider"

    const-string v42, "MmsProvider : m_type is not exist "

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 424
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_7
        0x11 -> :sswitch_8
        0x2a -> :sswitch_9
        0x2c -> :sswitch_a
        0x2d -> :sswitch_b
    .end sparse-switch
.end method

.method private insertSpamAddr(Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 817
    if-nez p1, :cond_0

    .line 818
    const-string v4, "TP/MmsProvider"

    const-string v6, "insertSpamAddr values is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 834
    :goto_0
    return-object v4

    .line 822
    :cond_0
    iget-object v4, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 826
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 827
    .local v1, "finalValues":Landroid/content/ContentValues;
    const-string v6, "msg_id"

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v4, "spam_addr"

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    .line 830
    const-string v4, "TP/MmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 831
    goto :goto_0

    .line 834
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/providers/telephony/MmsProvider;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/spamaddr/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method private insertSpamMms(Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "msgBox"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 763
    if-nez p1, :cond_0

    .line 764
    const-string v8, "TP/MmsProvider"

    const-string v9, "insertSpamMms values is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 813
    :goto_0
    return-object v8

    .line 768
    :cond_0
    iget-object v11, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 772
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v11, "date"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    move v4, v8

    .line 773
    .local v4, "needToAddDate":Z
    :goto_1
    const-string v11, "msg_box"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    move v5, v8

    .line 776
    .local v5, "needToAddMsgBox":Z
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 780
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 782
    .local v1, "finalValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 784
    .local v2, "localTimeInMillis":J
    if-eqz v4, :cond_1

    .line 785
    const-string v9, "TP/MmsProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "insertSpamMms() Mms.Date = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "date"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-string v9, "date"

    const-wide/16 v11, 0x3e8

    div-long v11, v2, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    :cond_1
    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    .line 791
    const-string v9, "msg_box"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    :cond_2
    if-eq p2, v8, :cond_3

    .line 796
    const-string v9, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 807
    :cond_3
    const-string v8, "spam_pdu"

    invoke-virtual {v0, v8, v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .local v6, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_6

    .line 808
    const-string v8, "TP/MmsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MmsProvider.insert: failed! "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 809
    goto/16 :goto_0

    .end local v1    # "finalValues":Landroid/content/ContentValues;
    .end local v2    # "localTimeInMillis":J
    .end local v4    # "needToAddDate":Z
    .end local v5    # "needToAddMsgBox":Z
    .end local v6    # "rowId":J
    :cond_4
    move v4, v9

    .line 772
    goto/16 :goto_1

    .restart local v4    # "needToAddDate":Z
    :cond_5
    move v5, v9

    .line 773
    goto :goto_2

    .line 812
    .restart local v1    # "finalValues":Landroid/content/ContentValues;
    .restart local v2    # "localTimeInMillis":J
    .restart local v5    # "needToAddMsgBox":Z
    .restart local v6    # "rowId":J
    :cond_6
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    .line 813
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/providers/telephony/MmsProvider;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private insertSpamPart(Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 18
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 838
    if-nez p1, :cond_0

    .line 839
    const-string v14, "TP/MmsProvider"

    const-string v15, "insertSpamPart values is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v14, 0x0

    .line 910
    :goto_0
    return-object v14

    .line 843
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 847
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Landroid/content/ContentValues;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 850
    .local v6, "finalValues":Landroid/content/ContentValues;
    const-string v15, "mid"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v14

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v6, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v14, "ct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "contentType":Ljava/lang/String;
    const-string v14, "text/plain"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 858
    .local v10, "plainText":Z
    const-string v14, "application/smil"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 859
    .local v13, "smilText":Z
    if-nez v10, :cond_3

    if-nez v13, :cond_3

    .line 862
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "parts"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/PART_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 865
    .local v9, "path":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 866
    const-string v14, "TP/MmsProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Original path ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v14, "cl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "contentLoaction":Ljava/lang/String;
    const-string v14, "."

    invoke-virtual {v1, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 870
    .local v7, "index":I
    const/4 v14, -0x1

    if-eq v7, v14, :cond_1

    .line 871
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 872
    .local v5, "extension":Ljava/lang/String;
    const-string v14, "TP/MmsProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "extension="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 874
    const-string v14, "TP/MmsProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Final path="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v1    # "contentLoaction":Ljava/lang/String;
    .end local v5    # "extension":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_1
    const-string v14, "_data"

    invoke-virtual {v6, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    .local v8, "partFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 883
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v14

    if-nez v14, :cond_2

    .line 884
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to create new partFile: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :catch_0
    move-exception v4

    .line 888
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "TP/MmsProvider"

    const-string v15, "createNewFile"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to create new partFile: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 895
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 898
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "chmod 664 "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 905
    .end local v8    # "partFile":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v14, "spam_part"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .local v11, "rowId":J
    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-gtz v14, :cond_4

    .line 906
    const-string v14, "TP/MmsProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MmsProvider.insert: failed! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 899
    .end local v11    # "rowId":J
    .restart local v8    # "partFile":Ljava/io/File;
    .restart local v9    # "path":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 900
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "TP/MmsProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MmsProvider : drm media file permission change failed "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 910
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "partFile":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    .restart local v11    # "rowId":J
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/providers/telephony/MmsProvider;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/spampart/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_0
.end method

.method private makeDisplayName([Ljava/lang/String;)V
    .locals 5
    .param p1, "org"    # [Ljava/lang/String;

    .prologue
    .line 331
    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 334
    array-length v0, p1

    .line 335
    .local v0, "cnt":I
    const-string v1, "_display_name"

    .line 337
    .local v1, "display_name":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 338
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cl as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_0

    .line 337
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 1592
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1594
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12

    .prologue
    .line 954
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 955
    const-string v0, "TP/MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", match="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, 0x0

    .line 958
    const/4 v1, 0x0

    .line 960
    sparse-switch v11, :sswitch_data_0

    .line 1037
    const-string v0, "TP/MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No match for URI \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v2, 0x0

    .line 1073
    :cond_0
    :goto_0
    return v2

    .line 966
    :sswitch_0
    const/4 v0, 0x1

    .line 967
    const-string v1, "pdu"

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1041
    :goto_1
    invoke-static {p2, v8}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    iget-object v3, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1045
    const-string v4, "pdu"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1046
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    .line 1049
    if-eqz v11, :cond_1

    const/4 v3, 0x3

    if-eq v11, v3, :cond_1

    const/4 v3, 0x7

    if-eq v11, v3, :cond_1

    .line 1051
    const-string v3, "TP/MmsProvider"

    const-string v4, "delete , handleReadChangedBroadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Ljava/lang/String;)V

    .line 1068
    :cond_1
    :goto_2
    const-string v3, "TP/MmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete table="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", deletedRows="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 1071
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    goto :goto_0

    .line 975
    :sswitch_1
    const/4 v9, 0x1

    .line 976
    const-string v10, "pdu"

    .line 977
    if-eqz v11, :cond_a

    .line 978
    invoke-direct {p0, v11}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v0

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg_box="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 981
    :goto_3
    sget-boolean v0, Lcom/android/providers/telephony/MmsProvider;->mEnableMultiDraftMsgBox:Z

    if-eqz v0, :cond_9

    .line 982
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 985
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 986
    const-string v1, "msg_box=3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 987
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 988
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 989
    const-string v1, "msg_box=3"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 990
    const-string v7, "date DESC LIMIT 1"

    .line 991
    iget-object v1, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 992
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 993
    const/4 v0, 0x0

    .line 995
    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 996
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1002
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 1003
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1005
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    move v0, v9

    move-object v1, v10

    .line 1009
    goto/16 :goto_1

    .line 998
    :catch_0
    move-exception v1

    .line 999
    const-string v3, "colsMap"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1013
    :sswitch_2
    const-string v2, "part"

    move-object v8, v0

    move v0, v1

    move-object v1, v2

    .line 1014
    goto/16 :goto_1

    .line 1016
    :sswitch_3
    const-string v2, "part"

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v0, v1

    move-object v1, v2

    .line 1018
    goto/16 :goto_1

    .line 1020
    :sswitch_4
    const-string v2, "part"

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v0, v1

    move-object v1, v2

    .line 1022
    goto/16 :goto_1

    .line 1024
    :sswitch_5
    const-string v2, "addr"

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v0, v1

    move-object v1, v2

    .line 1026
    goto/16 :goto_1

    .line 1028
    :sswitch_6
    const-string v2, "drm"

    move-object v8, v0

    move v0, v1

    move-object v1, v2

    .line 1029
    goto/16 :goto_1

    .line 1032
    :sswitch_7
    const/4 v0, 0x1

    .line 1033
    const-string v1, "spam_pdu"

    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 1055
    :cond_5
    const-string v4, "spam_pdu"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1056
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteSpamMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    goto/16 :goto_2

    .line 1060
    :cond_6
    const-string v4, "part"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1061
    invoke-static {v3, v2, p3}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 1062
    :cond_7
    const-string v4, "drm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1063
    invoke-static {v3, v2, p3}, Lcom/android/providers/telephony/MmsProvider;->deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 1065
    :cond_8
    invoke-virtual {v3, v1, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    :cond_9
    move v0, v9

    move-object v1, v10

    goto/16 :goto_1

    :cond_a
    move-object v8, v0

    goto/16 :goto_3

    .line 960
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0x11 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2b -> :sswitch_7
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 355
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 356
    .local v9, "match":I
    packed-switch v9, :pswitch_data_0

    .line 393
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 362
    :pswitch_1
    const-string v0, "vnd.android-dir/mms"

    goto :goto_0

    .line 368
    :pswitch_2
    const-string v0, "vnd.android/mms"

    goto :goto_0

    .line 370
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "part"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "ct"

    aput-object v3, v2, v7

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 374
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 376
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 382
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 379
    :cond_0
    :try_start_1
    const-string v0, "TP/MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.count() != 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 387
    :goto_1
    const-string v0, "*/*"

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 385
    :cond_1
    const-string v0, "TP/MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor == null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 401
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->insertInner(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0xe

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProvider;->setAppOps(II)V

    .line 95
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 96
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableMultiDraftBox"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/MmsProvider;->mEnableMultiDraftMsgBox:Z

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1482
    .line 1483
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1484
    const-string v1, "TP/MmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile: uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-object v6

    .line 1505
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/telephony/MmsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1506
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1507
    :goto_1
    if-eq v0, v8, :cond_6

    .line 1510
    if-eqz v1, :cond_2

    .line 1511
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1513
    :cond_2
    if-nez v0, :cond_5

    .line 1514
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_3

    .line 1524
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v7

    .line 1506
    goto :goto_1

    .line 1516
    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple items at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1520
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1521
    if-ltz v0, :cond_8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1523
    :goto_3
    if-eqz v1, :cond_7

    .line 1524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1528
    :cond_7
    if-eqz v0, :cond_0

    .line 1532
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1533
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/app_parts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    move-object v0, v6

    .line 1521
    goto :goto_3

    .line 1537
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1523
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 106
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 107
    .local v8, "match":I
    const-string v2, "TP/MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    packed-switch v8, :pswitch_data_0

    .line 302
    :pswitch_0
    const-string v2, "TP/MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v9, 0x0

    .line 326
    :goto_0
    return-object v9

    .line 111
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 306
    :goto_1
    const/4 v7, 0x0

    .line 307
    .local v7, "finalSortOrder":Ljava/lang/String;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pdu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    const-string v7, "date DESC"

    .line 318
    :cond_0
    :goto_2
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/MmsProvider;->makeDisplayName([Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 321
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 325
    .local v9, "ret":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 114
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "finalSortOrder":Ljava/lang/String;
    .end local v9    # "ret":Landroid/database/Cursor;
    :pswitch_2
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 117
    :pswitch_3
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 120
    :pswitch_4
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 123
    :pswitch_5
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 126
    :pswitch_6
    const-string v2, "pdu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 133
    :pswitch_7
    const-string v2, "pdu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND msg_box="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 139
    :pswitch_8
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    :pswitch_9
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 146
    :pswitch_a
    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 150
    :pswitch_b
    const-string v2, "addr"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 225
    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( SELECT ifnull(delivery_status, 0) AS delivery_status, ifnull(delivery_date,0) AS delivery_date,  ifnull(read_status, 0) AS read_status, ifnull(read_date,0) AS read_date, ifnull(T1.address,0) AS address  FROM((SELECT P1._id AS id1, P2._id AS id2, ifnull(P2.st, 0) AS delivery_status, ifnull(P2.date,0) AS delivery_date, A1.address AS address  FROM pdu P1 INNER JOIN pdu P2 INNER JOIN addr A1 ON P1._id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND P1.m_id=P2.m_id AND P2.m_type=134 AND A1.msg_id=id2 AND A1.type=151 )T1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ( SELECT P1._id AS id, P3._id AS id3, ifnull(P3.read_status, 0) AS read_status, ifnull(P3.date,0) AS read_date, A2.address AS address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM pdu P1 INNER JOIN pdu P3 INNER JOIN addr A2 ON P1._id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND P1.m_id=P3.m_id AND P3.m_type=136 AND A2.msg_id=id3 AND A2.type=137)T2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON T1.address=T2.address) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNION  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SELECT ifnull(delivery_status, 0) AS delivery_status,ifnull(delivery_date,0) AS delivery_date, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ifnull(read_status, 0) AS read_status, ifnull(read_date,0) AS read_date, ifnull(T1.address,0) AS address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM(( SELECT P1._id AS id, P3._id AS id3, ifnull(P3.read_status, 0) AS read_status, ifnull(P3.date,0) AS read_date, A2.address AS address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM pdu P1 INNER JOIN pdu P3 INNER JOIN addr A2 ON P1._id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND P1.m_id=P3.m_id AND P3.m_type=136 AND A2.msg_id=id3 AND A2.type=137)T1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT JOIN ( SELECT P1._id AS id1, P2._id AS id2, ifnull(P2.st, 0) AS delivery_status, ifnull(P2.date,0) AS delivery_date, A1.address AS address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM pdu P1 INNER JOIN pdu P2 INNER JOIN addr A1 ON P1._id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND P1.m_id=P2.m_id AND P2.m_type=134 AND A1.msg_id=id2 AND A1.type=151)T2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON T1.address=T2.address)) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_1

    .line 263
    :pswitch_d
    const-string v2, "addr join pdu on pdu._id = addr.msg_id"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdu._id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 266
    const-string v2, " AND addr.type = 151"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 270
    :pswitch_e
    const-string v2, "rate"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :pswitch_f
    const-string v2, "drm"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 277
    :pswitch_10
    const-string v2, "pdu group by thread_id"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    :pswitch_11
    const-string v2, "spam_pdu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 284
    :pswitch_12
    const-string v2, "spam_pdu"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 286
    const-string v2, " AND msg_box=1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 290
    :pswitch_13
    const-string v2, "spam_addr"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 294
    :pswitch_14
    const-string v2, "spam_part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 298
    :pswitch_15
    const-string v2, "spam_part"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 310
    .restart local v7    # "finalSortOrder":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "part"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const-string v7, "seq"

    goto/16 :goto_2

    .line 314
    :cond_2
    move-object v7, p5

    goto/16 :goto_2

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1354
    if-eqz p2, :cond_1

    const-string v0, "_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return v5

    .line 1357
    :cond_1
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 1358
    const-string v0, "TP/MmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    sparse-switch v7, :sswitch_data_0

    .line 1409
    const-string v0, "TP/MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update operation for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not implemented."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1370
    :sswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1378
    :goto_1
    const-string v2, "pdu"

    move v3, v4

    .line 1415
    :goto_2
    const-string v6, "pdu"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "spam_pdu"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1417
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 1418
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1420
    if-eqz v0, :cond_7

    .line 1421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v5

    move-object v5, v0

    move-object v0, v9

    .line 1450
    :goto_3
    invoke-static {p3, v5}, Lcom/android/providers/telephony/MmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1451
    iget-object v6, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1452
    invoke-virtual {v6, v2, v0, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1453
    if-eqz v3, :cond_3

    if-lez v5, :cond_3

    .line 1454
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange()V

    .line 1456
    if-eqz v0, :cond_3

    const-string v3, "msg_box"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "msg_box"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 1458
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.mms.INSERTED_MESSAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1459
    const-string v6, "msgUri"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1460
    const-string v6, "boxType"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1461
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1465
    :cond_3
    const-string v3, "pdu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1467
    if-eq v7, v4, :cond_0

    const/4 v2, 0x3

    if-eq v7, v2, :cond_0

    const/4 v2, 0x7

    if-eq v7, v2, :cond_0

    .line 1468
    const-string v2, "TP/MmsProvider"

    const-string v3, "update , handleReadChangedBroadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v5, v2, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1383
    :sswitch_1
    const-string v0, "part"

    move-object v2, v0

    move v3, v4

    move-object v0, v1

    .line 1384
    goto/16 :goto_2

    .line 1387
    :sswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1389
    const-string v0, "spam_pdu"

    move v3, v5

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 1390
    goto/16 :goto_2

    .line 1394
    :sswitch_3
    const-string v0, "spam_pdu"

    move-object v2, v0

    move v3, v4

    move-object v0, v1

    .line 1395
    goto/16 :goto_2

    .line 1398
    :sswitch_4
    const-string v0, "spam_part"

    move-object v2, v0

    move v3, v5

    move-object v0, v1

    .line 1399
    goto/16 :goto_2

    .line 1401
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parts"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    const/16 v1, 0x1a4

    invoke-static {v0, v1, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v1

    .line 1405
    const-string v2, "TP/MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmsProvider.update setPermissions result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1423
    :cond_4
    const-string v0, "part"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "spam_part"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    :cond_5
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1426
    const-string v0, "DRM_DATA"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1427
    const-string v0, "DRM_DATA"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1428
    const-string v8, "DRM_DATA"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1429
    if-eqz v0, :cond_6

    .line 1430
    const-string v8, "_data"

    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :cond_6
    sparse-switch v7, :sswitch_data_1

    move-object v0, v6

    move-object v5, v1

    .line 1444
    goto/16 :goto_3

    .line 1437
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v0, v6

    .line 1438
    goto/16 :goto_3

    .line 1441
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v0, v6

    .line 1442
    goto/16 :goto_3

    :cond_7
    move-object v0, v5

    move-object v5, v1

    goto/16 :goto_3

    :sswitch_8
    move-object v0, v1

    goto/16 :goto_1

    .line 1364
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_0
        0x2 -> :sswitch_8
        0x3 -> :sswitch_0
        0x4 -> :sswitch_8
        0x5 -> :sswitch_0
        0x6 -> :sswitch_8
        0x7 -> :sswitch_0
        0x8 -> :sswitch_8
        0x9 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0x14 -> :sswitch_5
        0x28 -> :sswitch_3
        0x29 -> :sswitch_2
        0x2a -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_4
        0x2e -> :sswitch_4
    .end sparse-switch

    .line 1434
    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0x2d -> :sswitch_6
        0x2e -> :sswitch_7
    .end sparse-switch
.end method
