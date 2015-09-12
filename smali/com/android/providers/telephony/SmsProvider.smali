.class public Lcom/android/providers/telephony/SmsProvider;
.super Landroid/content/ContentProvider;
.source "SmsProvider.java"


# static fields
.field private static final CONTACT_QUERY_PROJECTION:[Ljava/lang/String;

.field private static final ICC_COLUMNS:[Ljava/lang/String;

.field private static final ICC_URI:Landroid/net/Uri;

.field private static final ICC_URI2:Landroid/net/Uri;

.field private static final NOTIFICATION_SPAM_URI:Landroid/net/Uri;

.field private static final NOTIFICATION_URI:Landroid/net/Uri;

.field private static final ONE:Ljava/lang/Integer;

.field private static final SMSC_URI:Landroid/net/Uri;

.field private static final SMSC_URI2:Landroid/net/Uri;

.field private static mEnableMmsTransactionCustomize4Korea:Z

.field private static mEnableMultiDraftMsgBox:Z

.field private static final sConversationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIDProjection:[Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "content://spamsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_SPAM_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->SMSC_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://sms/smsc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->SMSC_URI2:Landroid/net/Uri;

    .line 99
    const-string v0, "content://sms/icc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_URI2:Landroid/net/Uri;

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    .line 104
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->CONTACT_QUERY_PROJECTION:[Ljava/lang/String;

    .line 110
    sput-boolean v3, Lcom/android/providers/telephony/SmsProvider;->mEnableMultiDraftMsgBox:Z

    .line 112
    sput-boolean v3, Lcom/android/providers/telephony/SmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    .line 119
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_center_address"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "message_class"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "index_on_icc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_status_report"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "active"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "max_slot_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    .line 1308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    .line 1310
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    .line 1365
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 1369
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1370
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1371
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1372
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "inbox/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1373
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sent"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1374
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1375
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "draft"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1376
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "draft/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1377
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1378
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1379
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "undelivered"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1380
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "failed"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1381
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "failed/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1382
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "queued"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1383
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "conversations"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1384
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "conversations/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1385
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "raw"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1387
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "incomplete_lms"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1389
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "attachments"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1390
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "attachments/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1391
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "threadID"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1392
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "threadID/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1393
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "status/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1394
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sr_pending"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1395
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1396
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc/active"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1397
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1399
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sim"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1400
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sim/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1403
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "smsc"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1406
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc2"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1407
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc2/active"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1408
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc2/#"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1409
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sim2"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1410
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sim2/#"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1411
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "smsc2"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1414
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "group/#"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1417
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "cmas"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1418
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "cmas/#"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1421
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spamsms"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1422
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spamsms"

    const-string v2, "inbox"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1423
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "spamsms"

    const-string v2, "#"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1425
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "snippet"

    const-string v2, "sms.body AS snippet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "sms.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "msg_count"

    const-string v2, "groups.msg_count AS msg_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "delta"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "type"    # I

    .prologue
    .line 588
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 590
    if-eqz p2, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 593
    :cond_0
    return-void
.end method

.method private constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;

    .prologue
    .line 596
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 598
    const-string v0, "(type=4 OR type=5 OR type=6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 601
    return-void
.end method

.method private convertIccToSms(Landroid/telephony/SmsMessage;I)[Ljava/lang/Object;
    .locals 9
    .param p1, "message"    # Landroid/telephony/SmsMessage;
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 336
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 340
    .local v0, "cscFeature":Lcom/sec/android/app/CscFeature;
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 342
    .local v2, "row":[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageType()I

    move-result v1

    .line 343
    .local v1, "msg_type":I
    if-eqz v1, :cond_0

    if-ne v1, v4, :cond_1

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 346
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 347
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 348
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 349
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    .line 350
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 351
    const/4 v3, 0x6

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 352
    const/4 v3, 0x7

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 353
    const/16 v3, 0x8

    const-string v4, "sms"

    aput-object v4, v2, v3

    .line 354
    const/16 v3, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 355
    const/16 v3, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 356
    const/16 v3, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 357
    const/16 v3, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 378
    :goto_0
    const/16 v3, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 379
    const/16 v3, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 380
    return-object v2

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 362
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayDestinationAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 363
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 364
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 365
    const-string v3, "CscFeature_Message_EnableMessageSentTimeInSimList"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    .line 369
    :goto_1
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 370
    const/4 v3, 0x6

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 371
    const/4 v3, 0x7

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 372
    const/16 v3, 0x8

    const-string v4, "sms"

    aput-object v4, v2, v3

    .line 373
    const/16 v3, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 374
    const/16 v3, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 375
    const/16 v3, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 376
    const/16 v3, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_0

    .line 368
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    goto :goto_1
.end method

.method private deleteInner(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 937
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 938
    .local v17, "match":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 939
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", match="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    sparse-switch v17, :sswitch_data_0

    .line 1058
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown URL"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 942
    :sswitch_0
    const-string v4, "sms"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 943
    .local v11, "count":I
    if-eqz v11, :cond_0

    .line 945
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v12, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1061
    :cond_0
    :goto_0
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete deletedRows="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    if-lez v11, :cond_1

    .line 1064
    const/16 v4, 0x2a

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 1065
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifySpamFilterChange(Landroid/net/Uri;)V

    .line 1070
    :cond_1
    :goto_1
    const/16 v4, 0xf

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    const/16 v4, 0xb

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2a

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    .line 1071
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v11, v4, v5}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Ljava/lang/String;)V

    .line 1073
    .end local v11    # "count":I
    :cond_2
    :goto_2
    return v11

    .line 951
    :sswitch_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 952
    .local v20, "message_id":I
    move/from16 v0, v20

    invoke-static {v12, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .restart local v11    # "count":I
    goto :goto_0

    .line 953
    .end local v11    # "count":I
    .end local v20    # "message_id":I
    :catch_0
    move-exception v13

    .line 954
    .local v13, "e":Ljava/lang/Exception;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad message id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 961
    .end local v13    # "e":Ljava/lang/Exception;
    :sswitch_2
    sget-boolean v4, Lcom/android/providers/telephony/SmsProvider;->mEnableMultiDraftMsgBox:Z

    if-eqz v4, :cond_5

    .line 962
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 965
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 966
    .local v10, "checkDraftUpdate":Ljava/lang/String;
    const-string v4, "type=3"

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 967
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 968
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "sms"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 969
    const-string v4, "type=3"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 970
    const-string v9, "date DESC LIMIT 1"

    .line 971
    .local v9, "orderBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 972
    .local v3, "dbR":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 973
    .local v21, "retCursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 975
    .local v16, "mID":Ljava/lang/String;
    if-eqz v21, :cond_3

    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 976
    const-string v4, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 982
    :cond_3
    :goto_3
    if-eqz v21, :cond_4

    .line 983
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 985
    :cond_4
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 986
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 993
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v3    # "dbR":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "checkDraftUpdate":Ljava/lang/String;
    .end local v16    # "mID":Ljava/lang/String;
    .end local v21    # "retCursor":Landroid/database/Cursor;
    :cond_5
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v22

    .line 1002
    .local v22, "threadID":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1003
    const-string v4, "sms"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1004
    .restart local v11    # "count":I
    move-wide/from16 v0, v22

    invoke-static {v12, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_0

    .line 978
    .end local v11    # "count":I
    .end local v22    # "threadID":J
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v3    # "dbR":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "checkDraftUpdate":Ljava/lang/String;
    .restart local v16    # "mID":Ljava/lang/String;
    .restart local v21    # "retCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v13

    .line 979
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "colsMap"

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 994
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v3    # "dbR":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "checkDraftUpdate":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "mID":Ljava/lang/String;
    .end local v21    # "retCursor":Landroid/database/Cursor;
    :catch_2
    move-exception v14

    .line 995
    .local v14, "ex":Ljava/lang/Exception;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad conversation thread id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1008
    .end local v14    # "ex":Ljava/lang/Exception;
    :sswitch_3
    const-string v4, "raw"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1009
    .restart local v11    # "count":I
    goto/16 :goto_0

    .line 1013
    .end local v11    # "count":I
    :sswitch_4
    const-string v4, "incomplete_lms"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1014
    .restart local v11    # "count":I
    goto/16 :goto_0

    .line 1018
    .end local v11    # "count":I
    :sswitch_5
    const-string v4, "sr_pending"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1019
    .restart local v11    # "count":I
    goto/16 :goto_0

    .line 1022
    .end local v11    # "count":I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1024
    .local v18, "messageIndexString":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    .line 1028
    .end local v18    # "messageIndexString":Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1030
    .local v19, "messageIndexString1":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    .line 1036
    .end local v19    # "messageIndexString1":Ljava/lang/String;
    :sswitch_8
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1037
    .local v15, "groupId":I
    move-object/from16 v0, p2

    invoke-static {v12, v15, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOneGroupSms(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v11

    .restart local v11    # "count":I
    goto/16 :goto_0

    .line 1038
    .end local v11    # "count":I
    .end local v15    # "groupId":I
    :catch_3
    move-exception v13

    .line 1039
    .local v13, "e":Ljava/lang/Exception;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad group id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1048
    .end local v13    # "e":Ljava/lang/Exception;
    :sswitch_9
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1049
    .restart local v20    # "message_id":I
    const-string v4, "spam_sms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v12, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v11

    .restart local v11    # "count":I
    goto/16 :goto_0

    .line 1050
    .end local v11    # "count":I
    .end local v20    # "message_id":I
    :catch_4
    move-exception v13

    .line 1051
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad message id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1067
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v11    # "count":I
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 940
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xf -> :sswitch_3
        0x15 -> :sswitch_5
        0x17 -> :sswitch_6
        0x1d -> :sswitch_8
        0x22 -> :sswitch_7
        0x2a -> :sswitch_9
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private deleteMessageFromIcc(Ljava/lang/String;I)I
    .locals 9
    .param p1, "messageIndexString"    # Ljava/lang/String;
    .param p2, "SimSlot"    # I

    .prologue
    const/4 v8, 0x0

    .line 1081
    const/16 v5, 0xe

    const/16 v6, 0xf

    invoke-virtual {p0, v5, v6}, Landroid/content/ContentProvider;->setAppOps(II)V

    .line 1082
    const/16 v5, 0x15

    const/16 v6, 0x16

    invoke-virtual {p0, v5, v6}, Landroid/content/ContentProvider;->setAppOps(II)V

    .line 1084
    invoke-static {p2}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v2

    .line 1085
    .local v2, "smsManager":Landroid/telephony/SmsManager;
    const-string v5, "TP/SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteMessageFromIcc ICC ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1089
    .local v3, "token":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 1096
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1098
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez p2, :cond_2

    .line 1099
    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1103
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1089
    return v5

    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v1

    .line 1093
    .local v1, "exception":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad SMS ICC ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    .end local v1    # "exception":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1098
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    if-nez p2, :cond_1

    .line 1099
    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1103
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    throw v5

    .line 1101
    :cond_1
    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->ICC_URI2:Landroid/net/Uri;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    :cond_2
    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->ICC_URI2:Landroid/net/Uri;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private getAllMessagesFromIcc(IZ)Landroid/database/Cursor;
    .locals 9
    .param p1, "SimSlot"    # I
    .param p2, "getOnlyActive"    # Z

    .prologue
    .line 439
    invoke-static {p1}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v5

    .line 443
    .local v5, "smsManager":Landroid/telephony/SmsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 445
    .local v6, "token":J
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIccSimSlot()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 447
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 451
    .local v0, "count":I
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v8, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 452
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 453
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 454
    .local v3, "message":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_0

    .line 456
    invoke-direct {p0, v3, v2}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 452
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "count":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "i":I
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 460
    .restart local v0    # "count":I
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    .restart local v2    # "i":I
    .restart local v4    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v8

    return-object v8
.end method

.method private getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .param p1, "messageIndexString"    # Ljava/lang/String;
    .param p2, "SimSlot"    # I

    .prologue
    .line 413
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 415
    .local v3, "messageIndex":I
    invoke-static {p2}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v5

    .line 416
    .local v5, "smsManager":Landroid/telephony/SmsManager;
    invoke-static {}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v4

    .line 418
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsMessage;

    .line 419
    .local v2, "message":Landroid/telephony/SmsMessage;
    if-nez v2, :cond_0

    .line 420
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message not retrieved. ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v2    # "message":Landroid/telephony/SmsMessage;
    .end local v3    # "messageIndex":I
    .end local v4    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .end local v5    # "smsManager":Landroid/telephony/SmsManager;
    :catch_0
    move-exception v1

    .line 427
    .local v1, "exception":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad SMS ICC ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 423
    .end local v1    # "exception":Ljava/lang/NumberFormatException;
    .restart local v2    # "message":Landroid/telephony/SmsMessage;
    .restart local v3    # "messageIndex":I
    .restart local v4    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .restart local v5    # "smsManager":Landroid/telephony/SmsManager;
    :cond_0
    :try_start_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 424
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 425
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method private insertCmasMessage(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 871
    const-string v5, "TP/SmsProvider"

    const-string v6, "insertCmasMessage Start "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 876
    .local v4, "values":Landroid/content/ContentValues;
    if-eqz v4, :cond_1

    .line 877
    iget-object v5, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 878
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "cmas"

    const-string v6, "service_category"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 880
    .local v1, "rowID":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://sms/cmas/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 883
    .local v3, "uri":Landroid/net/Uri;
    const-string v5, "TP/SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0, v3}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 890
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "rowID":J
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 887
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "rowID":J
    :cond_0
    const-string v5, "TP/SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertCmasMessage: failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "rowID":J
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private insertInner(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 24
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 639
    const/4 v15, 0x0

    .line 641
    .local v15, "type":I
    sget-object v19, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 642
    .local v10, "match":I
    const-string v13, "sms"

    .line 644
    .local v13, "table":Ljava/lang/String;
    sparse-switch v10, :sswitch_data_0

    .line 710
    const-string v19, "SmsProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid request: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/16 v17, 0x0

    .line 867
    :cond_0
    :goto_0
    return-object v17

    .line 647
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->insertCmasMessage(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    goto :goto_0

    .line 651
    :sswitch_1
    const-string v19, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 652
    .local v16, "typeObj":Ljava/lang/Integer;
    if-eqz v16, :cond_d

    .line 653
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 714
    .end local v16    # "typeObj":Ljava/lang/Integer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 716
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v19, "sms"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 717
    const/4 v3, 0x0

    .line 718
    .local v3, "addDate":Z
    const/4 v4, 0x0

    .line 721
    .local v4, "addType":Z
    if-nez p2, :cond_e

    .line 722
    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .line 723
    .local v18, "values":Landroid/content/ContentValues;
    const/4 v3, 0x1

    .line 724
    const/4 v4, 0x1

    .line 737
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 738
    const-string v19, "date"

    new-instance v20, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-direct/range {v20 .. v22}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 741
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v15, :cond_3

    .line 742
    const-string v19, "type"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    :cond_3
    const-string v19, "thread_id"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 747
    .local v14, "threadId":Ljava/lang/Long;
    const-string v19, "address"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 749
    .local v5, "address":Ljava/lang/String;
    const/4 v9, 0x0

    .line 751
    .local v9, "isPhoneNumber":Z
    sget-boolean v19, Lcom/android/providers/telephony/SmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v19, :cond_10

    .line 752
    invoke-static {v5}, Lcom/android/providers/telephony/MmsSmsProvider;->isPhoneNumberEx(Ljava/lang/String;)Z

    move-result v9

    .line 757
    :goto_3
    if-eqz v9, :cond_4

    .line 759
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 760
    const-string v19, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_4
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_7

    .line 764
    :cond_5
    if-nez v5, :cond_6

    .line 765
    const-string v5, ""

    .line 767
    :cond_6
    const-string v19, "thread_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 776
    :cond_7
    sget-boolean v19, Lcom/android/providers/telephony/SmsProvider;->mEnableMultiDraftMsgBox:Z

    if-nez v19, :cond_8

    .line 777
    const-string v19, "type"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 778
    const-string v19, "sms"

    const-string v20, "thread_id=? AND type=?"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "thread_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 784
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_11

    .line 810
    const-string v19, "read"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "read"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "seen"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 813
    const-string v19, "seen"

    sget-object v20, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    .end local v3    # "addDate":Z
    .end local v4    # "addType":Z
    .end local v5    # "address":Ljava/lang/String;
    .end local v9    # "isPhoneNumber":Z
    .end local v14    # "threadId":Ljava/lang/Long;
    :cond_9
    :goto_4
    const-string v19, "body"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v7, v13, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 832
    .local v11, "rowID":J
    const-string v19, "sms"

    move-object/from16 v0, v19

    if-ne v13, v0, :cond_a

    .line 836
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 837
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v19, "_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 838
    const-string v19, "index_text"

    const-string v20, "body"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v19, "source_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 840
    const-string v19, "table_to_use"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    const-string v19, "words"

    const-string v20, "index_text"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 843
    .end local v6    # "cv":Landroid/content/ContentValues;
    :cond_a
    const-wide/16 v19, 0x0

    cmp-long v19, v11, v19

    if-lez v19, :cond_15

    .line 844
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "content://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 845
    .local v17, "uri":Landroid/net/Uri;
    const-string v19, "SmsProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "insert "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " succeeded"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 850
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 851
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 855
    :cond_b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_c

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v15, v0, :cond_0

    .line 856
    :cond_c
    new-instance v8, Landroid/content/Intent;

    const-string v19, "com.android.mms.INSERTED_MESSAGE"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 857
    .local v8, "intent":Landroid/content/Intent;
    const-string v19, "msgUri"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 858
    const-string v20, "boxType"

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_14

    const/16 v19, 0x0

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 656
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "rowID":J
    .end local v17    # "uri":Landroid/net/Uri;
    .end local v18    # "values":Landroid/content/ContentValues;
    .restart local v16    # "typeObj":Ljava/lang/Integer;
    :cond_d
    const/4 v15, 0x1

    .line 658
    goto/16 :goto_1

    .line 661
    .end local v16    # "typeObj":Ljava/lang/Integer;
    :sswitch_2
    const/4 v15, 0x1

    .line 662
    goto/16 :goto_1

    .line 665
    :sswitch_3
    const/4 v15, 0x5

    .line 666
    goto/16 :goto_1

    .line 669
    :sswitch_4
    const/4 v15, 0x6

    .line 670
    goto/16 :goto_1

    .line 673
    :sswitch_5
    const/4 v15, 0x2

    .line 674
    goto/16 :goto_1

    .line 677
    :sswitch_6
    const/4 v15, 0x3

    .line 678
    goto/16 :goto_1

    .line 681
    :sswitch_7
    const/4 v15, 0x4

    .line 682
    goto/16 :goto_1

    .line 685
    :sswitch_8
    const-string v13, "raw"

    .line 686
    goto/16 :goto_1

    .line 690
    :sswitch_9
    const-string v13, "incomplete_lms"

    .line 691
    goto/16 :goto_1

    .line 695
    :sswitch_a
    const-string v13, "sr_pending"

    .line 696
    goto/16 :goto_1

    .line 699
    :sswitch_b
    const-string v13, "attachments"

    .line 700
    goto/16 :goto_1

    .line 703
    :sswitch_c
    const-string v13, "canonical_addresses"

    .line 704
    goto/16 :goto_1

    .line 707
    :sswitch_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->insertSpamSms(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    goto/16 :goto_0

    .line 726
    .restart local v3    # "addDate":Z
    .restart local v4    # "addType":Z
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_e
    new-instance v18, Landroid/content/ContentValues;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 728
    .restart local v18    # "values":Landroid/content/ContentValues;
    const-string v19, "date"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 729
    const/4 v3, 0x1

    .line 732
    :cond_f
    const-string v19, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 733
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 754
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v9    # "isPhoneNumber":Z
    .restart local v14    # "threadId":Ljava/lang/Long;
    :cond_10
    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_3

    .line 817
    :cond_11
    const-string v19, "read"

    sget-object v20, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 820
    .end local v3    # "addDate":Z
    .end local v4    # "addType":Z
    .end local v5    # "address":Ljava/lang/String;
    .end local v9    # "isPhoneNumber":Z
    .end local v14    # "threadId":Ljava/lang/Long;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_12
    if-nez p2, :cond_13

    .line 821
    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v18    # "values":Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 823
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_13
    move-object/from16 v18, p2

    .restart local v18    # "values":Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 858
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v11    # "rowID":J
    .restart local v17    # "uri":Landroid/net/Uri;
    :cond_14
    const/16 v19, 0x1

    goto/16 :goto_5

    .line 864
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_15
    const-string v19, "SmsProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "insert: failed! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 644
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_5
        0x6 -> :sswitch_6
        0x8 -> :sswitch_7
        0xf -> :sswitch_8
        0x10 -> :sswitch_b
        0x12 -> :sswitch_c
        0x15 -> :sswitch_a
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x1e -> :sswitch_0
        0x29 -> :sswitch_d
        0x32 -> :sswitch_9
    .end sparse-switch
.end method

.method private insertSpamSms(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 895
    const-string v5, "TP/SmsProvider"

    const-string v6, "insertSpamSms Start "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 899
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    if-eqz v4, :cond_1

    .line 902
    iget-object v5, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 903
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "spam_sms"

    const-string v6, "body"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 905
    .local v1, "rowID":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://spamsms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 908
    .local v3, "uri":Landroid/net/Uri;
    const-string v5, "TP/SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-direct {p0, v3}, Lcom/android/providers/telephony/SmsProvider;->notifySpamFilterChange(Landroid/net/Uri;)V

    .line 915
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "rowID":J
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 912
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "rowID":J
    :cond_0
    const-string v5, "TP/SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertSpamSms: failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "rowID":J
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1293
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1294
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1295
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1296
    const-string v1, "content://mms-sms/conversations/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1297
    return-void
.end method

.method private notifySpamFilterChange(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 919
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 920
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 922
    const-string v1, "content://mms-sms/spam-messages/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 923
    return-void
.end method

.method private updateSmsCenterFromSim(Landroid/content/ContentValues;I)I
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "SimSlot"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 1264
    invoke-static {p2}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v5

    .line 1265
    .local v5, "smsManager":Landroid/telephony/SmsManager;
    const-string v9, "smsc"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1266
    .local v6, "smsc":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object v6, v4, v8

    .line 1267
    .local v4, "mUpdateSmsc":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1268
    .local v3, "mSmscUpdateSuccess":I
    const-string v9, "TP/SmsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSmsCenterFromSim smsc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/telephony/SmsManager;->updateSmsServiceCenterOnSim(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v7

    .line 1272
    :goto_0
    if-ne v3, v7, :cond_0

    .line 1273
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1274
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "simSlot"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1275
    const-string v7, "smsc"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1276
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.RECEIVE_SMS"

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1283
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez p2, :cond_3

    .line 1284
    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->SMSC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1278
    :goto_1
    return v3

    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    move v3, v8

    .line 1271
    goto :goto_0

    .line 1279
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "exception":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Bad SMSC SIM"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1282
    .end local v1    # "exception":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1283
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    if-nez p2, :cond_2

    .line 1284
    sget-object v8, Lcom/android/providers/telephony/SmsProvider;->SMSC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1282
    :goto_2
    throw v7

    .line 1286
    :cond_2
    sget-object v8, Lcom/android/providers/telephony/SmsProvider;->SMSC_URI2:Landroid/net/Uri;

    invoke-virtual {v0, v8, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->SMSC_URI2:Landroid/net/Uri;

    invoke-virtual {v0, v7, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "SimSlot"    # I

    .prologue
    .line 579
    if-nez p2, :cond_0

    .line 580
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 584
    :goto_0
    return-object p1

    .line 582
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->ICC_URI2:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 929
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/SmsProvider;->deleteInner(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 929
    return v2

    .line 931
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 605
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 623
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 607
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/sms"

    goto :goto_0

    .line 610
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 611
    const-string v1, "vnd.android.cursor.item/sms"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v1, "vnd.android.cursor.dir/sms"

    goto :goto_0

    .line 617
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "conversations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    const-string v1, "vnd.android.cursor.item/sms-chat"

    goto :goto_0

    .line 620
    :cond_0
    const-string v1, "vnd.android.cursor.item/sms"

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 630
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/SmsProvider;->insertInner(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 632
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    return-object v2

    .line 632
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 141
    const/16 v0, 0xe

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProvider;->setAppOps(II)V

    .line 142
    const/16 v0, 0x15

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProvider;->setAppOps(II)V

    .line 143
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 145
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableMultiDraftBox"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/SmsProvider;->mEnableMultiDraftMsgBox:Z

    .line 146
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableMmsTransactionCustomize4Korea"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/SmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 156
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 157
    .local v10, "match":I
    packed-switch v10, :pswitch_data_0

    .line 306
    :pswitch_0
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v13, 0x0

    .line 331
    :goto_0
    return-object v13

    .line 159
    :pswitch_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 310
    :cond_0
    :goto_1
    const/4 v8, 0x0

    .line 312
    .local v8, "orderBy":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 313
    move-object/from16 v8, p5

    .line 318
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 319
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 323
    .local v13, "ret":Landroid/database/Cursor;
    const/16 v3, 0x2a

    if-ne v10, v3, :cond_3

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_SPAM_URI:Landroid/net/Uri;

    invoke-interface {v13, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 163
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "orderBy":Ljava/lang/String;
    .end local v13    # "ret":Landroid/database/Cursor;
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto :goto_1

    .line 167
    :pswitch_3
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 171
    :pswitch_4
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 175
    :pswitch_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 179
    :pswitch_6
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 183
    :pswitch_7
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 187
    :pswitch_8
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 191
    :pswitch_9
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 200
    :pswitch_a
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 208
    :pswitch_b
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 209
    .local v14, "threadID":J
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query conversations: threadID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 211
    .end local v14    # "threadID":J
    :catch_0
    move-exception v9

    .line 212
    .local v9, "ex":Ljava/lang/Exception;
    const-string v4, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad conversation thread id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 221
    .end local v9    # "ex":Ljava/lang/Exception;
    :pswitch_c
    const-string v3, "sms, (SELECT thread_id AS group_thread_id, MAX(date)AS group_date,COUNT(*) AS msg_count FROM sms GROUP BY thread_id) AS groups"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 223
    const-string v3, "sms.thread_id = groups.group_thread_id AND sms.date =groups.group_date"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 225
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 229
    :pswitch_d
    const-string v3, "raw"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 234
    :pswitch_e
    const-string v3, "incomplete_lms"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 239
    :pswitch_f
    const-string v3, "sr_pending"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 243
    :pswitch_10
    const-string v3, "attachments"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 247
    :pswitch_11
    const-string v3, "attachments"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(sms_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 253
    :pswitch_12
    const-string v3, "canonical_addresses"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 254
    if-nez p2, :cond_0

    .line 255
    sget-object p2, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    goto/16 :goto_1

    .line 260
    :pswitch_13
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 265
    :pswitch_14
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc(IZ)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_0

    .line 268
    :pswitch_15
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc(IZ)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_0

    .line 272
    :pswitch_16
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc(IZ)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_0

    .line 275
    :pswitch_17
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc(IZ)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_0

    .line 279
    :pswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 281
    .local v11, "messageIndexString":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_0

    .line 285
    .end local v11    # "messageIndexString":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 287
    .local v12, "messageIndexString1":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_0

    .line 292
    .end local v12    # "messageIndexString1":Ljava/lang/String;
    :pswitch_1a
    const-string v3, "cmas"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    :pswitch_1b
    const-string v3, "sms, cmas"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    :pswitch_1c
    const-string v3, "spam_sms"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 314
    .restart local v8    # "orderBy":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    const-string v8, "date DESC"

    goto/16 :goto_2

    .line 327
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13    # "ret":Landroid/database/Cursor;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    invoke-interface {v13, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_14
        :pswitch_18
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1109
    const/4 v13, 0x0

    .line 1110
    .local v13, "count":I
    const-string v22, "sms"

    .line 1111
    .local v22, "table":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1112
    .local v17, "extraWhere":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 1114
    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 1115
    .local v20, "match":I
    const-string v6, "SmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", match="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    packed-switch v20, :pswitch_data_0

    .line 1232
    :pswitch_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1119
    :pswitch_1
    const-string v22, "raw"

    .line 1236
    :cond_0
    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1237
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1239
    if-lez v13, :cond_1

    .line 1240
    const-string v6, "SmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " succeeded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const-string v6, "spam_sms"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1243
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifySpamFilterChange(Landroid/net/Uri;)V

    .line 1248
    :goto_1
    if-eqz p2, :cond_1

    const-string v6, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 1250
    new-instance v18, Landroid/content/Intent;

    const-string v6, "com.android.mms.INSERTED_MESSAGE"

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v18, "intent":Landroid/content/Intent;
    const-string v6, "msgUri"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1252
    const-string v6, "boxType"

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1253
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1257
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v6, "spam_sms"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    move/from16 v0, v20

    if-eq v0, v6, :cond_2

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-static {v13, v6, v0, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    :cond_2
    move v6, v13

    .line 1259
    :goto_2
    return v6

    .line 1124
    :pswitch_2
    const-string v22, "incomplete_lms"

    .line 1125
    goto/16 :goto_0

    .line 1129
    :pswitch_3
    const-string v22, "sr_pending"

    .line 1130
    goto/16 :goto_0

    .line 1140
    :pswitch_4
    sget-boolean v6, Lcom/android/providers/telephony/SmsProvider;->mEnableMultiDraftMsgBox:Z

    if-eqz v6, :cond_0

    .line 1141
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1144
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1145
    .local v12, "checkDraftUpdate":Ljava/lang/String;
    const-string v6, "type=3"

    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1146
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1147
    .local v4, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "sms"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1148
    const-string v6, "type=3"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1149
    const-string v11, "date DESC LIMIT 1"

    .line 1150
    .local v11, "orderBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1151
    .local v5, "dbR":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1152
    .local v21, "retCursor":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 1154
    .local v19, "mID":Ljava/lang/String;
    if-eqz v21, :cond_3

    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1155
    const-string v6, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1161
    :cond_3
    :goto_3
    if-eqz v21, :cond_4

    .line 1162
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1164
    :cond_4
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-static {v0, v6}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    .line 1157
    :catch_0
    move-exception v15

    .line 1158
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "colsMap"

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1173
    .end local v4    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v5    # "dbR":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "orderBy":Ljava/lang/String;
    .end local v12    # "checkDraftUpdate":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v19    # "mID":Ljava/lang/String;
    .end local v21    # "retCursor":Landroid/database/Cursor;
    :pswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1175
    goto/16 :goto_0

    .line 1182
    :pswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1183
    goto/16 :goto_0

    .line 1186
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1189
    .local v23, "threadId":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1196
    goto/16 :goto_0

    .line 1190
    :catch_1
    move-exception v16

    .line 1191
    .local v16, "ex":Ljava/lang/Exception;
    const-string v6, "SmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad conversation thread id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1200
    .end local v16    # "ex":Ljava/lang/Exception;
    .end local v23    # "threadId":Ljava/lang/String;
    :pswitch_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1201
    goto/16 :goto_0

    .line 1206
    :pswitch_9
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/android/providers/telephony/SmsProvider;->updateSmsCenterFromSim(Landroid/content/ContentValues;I)I

    move-result v6

    goto/16 :goto_2

    .line 1212
    :pswitch_a
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/android/providers/telephony/SmsProvider;->updateSmsCenterFromSim(Landroid/content/ContentValues;I)I

    move-result v6

    goto/16 :goto_2

    .line 1218
    :pswitch_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1219
    goto/16 :goto_0

    .line 1224
    :pswitch_c
    const-string v22, "spam_sms"

    .line 1225
    goto/16 :goto_0

    .line 1227
    :pswitch_d
    const-string v22, "spam_sms"

    .line 1228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1229
    goto/16 :goto_0

    .line 1245
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
