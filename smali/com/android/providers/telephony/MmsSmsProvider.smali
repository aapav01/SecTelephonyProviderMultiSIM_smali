.class public Lcom/android/providers/telephony/MmsSmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsSmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;
    }
.end annotation


# static fields
.field private static final CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

.field private static final CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static MIN_MATCH_CHINA:I

.field private static final MMS_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MMS_ONLY_COLUMNS:[Ljava/lang/String;

.field private static final MMS_SMS_COLUMNS:[Ljava/lang/String;

.field public static final PHONE_EX:Ljava/util/regex/Pattern;

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final SEARCH_STRING:[Ljava/lang/String;

.field private static final SMS_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_ONLY_COLUMNS:[Ljava/lang/String;

.field public static final SPAM_FILTER_CONTENT_URI:Landroid/net/Uri;

.field private static final THREADS_COLUMNS:[Ljava/lang/String;

.field private static final UNION_COLUMNS:[Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final WPM_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WPM_ONLY_COLUMNS:[Ljava/lang/String;

.field private static mEnableChnFolderView:Z

.field private static mEnableMmsSubjectConcept:Z

.field private static mEnableMmsTransactionCustomize4Korea:Z

.field private static mEnableMultiDraftMsgBox:Z


# instance fields
.field private final DEBUG_LOG:Z

.field private EMAIL_FILTER_URI:Landroid/net/Uri;

.field private final MMS_DB_FILE_NAME:Ljava/lang/String;

.field private final MMS_DB_FILE_PATH:Ljava/lang/String;

.field private final MMS_PART_FILES_DIRECTORY_NAME:Ljava/lang/String;

.field private final MMS_PART_FILES_DIRECTORY_PATH:Ljava/lang/String;

.field private final SECRET_MODE_CHANGED:I

.field private final SECRET_MODE_OFF:Ljava/lang/String;

.field private final SECRET_MODE_ON:Ljava/lang/String;

.field private mCliDigit:I

.field private mHandler:Landroid/os/Handler;

.field public mIsEnableFingerPrintService:Z

.field private mIsSecretMode:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field private mUseCutomCliDigit:Z

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 251
    const-string v0, "content://mms-sms/spam-filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SPAM_FILTER_CONTENT_URI:Landroid/net/Uri;

    .line 267
    const/16 v0, 0xb

    sput v0, Lcom/android/providers/telephony/MmsSmsProvider;->MIN_MATCH_CHINA:I

    .line 273
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "date_sent"

    aput-object v1, v0, v6

    const-string v1, "read"

    aput-object v1, v0, v7

    const-string v1, "thread_id"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sim_imsi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    .line 279
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ct_cls"

    aput-object v1, v0, v4

    const-string v1, "ct_l"

    aput-object v1, v0, v5

    const-string v1, "ct_t"

    aput-object v1, v0, v6

    const-string v1, "d_rpt"

    aput-object v1, v0, v7

    const-string v1, "exp"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "text_only"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "spam_report"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 292
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "person"

    aput-object v1, v0, v6

    const-string v1, "reply_path_present"

    aput-object v1, v0, v7

    const-string v1, "service_center"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "teleservice_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link_url"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "svc_cmd"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "svc_cmd_content"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "spam_report"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    .line 299
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "href"

    aput-object v1, v0, v6

    const-string v1, "si_id"

    aput-object v1, v0, v7

    const-string v1, "created"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_ONLY_COLUMNS:[Ljava/lang/String;

    .line 305
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v6

    const-string v1, "message_count"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .line 312
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    .line 315
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    .line 321
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    .line 333
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    .line 336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_COLUMNS:Ljava/util/Set;

    .line 342
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 344
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 346
    new-array v0, v5, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SEARCH_STRING:[Ljava/lang/String;

    .line 407
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 408
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "complete-conversations"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 409
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "complete-conversations-including-drafts"

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 410
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "complete-conversations-including-drafts/#"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 414
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#/recipients"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 418
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#/subject"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 423
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/obsolete"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 425
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messages/byphone/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 432
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "threadID"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 435
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "canonical-address/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 438
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "canonical-addresses"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 440
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "search"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "searchSuggest"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "pending"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 455
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "undelivered"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 459
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "notifications"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 461
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "draft"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 463
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "locked"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 465
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "locked/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 467
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messageIdToThread"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 470
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "msgbackup"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 471
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "msgrestore"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 474
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allLocked"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 476
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messages/bystring"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 477
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messages/bySearchSuggest"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messages/suggestsearch"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 481
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messages/totalsearch"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 485
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messages/search_suggest_regex_query"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 486
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "messages/search_suggest_regex_query/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 489
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "wap-push-messages"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 490
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "wap-push-messages/#"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 494
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "reload"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 498
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "db_synchronization"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 502
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allinmessage"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "alloutmessage"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 506
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allsentmessage"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 508
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "alldraft"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 510
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allwappush"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 512
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allinsim1message"

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 513
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allinsim2message"

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 514
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allinsmsmessage"

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 515
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allinmmsmessage"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 517
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "alloutsim1message"

    const/16 v3, 0x35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 518
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "alloutsim2message"

    const/16 v3, 0x36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 519
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "alloutsmsmessage"

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 520
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "alloutmmsmessage"

    const/16 v3, 0x38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 522
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allsentsim1message"

    const/16 v3, 0x31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 523
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allsentsim2message"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 524
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allsentsmsmessage"

    const/16 v3, 0x33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 525
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "allsentmmsmessage"

    const/16 v3, 0x34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 527
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "alldraftsmsmessage"

    const/16 v3, 0x39

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 528
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "alldraftmmsmessage"

    const/16 v3, 0x3a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 533
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "cmas"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 537
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "last_msg_time/#"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 540
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "threads"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 542
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "spam-filter"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 543
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "spam-filter/#"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 544
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "spam-messages"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 545
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/byAddress"

    const/16 v3, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 547
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "draft-messages"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 550
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "datacreateldu"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "datacreateunpack"

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 555
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "update_threads"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 557
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "unread-messages/first-text"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 559
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "update_thread/#"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 561
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "hover_body"

    const/16 v3, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 563
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "hover_pdu"

    const/16 v3, 0x385

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->initializeColumnSets()V

    .line 577
    sput-boolean v4, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMultiDraftMsgBox:Z

    .line 579
    sput-boolean v4, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    .line 581
    sput-boolean v4, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    .line 583
    sput-boolean v4, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableChnFolderView:Z

    .line 2179
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 2244
    const-string v0, "[^\u0080-\uffff\\p{Alnum}_]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

    .line 4449
    const-string v0, "(\\*\\d{2}\\#)?(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->PHONE_EX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 396
    const-string v0, "mmssms.db"

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_DB_FILE_NAME:Ljava/lang/String;

    .line 399
    const-string v0, "/data/data/com.android.providers.telephony/databases/"

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_DB_FILE_PATH:Ljava/lang/String;

    .line 400
    const-string v0, "app_parts/"

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_PART_FILES_DIRECTORY_NAME:Ljava/lang/String;

    .line 401
    const-string v0, "/data/data/com.android.providers.telephony/app_parts/"

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_PART_FILES_DIRECTORY_PATH:Ljava/lang/String;

    .line 573
    iput v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    .line 574
    iput-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseCutomCliDigit:Z

    .line 586
    iput-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsEnableFingerPrintService:Z

    .line 587
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->SECRET_MODE_ON:Ljava/lang/String;

    .line 588
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->SECRET_MODE_OFF:Ljava/lang/String;

    .line 589
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->SECRET_MODE_CHANGED:I

    .line 590
    iput-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsSecretMode:Z

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->DEBUG_LOG:Z

    .line 2170
    const-string v0, "content://com.android.contacts/data/phone_emails/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->EMAIL_FILTER_URI:Landroid/net/Uri;

    .line 4390
    new-instance v0, Lcom/android/providers/telephony/MmsSmsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MmsSmsProvider$1;-><init>(Lcom/android/providers/telephony/MmsSmsProvider;)V

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mHandler:Landroid/os/Handler;

    .line 4430
    new-instance v0, Lcom/android/providers/telephony/MmsSmsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MmsSmsProvider$2;-><init>(Lcom/android/providers/telephony/MmsSmsProvider;)V

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SelectionForDelMMS(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3272
    const-string v0, "msg_box=1"

    .line 3274
    packed-switch p1, :pswitch_data_0

    .line 3318
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 3319
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SelectionForDelMMS : selectionForDelMMS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :goto_1
    return-object v0

    .line 3277
    :pswitch_1
    const-string v0, "msg_box=1"

    goto :goto_0

    .line 3281
    :pswitch_2
    const-string v0, "msg_box=2"

    goto :goto_0

    .line 3285
    :pswitch_3
    const-string v0, "msg_box=4"

    goto :goto_0

    .line 3289
    :pswitch_4
    const-string v0, "msg_box=3"

    goto :goto_0

    .line 3293
    :pswitch_5
    const-string v0, "msg_box=1 AND sim_slot=0"

    goto :goto_0

    .line 3296
    :pswitch_6
    const-string v0, "msg_box=1 AND sim_slot=1"

    goto :goto_0

    .line 3299
    :pswitch_7
    const-string v0, "msg_box=2 AND sim_slot=0"

    goto :goto_0

    .line 3302
    :pswitch_8
    const-string v0, "msg_box=2 AND sim_slot=1"

    goto :goto_0

    .line 3305
    :pswitch_9
    const-string v0, "msg_box=4 AND sim_slot=0"

    goto :goto_0

    .line 3308
    :pswitch_a
    const-string v0, "msg_box=4 AND sim_slot=1"

    goto :goto_0

    .line 3314
    :pswitch_b
    const/4 v0, 0x0

    goto :goto_0

    .line 3321
    :cond_0
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "SelectionForDelMMS : selectionForDelMMS = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3274
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method

.method private SelectionForDelSMS(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3216
    const-string v0, "type=1"

    .line 3218
    packed-switch p1, :pswitch_data_0

    .line 3262
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 3263
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SelectionForDelSMS : selectionForDelSMS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :goto_1
    return-object v0

    .line 3221
    :pswitch_1
    const-string v0, "type=1"

    goto :goto_0

    .line 3225
    :pswitch_2
    const-string v0, "type=2"

    goto :goto_0

    .line 3229
    :pswitch_3
    const-string v0, "(type=4 OR type=5 OR type=6)"

    goto :goto_0

    .line 3233
    :pswitch_4
    const-string v0, "type=3"

    goto :goto_0

    .line 3237
    :pswitch_5
    const-string v0, "type=1 AND sim_slot=0"

    goto :goto_0

    .line 3240
    :pswitch_6
    const-string v0, "type=1 AND sim_slot=1"

    goto :goto_0

    .line 3243
    :pswitch_7
    const-string v0, "(type=4 OR type=5 OR type=6) AND sim_slot=0"

    goto :goto_0

    .line 3246
    :pswitch_8
    const-string v0, "(type=4 OR type=5 OR type=6) AND sim_slot=1"

    goto :goto_0

    .line 3249
    :pswitch_9
    const-string v0, "type=2 AND sim_slot=0"

    goto :goto_0

    .line 3252
    :pswitch_a
    const-string v0, "type=2 AND sim_slot=1"

    goto :goto_0

    .line 3258
    :pswitch_b
    const/4 v0, 0x0

    goto :goto_0

    .line 3265
    :cond_0
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "SelectionForDelSMS : selectionForDelSMS = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3218
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_b
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/MmsSmsProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/telephony/MmsSmsProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->updateSecretMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/MmsSmsProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/telephony/MmsSmsProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->scheduleSecretModeChanged(Z)V

    return-void
.end method

.method private static buildConversationQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 2954
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2956
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2957
    new-instance v9, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2959
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2960
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2961
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2963
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinSmsAndSerivceCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2965
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2966
    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2967
    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2968
    const/4 v1, 0x1

    invoke-static {v10, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 2970
    new-instance v3, Ljava/util/HashSet;

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2971
    const-string v1, "pdu._id"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2972
    const-string v1, "err_type"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2974
    const-string v1, "msg_box != 3"

    invoke-static {p1, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2976
    const-string v1, "transport_type"

    const/4 v4, 0x0

    const-string v5, "mms"

    const-string v7, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-static {v6, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2983
    new-instance v3, Ljava/util/HashSet;

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2984
    const-string v0, "group_id"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2985
    const-string v0, "group_type"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2987
    const-string v0, "service_category"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2989
    const-string v1, "transport_type"

    const/4 v4, 0x0

    const-string v5, "sms"

    const-string v0, "(type != 3)"

    invoke-static {p1, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, v11

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2995
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2996
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2997
    const-string v1, "wpm"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2998
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2999
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 3000
    const-string v1, "transport_type"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_COLUMNS:Ljava/util/Set;

    const/4 v4, 0x0

    const-string v5, "wpm"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3005
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3006
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3008
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3012
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3016
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildWPMSubQuery([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 4478
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4479
    .local v0, "wpmQueryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 4480
    const-string v1, "wpm"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4481
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 4482
    .local v9, "wpmColumns":[Ljava/lang/String;
    invoke-static {v9, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 4483
    .local v2, "innerWpmProjection":[Ljava/lang/String;
    const-string v1, "transport_type"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_COLUMNS:Ljava/util/Set;

    const/4 v4, 0x0

    const-string v5, "wpm"

    move-object v6, p2

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkOrCreateDirectory(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3830
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3833
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 3835
    if-nez v2, :cond_0

    .line 3858
    :goto_0
    return v0

    .line 3838
    :cond_0
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3839
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3838
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 3841
    goto :goto_0

    .line 3845
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3846
    if-eqz p2, :cond_3

    .line 3847
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3848
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3849
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_3
    move v0, v1

    .line 3851
    goto :goto_0

    .line 3853
    :cond_4
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "directory create fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3856
    :catch_0
    move-exception v1

    .line 3857
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method private static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "selection1"    # Ljava/lang/String;
    .param p1, "selection2"    # Ljava/lang/String;

    .prologue
    .line 1529
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    .end local p1    # "selection2":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1531
    .restart local p1    # "selection2":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 1532
    goto :goto_0

    .line 1534
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

.method private static containsAlpha(Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1031
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return v3

    .line 1034
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1036
    .local v2, "len":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 1037
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1039
    .local v0, "c":C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_2

    const/16 v4, 0x7a

    if-le v0, v4, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-gt v4, v0, :cond_4

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_4

    .line 1040
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 1036
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2872
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    .line 2873
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2874
    aget-object v2, p0, v0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2875
    const-string v2, "pdu._id"

    aput-object v2, v1, v0

    .line 2873
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2877
    :cond_0
    aget-object v2, p0, v0

    aput-object v2, v1, v0

    goto :goto_1

    .line 2880
    :cond_1
    return-object v1
.end method

.method private dbReload()V
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1025
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1026
    return-void
.end method

.method private deleteAllBoxList(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3330
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsProvider;->deleteAllBoxListInner(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private deleteAllBoxListInner(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I
    .locals 18

    .prologue
    .line 3337
    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 3338
    const-string v4, "TP/MmsSmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAllBoxList(), uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    const-string v4, "type=1"

    .line 3341
    const-string v4, "msg_box=1"

    .line 3343
    const/4 v4, 0x0

    .line 3344
    const/4 v11, 0x0

    .line 3346
    const/4 v10, 0x0

    .line 3347
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 3348
    const/4 v9, 0x0

    .line 3350
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "count(*)"

    aput-object v7, v5, v6

    .line 3352
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->SelectionForDelSMS(I)Ljava/lang/String;

    move-result-object v6

    .line 3353
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->SelectionForDelMMS(I)Ljava/lang/String;

    move-result-object v14

    .line 3356
    const-string v7, "TP/MmsSmsProvider"

    const-string v8, "deleteAllBoxList 1)begin db.delete(sms)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    const/16 v7, 0x2c

    if-eq v3, v7, :cond_2

    .line 3359
    if-eqz v6, :cond_1

    .line 3360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from sms where  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and _id in (select _id from sms where  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " limit 100)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3361
    const-string v3, "TP/MmsSmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAllBoxList 2)  deleteSms ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3363
    if-eqz v4, :cond_5

    .line 3364
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3365
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3367
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3369
    :goto_1
    const-string v4, "TP/MmsSmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAllBoxList 2)  allSmsCount ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 3373
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3374
    add-int/lit8 v4, v4, -0x64

    .line 3375
    const-string v5, "TP/MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAllBoxList 2)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v12

    const-wide/32 v16, 0xf4240

    div-long v7, v7, v16

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",end db.delete(sms),affected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    if-gtz v4, :cond_0

    move v4, v3

    .line 3382
    :cond_1
    if-eqz v14, :cond_3

    .line 3383
    const-string v3, "TP/MmsSmsProvider"

    const-string v5, "deleteAllBoxList 3)begin MmsProvider.deleteMessages"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v14, v3, v2}, Lcom/android/providers/telephony/MmsProvider;->deleteAllMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    .line 3385
    const-string v5, "TP/MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAllBoxList 4)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v12

    const-wide/32 v11, 0xf4240

    div-long/2addr v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",end MmsProvider.deleteMessages,affected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    move v4, v3

    move v3, v10

    .line 3393
    :goto_2
    add-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 3394
    const-string v4, "TP/MmsSmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAllBoxList 7  deletedRows = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3398
    return v3

    .line 3389
    :cond_2
    const-string v3, "TP/MmsSmsProvider"

    const-string v5, "deleteAllBoxList 5)begin db.delete(wpm)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    const-string v3, "wpm"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3391
    const-string v5, "TP/MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAllBoxList 6)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v12

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",end db.delete(wpm), affected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    move v4, v11

    goto :goto_2

    :cond_3
    move v3, v10

    move v5, v4

    move v4, v11

    goto :goto_2

    :cond_4
    move v3, v9

    goto/16 :goto_0

    :cond_5
    move v3, v9

    goto/16 :goto_1
.end method

.method private deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 3197
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 3198
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteConversation threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3203
    const/4 v2, 0x0

    .line 3205
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsProvider;->replaceTypeFieldNameForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3207
    const-string v3, "wpm"

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsProvider;->replaceTypeFieldNameForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3209
    const-string v3, "sms"

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsProvider;->replaceTypeFieldNameForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3211
    return v0
.end method

.method private directoryCopy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "_sourceDirectoryPath"    # Ljava/lang/String;
    .param p2, "_targetDirectoryPath"    # Ljava/lang/String;
    .param p3, "_setPermission"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3795
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3797
    .local v2, "sourceDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3798
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 3800
    .local v0, "files":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3826
    .end local v0    # "files":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 3803
    .restart local v0    # "files":[Ljava/lang/String;
    :cond_1
    array-length v7, v0

    if-lez v7, :cond_2

    .line 3804
    invoke-direct {p0, p2, p3}, Lcom/android/providers/telephony/MmsSmsProvider;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3808
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_4

    .line 3809
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3811
    .local v3, "sourceFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3812
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/providers/telephony/MmsSmsProvider;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3815
    if-eqz p3, :cond_3

    .line 3816
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3818
    .local v4, "targetFile":Ljava/io/File;
    invoke-virtual {v4, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3819
    invoke-virtual {v4, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3820
    invoke-virtual {v4, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3808
    .end local v4    # "targetFile":Ljava/io/File;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "sourceFile":Ljava/io/File;
    :cond_4
    move v5, v6

    .line 3826
    goto :goto_0
.end method

.method private getAddressIds(Ljava/util/List;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1302
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 1304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1305
    const-string v1, "insert-address-token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1309
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->getSingleAddressIdForVZW(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 1314
    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1315
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1311
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->getSingleAddressId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 1317
    :cond_3
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "getAddressIds: address ID not found for "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1321
    :cond_4
    return-object v3
.end method

.method private getAllLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 1817
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1818
    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1820
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1821
    const-string v1, "sms"

    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1823
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "thread_id"

    aput-object v3, v2, v1

    .line 1824
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "thread_id"

    aput-object v3, v11, v1

    .line 1826
    const-string v1, "transport_type"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "mms"

    const-string v8, "thread_id"

    const-string v9, "locked=1"

    move-object v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1832
    const-string v1, "transport_type"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "sms"

    const-string v8, "thread_id"

    const-string v9, "locked=1"

    move-object v0, v10

    move-object v2, v11

    move-object v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1838
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1840
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1842
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1845
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1848
    const-string v1, "MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    return-object v0
.end method

.method private getBubbleByIntegratedSearchAllData(Z)Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 2531
    if-nez p1, :cond_0

    .line 2532
    const/4 v0, 0x0

    .line 2566
    :goto_0
    return-object v0

    .line 2534
    :cond_0
    const-string v0, ""

    .line 2536
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    if-eqz v0, :cond_1

    .line 2537
    const-string v0, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, NULL AS cl, NULL AS address, recipient_ids, thread_id, \'1\' AS listorder, pdu.msg_box AS type, sub_cs, display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct=\'text/plain\') AND ((text!=\'<null>\') OR (sub !=\'\'))"

    .line 2548
    :goto_1
    const-string v1, "SELECT sms.date * 1 AS normalized_date, sms._id AS _id, \'sms\' AS transport_type, body as text, NULL AS sub, NULL AS cl,address, recipient_ids, thread_id, \'1\' AS listorder, sms.type AS type, NULL AS sub_cs,display_recipient_ids FROM sms, threads WHERE (sms.thread_id=threads._id) AND (hidden=0) "

    .line 2553
    const-string v2, "SELECT wpm.date * 1 AS normalized_date, wpm._id AS _id, \'wpm\' AS transport_type, body as text, NULL AS sub, NULL AS cl,NULL AS address, recipient_ids, thread_id, \'1\' AS listorder, wpm.type AS type, NULL AS sub_cs,display_recipient_ids FROM wpm, threads WHERE (wpm.thread_id=threads._id) AND (hidden=0)"

    .line 2558
    const-string v3, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, cl,(select address from addr where type=\'137\' AND msg_id=pdu._id AND pdu.msg_box=\'1\') AS address,recipient_ids, thread_id, \'2\' AS listorder, pdu.msg_box AS type, sub_cs,display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct!=\'application/smil\') AND (ct!=\'text/plain\')"

    .line 2564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " UNION "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY listorder, normalized_date desc limit 200"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2566
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 2541
    :cond_1
    const-string v0, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, NULL AS cl,(select address from addr where type=\'137\' AND msg_id=pdu._id AND pdu.msg_box=\'1\') AS address,recipient_ids, thread_id, \'1\' AS listorder, pdu.msg_box AS type, sub_cs,display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct=\'text/plain\') AND ((text!=\'<null>\') OR (sub !=\'\'))"

    goto :goto_1
.end method

.method private getBubblesByIntegratedSearch([Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 2378
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2380
    if-nez p2, :cond_0

    .line 2526
    :goto_0
    return-object v0

    .line 2383
    :cond_0
    const-string v1, ""

    .line 2389
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    sget-boolean v1, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    if-eqz v1, :cond_2

    .line 2396
    const-string v1, "(text LIKE ?)"

    .line 2397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    :goto_1
    array-length v3, p1

    if-le v3, v2, :cond_6

    move-object v3, v1

    move-object v1, v0

    move v0, v2

    .line 2418
    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_7

    .line 2419
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_1

    .line 2420
    sget-boolean v4, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    if-eqz v4, :cond_4

    .line 2421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND (text LIKE ?)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, p1, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2399
    :cond_2
    const-string v1, "((text LIKE ?) OR (sub LIKE ?))"

    .line 2400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2404
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v6, "iso-8859-1"

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 2409
    :goto_4
    if-nez v0, :cond_3

    .line 2410
    aget-object v0, p1, v8

    .line 2413
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2405
    :catch_0
    move-exception v3

    .line 2406
    const-string v4, "TP/MmsSmsProvider"

    const-string v6, "ISO_8859_1 must be supported!"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2424
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ((text LIKE ?) OR (sub LIKE ?))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, p1, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    :try_start_1
    new-instance v4, Ljava/lang/String;

    aget-object v6, p1, v0

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "iso-8859-1"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v4

    .line 2434
    :goto_5
    if-nez v1, :cond_5

    .line 2435
    aget-object v1, p1, v0

    .line 2438
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2430
    :catch_1
    move-exception v4

    .line 2431
    const-string v6, "TP/MmsSmsProvider"

    const-string v7, "ISO_8859_1 must be supported!"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_6
    move-object v3, v1

    .line 2445
    :cond_7
    const-string v0, "(body LIKE ?)"

    .line 2446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2448
    array-length v1, p1

    if-le v1, v2, :cond_9

    move v1, v2

    .line 2449
    :goto_6
    array-length v4, p1

    if-ge v1, v4, :cond_9

    .line 2450
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_8

    .line 2451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND (body LIKE ?)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, p1, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2449
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2457
    :cond_9
    const-string v1, "(body LIKE ?)"

    .line 2458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, p1, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    array-length v4, p1

    if-le v4, v2, :cond_b

    move v4, v2

    .line 2461
    :goto_7
    array-length v6, p1

    if-ge v4, v6, :cond_b

    .line 2462
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_a

    .line 2463
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " AND (body LIKE ?)"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2461
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2469
    :cond_b
    sget-boolean v4, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v4, :cond_d

    .line 2470
    const-string v4, "(cl LIKE ?)"

    .line 2471
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v8

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/MmsSmsProvider;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    array-length v6, p1

    if-le v6, v2, :cond_f

    move v9, v2

    move-object v2, v4

    move v4, v9

    .line 2474
    :goto_8
    array-length v6, p1

    if-ge v4, v6, :cond_10

    .line 2475
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_c

    .line 2476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND (cl LIKE ?)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v4

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/MmsSmsProvider;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2474
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2482
    :cond_d
    const-string v4, "(cl LIKE ?)"

    .line 2483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2485
    array-length v6, p1

    if-le v6, v2, :cond_f

    move v9, v2

    move-object v2, v4

    move v4, v9

    .line 2486
    :goto_9
    array-length v6, p1

    if-ge v4, v6, :cond_10

    .line 2487
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_e

    .line 2488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND (cl LIKE ?)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2486
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_f
    move-object v2, v4

    .line 2495
    :cond_10
    sget-boolean v4, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    if-eqz v4, :cond_11

    .line 2496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, NULL AS cl, NULL AS address, recipient_ids, thread_id, \'1\' AS listorder, pdu.msg_box AS type, sub_cs, display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct!=\'application/smil\') AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2507
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT sms.date * 1 AS normalized_date, sms._id AS _id, \'sms\' AS transport_type, body as text, NULL AS sub, NULL AS cl,address, recipient_ids, thread_id, \'1\' AS listorder, sms.type AS type, NULL AS sub_cs,display_recipient_ids FROM sms, threads WHERE (sms.thread_id=threads._id) AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND (hidden=0) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT wpm.date * 1 AS normalized_date, wpm._id AS _id, \'wpm\' AS transport_type, body as text, NULL AS sub, NULL AS cl,NULL AS address, recipient_ids, thread_id, \'1\' AS listorder, wpm.type AS type, NULL AS sub_cs,display_recipient_ids FROM wpm, threads WHERE (wpm.thread_id=threads._id) AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND (hidden=0)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, cl,(select address from addr where type=\'137\' AND msg_id=pdu._id AND pdu.msg_box=\'1\') AS address,recipient_ids, thread_id, \'2\' AS listorder, pdu.msg_box AS type, sub_cs,display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct!=\'application/smil\') AND (ct!=\'text/plain\') AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UNION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " UNION "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UNION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY listorder, normalized_date desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2526
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 2500
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, NULL AS cl,(select address from addr where type=\'137\' AND msg_id=pdu._id AND pdu.msg_box=\'1\') AS address,recipient_ids, thread_id, \'1\' AS listorder, pdu.msg_box AS type, sub_cs,display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct!=\'application/smil\') AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a
.end method

.method private getBubblesBySearch(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2308
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2310
    if-nez p2, :cond_0

    .line 2372
    :goto_0
    return-object v0

    .line 2316
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "iso-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2321
    :goto_1
    if-nez v0, :cond_1

    move-object v0, p1

    .line 2326
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2328
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2331
    const-string v0, ""

    .line 2333
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    if-eqz v0, :cond_2

    .line 2334
    const-string v0, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, cl, NULL AS address, recipient_ids, thread_id, \'1\' AS listorder, pdu.msg_box AS type, sub_cs, display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct=\'text/plain\') AND ((text LIKE ?)) "

    .line 2353
    :goto_2
    const-string v2, "SELECT sms.date * 1 AS normalized_date, sms._id AS _id, \'sms\' AS transport_type, body as text, NULL AS sub, NULL AS cl, address, recipient_ids, thread_id, \'1\' AS listorder, sms.type AS type, NULL AS sub_cs, display_recipient_ids FROM sms, threads WHERE (sms.thread_id=threads._id) AND (body LIKE ?) AND (hidden=0) "

    .line 2357
    const-string v1, "SELECT wpm.date * 1 AS normalized_date, wpm._id AS _id, \'wpm\' AS transport_type, body as text, NULL AS sub, NULL AS cl, NULL AS address, recipient_ids, thread_id, \'1\' AS listorder, wpm.type AS type, NULL AS sub_cs, display_recipient_ids FROM wpm, threads WHERE (wpm.thread_id=threads._id) AND (body LIKE ?) AND (hidden=0) "

    .line 2361
    iget-boolean v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsEnableFingerPrintService:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsSecretMode:Z

    if-nez v3, :cond_4

    .line 2362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "AND pdu.thread_id NOT IN(select _id from threads where secret_mode<>0)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND thread_id NOT IN(select _id from threads where secret_mode<>0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND thread_id NOT IN(select _id from threads where secret_mode<>0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    .line 2367
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY listorder, normalized_date desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2369
    sget-boolean v1, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    if-eqz v1, :cond_3

    .line 2370
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    aput-object v4, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 2317
    :catch_0
    move-exception v1

    .line 2318
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "ISO_8859_1 must be supported!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2345
    :cond_2
    const-string v0, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, cl,(select address from addr where type=\'137\' AND msg_id=pdu._id AND pdu.msg_box=\'1\') AS address, recipient_ids, thread_id, \'1\' AS listorder, pdu.msg_box AS type, sub_cs, display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct=\'text/plain\') AND ((text LIKE ?) OR (sub LIKE ?)) "

    goto/16 :goto_2

    .line 2372
    :cond_3
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v6

    aput-object v5, v2, v7

    aput-object v4, v2, v8

    aput-object v4, v2, v9

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move-object v10, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_3
.end method

.method private getCmasAlertType(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1495
    const/4 v1, 0x0

    .line 1496
    const-string v0, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasAlertType is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1499
    const-string v2, "#CMAS#Presidential"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "#Emergency Alert#Presidential"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1500
    :cond_0
    const/16 v0, 0x64

    .line 1525
    :goto_0
    return v0

    .line 1502
    :cond_1
    const-string v2, "#CMAS#Extreme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "#Emergency Alert#Extreme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1503
    :cond_2
    const/16 v0, 0x65

    .line 1504
    goto :goto_0

    .line 1505
    :cond_3
    const-string v2, "#CMAS#Severe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "#Emergency Alert#Severe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1506
    :cond_4
    const/16 v0, 0x66

    .line 1507
    goto :goto_0

    .line 1508
    :cond_5
    const-string v2, "#CMAS#Amber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "#Emergency Alert#Amber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1509
    :cond_6
    const/16 v0, 0x67

    .line 1510
    goto :goto_0

    .line 1511
    :cond_7
    const-string v2, "#CMAS#Test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#Emergency Alert#Test"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1512
    :cond_8
    const/16 v0, 0x68

    .line 1513
    goto :goto_0

    .line 1516
    :cond_9
    const-string v2, "#CMAS#CMASALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "#Emergency Alert#Alerts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1517
    :cond_a
    const/16 v0, 0x6e

    .line 1518
    goto :goto_0

    :cond_b
    move v0, v1

    .line 1522
    goto :goto_0

    :cond_c
    move v0, v1

    .line 1525
    goto :goto_0
.end method

.method private getCompleteConversations([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1987
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "unionQuery":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getCompleteConversationsIncludingDrafts([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    .prologue
    .line 1998
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2000
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2001
    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2003
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2004
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2005
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2006
    const-string v3, "sms"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2008
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2009
    invoke-static {v2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2010
    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 2011
    const/4 v2, 0x1

    invoke-static {v12, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 2013
    new-instance v4, Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2014
    const-string v2, "pdu._id"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2015
    const-string v2, "err_type"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2017
    const-string v2, "(m_type = 128 OR m_type = 132 OR m_type = 130)"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2019
    const-string v2, ""

    .line 2020
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2021
    const-string v2, "transport_type"

    const/4 v5, 0x0

    const-string v6, "mms"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 2035
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2036
    const-string v1, "group_id"

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2037
    const-string v1, "group_type"

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2040
    const-string v2, "transport_type"

    const/4 v5, 0x0

    const-string v6, "sms"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v11

    move-object v3, v13

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2046
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2047
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2048
    const-string v2, "wpm"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2049
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2050
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 2051
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x0

    const-string v6, "wpm"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2056
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2057
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2059
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static/range {p3 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2063
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2067
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2069
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 2027
    :cond_0
    const-string v2, "transport_type"

    const/4 v5, 0x0

    const-string v6, "mms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pdu._id!="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto/16 :goto_0
.end method

.method private getConversationByAddress(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 4578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4592
    :cond_0
    :goto_0
    return-object v4

    .line 4582
    :cond_1
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4583
    const-string v0, "false"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getSingleAddressIdForVZW(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 4587
    :goto_1
    const-string v0, "TP/MmsSmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConversationByAddress: recipientId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 4591
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4592
    const-string v1, "threads"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recipient_ids="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    .line 4585
    :cond_2
    const-string v0, "false"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getSingleAddressId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1
.end method

.method private getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2843
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2850
    invoke-static {p3, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2851
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2852
    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2854
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2855
    const-string v1, "threads"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2856
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    return-object v6

    .line 2844
    :catch_0
    move-exception v0

    .line 2845
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "Thread ID must be a Long."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 2098
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2106
    invoke-static {p2, v0, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->buildConversationQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2108
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "Thread ID must be a Long."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConversations([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 1680
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1681
    new-instance v9, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1683
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1684
    const-string v1, "sms"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1686
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1687
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1689
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 1691
    const-string v1, "transport_type"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v4, 0x1

    const-string v5, "mms"

    const-string v6, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-static {p2, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "thread_id"

    const-string v8, "date = MAX(date)"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1696
    const-string v1, "transport_type"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v4, 0x1

    const-string v5, "sms"

    const-string v0, "(type != 3)"

    invoke-static {p2, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "thread_id"

    const-string v8, "date = MAX(date)"

    move-object v0, v9

    move-object v2, v11

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1703
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1705
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1708
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1712
    const/4 v2, 0x0

    const-string v3, "tid"

    const-string v4, "normalized_date = MAX(normalized_date)"

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1716
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getCustomCliDigitAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseCutomCliDigit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    if-gt v0, v1, :cond_1

    .line 630
    .end local p1    # "address":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "address":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDraftMessages([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 4125
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4127
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4128
    new-instance v9, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4130
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 4131
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 4132
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4133
    const-string v2, "sms"

    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4135
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 4136
    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4137
    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 4138
    const/4 v1, 0x1

    invoke-static {v10, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 4140
    new-instance v3, Ljava/util/HashSet;

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4141
    const-string v1, "pdu._id"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4142
    const-string v1, "err_type"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4144
    const-string v1, "transport_type"

    const/4 v4, 0x0

    const-string v5, "mms"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4149
    const-string v1, "transport_type"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v4, 0x0

    const-string v5, "sms"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, v11

    move-object v6, p2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4154
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4155
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 4157
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v12, v2, v0

    invoke-static/range {p3 .. p3}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4161
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4165
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4166
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getDraftThread([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 1620
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    .line 1621
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1622
    new-instance v9, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1624
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1625
    const-string v1, "sms"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1627
    const-string v1, "transport_type"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v4, 0x1

    const-string v5, "mms"

    const-string v6, "msg_box=3"

    invoke-static {p2, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1632
    const-string v1, "transport_type"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v4, 0x1

    const-string v5, "sms"

    const-string v0, "type=3"

    invoke-static {p2, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1637
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1639
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1641
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1644
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1648
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1651
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1761
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1762
    new-instance v9, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1764
    const-string v1, "pdu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1765
    const-string v1, "sms"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1767
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v11

    .line 1770
    const-string v1, "transport_type"

    const-string v5, "mms"

    const-string v7, "_id"

    const-string v8, "locked=1"

    move-object v6, p2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1776
    const-string v1, "transport_type"

    const-string v5, "sms"

    const-string v7, "_id"

    const-string v8, "locked=1"

    move-object v0, v9

    move-object v6, p2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1783
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1784
    const-string v1, "wpm"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1785
    const-string v1, "transport_type"

    const-string v5, "wpm"

    const-string v7, "_id"

    const-string v8, "locked=1"

    move-object v6, p2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1792
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1794
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1796
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v10, v2, v11

    aput-object v9, v2, v4

    const/4 v4, 0x2

    aput-object v0, v2, v4

    const-string v0, "1"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1799
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1802
    const-string v1, "MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    return-object v0
.end method

.method private getFolderviewMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 1881
    const-string v0, "MmsSmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFolderviewMessage(), boxType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const/4 v0, 0x0

    .line 1886
    const-string v3, "transport_type,_id,thread_id,address,sub,sub_cs,body,date,date_sent,m_type,read,msg_box,locked,reserved,hidden,group_id,group_type, sim_slot, sim_imsi"

    .line 1887
    const-string v1, "\'sms\' AS transport_type,_id,thread_id,address,null sub,null sub_cs,body,date,sms.date_sent date_sent,null m_type,read,sms.type msg_box,locked,reserved,hidden,group_id,group_type, sim_slot, sim_imsi"

    .line 1888
    const-string v4, "\'mms\' AS transport_type,pdu._id _id,pdu.thread_id thread_id,null address,pdu.sub sub,pdu.sub_cs sub_cs,null body,pdu.date*1000 date,null date_sent,pdu.m_type m_type,pdu.read read,pdu.msg_box msg_box,pdu.locked locked,pdu.reserved reserved,pdu.hidden hidden,null group_id,null group_type,pdu.sim_slot sim_slot,pdu.sim_imsi sim_imsi"

    .line 1896
    if-eqz p2, :cond_0

    .line 1897
    const-string v2, "sim_slot"

    const-string v5, "sms.sim_slot"

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1898
    const-string v2, "sim_slot"

    const-string v5, "pdu.sim_slot"

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1901
    :cond_0
    packed-switch p5, :pswitch_data_0

    .line 1977
    :goto_0
    return-object v0

    .line 1903
    :pswitch_0
    if-eqz p2, :cond_1

    .line 1904
    const-string v0, "SELECT %s FROM sms WHERE (sms.type = %d AND %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v1, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    const/4 v1, 0x2

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1905
    const-string v0, "SELECT %s FROM pdu WHERE (pdu.msg_box=%d AND (pdu.m_type = 132 OR pdu.m_type = 130) AND %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object p2, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1910
    :goto_1
    const-string v2, "SELECT %s FROM (%s UNION %s ORDER BY %s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    const-string v1, "date DESC"

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1911
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 1907
    :cond_1
    const-string v0, "SELECT %s FROM sms WHERE sms.type = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v1, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1908
    const-string v0, "SELECT %s FROM pdu WHERE (pdu.msg_box=%d AND (pdu.m_type = 132 OR pdu.m_type = 130))"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1916
    :pswitch_1
    if-eqz p2, :cond_2

    .line 1917
    const-string v0, "SELECT %s FROM sms WHERE ((group_id IS NULL) AND ((sms.type = %d) OR (sms.type = %d) OR (sms.type = %d)) AND %s)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x4

    aput-object p2, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1918
    const-string v0, "SELECT %s FROM sms WHERE ((group_id NOT NULL) AND ((sms.group_type = %d) OR (sms.group_type = %d) OR (sms.group_type = %d)) AND %s)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    aput-object p2, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1919
    const-string v0, "SELECT %s FROM pdu WHERE (pdu.msg_box=%d AND pdu.m_type = 128 AND %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    aput-object p2, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    :goto_2
    const-string v4, "SELECT %s FROM (%s UNION %s UNION %s ORDER BY %s)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v0, 0x4

    const-string v1, "date DESC"

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1927
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 1921
    :cond_2
    const-string v0, "SELECT %s FROM sms WHERE ((group_id IS NULL) AND ((sms.type = %d) OR (sms.type = %d) OR (sms.type = %d)))"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1922
    const-string v0, "SELECT %s FROM sms WHERE ((group_id NOT NULL) AND ((sms.group_type = %d) OR (sms.group_type = %d) OR (sms.group_type = %d)))"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1923
    const-string v0, "SELECT %s FROM pdu WHERE (pdu.msg_box=%d AND pdu.m_type = 128)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1931
    :pswitch_2
    if-eqz p2, :cond_3

    .line 1932
    const-string v0, "SELECT %s FROM sms WHERE ((group_id IS NULL) AND (sms.type = %d) AND %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object p2, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1933
    const-string v0, "SELECT %s FROM sms WHERE ((group_id NOT NULL) AND (sms.group_type = %d) AND %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object p2, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1934
    const-string v0, "SELECT %s FROM pdu WHERE (pdu.msg_box=%d AND pdu.m_type = 128 AND %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    aput-object p2, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1940
    :goto_3
    const-string v4, "SELECT %s FROM (%s UNION %s UNION %s  ORDER BY %s)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v0, 0x4

    const-string v1, "date DESC"

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1942
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 1936
    :cond_3
    const-string v0, "SELECT %s FROM sms WHERE ((group_id IS NULL) AND (sms.type = %d))"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1937
    const-string v0, "SELECT %s FROM sms WHERE ((group_id NOT NULL) AND (sms.group_type = %d))"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1938
    const-string v0, "SELECT %s FROM pdu WHERE (pdu.msg_box=%d AND pdu.m_type = 128)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1946
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",m_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",null m_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",pdu.m_id m_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1950
    if-eqz p2, :cond_4

    .line 1951
    const-string v1, "SELECT %s FROM sms WHERE (sms.type = %d AND %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aput-object p2, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1952
    const-string v0, "SELECT %s FROM pdu WHERE (pdu.msg_box=%d AND pdu.m_type = 128 AND pdu.thread_id!=9223372036854775806 AND %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object p2, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1957
    :goto_4
    const-string v3, "SELECT %s FROM (%s UNION %s ORDER BY %s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    const-string v1, "date DESC"

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1959
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 1954
    :cond_4
    const-string v1, "SELECT %s FROM sms WHERE sms.type = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1955
    const-string v0, "SELECT %s FROM pdu WHERE (pdu.msg_box=%d AND pdu.m_type = 128 AND pdu.thread_id!=9223372036854775806)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1963
    :pswitch_4
    const-string v0, "\'sms\' AS transport_type,_id,thread_id,null address,null sub,null sub_cs,body,date,date_sent,null m_type,read,null msg_box,locked,null reserved,null hidden,null group_id,null group_type, wpm.sim_slot sim_slot, wpm.sim_imsi sim_imsi"

    .line 1964
    if-eqz p2, :cond_5

    .line 1965
    const-string v1, "sim_slot"

    const-string v2, "wpm.sim_slot"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1966
    const-string v2, "SELECT %s FROM wpm WHERE %s ORDER BY %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    const-string v1, "date DESC"

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    :goto_5
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 1968
    :cond_5
    const-string v1, "SELECT %s FROM wpm ORDER BY %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "date DESC"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1901
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 2793
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2794
    const-string v1, "pdu._id = matching_addresses.address_msg_id"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " OR PHONE_NUMBERS_EQUAL(address, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v1, :cond_0

    const-string v1, ", 1))"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2804
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2805
    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2807
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2808
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pdu, (SELECT msg_id AS address_msg_id FROM addr WHERE (address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR PHONE_NUMBERS_EQUAL(addr.address, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v2, :cond_1

    const-string v2, ", 1))) "

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AS matching_addresses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2817
    const-string v2, "sms"

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2819
    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2820
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x0

    const-string v6, "mms"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2823
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x0

    const-string v6, "sms"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v11

    move-object v7, v10

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2826
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2828
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2830
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2833
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 2798
    :cond_0
    const-string v1, ", 0))"

    goto/16 :goto_0

    .line 2809
    :cond_1
    const-string v2, ", 0))) "

    goto :goto_1
.end method

.method private getMessagesBySearchString(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 2573
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2574
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->EMAIL_FILTER_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(address LIKE \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2577
    const-string v8, ""

    .line 2578
    const-string v0, ""

    .line 2582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2583
    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->FTS_TOKEN_SEPARATOR_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 2584
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2585
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2590
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_f

    .line 2591
    const-string v0, " limit 20 "

    move-object v5, v0

    .line 2595
    :goto_1
    const/4 v6, 0x0

    .line 2597
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "times_contacted DESC,sort_key,data2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2599
    :try_start_1
    const-string v0, "TP/MmsSmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneCursor count ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v0

    if-lez v0, :cond_6

    move-object v0, v7

    .line 2602
    :cond_2
    :goto_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2603
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getCustomCliDigitAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2605
    if-eqz v1, :cond_2

    .line 2606
    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 2607
    :cond_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2612
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or PHONE_NUMBERS_EQUAL(address, \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v1, :cond_5

    const-string v1, "\', 1)"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v1, "\', 0)"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_3

    :cond_6
    move-object v0, v7

    .line 2619
    :cond_7
    if-eqz v2, :cond_8

    .line 2620
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2623
    :cond_8
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2625
    const/4 v1, 0x0

    .line 2627
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select _id, address from canonical_addresses WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " limit 500"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2628
    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 2630
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 2631
    const-string v0, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canonicalCursor count ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v8

    .line 2633
    :goto_5
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(\' \'||recipient_ids||\' \' like \'% "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " %\' and address="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") or "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    goto :goto_5

    .line 2616
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v7

    .line 2617
    :goto_6
    :try_start_6
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2619
    if-eqz v2, :cond_8

    .line 2620
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 2619
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_7
    if-eqz v2, :cond_9

    .line 2620
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 2638
    :cond_a
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    .line 2646
    :goto_8
    if-eqz v1, :cond_b

    .line 2647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2651
    :cond_b
    :goto_9
    const-string v1, ""

    .line 2652
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " UNION select date AS normalized_date, threads._id AS _id, \'thread\' AS transport_type, snippet as text, NULL AS sub, replace(address,\'-\',\'\') AS address, recipient_ids, threads._id AS thread_id, \'0\' AS listorder, \'\' AS type, snippet_cs AS sub_cs, display_recipient_ids FROM threads, canonical_addresses WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GROUP BY threads._id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2660
    :goto_a
    const-string v1, "SELECT pdu.date * 1000 AS normalized_date, pdu._id AS _id, \'mms\' AS transport_type, text, sub, NULL AS address, recipient_ids, thread_id, \'1\' AS listorder, pdu.msg_box AS type, sub_cs, display_recipient_ids FROM pdu, part, threads WHERE (pdu._id=part.mid) AND (pdu.thread_id=threads._id) AND (ct=\'text/plain\') AND ((text LIKE ?) OR (sub LIKE ?)) "

    .line 2664
    const-string v2, "SELECT sms.date * 1 AS normalized_date, sms._id AS _id, \'sms\' AS transport_type, body as text, NULL AS sub, address, recipient_ids, thread_id, \'1\' AS listorder, sms.type AS type, NULL AS sub_cs, display_recipient_ids FROM sms, threads WHERE (sms.thread_id=threads._id) AND (body LIKE ?) AND (hidden=0) "

    .line 2668
    const-string v3, "SELECT wpm.date * 1 AS normalized_date, wpm._id AS _id, \'wpm\' AS transport_type, body as text, NULL AS sub, NULL AS address, recipient_ids, thread_id, \'1\' AS listorder, wpm.type AS type, NULL AS sub_cs, display_recipient_ids FROM wpm, threads WHERE (wpm.thread_id=threads._id) AND (body LIKE ?) AND (hidden=0) "

    .line 2672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " UNION "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY listorder, normalized_date desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2675
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v10, v2, v3

    const/4 v3, 0x3

    aput-object v10, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2642
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    .line 2643
    :goto_b
    :try_start_8
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2646
    if-eqz v2, :cond_b

    .line 2647
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 2646
    :catchall_1
    move-exception v0

    :goto_c
    if-eqz v1, :cond_c

    .line 2647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    .line 2657
    :cond_d
    const-string v0, "TP/MmsSmsProvider"

    const-string v2, "No need to search threads table"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_a

    .line 2646
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_c

    .line 2642
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v13, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_b

    .line 2619
    :catchall_3
    move-exception v0

    goto/16 :goto_7

    .line 2616
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_6

    :catch_5
    move-exception v1

    goto/16 :goto_6

    :cond_e
    move-object v0, v8

    goto/16 :goto_8

    :cond_f
    move-object v5, v0

    goto/16 :goto_1
.end method

.method private getMiniConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1721
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1722
    .local v0, "mmsQueryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1724
    .local v2, "smsQueryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "select threads._id, ( select date from        (select body, date from sms where type!=3 and thread_id=threads._id        union select sub, date*1000 from pdu where msg_box!=3 and thread_id=threads._id        union select body, date from wpm where type!=3 and thread_id=threads._id        order by date desc limit 1)) as date, threads.message_count, threads.recipient_ids, ( select body from        (select body, date from sms where type!=3 and thread_id=threads._id        union select sub, date*1000 from pdu where msg_box!=3 and thread_id=threads._id        union select body, date from wpm where type!=3 and thread_id=threads._id        order by date desc limit 1)) as snippet, ( select snippet_cs from        (select 0 as snippet_cs, date from sms where type!=3 and thread_id=threads._id        union select sub_cs, date*1000 from pdu where msg_box!=3 and thread_id=threads._id        union select 0 as snippet_cs, date from wpm where type!=3 and thread_id=threads._id order by date desc limit 1)) as snippet_c, threads.read, threads.error, threads.has_attachment, threads.unread_count from threads where message_count > 0 order by date desc    "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1744
    .local v1, "rawQuery":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method private getOneBubbleSearch([Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2250
    if-nez p3, :cond_0

    .line 2301
    :goto_0
    return-object v0

    .line 2256
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "iso-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2261
    :goto_1
    if-nez v0, :cond_1

    move-object v0, p2

    .line 2266
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2268
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2271
    const-string v3, "SELECT \'sms\' AS transport_type, _id, thread_id, address, body, date, date_sent, read, type, status, locked, error_code, NULL AS sub, NULL AS sub_cs, date, read, NULL AS m_type, NULL AS msg_box, NULL AS d_rpt, NULL AS rr, NULL AS err_type, locked, group_id, group_type, NULL AS href, NULL AS si_id, NULL AS created, NULL AS si_expires, NULL AS action, callback_number, reserved, reserved, pri, pri, teleservice_id, link_url, service_category, NULL AS text_only, svc_cmd, svc_cmd_content, date * 1 AS normalized_date, 1 AS listorder FROM sms LEFT JOIN (SELECT sms_id, service_category FROM CMAS) as cmas ON sms._id = cmas.sms_id WHERE hidden=0 AND (body LIKE ?) "

    .line 2276
    const-string v0, ""

    .line 2277
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    if-eqz v0, :cond_2

    .line 2278
    const-string v0, "SELECT \'mms\' AS transport_type, pdu._id, thread_id, NULL AS address, NULL AS body, date, date_sent, read, NULL AS type, NULL AS status, locked, NULL AS error_code, sub, sub_cs, date, read, m_type, msg_box, d_rpt, rr, err_type, locked, NULL AS group_id, NULL AS group_type, NULL AS href, NULL AS si_id, NULL AS created, NULL AS si_expires, NULL AS action, NULL AS callback_number, reserved, reserved, pri, pri, NULL AS teleservice_id, NULL AS link_url, NULL AS service_category, text_only, NULL AS svc_cmd, NULL AS svc_cmd_content, date * 1000 AS normalized_date, 1 AS listorder FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id WHERE hidden=0 AND (m_type = 128 OR m_type = 132 OR m_type = 130) AND (select count(*) from part where pdu._id=part.mid and ct=\'text/plain\' AND ((text LIKE ?)))>0 "

    .line 2291
    :goto_2
    const-string v4, "SELECT \'wpm\' AS transport_type, _id, thread_id, NULL AS address, body, date, date_sent, read, type, NULL AS status, locked, NULL AS error_code, NULL AS sub, NULL AS sub_cs, date, read, NULL AS m_type, NULL AS msg_box, NULL AS d_rpt, NULL AS rr, NULL AS err_type, locked, NULL AS group_id, NULL AS group_type, href, si_id, created, si_expires, action, NULL AS callback_number, NULL AS reserved, NULL AS reserved, NULL AS pri, NULL AS pri, NULL AS teleservice_id, NULL AS link_url, NULL AS service_category, NULL AS text_only, NULL AS svc_cmd, NULL AS svc_cmd_content, date * 1 AS normalized_date, 1 AS listorder FROM wpm WHERE (hidden=0 AND body LIKE ?) "

    .line 2296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " UNION "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " UNION "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ORDER BY normalized_date desc"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2298
    sget-boolean v3, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    if-eqz v3, :cond_3

    .line 2299
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    aput-object v1, v3, v6

    aput-object v1, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 2257
    :catch_0
    move-exception v1

    .line 2258
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "ISO_8859_1 must be supported!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2284
    :cond_2
    const-string v0, "SELECT \'mms\' AS transport_type, pdu._id, thread_id, NULL AS address, NULL AS body, date, date_sent, read, NULL AS type, NULL AS status, locked, NULL AS error_code, sub, sub_cs, date, read, m_type, msg_box, d_rpt, rr, err_type, locked, NULL AS group_id, NULL AS group_type, NULL AS href, NULL AS si_id, NULL AS created, NULL AS si_expires, NULL AS action, NULL AS callback_number, reserved, reserved, pri, pri, NULL AS teleservice_id, NULL AS link_url, NULL AS service_category, text_only, NULL AS svc_cmd, NULL AS svc_cmd_content, date * 1000 AS normalized_date, 1 AS listorder FROM pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id WHERE hidden=0 AND (m_type = 128 OR m_type = 132 OR m_type = 130) AND (select count(*) from part where pdu._id=part.mid and ct=\'text/plain\' AND ((text LIKE ?) OR (sub LIKE ?)))>0 "

    goto :goto_2

    .line 2301
    :cond_3
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1570
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1572
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "getSimpleConversations entered."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsEnableFingerPrintService:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsSecretMode:Z

    if-nez v1, :cond_3

    .line 1575
    if-nez p2, :cond_2

    .line 1576
    const-string p2, " secret_mode = 0"

    move-object v3, p2

    .line 1583
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1584
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "getThreadId isDbLockedByOtherThreads = true"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1586
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "getThreadId isDbLockedByOtherThreads = true"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_1
    const-string v1, "threads"

    move-object v2, p1

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1578
    :cond_2
    const-string v1, "secret_mode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1579
    const-string v1, " and secret_mode = 0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_0

    :cond_3
    move-object v3, p2

    goto :goto_0
.end method

.method private getSingleAddressId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1185
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    .line 1188
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v0, :cond_3

    .line 1189
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->isPhoneNumberEx(Ljava/lang/String;)Z

    move-result v0

    move v11, v0

    .line 1197
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1199
    :cond_0
    const-string v3, "address=?"

    .line 1201
    const-wide/16 v9, -0x1

    .line 1208
    if-nez v11, :cond_4

    .line 1209
    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    .line 1245
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1246
    const-string v1, "canonical_addresses"

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1250
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1251
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1254
    if-eqz v11, :cond_1

    .line 1256
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1260
    :cond_1
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1263
    const-string v3, "canonical_addresses"

    const-string v4, "address"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1267
    const-string v3, "TP/MmsSmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSingleAddressId: insert new canonical_address for xxx, _id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1291
    if-eqz v2, :cond_2

    .line 1292
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1295
    :cond_2
    :goto_2
    return-wide v0

    .line 1191
    :cond_3
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    move v11, v0

    goto :goto_0

    .line 1214
    :cond_4
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 1215
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->containsAlpha(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    .line 1218
    :cond_5
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1219
    const-string v5, "CHN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CTC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1220
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "PHONE_NUMBERS_EQUAL_N(address, ?, %d)"

    new-array v4, v1, [Ljava/lang/Object;

    sget v5, Lcom/android/providers/telephony/MmsSmsProvider;->MIN_MATCH_CHINA:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    :goto_3
    iget-boolean v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseCutomCliDigit:Z

    if-eqz v3, :cond_b

    .line 1234
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->getCustomCliDigitAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1235
    new-array v4, v6, [Ljava/lang/String;

    aput-object v3, v4, v2

    aput-object v3, v4, v1

    move-object v3, v0

    .line 1236
    goto/16 :goto_1

    .line 1224
    :cond_7
    iget-boolean v4, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseCutomCliDigit:Z

    if-eqz v4, :cond_9

    .line 1225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR PHONE_NUMBERS_EQUAL(substr(address,max(1, length(address)-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")) , ?, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    .line 1228
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR PHONE_NUMBERS_EQUAL(address, ?, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_5

    .line 1237
    :cond_b
    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v2

    aput-object p1, v4, v1

    move-object v3, v0

    goto/16 :goto_1

    .line 1272
    :cond_c
    :try_start_2
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v0, :cond_f

    .line 1273
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1274
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1276
    :cond_d
    const-string v3, "address"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1277
    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1279
    if-eqz v3, :cond_e

    .line 1280
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 1291
    :goto_6
    if-eqz v2, :cond_2

    .line 1292
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1283
    :cond_e
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    .line 1286
    :cond_f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1287
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    goto :goto_6

    .line 1291
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_7
    if-eqz v1, :cond_10

    .line 1292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    .line 1291
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :cond_11
    move-wide v0, v9

    goto :goto_6
.end method

.method private getSingleAddressIdForVZW(Ljava/lang/String;Ljava/lang/String;)J
    .locals 15

    .prologue
    .line 1050
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    .line 1051
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v12

    .line 1056
    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1058
    :cond_0
    const-string v4, "address=?"

    .line 1060
    const-wide/16 v10, -0x1

    .line 1069
    if-nez v12, :cond_5

    .line 1070
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 1103
    :goto_0
    const/4 v9, 0x0

    .line 1106
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1107
    const-string v2, "canonical_addresses"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 1111
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 1112
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1113
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    move-object v3, v9

    .line 1152
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "true"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_10

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_10

    .line 1153
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1156
    if-eqz v12, :cond_3

    .line 1158
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1162
    :cond_3
    const-string v2, "address"

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1165
    const-string v4, "canonical_addresses"

    const-string v5, "address"

    invoke-virtual {v2, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1169
    const-string v4, "TP/MmsSmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSingleAddressId: insert new canonical_address for xxx, _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1174
    if-eqz v3, :cond_4

    .line 1175
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1178
    :cond_4
    :goto_2
    return-wide v1

    .line 1075
    :cond_5
    iget-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 1076
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->containsAlpha(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1077
    const/4 v1, 0x1

    .line 1081
    :cond_6
    iget-boolean v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseCutomCliDigit:Z

    if-eqz v2, :cond_8

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR PHONE_NUMBERS_EQUAL(substr(address,max(1, length(address)-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")) , ?, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1089
    :goto_4
    const-string v2, "+011"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1090
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1094
    :goto_5
    iget-boolean v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseCutomCliDigit:Z

    if-eqz v3, :cond_a

    .line 1095
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getCustomCliDigitAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1096
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const/4 v3, 0x1

    aput-object v2, v5, v3

    move-object v4, v1

    .line 1097
    goto/16 :goto_0

    .line 1082
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 1085
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR PHONE_NUMBERS_EQUAL(address, ?, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    .line 1098
    :cond_a
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const/4 v3, 0x1

    aput-object v2, v5, v3

    move-object v4, v1

    goto/16 :goto_0

    .line 1115
    :cond_b
    :try_start_3
    const-string v2, "+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1116
    if-eqz v9, :cond_c

    .line 1117
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1120
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1122
    if-nez v12, :cond_d

    .line 1123
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v5, v2

    .line 1134
    :goto_7
    const-string v2, "canonical_addresses"

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 1138
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_11

    .line 1139
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1141
    const-string v1, "address"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1142
    const-string v3, "+011"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1143
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1145
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v3

    move-object v14, v2

    move-wide v1, v3

    move-object v3, v14

    goto/16 :goto_1

    .line 1126
    :cond_d
    :try_start_5
    iget-boolean v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseCutomCliDigit:Z

    if-eqz v2, :cond_f

    .line 1127
    invoke-direct {p0, v13}, Lcom/android/providers/telephony/MmsSmsProvider;->getCustomCliDigitAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1128
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const/4 v3, 0x1

    aput-object v2, v5, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 1174
    :catchall_0
    move-exception v1

    move-object v2, v9

    :goto_8
    if-eqz v2, :cond_e

    .line 1175
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1

    .line 1130
    :cond_f
    const/4 v2, 0x2

    :try_start_6
    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v5, v2

    const/4 v2, 0x1

    aput-object v13, v5, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 1174
    :cond_10
    if-eqz v3, :cond_4

    .line 1175
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1174
    :catchall_1
    move-exception v1

    move-object v2, v9

    goto :goto_8

    :catchall_2
    move-exception v1

    goto :goto_8

    :catchall_3
    move-exception v1

    move-object v2, v3

    goto :goto_8

    :cond_11
    move-object v3, v2

    move-wide v1, v10

    goto/16 :goto_1

    :cond_12
    move-object v3, v9

    move-wide v1, v10

    goto/16 :goto_1

    :cond_13
    move-object/from16 v2, p1

    goto/16 :goto_5
.end method

.method private getSortedSet(Ljava/util/Set;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1328
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    .line 1329
    .local v5, "size":I
    new-array v4, v5, [J

    .line 1330
    .local v4, "result":[J
    const/4 v0, 0x0

    .line 1332
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1333
    .local v3, "number":Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1336
    .end local v3    # "number":Ljava/lang/Long;
    :cond_0
    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 1337
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 1340
    :cond_1
    return-object v4
.end method

.method private getSpaceSeparatedNumbers(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1361
    .local p1, "numbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1364
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1365
    .local v3, "number":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 1366
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1368
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1372
    .end local v3    # "number":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getSpaceSeparatedNumbers([J)Ljava/lang/String;
    .locals 5
    .param p1, "numbers"    # [J

    .prologue
    .line 1348
    array-length v2, p1

    .line 1349
    .local v2, "size":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1351
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1352
    if-eqz v1, :cond_0

    .line 1353
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1355
    :cond_0
    aget-wide v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1357
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSpamMessages([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 2114
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2115
    new-instance v9, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2118
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2122
    const-string v1, "spam_pdu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2123
    const-string v1, "spam_sms"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2125
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2126
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2127
    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 2128
    const/4 v1, 0x1

    invoke-static {v10, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 2130
    new-instance v3, Ljava/util/HashSet;

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2134
    const-string v1, "msg_box != 3"

    invoke-static {p2, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2137
    const-string v1, "transport_type"

    const/4 v4, 0x0

    const-string v5, "mms"

    const-string v7, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-static {v6, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2144
    new-instance v3, Ljava/util/HashSet;

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2145
    const-string v0, "group_id"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2146
    const-string v0, "group_type"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2149
    const-string v1, "transport_type"

    const/4 v4, 0x0

    const-string v5, "sms"

    const-string v0, "(type != 3)"

    invoke-static {p2, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, v11

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2155
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2157
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v12, v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2161
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2163
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2166
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getThreadId(Ljava/util/List;)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1426
    monitor-enter p0

    :try_start_0
    const-string v0, "true"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getThreadId(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getThreadId(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1430
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->getAddressIds(Ljava/util/List;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1431
    const-string v0, ""

    .line 1438
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 1440
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1441
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1447
    :goto_1
    const-string v0, "TP/MmsSmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThreadId: recipientIds (selectionArgs) ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    .line 1450
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1452
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1453
    const-string v4, "TP/MmsSmsProvider"

    const-string v5, "getThreadId isDbLockedByOtherThreads = true"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1455
    const-string v4, "TP/MmsSmsProvider"

    const-string v5, "getThreadId isDbLockedByOtherThreads = true"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_2
    const-string v4, "SELECT _id FROM threads WHERE recipient_ids=?"

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1459
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "true"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1460
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1461
    const-string v0, "TP/MmsSmsProvider"

    const-string v4, "getThreadId: create new thread_id for recipients xxx"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->getCmasAlertType(Ljava/util/List;)I

    move-result v0

    .line 1467
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeparatedNumbers(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v1, v4, v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->insertThread(Ljava/lang/String;IILjava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1474
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1475
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "getThreadId isDbLockedByOtherThreads = true"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1477
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "getThreadId isDbLockedByOtherThreads = true"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_4
    const-string v1, "SELECT _id FROM threads WHERE recipient_ids=?"

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1484
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1486
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v6, :cond_6

    .line 1487
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThreadId: why is cursorCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    :cond_6
    monitor-exit p0

    return-object v0

    .line 1444
    :cond_7
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getSortedSet(Ljava/util/Set;)[J

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeparatedNumbers([J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 1430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    .prologue
    .line 2886
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2888
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2889
    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2891
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPendingMsgTables()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2892
    const-string v3, "sms"

    invoke-virtual {v10, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2894
    const-string v3, "msg_box = 4"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2896
    const-string v3, "(type = 4 OR type = 5)"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2903
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2904
    invoke-static {v2}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2905
    const/16 v3, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 2907
    const/4 v2, 0x1

    invoke-direct {p0, v12, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 2910
    new-instance v4, Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2911
    const-string v2, "pdu._id"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2912
    const-string v2, "err_type"

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2913
    const-string v2, "transport_type"

    const/4 v5, 0x1

    const-string v6, "mms"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2917
    const-string v2, "transport_type"

    sget-object v4, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    const/4 v5, 0x1

    const-string v6, "sms"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v3, v13

    move-object v7, v11

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2921
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2923
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 2925
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v14, v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2928
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2932
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2935
    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getUnreadMesagesWithFirstText([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .prologue
    .line 4490
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->createMmsProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4492
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4493
    new-instance v9, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4495
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 4496
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 4497
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/providers/telephony/MmsSmsProvider;->joinPduAndPartTables(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4499
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider;->joinSmsAndSerivceCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4501
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 4502
    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4503
    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 4504
    const/4 v1, 0x1

    invoke-static {v10, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 4506
    new-instance v3, Ljava/util/HashSet;

    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4507
    const-string v1, "pdu._id"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4508
    const-string v1, "text"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4511
    const-string v1, "msg_box != 3"

    invoke-static {p2, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4513
    const-string v1, "transport_type"

    const/4 v4, 0x0

    const-string v5, "mms"

    const-string v7, "(msg_box != 3 AND (m_type = 128 OR m_type = 132 OR m_type = 130))"

    invoke-static {v6, v7}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4520
    new-instance v3, Ljava/util/HashSet;

    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4521
    const-string v0, "group_id"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4522
    const-string v0, "group_type"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4524
    const-string v0, "service_category"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4526
    const-string v1, "transport_type"

    const/4 v4, 0x0

    const-string v5, "sms"

    const-string v0, "(type != 3)"

    invoke-static {p2, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, v11

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4531
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->buildWPMSubQuery([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4533
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4534
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 4536
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v12, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4540
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4543
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4546
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getWapPushMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1597
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1598
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "wpm"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private static handleNullMessageProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 1545
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    .end local p0    # "projection":[Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static handleNullSortOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1562
    if-nez p0, :cond_0

    const-string p0, "normalized_date ASC"

    .end local p0    # "sortOrder":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static handleNullThreadsProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 1554
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/providers/telephony/MmsSmsProvider;->THREADS_COLUMNS:[Ljava/lang/String;

    .end local p0    # "projection":[Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static handleReadChangedBroadcast(ILandroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3565
    if-lez p0, :cond_1

    invoke-static {p2}, Lcom/android/providers/telephony/MmsSmsProvider;->haveRead(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3566
    :goto_0
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need read changed broadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    if-eqz v0, :cond_0

    .line 3568
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->sendReadBroadcast(Landroid/content/Context;)V

    .line 3569
    invoke-static {p1, p3}, Lcom/android/providers/telephony/MmsSmsProvider;->sendReadThreadIDBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 3571
    :cond_0
    return-void

    .line 3565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleReadChangedBroadcast(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3574
    if-lez p0, :cond_1

    const/4 v0, 0x1

    .line 3575
    :goto_0
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need read changed broadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    if-eqz v0, :cond_0

    .line 3577
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsProvider;->sendReadBroadcast(Landroid/content/Context;)V

    .line 3578
    invoke-static {p1, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->sendReadThreadIDBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 3580
    :cond_0
    return-void

    .line 3574
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static haveRead(Landroid/content/ContentValues;)Z
    .locals 1
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3532
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3533
    :cond_0
    const/4 v0, 0x0

    .line 3535
    :goto_0
    return v0

    :cond_1
    const-string v0, "read"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static initializeColumnSets()V
    .locals 11

    .prologue
    .line 3723
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    array-length v1, v9

    .line 3724
    .local v1, "commonColumnCount":I
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v5, v9

    .line 3725
    .local v5, "mmsOnlyColumnCount":I
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v6, v9

    .line 3726
    .local v6, "smsOnlyColumnCount":I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3728
    .local v7, "unionColumns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3729
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3730
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3732
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3734
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_SMS_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3728
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3736
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 3737
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3738
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->MMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3736
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3740
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_2

    .line 3741
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3742
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->SMS_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3740
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3746
    :cond_2
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_ONLY_COLUMNS:[Ljava/lang/String;

    array-length v8, v9

    .line 3747
    .local v8, "wpmColumnCount":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_3

    .line 3748
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_COLUMNS:Ljava/util/Set;

    sget-object v10, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3749
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->WPM_ONLY_COLUMNS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3747
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3753
    :cond_3
    const/4 v2, 0x0

    .line 3754
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3755
    .local v0, "columnName":Ljava/lang/String;
    sget-object v9, Lcom/android/providers/telephony/MmsSmsProvider;->UNION_COLUMNS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v0, v9, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 3757
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private insertInner(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3426
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3428
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3430
    :sswitch_0
    const-string v2, "pending_msgs"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3478
    :cond_0
    :goto_0
    return-object v0

    .line 3436
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->insertWapPushMessage(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 3441
    :sswitch_2
    const-string v1, "source_directory_path"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3443
    if-eqz v1, :cond_0

    .line 3446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mmssms.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/data/com.android.providers.telephony/databases/mmssms.db"

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->backupDatabase(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "app_parts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/data/com.android.providers.telephony/app_parts/"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->directoryCopy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3451
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->dbReload()V

    goto :goto_0

    .line 3457
    :sswitch_3
    const-string v2, "spam_filter"

    invoke-virtual {v1, v2, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 3459
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 3460
    sget-object v0, Lcom/android/providers/telephony/MmsSmsProvider;->SPAM_FILTER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3462
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_0

    .line 3466
    :cond_1
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert: failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3472
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->dataCreateByLDU()V

    goto/16 :goto_0

    .line 3477
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->dataCreateByUnpack()V

    goto/16 :goto_0

    .line 3428
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x20 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x320 -> :sswitch_5
    .end sparse-switch
.end method

.method private insertThread(Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1379
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1380
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertThread: recipientIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayRecipientIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", numberOfRecipients: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1384
    const-string v3, "date"

    const-wide/16 v4, 0x3e8

    rem-long v4, v1, v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1385
    const-string v1, "recipient_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v1, "display_recipient_ids"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    if-nez p3, :cond_3

    if-le p2, v7, :cond_3

    .line 1389
    const-string v1, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1399
    :cond_0
    :goto_0
    const-string v1, "message_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1401
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1402
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1403
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "insertThread isDbLockedByOtherThreads = true"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1405
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "insertThread isDbLockedByOtherThreads = true"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_2
    const-string v2, "threads"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1408
    const-string v2, "TP/MmsSmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertThread: threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    return-void

    .line 1390
    :cond_3
    const/16 v1, 0x64

    if-lt p3, v1, :cond_4

    const/16 v1, 0x68

    if-gt p3, v1, :cond_4

    .line 1391
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    const-string v1, "alert_expired"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1394
    :cond_4
    const/16 v1, 0x6e

    if-ne p3, v1, :cond_0

    .line 1395
    const-string v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static isPhoneNumberEx(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 4456
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4457
    const/4 v1, 0x0

    .line 4461
    :goto_0
    return v1

    .line 4460
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->PHONE_EX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4461
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private static joinPduAndPartTables(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4466
    const-string v0, "pdu LEFT JOIN part ON pdu._id = part.mid"

    .line 4469
    if-eqz p0, :cond_0

    .line 4470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND part.ct=\'text/plain\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4473
    :cond_0
    return-object v0
.end method

.method private static joinPduAndPendingMsgTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2862
    const-string v0, "pdu LEFT JOIN pending_msgs ON pdu._id = pending_msgs.msg_id"

    return-object v0
.end method

.method private static joinSmsAndSerivceCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2867
    const-string v0, "sms LEFT JOIN (SELECT sms_id, service_category FROM CMAS) as cmas ON sms._id = cmas.sms_id"

    return-object v0
.end method

.method private makeMessagesTime(I)J
    .locals 4

    .prologue
    .line 4560
    const-string v1, "26.11.2013 20:52"

    .line 4561
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "dd.MM.yyyy HH:mm"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4563
    const/4 v0, 0x0

    .line 4565
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4571
    :goto_0
    if-nez v0, :cond_0

    .line 4572
    const-wide/16 v0, 0x0

    .line 4574
    :goto_1
    return-wide v0

    .line 4566
    :catch_0
    move-exception v1

    .line 4568
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 4574
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    mul-int/lit16 v2, p1, 0x7530

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method private makeProjectionWithDateAndThreadId([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2080
    array-length v1, p1

    .line 2081
    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 2083
    const-string v3, "thread_id AS tid"

    aput-object v3, v2, v0

    .line 2084
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date * "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS normalized_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2085
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2086
    add-int/lit8 v3, v0, 0x2

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 2085
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2088
    :cond_0
    return-object v2
.end method

.method private static makeProjectionWithNormalizedDate([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2944
    array-length v0, p0

    .line 2945
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AS normalized_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2948
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2949
    return-object v1
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 3526
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3528
    return-void
.end method

.method private registerSecretModeReceiver()V
    .locals 3

    .prologue
    .line 4415
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4416
    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4417
    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4418
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4419
    return-void
.end method

.method private static replaceOrStay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 3411
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3412
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static replaceTypeFieldNameForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3407
    const-string v0, "msgType"

    const-string v1, "msg_box"

    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->replaceOrStay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceTypeFieldNameForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3403
    const-string v0, "msgType"

    const-string v1, "type"

    invoke-static {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->replaceOrStay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private scheduleSecretModeChanged(Z)V
    .locals 5
    .param p1, "secretMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4426
    iget-object v3, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4427
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4428
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 4426
    goto :goto_0
.end method

.method public static sendReadBroadcast(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 3539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.Threads.action.READ_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3541
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3543
    return-void
.end method

.method public static sendReadThreadIDBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 3546
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3549
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3551
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.Threads.action.READ_CHANGED_THREAD_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3552
    const-string v2, "threadId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3554
    const-string v0, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReadThreadIDBroadcast Broadcasting intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "threadId"

    const-wide/16 v4, -0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3562
    :cond_0
    :goto_0
    return-void

    .line 3558
    :catch_0
    move-exception v0

    .line 3559
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "Thread ID must be a Long."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private syncDBData(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 17

    .prologue
    .line 3880
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "syncDBData start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    const/4 v12, 0x0

    .line 3885
    :try_start_0
    const-string v2, ""

    .line 3886
    const/4 v13, 0x0

    .line 3888
    const/4 v3, 0x1

    const-string v4, "sms"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "thread_id"

    aput-object v6, v5, v2

    const-string v6, "thread_id NOT IN (SELECT _id FROM threads)  AND thread_id  < 9223372036854775806"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    move v12, v13

    .line 3891
    :goto_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3893
    const-string v2, "thread_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move-result-wide v13

    .line 3896
    const/4 v10, 0x0

    .line 3898
    :try_start_2
    const-string v3, "canonical_addresses"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "address IN (SELECT address FROM sms WHERE thread_id=?)"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-result-object v3

    .line 3902
    :try_start_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3903
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3904
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3907
    :catch_0
    move-exception v2

    .line 3908
    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3910
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v3, :cond_0

    .line 3911
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3910
    :cond_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    .line 3928
    :catch_1
    move-exception v2

    move-object v3, v11

    .line 3929
    :goto_4
    :try_start_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    .line 3930
    const/4 v2, 0x0

    .line 3932
    if-eqz v3, :cond_1

    .line 3933
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4054
    :cond_1
    :goto_5
    return v2

    .line 3906
    :cond_2
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    .line 3910
    if-eqz v3, :cond_3

    .line 3911
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3916
    :cond_3
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v2, v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_15

    .line 3917
    const/4 v2, 0x1

    .line 3920
    :goto_6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3921
    const-string v5, "_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3922
    const-string v5, "recipient_ids"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    const-string v5, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3925
    const-string v5, "TP/MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS syncThread. threadId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", recipientsIds= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", type= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->syncThread(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    move v12, v2

    .line 3927
    goto/16 :goto_0

    .line 3932
    :catchall_1
    move-exception v2

    move-object v11, v12

    :goto_7
    if-eqz v11, :cond_4

    .line 3933
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3932
    :cond_4
    throw v2

    :cond_5
    if-eqz v11, :cond_6

    .line 3933
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3935
    :cond_6
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "syncDBData sms end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    const/4 v12, 0x0

    .line 3942
    :try_start_9
    const-string v2, ""

    .line 3943
    const/4 v13, 0x0

    .line 3946
    const/4 v3, 0x1

    const-string v4, "pdu"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "thread_id"

    aput-object v6, v5, v2

    const-string v6, "thread_id NOT IN (SELECT _id FROM threads)  AND thread_id <> 0 AND thread_id  < 9223372036854775806"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v11

    move v12, v13

    .line 3950
    :goto_8
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3952
    const-string v2, "thread_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3955
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-result-wide v15

    .line 3958
    const/4 v10, 0x0

    .line 3960
    :try_start_b
    const-string v3, "canonical_addresses"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "address IN (SELECT address FROM addr WHERE msg_id=? AND type= CASE (SELECT msg_box FROM pdu WHERE _id=?) WHEN 1 THEN 137 ELSE 151 END)"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move-result-object v3

    .line 3965
    :try_start_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3966
    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3967
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_9

    .line 3970
    :catch_2
    move-exception v2

    .line 3971
    :goto_a
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3973
    :catchall_2
    move-exception v2

    :goto_b
    if-eqz v3, :cond_7

    .line 3974
    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3973
    :cond_7
    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 3991
    :catch_3
    move-exception v2

    move-object v3, v11

    .line 3992
    :goto_c
    :try_start_f
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 3993
    const/4 v2, 0x0

    .line 3995
    if-eqz v3, :cond_1

    .line 3996
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 3969
    :cond_8
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-object v4

    .line 3973
    if-eqz v3, :cond_9

    .line 3974
    :try_start_11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3979
    :cond_9
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v2, v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_14

    .line 3980
    const/4 v2, 0x1

    .line 3983
    :goto_d
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3984
    const-string v5, "_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3985
    const-string v5, "recipient_ids"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    const-string v5, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3988
    const-string v5, "TP/MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS syncThread. threadId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msgId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", recipientsIds= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", type= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->syncThread(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move v12, v2

    .line 3990
    goto/16 :goto_8

    .line 3995
    :catchall_3
    move-exception v2

    move-object v11, v12

    :goto_e
    if-eqz v11, :cond_a

    .line 3996
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3995
    :cond_a
    throw v2

    :cond_b
    if-eqz v11, :cond_c

    .line 3996
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3998
    :cond_c
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "syncDBData mms end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    const/4 v12, 0x0

    .line 4004
    :try_start_12
    const-string v2, ""

    .line 4005
    const/4 v13, 0x0

    .line 4007
    const/4 v3, 0x1

    const-string v4, "wpm"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "thread_id"

    aput-object v6, v5, v2

    const-string v6, "thread_id NOT IN (SELECT _id FROM threads)  AND thread_id  < 9223372036854775806"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-result-object v11

    move v12, v13

    .line 4010
    :goto_f
    :try_start_13
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4012
    const-string v2, "thread_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move-result-wide v13

    .line 4015
    const/4 v10, 0x0

    .line 4017
    :try_start_14
    const-string v3, "canonical_addresses"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "address=\'Push message\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-result-object v3

    .line 4020
    :try_start_15
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4021
    :goto_10
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4022
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_10

    .line 4025
    :catch_4
    move-exception v2

    .line 4026
    :goto_11
    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 4028
    :catchall_4
    move-exception v2

    :goto_12
    if-eqz v3, :cond_d

    .line 4029
    :try_start_17
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4028
    :cond_d
    throw v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 4046
    :catch_5
    move-exception v2

    move-object v3, v11

    .line 4047
    :goto_13
    :try_start_18
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 4048
    const/4 v2, 0x0

    .line 4050
    if-eqz v3, :cond_1

    .line 4051
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 4024
    :cond_e
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-result-object v4

    .line 4028
    if-eqz v3, :cond_f

    .line 4029
    :try_start_1a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4034
    :cond_f
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v2, v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    .line 4035
    const/4 v2, 0x1

    .line 4038
    :goto_14
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4039
    const-string v5, "_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4040
    const-string v5, "recipient_ids"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4041
    const-string v5, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4043
    const-string v5, "TP/MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WPM syncThread. threadId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", recipientsIds= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", type= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/telephony/MmsSmsProvider;->syncThread(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    move v12, v2

    .line 4045
    goto/16 :goto_f

    .line 4050
    :catchall_5
    move-exception v2

    move-object v11, v12

    :goto_15
    if-eqz v11, :cond_10

    .line 4051
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4050
    :cond_10
    throw v2

    :cond_11
    if-eqz v11, :cond_12

    .line 4051
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4053
    :cond_12
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "syncDBData end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 4050
    :catchall_6
    move-exception v2

    goto :goto_15

    :catchall_7
    move-exception v2

    move-object v11, v3

    goto :goto_15

    .line 4046
    :catch_6
    move-exception v2

    move-object v3, v12

    goto/16 :goto_13

    .line 4028
    :catchall_8
    move-exception v2

    move-object v3, v10

    goto/16 :goto_12

    .line 4025
    :catch_7
    move-exception v2

    move-object v3, v10

    goto/16 :goto_11

    .line 3995
    :catchall_9
    move-exception v2

    goto/16 :goto_e

    :catchall_a
    move-exception v2

    move-object v11, v3

    goto/16 :goto_e

    .line 3991
    :catch_8
    move-exception v2

    move-object v3, v12

    goto/16 :goto_c

    .line 3973
    :catchall_b
    move-exception v2

    move-object v3, v10

    goto/16 :goto_b

    .line 3970
    :catch_9
    move-exception v2

    move-object v3, v10

    goto/16 :goto_a

    .line 3932
    :catchall_c
    move-exception v2

    goto/16 :goto_7

    :catchall_d
    move-exception v2

    move-object v11, v3

    goto/16 :goto_7

    .line 3928
    :catch_a
    move-exception v2

    move-object v3, v12

    goto/16 :goto_4

    .line 3910
    :catchall_e
    move-exception v2

    move-object v3, v10

    goto/16 :goto_3

    .line 3907
    :catch_b
    move-exception v2

    move-object v3, v10

    goto/16 :goto_2

    :cond_13
    move v2, v12

    goto/16 :goto_14

    :cond_14
    move v2, v12

    goto/16 :goto_d

    :cond_15
    move v2, v12

    goto/16 :goto_6
.end method

.method private syncThread(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4059
    const-string v0, "threads"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4062
    if-eqz p3, :cond_0

    .line 4063
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 4065
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 4551
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4555
    :goto_0
    return-object v0

    .line 4552
    :catch_0
    move-exception v0

    .line 4554
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4555
    const-string v0, ""

    goto :goto_0
.end method

.method private updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 3699
    const-string v0, "TP/MmsSmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConversation thread_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3708
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3710
    const-string v2, "pdu"

    invoke-virtual {v0, v2, p2, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v3, "wpm"

    invoke-virtual {v0, v3, p2, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "sms"

    invoke-virtual {v0, v3, p2, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    return v0

    .line 3703
    :catch_0
    move-exception v0

    .line 3704
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "Thread ID must be a Long."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSecretMode(Z)V
    .locals 3

    .prologue
    .line 4406
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsEnableFingerPrintService:Z

    if-nez v0, :cond_0

    .line 4412
    :goto_0
    return-void

    .line 4409
    :cond_0
    const-string v0, "TP/MmsSmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSecretMode secretMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    iput-boolean p1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsSecretMode:Z

    .line 4411
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public dataCreateByLDU()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 4253
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4254
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4256
    const/16 v0, 0x3e

    new-array v4, v0, [[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v0, v1

    const-string v5, "+44695839****"

    aput-object v5, v0, v9

    const-string v5, "Thanks so much for the flowers! I love them, they\'re so pretty~"

    aput-object v5, v0, v10

    aput-object v0, v4, v1

    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "2"

    aput-object v5, v0, v1

    const-string v5, "+44695839****"

    aput-object v5, v0, v9

    const-string v5, "I\'m glad you liked them"

    aput-object v5, v0, v10

    aput-object v0, v4, v9

    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "2"

    aput-object v5, v0, v1

    const-string v5, "+44695839****"

    aput-object v5, v0, v9

    const-string v5, "Happy Valentine\'s Day\'s!"

    aput-object v5, v0, v10

    aput-object v0, v4, v10

    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "2"

    aput-object v5, v0, v1

    const-string v5, "+44695839****"

    aput-object v5, v0, v9

    const-string v5, "Hope you got me chocolates :D"

    aput-object v5, v0, v10

    aput-object v0, v4, v7

    const/4 v0, 0x4

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+44695839****"

    aput-object v6, v5, v9

    const-string v6, "You\'ll have to wait until tonight to see ;)"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/4 v0, 0x5

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+44695839****"

    aput-object v6, v5, v9

    const-string v6, "Ohh I can\'t wait. See you in a few hours!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/4 v0, 0x6

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+1762810****"

    aput-object v6, v5, v9

    const-string v6, "Sorry I can\'t talk, I am in a meeting now. What\'s up?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/4 v0, 0x7

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+1762810****"

    aput-object v6, v5, v9

    const-string v6, "Oh sorry. I wanted to get the phone number of that hair salon you mentioned"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x8

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+1762810****"

    aput-object v6, v5, v9

    const-string v6, "I really need a haircut :P"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x9

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+1762810****"

    aput-object v6, v5, v9

    const-string v6, "Ok, let me get back to you."

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0xa

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+1762810****"

    aput-object v6, v5, v9

    const-string v6, "025-603-4485. It\'s near the mall. Ask for Amy ;)"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0xb

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+1762810****"

    aput-object v6, v5, v9

    const-string v6, "Hehe thanks! I\'ll let you know how it goes"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0xc

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+7764759****"

    aput-object v6, v5, v9

    const-string v6, "How did your exams go?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0xd

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+7764759****"

    aput-object v6, v5, v9

    const-string v6, "Pretty good, I think I gave it my best"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0xe

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+7764759****"

    aput-object v6, v5, v9

    const-string v6, "And best of all, I\'m officially done!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0xf

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+7764759****"

    aput-object v6, v5, v9

    const-string v6, "Oh, that sounds pretty cool. Congratulations!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x10

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+7764759****"

    aput-object v6, v5, v9

    const-string v6, "I still have one more tomorrow"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x11

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+7764759****"

    aput-object v6, v5, v9

    const-string v6, "Thanks! Good luck tomorrow, and let\'s celebrate afterwards"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x12

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+63545528****"

    aput-object v6, v5, v9

    const-string v6, "Hey Grace, when is your flight?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x13

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+63545528****"

    aput-object v6, v5, v9

    const-string v6, "Midnight tonight!! I get there at around 7am."

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x14

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+63545528****"

    aput-object v6, v5, v9

    const-string v6, "Want me to get you anything?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x15

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+63545528****"

    aput-object v6, v5, v9

    const-string v6, "Ah thank you, I don\'t need anything."

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x16

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+63545528****"

    aput-object v6, v5, v9

    const-string v6, "Have a nice flight, and text me when you get here"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x17

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+63545528****"

    aput-object v6, v5, v9

    const-string v6, "OK, I will. We have to meet up soon, it\'s been forever!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x18

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+55345537****"

    aput-object v6, v5, v9

    const-string v6, "How was the trip to Europe?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x19

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+55345537****"

    aput-object v6, v5, v9

    const-string v6, "It was great! It was beautiful and I ate a lot of good food"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x1a

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+55345537****"

    aput-object v6, v5, v9

    const-string v6, "Oh I\'m jealous. Got any interesting stories to tell?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x1b

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+55345537****"

    aput-object v6, v5, v9

    const-string v6, "I\'ll tell you all about it on Friday. But do you recognize this?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x1c

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+55345537****"

    aput-object v6, v5, v9

    const-string v6, "Guess what I found there ;)"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x1d

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+91887346****"

    aput-object v6, v5, v9

    const-string v6, "Sorry I\'m stuck in traffic, please get started without me."

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x1e

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+91887346****"

    aput-object v6, v5, v9

    const-string v6, "Don\'t worry, I\'m the only one here so far"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x1f

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+91887346****"

    aput-object v6, v5, v9

    const-string v6, "I\'m almost there~!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x20

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+91887346****"

    aput-object v6, v5, v9

    const-string v6, "OK. See you soon"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x21

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+34758980****"

    aput-object v6, v5, v9

    const-string v6, "Quick question, which one looks cuter? White one or brown one?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x22

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+34758980****"

    aput-object v6, v5, v9

    const-string v6, "Oh they\'re both cute! It\'s hard"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x23

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+34758980****"

    aput-object v6, v5, v9

    const-string v6, "I know! I can\'t decide which one to get my sister"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x24

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+34758980****"

    aput-object v6, v5, v9

    const-string v6, "You can\'t go wrong with either of them, don\'t worry ;)"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x25

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+34758980****"

    aput-object v6, v5, v9

    const-string v6, "Though I would probably choose the brown one"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x26

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+48346783"

    aput-object v6, v5, v9

    const-string v6, "Wanna play golf on Saturday?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x27

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+48346783"

    aput-object v6, v5, v9

    const-string v6, "Yea, definitely. I\'ve been practicing, and I\'m going to beat you this time"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x28

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+48346783"

    aput-object v6, v5, v9

    const-string v6, "ohh you can try"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x29

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+48346783"

    aput-object v6, v5, v9

    const-string v6, "But look at what I just got"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x2a

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+48346783"

    aput-object v6, v5, v9

    const-string v6, "hahah wow! That looks deadly"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x2b

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+48346783"

    aput-object v6, v5, v9

    const-string v6, "By the way, is Dan coming too?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x2c

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+48346783"

    aput-object v6, v5, v9

    const-string v6, "I don\'t know yet, but I\'ll ask him."

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x2d

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+48346783"

    aput-object v6, v5, v9

    const-string v6, "See you on Saturday at 8am sharp!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x2e

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "I\'m holding a birthday party at 10pm at my place this Friday"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x2f

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "You should come!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x30

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "Thanks for inviting me, I\'ll be there!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x31

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "I have a family dinner that day, so I might a bit late."

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x32

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "What\'s your address again?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x33

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "OK, great"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x34

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "My address is 450 Main Street"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x35

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "See you on Friday!"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x36

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+33947957****"

    aput-object v6, v5, v9

    const-string v6, "OK, see you. Let me know if you need me to bring anything"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x37

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+1534301****"

    aput-object v6, v5, v9

    const-string v6, "Hey, did I happen to leave my umbrella at your place?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x38

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+1534301****"

    aput-object v6, v5, v9

    const-string v6, "You lost it again?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x39

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+1534301****"

    aput-object v6, v5, v9

    const-string v6, "OK, let me check"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x3a

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+1534301****"

    aput-object v6, v5, v9

    const-string v6, "Yea... third one I lost this month"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x3b

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+1534301****"

    aput-object v6, v5, v9

    const-string v6, "Is it a foldable black one?"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x3c

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+1534301****"

    aput-object v6, v5, v9

    const-string v6, "Yes!! Thanks, you\'re a lifesaver"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    const/16 v0, 0x3d

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+1534301****"

    aput-object v6, v5, v9

    const-string v6, "haha no problem. I\'ll give it to you on Monday"

    aput-object v6, v5, v10

    aput-object v5, v4, v0

    move v0, v1

    .line 4335
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 4336
    const-string v5, "date"

    new-instance v6, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4337
    const-string v5, "type"

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    const-string v5, "thread_id"

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    aget-object v7, v4, v0

    aget-object v7, v7, v9

    invoke-static {v6, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4339
    const-string v5, "address"

    aget-object v6, v4, v0

    aget-object v6, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4340
    const-string v5, "body"

    aget-object v6, v4, v0

    aget-object v6, v6, v10

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4341
    const-string v5, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4343
    const-string v5, "sms"

    invoke-virtual {v2, v5, v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4346
    :cond_0
    invoke-static {v2, v11, v11}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4347
    return-void
.end method

.method public dataCreateByUnpack()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 4351
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4352
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4354
    const-string v0, "DELETE FROM threads;"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4355
    const-string v0, "DELETE FROM sms;"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4357
    const/16 v0, 0x10

    new-array v4, v0, [[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v0, v1

    const-string v5, "+14673451"

    aput-object v5, v0, v8

    const-string v5, "Hey, what\'s the plan for today?"

    aput-object v5, v0, v9

    aput-object v0, v4, v1

    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "2"

    aput-object v5, v0, v1

    const-string v5, "+14673451"

    aput-object v5, v0, v8

    const-string v5, "Let\'s meet around 3 and chat live."

    aput-object v5, v0, v9

    aput-object v0, v4, v8

    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v0, v1

    const-string v5, "+12790548"

    aput-object v5, v0, v8

    const-string v5, "I\'m thinking chicken for dinner, thoughts?"

    aput-object v5, v0, v9

    aput-object v0, v4, v9

    new-array v0, v7, [Ljava/lang/String;

    const-string v5, "2"

    aput-object v5, v0, v1

    const-string v5, "+12790548"

    aput-object v5, v0, v8

    const-string v5, "Hmmm, sounds good. I know of a really good place near the Las Vegas Strip."

    aput-object v5, v0, v9

    aput-object v0, v4, v7

    const/4 v0, 0x4

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+16840975"

    aput-object v6, v5, v8

    const-string v6, "I\'m dropping the girls off at the mall."

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/4 v0, 0x5

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+16840975"

    aput-object v6, v5, v8

    const-string v6, "Ok. I will pick them up on my way home."

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/4 v0, 0x6

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+19704615"

    aput-object v6, v5, v8

    const-string v6, "So.... how was your trip?"

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/4 v0, 0x7

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+19704615"

    aput-object v6, v5, v8

    const-string v6, "Awesome~!!!!!!!!!!!!!!!! I met bunch of new friends, went to lots of interesting places..."

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/16 v0, 0x8

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+16487543"

    aput-object v6, v5, v8

    const-string v6, "Have you checked how we can register exhibit booth?"

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/16 v0, 0x9

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+16487543"

    aput-object v6, v5, v8

    const-string v6, "Yup! OC\'s webpage provides \'Online Exhibit Registration\' link. Exhibit location is main hall of the venue. Better to register early to reserve the booth we want."

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/16 v0, 0xa

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+13574512"

    aput-object v6, v5, v8

    const-string v6, "See the attached. OC hosts an \"ALL NIGHT PARTY\" for the attendees at Club LAVO on New Year\'s Eve."

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/16 v0, 0xb

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+13574512"

    aput-object v6, v5, v8

    const-string v6, "Hooooooray!!!"

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/16 v0, 0xc

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+17804613"

    aput-object v6, v5, v8

    const-string v6, "I am running little late. Can you print out 10 copies of my presentation deck?"

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/16 v0, 0xd

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+17804613"

    aput-object v6, v5, v8

    const-string v6, "Sure. It looks like our meeting will be delayed about 10 minutes"

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/16 v0, 0xe

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v1

    const-string v6, "+17804916"

    aput-object v6, v5, v8

    const-string v6, "On Sundays Fountain show times begin at 11 a.m. and run every 15 minutes."

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    const/16 v0, 0xf

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "2"

    aput-object v6, v5, v1

    const-string v6, "+17804916"

    aput-object v6, v5, v8

    const-string v6, "Schedule may vary. Shows are subject to cancellation due to high winds."

    aput-object v6, v5, v9

    aput-object v5, v4, v0

    move v0, v1

    .line 4376
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 4377
    const-string v5, "date"

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->makeMessagesTime(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4378
    const-string v5, "type"

    aget-object v6, v4, v0

    aget-object v6, v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4379
    const-string v5, "thread_id"

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    aget-object v7, v4, v0

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4380
    const-string v5, "address"

    aget-object v6, v4, v0

    aget-object v6, v6, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4381
    const-string v5, "body"

    aget-object v6, v4, v0

    aget-object v6, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4382
    const-string v5, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4384
    const-string v5, "sms"

    invoke-virtual {v2, v5, v10, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4387
    :cond_0
    invoke-static {v2, v10, v10}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4388
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 3028
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3029
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 3032
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 3178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3036
    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3041
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsProvider;->deleteConversation(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3042
    const-string v4, "TP/MmsSmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete URI_CONVERSATIONS_MESSAGES affectedRows="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    invoke-static {v0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v0, v1

    .line 3181
    :goto_0
    if-lez v0, :cond_0

    .line 3182
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3185
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 3186
    const-string v2, "TP/MmsSmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Ljava/lang/String;)V

    .line 3190
    :cond_1
    :goto_1
    return v0

    .line 3037
    :catch_0
    move-exception v0

    .line 3038
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "Thread ID must be a long."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 3039
    goto :goto_0

    .line 3050
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 3052
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "delete Conversations 1)begin db.delete(sms)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    const-string v1, "sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3064
    if-eqz v2, :cond_3

    .line 3065
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 3066
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3069
    :goto_2
    const/16 v2, 0x2710

    if-lt v1, v2, :cond_2

    .line 3070
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3072
    :try_start_1
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3073
    const-string v1, "sms"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3075
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    check-cast v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->rebuildCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3076
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    check-cast v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->rebuildWrodsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3078
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3079
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3084
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v2

    .line 3091
    :goto_3
    const-string v2, "TP/MmsSmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete Conversations 2)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",end db.delete(sms),affected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "delete Conversations 3)begin MmsProvider.deleteMessages"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    invoke-static {v9, v0, p2, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteAllMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    .line 3098
    const-string v3, "TP/MmsSmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete Conversations 4)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",end MmsProvider.deleteMessages,affected:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    const-string v3, "wpm"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3102
    add-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 3106
    const-string v2, "TP/MmsSmsProvider"

    const-string v3, "delete Conversations 5)begin MmsSmsDatabaseHelper.updateAllThreads"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    invoke-static {v0, v5, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3108
    const-string v0, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete Conversations 6)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",end MmsSmsDatabaseHelper.updateAllThreads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3110
    goto/16 :goto_0

    .line 3080
    :catch_1
    move-exception v1

    .line 3081
    :try_start_2
    const-string v2, "TP/MmsSmsProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3084
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v8

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 3087
    :cond_2
    const-string v1, "sms"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_3

    .line 3112
    :sswitch_2
    const-string v1, "threads"

    const-string v2, "_id NOT IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM wpm where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)"

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3122
    :sswitch_3
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3123
    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOneWpm(Landroid/database/sqlite/SQLiteDatabase;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    goto/16 :goto_0

    .line 3124
    :catch_2
    move-exception v0

    .line 3125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad message id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3131
    :sswitch_4
    const-string v1, "spam_filter"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3133
    if-lez v0, :cond_1

    .line 3134
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SPAM_FILTER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyChange(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 3138
    :sswitch_5
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3141
    const-string v2, "spam_filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3143
    if-lez v0, :cond_1

    .line 3144
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SPAM_FILTER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyChange(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 3145
    :catch_3
    move-exception v0

    .line 3146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad spam filter id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3172
    :sswitch_6
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete  URI_MATCHER.match(uri)= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    invoke-direct {p0, v9, v0, p1}, Lcom/android/providers/telephony/MmsSmsProvider;->deleteAllBoxList(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    move v1, v8

    goto/16 :goto_2

    .line 3032
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xb -> :sswitch_2
        0x28 -> :sswitch_6
        0x29 -> :sswitch_6
        0x2a -> :sswitch_6
        0x2b -> :sswitch_6
        0x2c -> :sswitch_6
        0x2d -> :sswitch_6
        0x2e -> :sswitch_6
        0x2f -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x3a -> :sswitch_6
        0xc9 -> :sswitch_3
        0x190 -> :sswitch_4
        0x191 -> :sswitch_5
    .end sparse-switch
.end method

.method public fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 3761
    const/4 v7, 0x0

    .line 3762
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 3763
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 3764
    .local v0, "in":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 3767
    .local v5, "out":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3768
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3769
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 3770
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 3772
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3777
    if-eqz v5, :cond_0

    .line 3778
    :try_start_3
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 3780
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3781
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 3783
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 3784
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 3786
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    .line 3787
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 3791
    :cond_3
    :goto_3
    const/4 v1, 0x1

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_4
    return v1

    .line 3773
    :catch_0
    move-exception v6

    .line 3774
    .local v6, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3775
    const/4 v1, 0x0

    .line 3777
    if-eqz v5, :cond_5

    .line 3778
    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 3780
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 3781
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 3783
    :cond_6
    :goto_7
    if-eqz v9, :cond_7

    .line 3784
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 3786
    :cond_7
    :goto_8
    if-eqz v7, :cond_4

    .line 3787
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 3788
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 3777
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v5, :cond_8

    .line 3778
    :try_start_c
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 3780
    :cond_8
    :goto_a
    if-eqz v0, :cond_9

    .line 3781
    :try_start_d
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 3783
    :cond_9
    :goto_b
    if-eqz v9, :cond_a

    .line 3784
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 3786
    :cond_a
    :goto_c
    if-eqz v7, :cond_b

    .line 3787
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 3777
    :cond_b
    :goto_d
    throw v1

    .line 3779
    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 3782
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 3785
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 3788
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 3779
    .local v6, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 3782
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 3785
    .end local v6    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 3779
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3782
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3785
    .end local v6    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3788
    .end local v6    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 3777
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v1

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_9

    .line 3773
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_d
    move-exception v6

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v6

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3022
    const-string v0, "vnd.android-dir/mms-sms"

    return-object v0
.end method

.method public getValidRecipients(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x1

    .line 4173
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4174
    if-eqz p1, :cond_8

    .line 4176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4178
    if-eqz v0, :cond_3

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_3

    .line 4179
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4180
    array-length v6, v5

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v0, v5, v2

    .line 4183
    const-string v7, "TP/MmsSmsProvider"

    const-string v8, "query() URI_THREAD_ID addr with(;) :"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    sget-boolean v7, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v7, :cond_2

    .line 4185
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsProvider;->isPhoneNumberEx(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4186
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4187
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4195
    :cond_1
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4180
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 4190
    :cond_2
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4191
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4192
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4197
    :cond_3
    if-eqz v0, :cond_6

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_6

    .line 4198
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4199
    array-length v6, v5

    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_0

    aget-object v0, v5, v2

    .line 4202
    const-string v7, "TP/MmsSmsProvider"

    const-string v8, "query() URI_THREAD_ID addr with(,) :"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    sget-boolean v7, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v7, :cond_5

    .line 4204
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsProvider;->isPhoneNumberEx(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4205
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4206
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4214
    :cond_4
    :goto_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4199
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 4209
    :cond_5
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4210
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4211
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 4219
    :cond_6
    if-eqz v0, :cond_7

    .line 4220
    sget-boolean v2, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v2, :cond_9

    .line 4221
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsProvider;->isPhoneNumberEx(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4222
    const-string v2, "-"

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4230
    :cond_7
    :goto_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4243
    :catch_0
    move-exception v0

    .line 4244
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "query() URI_THREAD_ID recipients parse exception occur"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    :cond_8
    :goto_6
    return-object p1

    .line 4225
    :cond_9
    :try_start_1
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4226
    const-string v2, "-"

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_5

    :cond_a
    move-object p1, v1

    .line 4237
    goto :goto_6
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3419
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->insertInner(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3421
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public insertWapPushMessage(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 3492
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3494
    const-string v1, "thread_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 3495
    const-string v2, "address"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3497
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    .line 3498
    const-string v1, "thread_id"

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3502
    :cond_1
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3503
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3504
    const-string v2, "wpm"

    const-string v3, "body"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 3506
    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    .line 3507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/wap-push-messages/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3509
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyChange()V

    .line 3512
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.INSERTED_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3513
    const-string v2, "msgUri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3514
    const-string v2, "boxType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3515
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3522
    :goto_0
    return-object v0

    .line 3519
    :cond_2
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert: failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3485
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3487
    return-void
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 594
    const/16 v0, 0xe

    const/16 v3, 0xf

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentProvider;->setAppOps(II)V

    .line 595
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 596
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 601
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 602
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v0

    iput v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    .line 611
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mUseCutomCliDigit:Z

    .line 612
    const-string v0, "TP/MmsSmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set contact matching CLI digits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Message_EnableMultiDraftBox"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMultiDraftMsgBox:Z

    .line 615
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Message_EnableMmsTransactionCustomize4Korea"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    .line 616
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Message_EnableMmsSubjectConcept4Korea"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsSubjectConcept:Z

    .line 617
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Message_EnableFolderView"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableChnFolderView:Z

    .line 619
    iput-boolean v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mIsEnableFingerPrintService:Z

    .line 620
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->registerSecretModeReceiver()V

    .line 622
    return v1

    .line 603
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Message_UseCliDigit4MakingConvThread"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    goto :goto_0

    .line 607
    :cond_2
    iput v2, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mCliDigit:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 611
    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 638
    const/4 v8, 0x0

    .line 640
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;->sStart()V

    .line 641
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 642
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query,matched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sparse-switch v9, :sswitch_data_0

    .line 1012
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :sswitch_0
    invoke-direct {p0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getCompleteConversations([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 1015
    :goto_0
    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1018
    :cond_0
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :goto_1
    return-object v0

    .line 649
    :sswitch_1
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMultiDraftMsgBox:Z

    if-eqz v0, :cond_a

    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p5, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getCompleteConversationsIncludingDrafts([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 654
    :sswitch_2
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMultiDraftMsgBox:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableChnFolderView:Z

    if-eqz v0, :cond_a

    .line 655
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 657
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v1, "mms_id"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-direct {p0, p2, v0, p5, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getCompleteConversationsIncludingDrafts([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 666
    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "Thread ID must be a Long."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v0, 0x0

    goto :goto_1

    .line 669
    :sswitch_3
    const-string v0, "simple"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    const-string v1, "mini"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 672
    if-eqz v0, :cond_3

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    const-string v0, "thread_type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 678
    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getSimpleConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 680
    goto/16 :goto_0

    .line 681
    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 682
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getMiniConversations([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 684
    :cond_4
    invoke-direct {p0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversations([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 688
    goto/16 :goto_0

    .line 690
    :sswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationMessages(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 692
    goto/16 :goto_0

    .line 694
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 697
    goto/16 :goto_0

    .line 699
    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationById(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 702
    goto/16 :goto_0

    .line 704
    :sswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getMessagesByPhoneNumber(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 706
    goto/16 :goto_0

    .line 708
    :sswitch_8
    const-string v0, "recipient"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 710
    const-string v1, "createthread"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 712
    sget-boolean v2, Lcom/android/providers/telephony/MmsSmsProvider;->mEnableMmsTransactionCustomize4Korea:Z

    if-eqz v2, :cond_5

    .line 714
    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getValidRecipients(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 717
    :cond_5
    if-eqz v1, :cond_6

    .line 718
    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getThreadId(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 720
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getThreadId(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 723
    goto/16 :goto_0

    .line 725
    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 728
    :goto_2
    const-string v1, "canonical_addresses"

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 734
    goto/16 :goto_0

    .line 726
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 737
    :sswitch_a
    const-string v1, "canonical_addresses"

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->CANONICAL_ADDRESSES_COLUMNS_2:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 743
    goto/16 :goto_0

    .line 745
    :sswitch_b
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SEARCH_STRING:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pattern"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 750
    if-nez p5, :cond_8

    if-nez p3, :cond_8

    if-nez p4, :cond_8

    if-eqz p2, :cond_9

    .line 754
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_9
    const-string v1, "SELECT snippet(words, \'\', \' \', \'\', 1, 1) as snippet FROM words WHERE index_text MATCH ? ORDER BY snippet LIMIT 50;"

    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->SEARCH_STRING:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 760
    goto/16 :goto_0

    .line 766
    :sswitch_c
    :try_start_1
    const-string v1, "row_id"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 767
    const-string v1, "table_to_use"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_a
    move-object v0, v8

    goto/16 :goto_0

    .line 769
    :pswitch_0
    const-string v1, "sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thread_id"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 779
    :pswitch_1
    const-string v1, "SELECT thread_id FROM pdu,part WHERE ((part.mid=pdu._id) AND (part._id=?))"

    .line 782
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 785
    :catch_1
    move-exception v0

    move-object v0, v8

    .line 788
    goto/16 :goto_0

    .line 791
    :sswitch_d
    if-nez p5, :cond_b

    if-nez p3, :cond_b

    if-nez p4, :cond_b

    if-eqz p2, :cond_c

    .line 795
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "do not specify sortOrder, selection, selectionArgs, or projectionwith this query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pattern"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    :try_start_2
    const-string v2, "SELECT sms._id AS _id,thread_id,address,body,date,date_sent,index_text,words._id FROM sms,words WHERE (index_text MATCH ? AND sms._id=words.source_id AND words.table_to_use=1) UNION SELECT pdu._id,thread_id,addr.address,part.text AS body,pdu.date,pdu.date_sent,index_text,words._id FROM pdu,part,addr,words WHERE ((part.mid=pdu._id) AND (addr.msg_id=pdu._id) AND (addr.type=151) AND (part.ct=\'text/plain\') AND (index_text MATCH ?) AND (part._id = words.source_id) AND (words.table_to_use=2)) GROUP BY thread_id ORDER BY thread_id ASC, date DESC"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    move-object v0, v8

    .line 806
    goto/16 :goto_0

    .line 804
    :catch_2
    move-exception v0

    .line 805
    const-string v1, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 807
    goto/16 :goto_0

    .line 810
    :sswitch_e
    const-string v1, "protocol"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    const-string v2, "message"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 812
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v1, -0x1

    .line 815
    :goto_3
    const/4 v3, -0x1

    if-eq v1, v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proto_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND msg_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 821
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v3, v1

    .line 823
    :goto_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v7, "due_time"

    .line 825
    :goto_6
    const-string v1, "pending_msgs"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 827
    goto/16 :goto_0

    .line 812
    :cond_e
    const-string v3, "sms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_3

    :cond_f
    const/4 v1, 0x1

    goto :goto_3

    .line 815
    :cond_10
    const-string v1, " 0=0 "

    goto :goto_4

    .line 821
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_12
    move-object v7, p5

    .line 823
    goto :goto_6

    .line 830
    :sswitch_f
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getUndeliveredMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 832
    goto/16 :goto_0

    .line 835
    :sswitch_10
    invoke-direct {p0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getDraftThread([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 836
    goto/16 :goto_0

    .line 841
    :sswitch_11
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v0

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 848
    goto/16 :goto_0

    .line 842
    :catch_3
    move-exception v0

    .line 843
    const-string v0, "TP/MmsSmsProvider"

    const-string v1, "Thread ID must be a long."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 844
    goto/16 :goto_0

    .line 851
    :sswitch_12
    invoke-direct {p0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getFirstLockedMessage([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 852
    goto/16 :goto_0

    .line 855
    :sswitch_13
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getAllLockedMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 857
    goto/16 :goto_0

    .line 878
    :sswitch_14
    const-string v0, "target_directory_path"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    if-nez v0, :cond_13

    .line 881
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 883
    :cond_13
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->checkOrCreateDirectory(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_14

    .line 884
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 886
    :cond_14
    const-string v1, "/data/data/com.android.providers.telephony/databases/mmssms.db"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mmssms.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->backupDatabase(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mmssms.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 890
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 891
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 892
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 894
    const-string v1, "/data/data/com.android.providers.telephony/app_parts/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "app_parts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->directoryCopy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 895
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 897
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 902
    :sswitch_15
    const-string v0, "pattern"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getMessagesBySearchString(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 907
    goto/16 :goto_0

    .line 911
    :sswitch_16
    const-string v0, "pattern"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getMessagesBySearchString(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 914
    goto/16 :goto_0

    .line 918
    :sswitch_17
    const-string v0, "pattern"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getBubblesBySearch(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 920
    goto/16 :goto_0

    .line 923
    :sswitch_18
    const-string v0, "pattern"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getOneBubbleSearch([Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 926
    goto/16 :goto_0

    .line 930
    :sswitch_19
    if-nez p4, :cond_16

    .line 931
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getBubbleByIntegratedSearchAllData(Z)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 933
    :cond_16
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->getBubblesByIntegratedSearch([Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 935
    goto/16 :goto_0

    .line 940
    :sswitch_1a
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getWapPushMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 941
    goto/16 :goto_0

    .line 947
    :sswitch_1b
    invoke-direct {p0}, Lcom/android/providers/telephony/MmsSmsProvider;->dbReload()V

    .line 948
    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_1c
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, v9

    .line 959
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MmsSmsProvider;->getFolderviewMessage([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 961
    goto/16 :goto_0

    .line 964
    :sswitch_1d
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-direct {p0, p2, v0, p4, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getWapPushMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v8

    move-object v0, v8

    .line 969
    goto/16 :goto_0

    .line 966
    :catch_4
    move-exception v0

    .line 967
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad message id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 975
    :sswitch_1e
    const-string v1, "spam_filter"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 978
    :sswitch_1f
    invoke-direct {p0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpamMessages([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 979
    goto/16 :goto_0

    .line 982
    :sswitch_20
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/MmsSmsProvider;->getConversationByAddress(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 984
    goto/16 :goto_0

    .line 987
    :sswitch_21
    invoke-direct {p0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getDraftMessages([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 988
    goto/16 :goto_0

    .line 991
    :sswitch_22
    const-string v1, "threads"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 992
    goto/16 :goto_0

    .line 995
    :sswitch_23
    invoke-direct {p0, p2, p3, p5}, Lcom/android/providers/telephony/MmsSmsProvider;->getUnreadMesagesWithFirstText([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 996
    goto/16 :goto_0

    .line 999
    :sswitch_24
    const-string v1, "SELECT thread_id, substr(snippet,1,500) FROM (SELECT date * 1000 AS date, text AS snippet, thread_id, part._id AS part_id FROM pdu LEFT OUTER JOIN part ON pdu._id = part.mid AND part.ct=\'text/plain\' WHERE reserved=0) WHERE thread_id = ? ORDER BY date DESC, part_id ASC LIMIT 1"

    .line 1003
    invoke-virtual {v0, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 1004
    goto/16 :goto_0

    .line 1007
    :sswitch_25
    const-string v1, "SELECT thread_id FROM pdu ,threads WHERE pdu.date * 1000 = threads.date"

    .line 1008
    invoke-virtual {v0, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v0, v8

    .line 1009
    goto/16 :goto_0

    .line 644
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_e
        0x7 -> :sswitch_0
        0x8 -> :sswitch_f
        0x9 -> :sswitch_6
        0xc -> :sswitch_10
        0xd -> :sswitch_a
        0xe -> :sswitch_d
        0xf -> :sswitch_b
        0x10 -> :sswitch_12
        0x11 -> :sswitch_11
        0x12 -> :sswitch_c
        0x1e -> :sswitch_13
        0x1f -> :sswitch_14
        0x24 -> :sswitch_21
        0x25 -> :sswitch_22
        0x26 -> :sswitch_1
        0x27 -> :sswitch_2
        0x28 -> :sswitch_1c
        0x29 -> :sswitch_1c
        0x2a -> :sswitch_1c
        0x2b -> :sswitch_1c
        0x2c -> :sswitch_1c
        0x65 -> :sswitch_15
        0x66 -> :sswitch_16
        0x67 -> :sswitch_17
        0x68 -> :sswitch_18
        0x69 -> :sswitch_19
        0xc8 -> :sswitch_1a
        0xc9 -> :sswitch_1d
        0x190 -> :sswitch_1e
        0x192 -> :sswitch_1f
        0x1c2 -> :sswitch_20
        0x2bd -> :sswitch_23
        0x384 -> :sswitch_24
        0x385 -> :sswitch_25
        0x3e9 -> :sswitch_1b
    .end sparse-switch

    .line 767
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 3585
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3586
    const-string v0, "TP/MmsSmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    const/4 v0, 0x0

    .line 3589
    sget-object v2, Lcom/android/providers/telephony/MmsSmsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3685
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmsSmsProvider does not support deletes, inserts, or updates for this URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3591
    :sswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3592
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsProvider;->updateConversation(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3595
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, p2, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    move v0, v1

    .line 3689
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 3690
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3693
    :cond_1
    :goto_1
    return v0

    .line 3599
    :sswitch_1
    const-string v0, "pending_msgs"

    invoke-virtual {v1, v0, p2, p3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3603
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3604
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3607
    :goto_2
    const-string v2, "canonical_addresses"

    invoke-virtual {v1, v2, p2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3604
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3612
    :sswitch_3
    const-string v0, "wpm"

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3614
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 3618
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3619
    const-string v2, "wpm"

    invoke-virtual {v1, v2, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3621
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2, v6}, Lcom/android/providers/telephony/MmsSmsProvider;->handleReadChangedBroadcast(ILandroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3627
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->syncDBData(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    goto/16 :goto_0

    .line 3636
    :sswitch_6
    const-string v0, "cmas"

    invoke-virtual {v1, v0, p2, p3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3642
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3643
    const-string v2, "spam_filter"

    invoke-virtual {v1, v2, p2, v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3645
    if-lez v0, :cond_1

    .line 3646
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SPAM_FILTER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyChange(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 3651
    :sswitch_8
    const-string v0, "threads"

    invoke-virtual {v1, v0, p2, p3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3656
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3657
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3658
    :goto_3
    const-string v2, "threads"

    invoke-virtual {v1, v2, p2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3657
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 3663
    :sswitch_a
    const-string v0, "spam_filter"

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3665
    if-lez v0, :cond_0

    .line 3666
    sget-object v1, Lcom/android/providers/telephony/MmsSmsProvider;->SPAM_FILTER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyChange(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3670
    :sswitch_b
    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 3675
    :sswitch_c
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 3676
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3677
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 3678
    invoke-static {v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3680
    :catch_0
    move-exception v1

    .line 3681
    const-string v1, "TP/MmsSmsProvider"

    const-string v2, "Thread ID must be a Long."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3589
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x21 -> :sswitch_6
        0x23 -> :sswitch_9
        0x25 -> :sswitch_8
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0x12c -> :sswitch_5
        0x190 -> :sswitch_a
        0x191 -> :sswitch_7
        0x258 -> :sswitch_b
        0x259 -> :sswitch_c
    .end sparse-switch
.end method
