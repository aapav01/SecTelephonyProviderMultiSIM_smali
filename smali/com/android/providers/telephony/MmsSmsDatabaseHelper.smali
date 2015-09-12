.class public Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;,
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;
    }
.end annotation


# static fields
.field private static final MESSAGE_TYPE_UPDATE_THREADS_ON_DELETE_TRIGGER:Ljava/lang/String;

.field private static final MESSAGE_TYPE_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String;

.field private static final MESSAGE_TYPE_UPDATE_THREADS_TRIGGER:Ljava/lang/String;

.field private static THREAD_TYPE_MMS_SENDING:I

.field private static THREAD_TYPE_SMS_PENDING:I

.field private static THREAD_TYPE_SMS_SENDING:I

.field private static mEnableMultiDraftMsgBox:Z

.field private static sFakeLowStorageTest:Z

.field private static sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

.field private static sTriedAutoIncrement:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableBlackList:Z

.field private mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 452
    const/16 v0, 0xa

    sput v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_SMS_SENDING:I

    .line 453
    const/16 v0, 0xb

    sput v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_SMS_PENDING:I

    .line 454
    const/16 v0, 0x15

    sput v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_MMS_SENDING:I

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE threads set message_type =  (SELECT    CASE    WHEN type = \'sms\' THEN        CASE            WHEN box_type = 3 THEN 1           WHEN box_type = 4 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_SMS_SENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_SMS_PENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   WHEN type = \'mms\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       CASE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               CASE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "err_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= 10 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_MMS_SENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " *1000 AS date, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msg_box"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS box_type, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "err_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'mms\' AS type, thread_id FROM pdu, pending_msgs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       WHERE pending_msgs.proto_type = 1 AND pdu._id = new.msg_id AND pdu._id = pending_msgs.msg_id))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_TRIGGER:Ljava/lang/String;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE threads set message_type =  (SELECT    CASE    WHEN type = \'sms\' THEN        CASE            WHEN box_type = 3 THEN 1           WHEN box_type = 4 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_SMS_SENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_SMS_PENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   WHEN type = \'mms\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       CASE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               CASE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "err_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= 10 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_MMS_SENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " *1000 AS date, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msg_box"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS box_type, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "err_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'mms\' AS type, thread_id FROM pdu, pending_msgs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   WHERE pdu._id = NEW._id AND pdu._id = pending_msgs.msg_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   UNION SELECT date, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS box_type, -1 AS err_type, \'sms\' AS type, thread_id FROM sms WHERE group_id IS NULL AND thread_id=new.thread_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   UNION SELECT date, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " group_type AS box_type, -1 AS err_type, \'sms\' AS type, thread_id FROM sms WHERE _id=group_id AND thread_id=new.thread_id ORDER BY date DESC LIMIT 1))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String;

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE threads set message_type =  (SELECT    CASE    WHEN type = \'sms\' THEN        CASE            WHEN box_type = 3 THEN 1           WHEN box_type = 4 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_SMS_SENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_SMS_PENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   WHEN type = \'mms\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       CASE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           WHEN box_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               CASE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "err_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= 10 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->THREAD_TYPE_MMS_SENDING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " *1000 AS date, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msg_box"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS box_type, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "err_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'mms\' AS type, thread_id FROM pdu "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   LEFT OUTER JOIN pending_msgs ON pdu._id = pending_msgs.msg_id WHERE thread_id = old.thread_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   UNION SELECT date, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS box_type, -1 AS err_type, \'sms\' AS type, thread_id FROM sms WHERE group_id IS NULL AND thread_id=old.thread_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   UNION SELECT date, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " group_type AS box_type, -1 AS err_type, \'sms\' AS type, thread_id FROM sms WHERE _id=group_id AND thread_id=old.thread_id ORDER BY date DESC LIMIT 1))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_DELETE_TRIGGER:Ljava/lang/String;

    .line 540
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 541
    sput-boolean v2, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    .line 542
    sput-boolean v2, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    .line 551
    sput-boolean v2, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableMultiDraftMsgBox:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 554
    const-string v0, "mmssms.db"

    const/4 v1, 0x0

    const/16 v2, 0x45

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableBlackList:Z

    .line 556
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 558
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 559
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableBlackList:Z

    .line 560
    const-string v1, "CscFeature_Message_EnableMultiDraftBox"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableMultiDraftMsgBox:Z

    .line 561
    return-void
.end method

.method private NewupdateThreadsForSnippet(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3377
    const-string v0, "select _id from threads where snippet NOT NULL AND snippet_cs NOT NULL AND date in (select date*1000 from pdu where thread_id NOT NULL group by thread_id having count(thread_id) >= 1) AND _id in (select thread_id from pdu where thread_id NOT NULL group by thread_id having count(thread_id) >= 1);"

    .line 3378
    .local v0, "Query":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3379
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 3381
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3390
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3393
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3396
    :cond_1
    return-void
.end method

.method private NewupdateThreadsSnippetTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 3357
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3358
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3364
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3366
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_on_update AFTER  UPDATE OF date, sub  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3371
    return-void
.end method

.method private UpdateSmsTableDiffColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3593
    const-string v0, "CREATE TABLE sms_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0,error_code INTEGER DEFAULT -1,seen INTEGER DEFAULT 0,deletable INTEGER DEFAULT 0,hidden INTEGER DEFAULT 0,group_id INTEGER,group_type INTEGER,delivery_date INTEGER,app_id INTEGER DEFAULT 0,msg_id INTEGER DEFAULT 0,callback_number TEXT,reserved INTEGER DEFAULT 0,pri INTEGER DEFAULT 0,teleservice_id INTEGER DEFAULT 0,link_url TEXT,svc_cmd INTEGER DEFAULT 0,svc_cmd_content TEXT,roam_pending INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3628
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "Created table sms_temp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    const-string v0, "INSERT INTO sms_temp (thread_id, address, person, date, protocol, read, status, type, reply_path_present, subject, body, service_center, locked, error_code, seen, deletable, hidden, group_id, group_type, delivery_date) SELECT thread_id, address, person, date, protocol, read, status, type, reply_path_present, subject, body, service_center, locked, error_code, seen, deletable, hidden, group_id, group_type, delivery_date FROM sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3634
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "Copied from sms table to sms_temp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    const-string v0, "DROP TABLE sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3637
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "Dropped sms table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    const-string v0, "ALTER TABLE sms_temp RENAME TO sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3640
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "Renamed sms_temp to sms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    return p0
.end method

.method private addIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4228
    const-string v0, "CREATE INDEX pduIndex1 ON pdu (thread_id,locked);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4229
    const-string v0, "CREATE INDEX addrIndex1 ON addr (msg_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4230
    const-string v0, "CREATE INDEX partIndex1 ON part (mid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4231
    const-string v0, "CREATE INDEX pending_msgsIndex1 ON pending_msgs (msg_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4234
    const-string v0, "CREATE INDEX threadsIndex1 ON threads (date);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4235
    return-void
.end method

.method private addThreadsUnreadCountColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 4035
    const-string v0, "ALTER table threads ADD unread_count INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4036
    return-void
.end method

.method private addUpgradeDiffColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 4123
    const-string v0, "sms"

    const-string v1, "app_id"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4124
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 sms.app_id Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    :goto_0
    const-string v0, "sms"

    const-string v1, "msg_id"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4130
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 sms.msg_id Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :goto_1
    const-string v0, "sms"

    const-string v1, "callback_number"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4136
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 sms.callback_number Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    :goto_2
    const-string v0, "sms"

    const-string v1, "reserved"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4142
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 sms.reserved Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    :goto_3
    const-string v0, "sms"

    const-string v1, "teleservice_id"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4148
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 Column teleservice_id Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    :goto_4
    const-string v0, "sms"

    const-string v1, "link_url"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4154
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 Column link_url Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4159
    :goto_5
    const-string v0, "sms"

    const-string v1, "date_sent"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4160
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 sms.date_sent Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    :goto_6
    const-string v0, "wpm"

    const-string v1, "date_sent"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4166
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 wpm.date_sent Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    :goto_7
    const-string v0, "pdu"

    const-string v1, "app_id"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4172
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 pdu.app_id Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    :goto_8
    const-string v0, "pdu"

    const-string v1, "msg_id"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4178
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 pdu.msg_id Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    :goto_9
    const-string v0, "pdu"

    const-string v1, "callback_set"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4184
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 pdu.callback_set Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    :goto_a
    const-string v0, "pdu"

    const-string v1, "reserved"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4190
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 pdu.reserved Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    :goto_b
    const-string v0, "pdu"

    const-string v1, "date_sent"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4196
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 pdu.date_sent Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    :goto_c
    const-string v0, "threads"

    const-string v1, "alert_expired"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4202
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 threads.alert_expired Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    :goto_d
    const-string v0, "threads"

    const-string v1, "reply_all"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4208
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 threads.reply_all Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    :goto_e
    const-string v0, "threads"

    const-string v1, "group_snippet"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4214
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 threads.group_snippet Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    :goto_f
    const-string v0, "threads"

    const-string v1, "message_type"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4220
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57 threads.message_type Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    :goto_10
    return-void

    .line 4126
    :cond_0
    const-string v0, "ALTER TABLE sms ADD COLUMN app_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4132
    :cond_1
    const-string v0, "ALTER TABLE sms ADD COLUMN msg_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4138
    :cond_2
    const-string v0, "ALTER TABLE sms ADD COLUMN callback_number TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4144
    :cond_3
    const-string v0, "ALTER TABLE sms ADD COLUMN reserved INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4150
    :cond_4
    const-string v0, "ALTER TABLE sms ADD COLUMN teleservice_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4156
    :cond_5
    const-string v0, "ALTER TABLE sms ADD COLUMN link_url TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4162
    :cond_6
    const-string v0, "ALTER TABLE sms ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4168
    :cond_7
    const-string v0, "ALTER TABLE wpm ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4174
    :cond_8
    const-string v0, "ALTER TABLE pdu ADD COLUMN app_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4180
    :cond_9
    const-string v0, "ALTER TABLE pdu ADD COLUMN msg_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 4186
    :cond_a
    const-string v0, "ALTER TABLE pdu ADD COLUMN callback_set INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 4192
    :cond_b
    const-string v0, "ALTER TABLE pdu ADD COLUMN reserved INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 4198
    :cond_c
    const-string v0, "ALTER TABLE pdu ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 4204
    :cond_d
    const-string v0, "ALTER TABLE threads ADD COLUMN alert_expired INTEGER DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 4210
    :cond_e
    const-string v0, "ALTER TABLE threads ADD COLUMN reply_all INTEGER DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 4216
    :cond_f
    const-string v0, "ALTER TABLE threads ADD COLUMN group_snippet TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_f

    .line 4222
    :cond_10
    const-string v0, "ALTER TABLE threads ADD COLUMN message_type INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "csnam"    # Ljava/lang/String;

    .prologue
    .line 3539
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 3540
    .local v0, "enc":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3541
    const/4 v1, 0x1

    .line 3543
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private convertMmsSubjectEncoding(Ljava/lang/String;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .prologue
    .line 3405
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3410
    if-eqz p2, :cond_3

    .line 3412
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3414
    :cond_0
    const/4 v1, 0x0

    .line 3415
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3416
    const-string v0, "sub"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3417
    const-string v0, "sub_cs"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3419
    const-string v2, "sub"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 3420
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3428
    const-string v2, "ISO-8859-1"

    invoke-static {v7, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move v3, v2

    .line 3432
    :goto_0
    const-string v2, "TP/MmsSmsDatabaseHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isUTF_8="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", msgId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    const-string v2, "sub_cs"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3436
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "sub_cs is null, set DEFAULT_CHARSET(106)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3437
    const/4 v1, 0x1

    .line 3438
    const/16 v0, 0x6a

    move v2, v0

    move v0, v1

    .line 3441
    :goto_1
    if-eqz v3, :cond_5

    .line 3443
    const/4 v1, 0x0

    .line 3445
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v7, "iso-8859-1"

    invoke-direct {v0, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3451
    :goto_2
    :try_start_2
    const-string v1, "TP/MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSubjectValid="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    new-instance v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;

    invoke-direct {v1, v5, v6, v0, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;-><init>(JLjava/lang/String;I)V

    .line 3453
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3462
    :cond_1
    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3465
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 3472
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3474
    const-string v0, "TP/MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pairSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_6

    .line 3478
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;

    .line 3479
    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->getMsgId()J

    move-result-wide v5

    .line 3480
    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 3481
    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->getSubCs()I

    move-result v0

    .line 3483
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3484
    const-string v8, "sub"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    const-string v3, "sub_cs"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3486
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3488
    const-string v3, "TP/MmsSmsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update pairsList : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", msgId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMessageUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p3, p1, v7, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3477
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 3428
    :cond_4
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_0

    .line 3446
    :catch_0
    move-exception v0

    .line 3447
    :try_start_3
    const-string v3, "TP/MmsSmsDatabaseHelper"

    const-string v7, "ISO_8859_1 must be supported!"

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_2

    .line 3456
    :cond_5
    if-eqz v0, :cond_1

    .line 3457
    new-instance v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;

    invoke-direct {v0, v5, v6, v7, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;-><init>(JLjava/lang/String;I)V

    .line 3458
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 3465
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3493
    :cond_6
    return-void

    :cond_7
    move v2, v0

    move v0, v1

    goto/16 :goto_1
.end method

.method private convertStringEncodingForUpgrade_ForKorVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 4494
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "convertStringEncodingForUpgrade_ForKorVersion57() enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4498
    :try_start_0
    const-string v1, "pdu"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "sub"

    aput-object v3, v2, v0

    const-string v3, "sub!=\'\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 4501
    if-eqz v1, :cond_7

    .line 4502
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4503
    const-string v2, "sub"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4504
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4506
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4507
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4509
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4510
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 4511
    const-string v5, "sub"

    new-instance v6, Ljava/lang/String;

    const-string v7, "iso-8859-1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v7, "utf-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4513
    const-string v4, "pdu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4545
    :catch_0
    move-exception v0

    .line 4546
    :goto_1
    :try_start_2
    const-string v2, "TP/MmsSmsDatabaseHelper"

    const-string v3, "convertStringEncodingForUpgrade_ForKorVersion57(): subject convert error occured"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    const-string v2, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4549
    if-eqz v1, :cond_1

    .line 4550
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4554
    :cond_1
    :goto_2
    return-void

    .line 4517
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v9

    .line 4522
    :goto_3
    :try_start_4
    const-string v1, "spam_pdu"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "sub"

    aput-object v3, v2, v0

    const-string v3, "sub!=\'\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    .line 4525
    if-eqz v1, :cond_6

    .line 4526
    :try_start_5
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4527
    const-string v2, "sub"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4528
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4530
    :cond_3
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4531
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4533
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4534
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 4535
    const-string v5, "sub"

    new-instance v6, Ljava/lang/String;

    const-string v7, "iso-8859-1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v7, "utf-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4537
    const-string v4, "spam_pdu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 4549
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_4

    .line 4550
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4551
    :cond_4
    throw v0

    .line 4541
    :cond_5
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4549
    :goto_6
    if-eqz v9, :cond_1

    .line 4550
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 4549
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_5

    .line 4545
    :catch_1
    move-exception v0

    move-object v1, v9

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v1, v8

    goto/16 :goto_1

    :cond_6
    move-object v9, v1

    goto :goto_6

    :cond_7
    move-object v8, v1

    goto/16 :goto_3
.end method

.method private createChannelTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 973
    const-string v0, "CREATE TABLE mychannels (_id INTEGER PRIMARY KEY AUTOINCREMENT,channel_id INTEGER,channel_name TEXT NOT NULL,is_checked INTEGER,sim_slot INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method private createCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1462
    const-string v0, "CREATE TABLE IF NOT EXISTS cmas (_id INTEGER PRIMARY KEY AUTOINCREMENT,sms_id INTEGER,thread_id INTEGER,service_category INTEGER,category INTEGER,response_type INTEGER,severity INTEGER,urgency INTEGER,certainty INTEGER,identifier INTEGER,alert_handling INTEGER,expires INTEGER,language INTEGER,expired INTEGER DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1478
    return-void
.end method

.method private createCmasTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1447
    const-string v0, "CREATE TRIGGER Cmas_cleanup DELETE ON sms BEGIN   DELETE FROM cmas  WHERE sms_id=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1453
    const-string v0, "CREATE TRIGGER cmas_update_thread_alert_expired_on_update AFTER  UPDATE OF expired  ON cmas BEGIN   UPDATE threads SET alert_expired =     CASE (SELECT COUNT(*)          FROM cmas LEFT JOIN threads           ON threads._id = thread_id          WHERE new.expired = 0)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method private createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1522
    const-string v0, "CREATE TABLE canonical_addresses (_id INTEGER PRIMARY KEY AUTOINCREMENT,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1535
    const-string v0, "CREATE TABLE threads (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0,unread_count INTEGER DEFAULT 0,alert_expired INTEGER DEFAULT 1,reply_all INTEGER DEFAULT -1,group_snippet TEXT,message_type INTEGER DEFAULT 0,display_recipient_ids TEXT,translate_mode TEXT default \'off\', secret_mode INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1560
    const-string v0, "CREATE INDEX threadsIndex1 ON threads (date);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    const-string v0, "CREATE TABLE pending_msgs (_id INTEGER PRIMARY KEY,proto_type INTEGER,msg_id INTEGER,msg_type INTEGER,sim_slot2 INTEGER DEFAULT 0,err_type INTEGER,err_code INTEGER,retry_index INTEGER NOT NULL DEFAULT 0,due_time INTEGER,last_try INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1578
    const-string v0, "CREATE INDEX pending_msgsIndex1 ON pending_msgs (msg_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1580
    return-void
.end method

.method private createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1638
    const-string v0, "CREATE TRIGGER pdu_update_thread_type_on_update AFTER  UPDATE OF msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1645
    const-string v0, "CREATE TRIGGER sms_update_thread_type_on_update AFTER  UPDATE OF type  ON sms BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1651
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;    UPDATE threads SET unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND wpm.read = 0) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id            AND pdu.read = 0            AND (m_type = 128 OR m_type = 132 OR m_type = 130)           AND msg_box = 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_pdu AFTER DELETE ON pdu BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1678
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_when_update_pdu AFTER UPDATE OF thread_id ON pdu WHEN old.thread_id != new.thread_id BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1694
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_mms   AFTER UPDATE OF err_type ON pending_msgs   WHEN (OLD.err_type < 10 AND NEW.err_type >= 10)    OR (OLD.err_type >= 10 AND NEW.err_type < 10) BEGIN  UPDATE threads SET error =     CASE      WHEN NEW.err_type >= 10 THEN error + 1      ELSE error - 1    END   WHERE _id =   (SELECT DISTINCT thread_id    FROM pdu    WHERE _id = NEW.msg_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    const-string v0, "CREATE TRIGGER wpm_update_thread_type_on_update AFTER  UPDATE OF type  ON wpm BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wpm          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1733
    const-string v0, "CREATE TRIGGER wpm_update_thread_read_on_update AFTER  UPDATE OF read  ON wpm BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wpm          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;    UPDATE threads SET unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND wpm.read = 0) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id            AND pdu.read = 0            AND (m_type = 128 OR m_type = 132 OR m_type = 130)           AND msg_box = 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1741
    return-void
.end method

.method private createIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1077
    return-void
.end method

.method private createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1091
    const-string v0, "CREATE TABLE pdu (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,sim_slot INTEGER DEFAULT 0,sim_imsi TEXT,deletable INTEGER DEFAULT 0,hidden INTEGER DEFAULT 0,app_id INTEGER DEFAULT 0,msg_id INTEGER DEFAULT 0,callback_set INTEGER DEFAULT 0,reserved INTEGER DEFAULT 0,text_only INTEGER DEFAULT 0,spam_report INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1137
    const-string v0, "CREATE INDEX pduIndex1 ON pdu (thread_id,locked);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1140
    const-string v0, "CREATE TABLE addr (_id INTEGER PRIMARY KEY,msg_id INTEGER,contact_id INTEGER,address TEXT,type INTEGER,charset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1149
    const-string v0, "CREATE INDEX addrIndex1 ON addr (msg_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1152
    const-string v0, "CREATE TABLE part (_id INTEGER PRIMARY KEY AUTOINCREMENT,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1169
    const-string v0, "CREATE INDEX partIndex1 ON part (mid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1172
    const-string v0, "CREATE TABLE rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1175
    const-string v0, "CREATE TABLE drm (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method private createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1184
    const-string v0, "DROP TRIGGER IF EXISTS part_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1185
    const-string v0, "CREATE TRIGGER part_cleanup DELETE ON pdu BEGIN   DELETE FROM part  WHERE mid=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    const-string v0, "DROP TRIGGER IF EXISTS addr_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1193
    const-string v0, "CREATE TRIGGER addr_cleanup DELETE ON pdu BEGIN   DELETE FROM addr  WHERE msg_id=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1201
    const-string v0, "DROP TRIGGER IF EXISTS cleanup_delivery_and_read_report"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1202
    const-string v0, "CREATE TRIGGER cleanup_delivery_and_read_report AFTER DELETE ON pdu WHEN old.m_type=128 BEGIN   DELETE FROM pdu  WHERE (m_type=134    OR m_type=136)    AND m_id=old.m_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1213
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_insert_part"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    const-string v0, "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1216
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_update_part"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1217
    const-string v0, "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1219
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_delete_part"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1220
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END   WHERE _id IN    (SELECT DISTINCT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid       WHERE pdu._id=old.mid );  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1222
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_on_update_pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1223
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    const-string v0, "DROP TRIGGER IF EXISTS delete_mms_pending_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1228
    const-string v0, "CREATE TRIGGER delete_mms_pending_on_delete AFTER DELETE ON pdu BEGIN   DELETE FROM pending_msgs  WHERE msg_id=old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1236
    const-string v0, "DROP TRIGGER IF EXISTS delete_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1237
    const-string v0, "CREATE TRIGGER delete_mms_pending_on_update AFTER UPDATE ON pdu WHEN old.msg_box=4  AND new.msg_box!=4 BEGIN   DELETE FROM pending_msgs  WHERE msg_id=new._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1248
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1249
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_insert AFTER INSERT ON pdu WHEN new.m_type=130  OR new.m_type=135 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     sim_slot2,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,      new.sim_slot,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1274
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_update AFTER UPDATE ON pdu WHEN new.m_type=128  AND new.msg_box=4  AND old.msg_box!=4 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     sim_slot2,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,      new.sim_slot,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1299
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;    UPDATE threads SET unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND wpm.read = 0) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id            AND pdu.read = 0            AND (m_type = 128 OR m_type = 132 OR m_type = 130)           AND msg_box = 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1310
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1311
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete_mms   BEFORE DELETE ON pdu  WHEN OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1323
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1324
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1338
    const-string v0, "DROP TRIGGER IF EXISTS mms_words_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1339
    const-string v0, "CREATE TRIGGER mms_words_update AFTER UPDATE ON part BEGIN UPDATE words  SET index_text = NEW.text WHERE (source_id=NEW._id AND table_to_use=2);  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1343
    const-string v0, "DROP TRIGGER IF EXISTS mms_words_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1344
    const-string v0, "CREATE TRIGGER mms_words_delete AFTER DELETE ON part BEGIN DELETE FROM  words WHERE source_id = OLD._id AND table_to_use = 2; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1349
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method private createSmsDatabaseTriggersOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 3657
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;    UPDATE threads SET unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND wpm.read = 0) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id            AND pdu.read = 0            AND (m_type = 128 OR m_type = 132 OR m_type = 130)           AND msg_box = 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3666
    const-string v0, "CREATE TRIGGER sms_update_thread_type_on_update AFTER  UPDATE OF type  ON sms BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3671
    const-string v0, "CREATE TRIGGER sms_words_update AFTER UPDATE ON sms BEGIN UPDATE words  SET index_text = NEW.body WHERE (source_id=NEW._id AND table_to_use=1);  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3675
    const-string v0, "CREATE TRIGGER sms_words_delete AFTER DELETE ON sms BEGIN DELETE FROM   words WHERE source_id = OLD._id AND table_to_use = 1; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3680
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3692
    return-void
.end method

.method public static createSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2000
    const-string v0, "CREATE TRIGGER IF NOT EXISTS sms_words_delete AFTER DELETE ON sms BEGIN DELETE FROM   words WHERE source_id = OLD._id AND table_to_use = 1; END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2003
    const-string v0, "CREATE TRIGGER IF NOT EXISTS Cmas_cleanup DELETE ON sms BEGIN   DELETE FROM cmas  WHERE sms_id=old._id;END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER IF NOT EXISTS update_threads_message_type_on_delete_sms   AFTER DELETE ON sms  WHEN OLD.type >= 0 BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_DELETE_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id = OLD.thread_id; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2015
    return-void
.end method

.method private createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1356
    const-string v0, "CREATE TABLE sms (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0,error_code INTEGER DEFAULT -1,seen INTEGER DEFAULT 0,deletable INTEGER DEFAULT 0,sim_slot INTEGER DEFAULT 0,sim_imsi TEXT,hidden INTEGER DEFAULT 0,group_id INTEGER,group_type INTEGER,delivery_date INTEGER,app_id INTEGER DEFAULT 0,msg_id INTEGER DEFAULT 0,callback_number TEXT,reserved INTEGER DEFAULT 0,pri INTEGER DEFAULT 0,teleservice_id INTEGER DEFAULT 0,link_url TEXT,svc_cmd INTEGER DEFAULT 0,svc_cmd_content TEXT,roam_pending INTEGER DEFAULT 0,spam_report INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1403
    const-string v0, "CREATE TABLE raw (_id INTEGER PRIMARY KEY,date INTEGER,reference_number INTEGER,count INTEGER,sequence INTEGER,destination_port INTEGER,address TEXT,format TEXT,sim_slot INTEGER DEFAULT 0,pdu TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1416
    const-string v0, "CREATE TABLE incomplete_lms (_id INTEGER PRIMARY KEY,address TEXT,reference_number INTEGER,uri TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1423
    const-string v0, "CREATE TABLE attachments (sms_id INTEGER,content_url TEXT,offset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1432
    const-string v0, "CREATE TABLE sr_pending (reference_number INTEGER,action TEXT,data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method private createSpamFilterTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1988
    const-string v0, "CREATE TABLE IF NOT EXISTS spam_filter (_id INTEGER PRIMARY KEY AUTOINCREMENT,filter_type INTEGER,enable INTEGER,filter TEXT,criteria INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1994
    return-void
.end method

.method private createSpamMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1815
    const-string v0, "CREATE TABLE IF NOT EXISTS spam_pdu (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,sim_slot INTEGER DEFAULT 0,sim_imsi TEXT,deletable INTEGER DEFAULT 0,hidden INTEGER DEFAULT 0,app_id INTEGER DEFAULT 0,msg_id INTEGER DEFAULT 0,callback_set INTEGER DEFAULT 0,reserved INTEGER DEFAULT 0,text_only INTEGER DEFAULT 0,spam_report INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1862
    const-string v0, "CREATE INDEX IF NOT EXISTS spam_pduIndex1 ON spam_pdu (thread_id,locked);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1866
    const-string v0, "CREATE TABLE IF NOT EXISTS spam_addr (_id INTEGER PRIMARY KEY,msg_id INTEGER,contact_id INTEGER,address TEXT,type INTEGER,charset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1875
    const-string v0, "CREATE INDEX IF NOT EXISTS spam_addrIndex1 ON spam_addr (msg_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1879
    const-string v0, "CREATE TABLE IF NOT EXISTS spam_part (_id INTEGER PRIMARY KEY,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1896
    const-string v0, "CREATE INDEX IF NOT EXISTS spam_partIndex1 ON spam_part (mid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1900
    const-string v0, "CREATE TABLE IF NOT EXISTS spam_rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1903
    const-string v0, "CREATE TABLE IF NOT EXISTS spam_drm (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1906
    return-void
.end method

.method private createSpamMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1910
    const-string v0, "CREATE TRIGGER IF NOT EXISTS spam_part_cleanup DELETE ON spam_pdu BEGIN   DELETE FROM spam_part  WHERE mid=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1917
    const-string v0, "CREATE TRIGGER IF NOT EXISTS spam_addr_cleanup DELETE ON spam_pdu BEGIN   DELETE FROM spam_addr  WHERE msg_id=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1925
    const-string v0, "CREATE TRIGGER IF NOT EXISTS spam_cleanup_delivery_and_read_report AFTER DELETE ON spam_pdu WHEN old.m_type=128 BEGIN   DELETE FROM spam_pdu  WHERE (m_type=134    OR m_type=136)    AND m_id=old.m_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1935
    return-void
.end method

.method private createSpamSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1941
    const-string v0, "CREATE TABLE IF NOT EXISTS spam_sms (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0,error_code INTEGER DEFAULT -1,seen INTEGER DEFAULT 0,deletable INTEGER DEFAULT 0,sim_slot INTEGER DEFAULT 0,sim_imsi TEXT,hidden INTEGER DEFAULT 0,group_id INTEGER,group_type INTEGER,delivery_date INTEGER,app_id INTEGER DEFAULT 0,msg_id INTEGER DEFAULT 0,callback_number TEXT,reserved INTEGER DEFAULT 0,pri INTEGER DEFAULT 0,teleservice_id INTEGER DEFAULT 0,link_url TEXT,svc_cmd INTEGER DEFAULT 0,svc_cmd_content TEXT,spam_report INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1982
    return-void
.end method

.method private createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 1081
    :try_start_0
    const-string v0, "CREATE INDEX IF NOT EXISTS typeThreadIdIndex ON sms (type, thread_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_0
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    const-string v1, "TP/MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createThreadsMessageTypeTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_threads_message_type_on_update_sms   AFTER UPDATE OF type ON sms  WHEN OLD.type != NEW.type BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id = NEW.thread_id; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_threads_message_type_on_update_pdu   AFTER UPDATE OF msg_box ON pdu  WHEN OLD.msg_box != NEW.msg_box BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id = NEW.thread_id; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_threads_message_type_on_update_pending_msgs   AFTER UPDATE OF err_type ON pending_msgs  WHEN OLD.err_type != NEW.err_type BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   (SELECT DISTINCT thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    FROM pdu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    WHERE _id = NEW.msg_id); "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_threads_message_type_on_insert_sms   AFTER INSERT ON sms  WHEN NEW.type >= 0 BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id = NEW.thread_id; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_threads_message_type_on_insert_pdu   AFTER INSERT ON pdu  WHEN NEW.msg_box >= 0 BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_UPDATE_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id = NEW.thread_id; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_threads_message_type_on_insert_pending_msgs   AFTER INSERT ON pending_msgs  WHEN NEW.err_type >= 0 BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   (SELECT DISTINCT thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    FROM pdu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    WHERE _id = NEW.msg_id); "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_threads_message_type_on_delete_sms   AFTER DELETE ON sms  WHEN OLD.type >= 0 BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_DELETE_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id = OLD.thread_id; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER update_threads_message_type_on_delete_pdu   AFTER DELETE ON pdu  WHEN OLD.msg_box >= 0 BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->MESSAGE_TYPE_UPDATE_THREADS_ON_DELETE_TRIGGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  WHERE _id = OLD.thread_id; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "END;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1809
    return-void
.end method

.method private createThreadsSnippetTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1584
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1585
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1591
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1592
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id  AND (new.reserved = 0 OR (new.reserved = 1 AND new.type = 3));   UPDATE threads SET date = NULL        WHERE (threads._id = new.thread_id)           AND new.reserved > 0           AND 1 = (SELECT COUNT(sms._id) FROM sms WHERE thread_id = new.thread_id)           AND 0 = (SELECT COUNT(wpm._id) FROM wpm WHERE thread_id = new.thread_id)           AND 0 = (SELECT COUNT(pdu._id) FROM pdu WHERE thread_id = new.thread_id AND (m_type=132 OR m_type=130 OR m_type=128));   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1596
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1597
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_on_update AFTER  UPDATE OF date, sub  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1603
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1604
    const-string v0, "CREATE TRIGGER sms_update_thread_date_on_update AFTER  UPDATE OF body, date  ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1610
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1611
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)    , unread_count =    (SELECT count(*) FROM sms LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id   AND sms.read = 0 AND sms.type = 1) +    (SELECT count(*) FROM wpm LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id   AND wpm.read = 0) +    (SELECT count(*) FROM pdu LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id    AND pdu.read = 0    AND (m_type = 128 OR m_type = 132 OR m_type = 130)   AND msg_box = 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT substr(snippet,1,300) FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1624
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1625
    const-string v0, "CREATE TRIGGER wpm_update_thread_on_insert AFTER INSERT ON wpm BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wpm          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1629
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1630
    const-string v0, "CREATE TRIGGER wpm_update_thread_date_on_update AFTER  UPDATE OF date, body  ON wpm BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method private createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 1056
    :try_start_0
    const-string v0, "CREATE VIRTUAL TABLE words USING FTS3 (_id INTEGER PRIMARY KEY, index_text TEXT, source_id INTEGER, table_to_use INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1063
    const-string v0, "CREATE TRIGGER sms_words_update AFTER UPDATE ON sms BEGIN UPDATE words  SET index_text = NEW.body WHERE (source_id=NEW._id AND table_to_use=1);  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    const-string v0, "CREATE TRIGGER sms_words_delete AFTER DELETE ON sms BEGIN DELETE FROM   words WHERE source_id = OLD._id AND table_to_use = 1; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_0
    return-void

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    const-string v1, "TP/MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating words table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createWpmTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1485
    const-string v0, "CREATE TABLE wpm (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,body TEXT,date INTEGER,date_sent INTEGER DEFAULT 0,read INTEGER DEFAULT 0,type INTEGER,locked INTEGER DEFAULT 0,href TEXT,si_id TEXT,created INTEGER,si_expires INTEGER,action INTEGER,seen INTEGER DEFAULT 0,deletable INTEGER DEFAULT 0,hidden INTEGER DEFAULT 0,sim_slot INTEGER DEFAULT 0,sim_imsi TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1506
    return-void
.end method

.method private deleteCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 4620
    const-string v0, "DROP TRIGGER IF EXISTS Cmas_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4621
    const-string v0, "DROP TRIGGER IF EXISTS cmas_update_thread_alert_expired_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4622
    const-string v0, "DROP TABLE IF EXISTS cmas"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4623
    return-void
.end method

.method public static deleteOneGroupSms(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 893
    const/4 v8, -0x1

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 896
    const-string v1, "sms"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 898
    if-eqz v1, :cond_2

    .line 899
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 902
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 906
    :goto_1
    const-string v1, "sms"

    invoke-virtual {p0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 907
    if-lez v0, :cond_0

    .line 909
    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 911
    :cond_0
    return v1

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1
.end method

.method public static deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 871
    const/4 v8, -0x1

    .line 873
    const-string v1, "sms"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 875
    if-eqz v1, :cond_2

    .line 876
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 879
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 883
    :goto_1
    const-string v1, "sms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 884
    if-lez v0, :cond_0

    .line 886
    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 888
    :cond_0
    return v1

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1
.end method

.method public static deleteOneWpm(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 917
    const/4 v8, -0x1

    .line 919
    const-string v1, "wpm"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 921
    if-eqz v1, :cond_2

    .line 922
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 925
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 929
    :goto_1
    const-string v1, "wpm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 930
    if-lez v0, :cond_0

    .line 932
    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 934
    :cond_0
    return v1

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1
.end method

.method private deleteSmsDatabaseTriggersOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3644
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "Drop triggers after Onupgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    const-string v0, "DROP TRIGGER IF EXISTS update_thread_on_update_sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3647
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3648
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_type_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3649
    const-string v0, "DROP TRIGGER IF EXISTS sms_words_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3650
    const-string v0, "DROP TRIGGER IF EXISTS sms_words_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3651
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_update_sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3652
    return-void
.end method

.method private deleteWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4627
    const-string v0, "DROP TRIGGER IF EXISTS sms_words_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4628
    const-string v0, "DROP TRIGGER IF EXISTS sms_words_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4629
    const-string v0, "DROP TABLE IF EXISTS words"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4630
    return-void
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2493
    const-string v0, "DROP TABLE IF EXISTS canonical_addresses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2494
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2495
    const-string v0, "DROP TABLE IF EXISTS pending_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2496
    const-string v0, "DROP TABLE IF EXISTS sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2498
    const-string v0, "DROP TABLE IF EXISTS mychannels"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2500
    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2502
    const-string v0, "DROP TABLE IF EXISTS incomplete_lms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2504
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2505
    const-string v0, "DROP TABLE IF EXISTS thread_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2506
    const-string v0, "DROP TABLE IF EXISTS sr_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2507
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2508
    const-string v0, "DROP TABLE IF EXISTS addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2509
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2510
    const-string v0, "DROP TABLE IF EXISTS rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2511
    const-string v0, "DROP TABLE IF EXISTS drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2514
    const-string v0, "DROP TABLE IF EXISTS wpm"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2517
    const-string v0, "DROP TABLE IF EXISTS cmas"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2520
    const-string v0, "DROP TABLE IF EXISTS spam_sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2521
    const-string v0, "DROP TABLE IF EXISTS spam_pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2522
    const-string v0, "DROP TABLE IF EXISTS spam_addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2523
    const-string v0, "DROP TABLE IF EXISTS spam_part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2524
    const-string v0, "DROP TABLE IF EXISTS spam_rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2525
    const-string v0, "DROP TABLE IF EXISTS spam_drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2526
    return-void
.end method

.method public static dropSmsTableDeleteTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2018
    const-string v0, "DROP TRIGGER IF EXISTS sms_words_delete;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2019
    const-string v0, "DROP TRIGGER IF EXISTS Cmas_cleanup;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2020
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_delete_sms;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2021
    return-void
.end method

.method private findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;

    .prologue
    .line 2855
    const/4 v2, 0x0

    .line 2856
    .local v2, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pragma table_info("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2858
    .local v3, "rows":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    .line 2859
    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2860
    .local v0, "columnIdx":I
    const/4 v1, 0x0

    .line 2863
    .local v1, "columnValue":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2864
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2866
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 2867
    const/4 v2, 0x1

    goto :goto_0

    .line 2871
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2875
    .end local v0    # "columnIdx":I
    .end local v1    # "columnValue":Ljava/lang/String;
    :cond_2
    return v2

    .line 2871
    .restart local v0    # "columnIdx":I
    .restart local v1    # "columnValue":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 568
    const-class v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 571
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3817
    .line 3818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT sql FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3820
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3821
    if-eqz v1, :cond_2

    .line 3823
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3824
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3825
    if-eqz v2, :cond_0

    const-string v0, "AUTOINCREMENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3826
    :cond_0
    const-string v3, "TP/MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MmsSmsDb] tableName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasAutoIncrement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3830
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3833
    :cond_2
    return v0

    .line 3830
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 986
    const-string v0, "words"

    .line 988
    const-string v1, "sms"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "body"

    aput-object v0, v2, v8

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 997
    if-eqz v1, :cond_1

    .line 998
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 999
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1001
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1003
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1004
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1006
    const-string v6, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    const-string v6, "index_text"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v2, "source_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1009
    const-string v2, "table_to_use"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1010
    const-string v2, "words"

    const-string v4, "index_text"

    invoke-virtual {p1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1014
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 1015
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1014
    :cond_1
    if-eqz v1, :cond_2

    .line 1015
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1021
    :cond_2
    const-string v5, "part"

    new-array v6, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v6, v9

    const-string v0, "text"

    aput-object v0, v6, v8

    const-string v7, "ct = \'text/plain\'"

    move-object v4, p1

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1030
    if-eqz v1, :cond_4

    .line 1031
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1032
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1033
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1034
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1036
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1037
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1039
    const-string v5, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1040
    const-string v5, "index_text"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v4, "source_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1042
    const-string v2, "table_to_use"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    const-string v2, "words"

    const-string v3, "index_text"

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1047
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 1048
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1047
    :cond_4
    if-eqz v1, :cond_5

    .line 1048
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1052
    :cond_5
    return-void
.end method

.method private recoveryReservedMessageForUpgrade_ForKorVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 4468
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "recoveryReservedMessageForUpgrade_ForKorVersion57() enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4472
    :try_start_0
    const-string v0, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4473
    const-string v0, "reserved"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4474
    const-string v0, "sms"

    const-string v2, "type=50"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4482
    :goto_0
    :try_start_1
    const-string v0, "msg_box"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4483
    const-string v0, "reserved"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4484
    const-string v0, "pdu"

    const-string v2, "msg_box=50"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4488
    :goto_1
    return-void

    .line 4475
    :catch_0
    move-exception v0

    .line 4476
    const-string v2, "TP/MmsSmsDatabaseHelper"

    const-string v3, "recoveryReservedMessageForUpgrade_ForKorVersion57(): sms recovery error occured"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 4485
    :catch_1
    move-exception v0

    .line 4486
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "recoveryReservedMessageForUpgrade_ForKorVersion57(): mms recovery error occured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private recoverySpamMessageForUpgrade_ForKorVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 25

    .prologue
    .line 4352
    const-string v2, "TP/MmsSmsDatabaseHelper"

    const-string v3, "recoverySpamMessageForUpgrade_ForKorVersion57() enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    :try_start_0
    const-string v2, "INSERT INTO spam_sms (address, date, read, seen, type, service_center, body) SELECT address, date, read, seen, 1, service_center, body FROM sms WHERE type=44"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4357
    const-string v2, "DELETE FROM sms WHERE type=44"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4364
    :goto_0
    const/4 v10, 0x0

    .line 4366
    :try_start_1
    const-string v3, "pdu"

    const/4 v4, 0x0

    const-string v5, "msg_box=44"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 4367
    if-eqz v8, :cond_1

    .line 4368
    :try_start_2
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4369
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4370
    const-string v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4371
    const-string v2, "m_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4372
    const-string v2, "sub"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4373
    const-string v2, "sub_cs"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4374
    const-string v2, "ct_t"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 4375
    const-string v2, "exp"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4376
    const-string v2, "m_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 4377
    const-string v2, "m_size"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4378
    const-string v2, "tr_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 4379
    const-string v2, "retr_st"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 4380
    const-string v2, "d_rpt"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 4381
    const-string v2, "seen"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4382
    const-string v2, "hidden"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 4388
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 4390
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4391
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    .line 4393
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 4394
    const-string v2, "TP/MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu textRows.moveToNext() pdu_id:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    const-string v2, "date"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4397
    const-string v2, "msg_box"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4398
    const-string v2, "read"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4399
    const-string v2, "m_id"

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4400
    const-string v2, "sub"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4401
    const-string v2, "sub_cs"

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4402
    const-string v2, "ct_t"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4403
    const-string v2, "exp"

    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4404
    const-string v2, "m_type"

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4405
    const-string v2, "m_size"

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4406
    const-string v2, "tr_id"

    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4407
    const-string v2, "retr_st"

    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4408
    const-string v2, "d_rpt"

    move/from16 v0, v21

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4409
    const-string v2, "seen"

    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4410
    const-string v2, "hidden"

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4413
    const-string v2, "spam_pdu"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 4416
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->recoverySpamMessageForUpgrade_ForKorVersion57_part(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 4419
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->recoverySpamMessageForUpgrade_ForKorVersion57_addr(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 4422
    const-string v2, "pdu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 4425
    :catch_0
    move-exception v2

    move-object v3, v8

    .line 4426
    :goto_2
    :try_start_3
    const-string v4, "TP/MmsSmsDatabaseHelper"

    const-string v5, "recoverySpamMessageForUpgradeKorVersion57(): mms recovery error occured"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    const-string v4, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4429
    if-eqz v3, :cond_0

    .line 4430
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4434
    :cond_0
    :goto_3
    return-void

    .line 4358
    :catch_1
    move-exception v2

    .line 4359
    const-string v3, "TP/MmsSmsDatabaseHelper"

    const-string v4, "recoverySpamMessageForUpgrade_ForKorVersion57(): sms recovery error occured"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 4429
    :cond_1
    if-eqz v8, :cond_0

    .line 4430
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 4429
    :catchall_0
    move-exception v2

    move-object v8, v10

    :goto_4
    if-eqz v8, :cond_2

    .line 4430
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4431
    :cond_2
    throw v2

    .line 4429
    :catchall_1
    move-exception v2

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v8, v3

    goto :goto_4

    .line 4425
    :catch_2
    move-exception v2

    move-object v3, v10

    goto :goto_2
.end method

.method private recoverySpamMessageForUpgrade_ForKorVersion57_addr(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 3

    .prologue
    .line 4455
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO spam_addr (msg_id, contact_id, address, type, charset) SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contact_id, address, type, charset FROM addr WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msg_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM addr WHERE msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4462
    :goto_0
    return-void

    .line 4458
    :catch_0
    move-exception v0

    .line 4459
    const-string v1, "TP/MmsSmsDatabaseHelper"

    const-string v2, "recoverySpamMessageForUpgrade_ForKorVersion57_addr exception occured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private recoverySpamMessageForUpgrade_ForKorVersion57_part(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 3

    .prologue
    .line 4441
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO spam_part (mid, seq, ct, name, chset, cd, fn, cid, cl, ctt_s, ctt_t, _data, text) SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seq, ct, name, chset, cd, fn, cid, cl, ctt_s, ctt_t, _data, text FROM part WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM part WHERE mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4448
    :goto_0
    return-void

    .line 4444
    :catch_0
    move-exception v0

    .line 4445
    const-string v1, "TP/MmsSmsDatabaseHelper"

    const-string v2, "recoverySpamMessageForUpgrade_ForKorVersion57_part exception occured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private resetTriggerForMultiDraft(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 4577
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "resetTriggerForMultiDraft start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_type_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4579
    const-string v0, "CREATE TRIGGER pdu_update_thread_type_on_update AFTER  UPDATE OF msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4583
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_type_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4584
    const-string v0, "CREATE TRIGGER sms_update_thread_type_on_update AFTER  UPDATE OF type  ON sms BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4588
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_type_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4589
    const-string v0, "CREATE TRIGGER wpm_update_thread_type_on_update AFTER  UPDATE OF type  ON wpm BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wpm          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4593
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4594
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4598
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4599
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id  AND (new.reserved = 0 OR (new.reserved = 1 AND new.type = 3));   UPDATE threads SET date = NULL        WHERE (threads._id = new.thread_id)           AND new.reserved > 0           AND 1 = (SELECT COUNT(sms._id) FROM sms WHERE thread_id = new.thread_id)           AND 0 = (SELECT COUNT(wpm._id) FROM wpm WHERE thread_id = new.thread_id)           AND 0 = (SELECT COUNT(pdu._id) FROM pdu WHERE thread_id = new.thread_id AND (m_type=132 OR m_type=130 OR m_type=128));   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4602
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4603
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)    , unread_count =    (SELECT count(*) FROM sms LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id   AND sms.read = 0 AND sms.type = 1) +    (SELECT count(*) FROM wpm LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id   AND wpm.read = 0) +    (SELECT count(*) FROM pdu LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id    AND pdu.read = 0    AND (m_type = 128 OR m_type = 132 OR m_type = 130)   AND msg_box = 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT substr(snippet,1,300) FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4614
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4615
    const-string v0, "CREATE TRIGGER wpm_update_thread_on_insert AFTER INSERT ON wpm BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wpm          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4616
    return-void
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 836
    const-string v0, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms  UNION SELECT DISTINCT thread_id FROM wpm  UNION SELECT DISTINCT thread_id FROM pdu )"

    .line 844
    invoke-virtual {p0, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 845
    if-eqz v1, :cond_1

    .line 847
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 851
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 855
    :cond_1
    const-string v0, "threads"

    const-string v1, "_id NOT IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM wpm where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)"

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 863
    const-string v0, "canonical_addresses"

    const-string v1, "(SELECT count(recipient_ids) FROM threads where \' \'||recipient_ids||\' \' like \'% \'||canonical_addresses._id||\' %\') = 0"

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method public static updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 779
    const-string v0, " locked = 1 "

    .line 785
    if-nez p1, :cond_0

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WHERE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms  UNION SELECT DISTINCT thread_id FROM wpm  UNION SELECT DISTINCT thread_id FROM pdu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_0
    const-string v1, "TP/MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllThreads query:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 806
    if-eqz v1, :cond_2

    .line 808
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 812
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WHERE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 812
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 816
    :cond_2
    const-string v0, "threads"

    const-string v1, "_id NOT IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM wpm where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)"

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 824
    const-string v0, "canonical_addresses"

    const-string v1, "(SELECT count(recipient_ids) FROM threads where \' \'||recipient_ids||\' \' like \'% \'||canonical_addresses._id||\' %\') = 0"

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 833
    return-void
.end method

.method private updateCmasTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1440
    const-string v0, "DROP TRIGGER IF EXISTS Cmas_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1441
    const-string v0, "DROP TRIGGER IF EXISTS cmas_update_thread_alert_expired_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1442
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCmasTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1443
    return-void
.end method

.method private updatePartUpdateTheradOnDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 4238
    const-string v0, "drop trigger update_threads_on_delete_part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4239
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END   WHERE _id IN    (SELECT DISTINCT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid       WHERE pdu._id=old.mid );  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4240
    return-void
.end method

.method public static updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "thread_id"    # J

    .prologue
    .line 576
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 577
    return-void
.end method

.method public static updateThread(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 580
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    .line 581
    invoke-static {p0, v1, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    if-eqz p3, :cond_2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT recipient_ids FROM threads WHERE _id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " LIMIT 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 595
    if-eqz v3, :cond_6

    .line 597
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 598
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 601
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 609
    :goto_2
    const-string v3, "threads"

    const-string v4, "_id = ? AND _id NOT IN          (SELECT thread_id FROM sms where thread_id NOT NULL            UNION SELECT thread_id FROM wpm where thread_id NOT NULL            UNION SELECT thread_id FROM pdu where thread_id NOT NULL)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 618
    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    .line 620
    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 621
    const-string v5, "canonical_addresses"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canonical_addresses._id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND (SELECT count(recipient_ids) FROM threads where \' \'||recipient_ids||\' \' like \'% "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " %\') = 0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 601
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 633
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "        AND sms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != 3) + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "     (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "      ON threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "      WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "      ) + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "     (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "      ON threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "      WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "        AND (m_type=132 OR m_type=130 OR m_type=128)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "        AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "msg_box"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != 3) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   , unread_count = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       (SELECT count(*) FROM sms LEFT JOIN threads "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       ON threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "           AND sms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "read"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 0 AND sms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 1) + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       (SELECT count(*) FROM wpm LEFT JOIN threads "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       ON threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "           AND wpm."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "read"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 0) + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       (SELECT count(*) FROM pdu LEFT JOIN threads "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       ON threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "           AND pdu."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "read"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "           AND (m_type = 128 OR m_type = 132 OR m_type = 130)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "           AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "msg_box"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 1) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   , read = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       CASE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         (SELECT count(*) FROM sms LEFT JOIN threads "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         ON threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "             AND sms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "read"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 0 AND sms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 1) + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         (SELECT count(*) FROM wpm LEFT JOIN threads "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         ON threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "             AND wpm."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "read"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 0) + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         (SELECT count(*) FROM pdu LEFT JOIN threads "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         ON threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thread_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "             AND pdu."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "read"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "             AND (m_type = 128 OR m_type = 132 OR m_type = 130)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "             AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "msg_box"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = 1) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "       WHEN 0 THEN 1 ELSE 0 END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  WHERE threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  UPDATE threads  SET  date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu  WHERE (m_type=132  OR    m_type=130  OR    m_type=128 ) AND (reserved=0 OR (reserved=1 AND msg_box=3))         UNION SELECT date, thread_id FROM wpm         UNION SELECT date, thread_id FROM sms WHERE reserved=0)     WHERE thread_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  snippet ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "    (SELECT substr(snippet,1,500) FROM"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "        (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  WHERE (m_type=132  OR    m_type=130  OR    m_type=128 ) AND (reserved=0 OR (reserved=1 AND msg_box=3))"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         UNION SELECT date, body AS snippet, thread_id FROM wpm"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         UNION SELECT date, body AS snippet, thread_id FROM sms WHERE reserved=0)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "     WHERE thread_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  snippet_cs ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "    (SELECT snippet_cs FROM"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  WHERE (m_type=132  OR    m_type=130  OR    m_type=128 ) AND (reserved=0 OR (reserved=1 AND msg_box=3))"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         UNION SELECT date, 0 AS snippet_cs, thread_id FROM wpm"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "         UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms WHERE reserved=0)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "     WHERE thread_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ORDER BY date DESC LIMIT 1)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  WHERE threads._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT thread_id FROM sms WHERE type=5 AND thread_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " LIMIT 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 738
    if-eqz v3, :cond_4

    .line 740
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 742
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 746
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT error FROM threads WHERE _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 748
    if-eqz v1, :cond_0

    .line 750
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 751
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 752
    if-eq v2, v0, :cond_3

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE threads SET error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WHERE _id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 759
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 742
    :catchall_1
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 759
    :catchall_2
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4028
    const-string v0, "UPDATE threads SET has_attachment=1 WHERE _id IN   (SELECT DISTINCT pdu.thread_id FROM part    JOIN pdu ON pdu._id=part.mid    WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4032
    return-void
.end method

.method private updateThreadsMessageTypeTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 4560
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "updateThreadsMessageTypeTriggers start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_update_pending_msgs;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4562
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_insert_pending_msgs;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4563
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_update_sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4564
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_update_pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4565
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_insert_sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4566
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_insert_pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4567
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_delete_sms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4568
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_message_type_on_delete_pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4569
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsMessageTypeTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4570
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "updateThreadsMessageTypeTriggers end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    return-void
.end method

.method private updateThreadsOnUpdatePdu(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 4243
    const-string v0, "drop trigger update_threads_on_update_pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4244
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4245
    return-void
.end method

.method private updateThreadsUnreadCountColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 4039
    const-string v0, " UPDATE threads SET unread_count =    (SELECT count(*) FROM sms    WHERE threads._id = thread_id   AND sms.read = 0 AND sms.type = 1)    + (SELECT count(*) FROM wpm    WHERE threads._id = thread_id   AND wpm.read = 0)    + (SELECT count(*) FROM pdu    WHERE threads._id = thread_id   AND pdu.read = 0 AND msg_box = 1    AND (m_type = 128 OR m_type = 132 OR m_type = 130))  WHERE _id in  (SELECT thread_id FROM sms where sms.read = 0)  OR _id in (select thread_id from pdu where pdu.read = 0); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4040
    return-void
.end method

.method private updateThreadsUnreadCountTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 4045
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4046
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4051
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4052
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id  AND (new.reserved = 0 OR (new.reserved = 1 AND new.type = 3));   UPDATE threads SET date = NULL        WHERE (threads._id = new.thread_id)           AND new.reserved > 0           AND 1 = (SELECT COUNT(sms._id) FROM sms WHERE thread_id = new.thread_id)           AND 0 = (SELECT COUNT(wpm._id) FROM wpm WHERE thread_id = new.thread_id)           AND 0 = (SELECT COUNT(pdu._id) FROM pdu WHERE thread_id = new.thread_id AND (m_type=132 OR m_type=130 OR m_type=128));   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4055
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4057
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_on_update AFTER  UPDATE OF date, sub  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4063
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_type_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4065
    const-string v0, "CREATE TRIGGER pdu_update_thread_type_on_update AFTER  UPDATE OF msg_box  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4071
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_type_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4073
    const-string v0, "CREATE TRIGGER sms_update_thread_type_on_update AFTER  UPDATE OF type  ON sms BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4078
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4079
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4080
    const-string v0, "CREATE TRIGGER sms_update_thread_date_on_update AFTER  UPDATE OF body, date  ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4086
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4088
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)    , unread_count =    (SELECT count(*) FROM sms LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id   AND sms.read = 0 AND sms.type = 1) +    (SELECT count(*) FROM wpm LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id   AND wpm.read = 0) +    (SELECT count(*) FROM pdu LEFT JOIN threads    ON threads._id = thread_id   WHERE thread_id = old.thread_id    AND pdu.read = 0    AND (m_type = 128 OR m_type = 132 OR m_type = 130)   AND msg_box = 1)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT substr(snippet,1,300) FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4100
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4102
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;    UPDATE threads SET unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND wpm.read = 0) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id            AND pdu.read = 0            AND (m_type = 128 OR m_type = 132 OR m_type = 130)           AND msg_box = 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4111
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4113
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;    UPDATE threads SET unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id           AND wpm.read = 0) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id            AND pdu.read = 0            AND (m_type = 128 OR m_type = 132 OR m_type = 130)           AND msg_box = 1)   WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4120
    return-void
.end method

.method private upgradeAddressTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3885
    const-string v0, "canonical_addresses"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3886
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeAddressTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :goto_0
    return-void

    .line 3889
    :cond_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeAddressTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    const-string v0, "CREATE TABLE canonical_addresses_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3897
    const-string v0, "INSERT INTO canonical_addresses_temp SELECT * from canonical_addresses;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3898
    const-string v0, "DROP TABLE canonical_addresses;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3899
    const-string v0, "ALTER TABLE canonical_addresses_temp RENAME TO canonical_addresses;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeDatabaseForCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3552
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "Inside upgradeDatabaseForCmas"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    const-string v0, "sms"

    const-string v1, "service_category"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3556
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion59  copy cmas fields from sms table to cmas table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    const-string v0, "INSERT INTO cmas (sms_id, thread_id, service_category, category, response_type, severity, urgency, certainty, identifier, alert_handling, expires, language, expired) SELECT _id, thread_id, service_category, category, response_type, severity, urgency,certainty, identifier,alert_handling,expires,language,cmas_sms_expired FROM sms WHERE service_category IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3566
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->UpdateSmsTableDiffColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3567
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "After UpgradeSmsTableDiffColumn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    const-string v0, "UPDATE threads SET type = 100 WHERE  _id in (SELECT T._id FROM threads T, canonical_addresses  C WHERE T.recipient_ids = C._id and C.address = \'#CMAS#Presidential\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3572
    const-string v0, "UPDATE threads SET type = 101 WHERE  _id in (SELECT T._id FROM threads T, canonical_addresses  C WHERE T.recipient_ids = C._id and C.address = \'#CMAS#Extreme\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3574
    const-string v0, "UPDATE threads SET type = 102 WHERE  _id in (SELECT T._id FROM threads T, canonical_addresses  C WHERE T.recipient_ids = C._id and C.address = \'#CMAS#Severe\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3576
    const-string v0, "UPDATE threads SET type = 103 WHERE  _id in (SELECT T._id FROM threads T, canonical_addresses  C WHERE T.recipient_ids = C._id and C.address = \'#CMAS#Amber\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3579
    const-string v0, "UPDATE threads SET type = 104 WHERE  _id in (SELECT T._id FROM threads T, canonical_addresses  C WHERE T.recipient_ids = C._id and C.address = \'#CMAS#Test\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3584
    const-string v0, "UPDATE cmas SET expired = 0 WHERE thread_id IN (SELECT _id FROM threads WHERE type = 100 AND cmas_expired =0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3586
    const-string v0, "UPDATE threads SET alert_expired = 0 WHERE _id IN (SELECT _id FROM threads WHERE type = 100 AND cmas_expired =0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3589
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "After Upgrade thread type for cmas"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    return-void

    .line 3562
    :cond_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion59 CMAS table not Updated!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2633
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2634
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2644
    return-void
.end method

.method private upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2647
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2648
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2649
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2650
    return-void
.end method

.method private upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2654
    const-string v0, "ALTER TABLE threads ADD COLUMN has_attachment INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2656
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2659
    const-string v0, "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2660
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END   WHERE _id IN    (SELECT DISTINCT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid       WHERE pdu._id=old.mid );  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2661
    return-void
.end method

.method private upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2664
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2667
    const-string v0, "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2668
    return-void
.end method

.method private upgradeDatabaseToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2672
    const-string v0, "ALTER TABLE sms ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2675
    const-string v0, "ALTER TABLE pdu ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2676
    return-void
.end method

.method private upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2681
    const-string v0, "ALTER TABLE part ADD COLUMN text TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2683
    const-string v1, "part"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "_data"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v3, "text"

    aput-object v3, v2, v0

    const-string v3, "ct = \'text/plain\' OR ct == \'application/smil\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2691
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2693
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2694
    if-eqz v3, :cond_2

    .line 2695
    const-string v0, "_data"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2701
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2702
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2703
    if-eqz v0, :cond_0

    .line 2706
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2707
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v6, v6, [B

    .line 2708
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    .line 2709
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v7, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 2710
    const-string v6, "UPDATE part SET _data = NULL, text = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v9

    invoke-virtual {p1, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2713
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2718
    if-eqz v1, :cond_0

    .line 2720
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2721
    :catch_0
    move-exception v0

    .line 2723
    :try_start_4
    const-string v1, "TP/MmsSmsDatabaseHelper"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2732
    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2733
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2735
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2736
    :catch_1
    move-exception v2

    .line 2737
    const-string v5, "TP/MmsSmsDatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to clean up old mms file for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2714
    :catch_2
    move-exception v0

    move-object v1, v4

    .line 2716
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2718
    if-eqz v1, :cond_0

    .line 2720
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 2721
    :catch_3
    move-exception v0

    .line 2723
    :try_start_8
    const-string v1, "TP/MmsSmsDatabaseHelper"

    const-string v6, "IOException caught while closing stream"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2718
    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_1

    .line 2720
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2724
    :cond_1
    :goto_4
    :try_start_a
    throw v0

    .line 2721
    :catch_4
    move-exception v1

    .line 2723
    const-string v4, "TP/MmsSmsDatabaseHelper"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2730
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2732
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2733
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2735
    :try_start_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    .line 2736
    :catch_5
    move-exception v1

    .line 2737
    const-string v4, "TP/MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to clean up old mms file for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2740
    :cond_3
    if-eqz v3, :cond_4

    .line 2741
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2744
    :cond_4
    return-void

    .line 2740
    :cond_5
    if-eqz v3, :cond_6

    .line 2741
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 2718
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 2714
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method private upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2747
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2750
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2751
    return-void
.end method

.method private upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2755
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->addThreadsUnreadCountColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2756
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsUnreadCountColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2757
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsUnreadCountTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2760
    return-void
.end method

.method private upgradeDatabaseToVersion49(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2764
    const-string v0, "ALTER TABLE sms ADD COLUMN error_code INTEGER DEFAULT -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2765
    return-void
.end method

.method private upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 2768
    const-string v0, "ALTER TABLE sms add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2769
    const-string v0, "ALTER TABLE pdu add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2774
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2775
    const-string v1, "seen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2776
    const-string v1, "sms"

    const-string v2, "read=1"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2777
    const-string v2, "TP/MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows in sms table to have READ=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    const-string v1, "pdu"

    const-string v2, "read=1"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2780
    const-string v1, "TP/MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rows in pdu table to have READ=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2785
    :goto_0
    return-void

    .line 2782
    :catch_0
    move-exception v0

    .line 2783
    const-string v1, "TP/MmsSmsDatabaseHelper"

    const-string v2, "[MmsSmsDb] upgradeDatabaseToVersion51 caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2788
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2791
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2798
    return-void
.end method

.method private upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2801
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->addIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2804
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updatePartUpdateTheradOnDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2805
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsOnUpdatePdu(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2808
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsUnreadCountColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2809
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsUnreadCountTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2810
    return-void
.end method

.method private upgradeDatabaseToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 2814
    const-string v0, "ALTER TABLE sms ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2817
    const-string v0, "ALTER TABLE pdu ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2820
    const-string v0, "ALTER TABLE wpm ADD COLUMN date_sent INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2825
    return-void
.end method

.method private upgradeDatabaseToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2829
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion56 start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    const-string v0, "sms"

    const-string v1, "pri"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2832
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion56 Column pri Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :goto_0
    const-string v0, "sms"

    const-string v1, "reserved"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2838
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion56 Column reserved Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :goto_1
    const-string v0, "pdu"

    const-string v1, "reserved"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2844
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion56 Column reserved Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :goto_2
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion56 end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    return-void

    .line 2834
    :cond_0
    const-string v0, "ALTER TABLE sms ADD COLUMN pri INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 2840
    :cond_1
    const-string v0, "ALTER TABLE sms ADD COLUMN reserved INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 2846
    :cond_2
    const-string v0, "ALTER TABLE pdu ADD COLUMN reserved INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private upgradeDatabaseToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 2881
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->addUpgradeDiffColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2882
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2885
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2886
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseForCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2887
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteSmsDatabaseTriggersOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2888
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsDatabaseTriggersOnUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2892
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsSnippetTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2893
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsMessageTypeTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2894
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateCmasTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2896
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableBlackList:Z

    if-eqz v0, :cond_1

    .line 2897
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSpamMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2898
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSpamSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2899
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSpamMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2900
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSpamFilterTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2905
    :cond_1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2906
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SHW-M250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SHV-E110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SHV-E120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SHV-E160"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2911
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion57_ForKOR_KtOma(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2917
    :cond_3
    :goto_0
    return-void

    .line 2913
    :catch_0
    move-exception v0

    .line 2914
    const-string v1, "TP/MmsSmsDatabaseHelper"

    const-string v2, "[MmsSmsDb] upgradeDatabaseToVersion57(ForKOR_ktOma) caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion57_ForKOR_KtOma(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 4303
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsUnreadCountTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4305
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4306
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_pdu AFTER DELETE ON pdu BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4310
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_when_update_pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4311
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_when_update_pdu AFTER UPDATE OF thread_id ON pdu WHEN old.thread_id != new.thread_id BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4315
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4316
    const-string v0, "CREATE TRIGGER wpm_update_thread_on_insert AFTER INSERT ON wpm BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wpm          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4319
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4320
    const-string v0, "CREATE TRIGGER wpm_update_thread_date_on_update AFTER  UPDATE OF date, body  ON wpm BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4323
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_type_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4324
    const-string v0, "CREATE TRIGGER wpm_update_thread_type_on_update AFTER  UPDATE OF type  ON wpm BEGIN  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wpm          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4329
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->recoverySpamMessageForUpgrade_ForKorVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4334
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->recoveryReservedMessageForUpgrade_ForKorVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4338
    const-string v0, "DROP TABLE IF EXISTS domain;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4339
    const-string v0, "DROP TABLE IF EXISTS phrase;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4340
    const-string v0, "DROP TABLE IF EXISTS reservationMsgExtraInfo;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4341
    const-string v0, "DROP TABLE IF EXISTS spam;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4345
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->convertStringEncodingForUpgrade_ForKorVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4346
    return-void
.end method

.method private upgradeDatabaseToVersion58(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2921
    const-string v0, "sms"

    const-string v1, "pri"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2922
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion58 Sms.pri Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :goto_0
    const-string v0, "pdu"

    const-string v1, "pri"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2929
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion58 Mms.pri Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    :goto_1
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableBlackList:Z

    if-eqz v0, :cond_0

    .line 2935
    const-string v0, "spam_sms"

    const-string v1, "pri"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2936
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion58 Spam Sms.pri Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :goto_2
    const-string v0, "spam_pdu"

    const-string v1, "pri"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2942
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion58 Spam Mms.pri Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_0
    :goto_3
    return-void

    .line 2924
    :cond_1
    const-string v0, "ALTER TABLE sms ADD COLUMN pri INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 2931
    :cond_2
    const-string v0, "ALTER TABLE pdu ADD COLUMN pri INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 2938
    :cond_3
    const-string v0, "ALTER TABLE spam_sms ADD COLUMN pri INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    .line 2944
    :cond_4
    const-string v0, "ALTER TABLE spam_pdu ADD COLUMN pri INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private upgradeDatabaseToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2950
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion59 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    const-string v0, "threads"

    const-string v1, "display_recipient_ids"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2952
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion59 threads.display_recipient_ids Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :goto_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion59 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    return-void

    .line 2954
    :cond_0
    const-string v0, "ALTER TABLE threads ADD COLUMN display_recipient_ids Text"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2955
    const-string v0, "UPDATE threads SET display_recipient_ids=recipient_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2962
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion60 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsSnippetTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2964
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion60 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    return-void
.end method

.method private upgradeDatabaseToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 2969
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion61 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const/4 v0, 0x0

    .line 2973
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2974
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SHV-E230"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SHW-M480"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 2976
    :cond_0
    const/4 v0, 0x1

    .line 2982
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableMultiDraftMsgBox:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 2984
    :cond_2
    const-string v0, "threads"

    const-string v1, "display_recipient_ids"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2985
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion61 threads.display_recipient_ids Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsMessageTypeTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2993
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2994
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_on_update AFTER  UPDATE OF date, sub  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2998
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->resetTriggerForMultiDraft(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3002
    :cond_3
    const-string v0, "DELETE FROM pdu WHERE thread_id IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3005
    const-string v0, "ALTER TABLE threads ADD COLUMN translate_mode TEXT default \'off\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3009
    const-string v0, "ALTER TABLE pdu ADD COLUMN text_only INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3013
    const-string v0, "sms"

    const-string v1, "svc_cmd"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3014
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57_ForKtOma Sms.svc_cmd Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    :goto_2
    const-string v0, "sms"

    const-string v1, "svc_cmd_content"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3021
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57_ForKtOma Sms.svc_cmd_content Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    :goto_3
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableBlackList:Z

    if-eqz v0, :cond_4

    .line 3028
    const-string v0, "ALTER TABLE spam_pdu ADD COLUMN text_only INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3032
    const-string v0, "spam_sms"

    const-string v1, "svc_cmd"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3033
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57_ForKtOma Sms.svc_cmd Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :goto_4
    const-string v0, "spam_sms"

    const-string v1, "svc_cmd_content"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3040
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion57_ForKtOma Sms.svc_cmd_content Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_4
    :goto_5
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion61 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    return-void

    .line 2978
    :catch_0
    move-exception v1

    .line 2979
    const-string v2, "TP/MmsSmsDatabaseHelper"

    const-string v3, "[MmsSmsDb] korea tablet check caught "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2987
    :cond_5
    const-string v0, "ALTER TABLE threads ADD COLUMN display_recipient_ids Text"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2988
    const-string v0, "UPDATE threads SET display_recipient_ids=recipient_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3016
    :cond_6
    const-string v0, "ALTER TABLE sms ADD COLUMN svc_cmd INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    .line 3023
    :cond_7
    const-string v0, "ALTER TABLE sms ADD COLUMN svc_cmd_content TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    .line 3035
    :cond_8
    const-string v0, "ALTER TABLE spam_sms ADD COLUMN svc_cmd INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4

    .line 3042
    :cond_9
    const-string v0, "ALTER TABLE spam_sms ADD COLUMN svc_cmd_content TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private upgradeDatabaseToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3052
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion62 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    const-string v0, "sms"

    const-string v1, "roam_pending"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3055
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion62 Sms.roam_pending Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :goto_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion62 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    return-void

    .line 3058
    :cond_0
    const-string v0, "ALTER TABLE sms ADD COLUMN roam_pending INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3065
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion63 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    const-string v0, "ALTER TABLE threads ADD COLUMN secret_mode INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3069
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion63 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    return-void
.end method

.method private upgradeDatabaseToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3073
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion64 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3076
    if-eqz v0, :cond_1

    const-string v1, "ja3gchnduoszn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ja3gduosctc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3079
    :cond_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "CHN doesn\'t upgrade 64"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :goto_0
    const-string v0, "raw"

    const-string v1, "format"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3092
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion64 : raw format Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :goto_1
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion64 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    return-void

    .line 3082
    :cond_1
    const-string v0, "CREATE TABLE incomplete_lms (_id INTEGER PRIMARY KEY,address TEXT,reference_number INTEGER,uri TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 3094
    :cond_2
    const-string v0, "ALTER TABLE raw ADD COLUMN format TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private upgradeDatabaseToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 3101
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion65 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3104
    if-eqz v0, :cond_1

    const-string v1, "h3gduoszn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "h3gduosctc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ja3gchnduoszn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ja3gduosctc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3109
    :cond_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "CHN doesn\'t upgrade 65"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :goto_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion65 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    return-void

    .line 3111
    :cond_1
    const-string v1, "pdu"

    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "sub"

    aput-object v0, v2, v10

    const-string v0, "sub_cs"

    aput-object v0, v2, v11

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3120
    const-string v1, "spam_pdu"

    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "sub"

    aput-object v0, v2, v10

    const-string v0, "sub_cs"

    aput-object v0, v2, v11

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3129
    const-string v1, "pdu"

    invoke-direct {p0, v1, v8, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->convertMmsSubjectEncoding(Ljava/lang/String;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3130
    const-string v1, "spam_pdu"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->convertMmsSubjectEncoding(Ljava/lang/String;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3132
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->NewupdateThreadsSnippetTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3133
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->NewupdateThreadsForSnippet(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3140
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion66 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion66 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    return-void
.end method

.method private upgradeDatabaseToVersion67(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3146
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion67 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3149
    if-eqz v0, :cond_1

    const-string v1, "ja3gchnduoszn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ja3gduosctc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3152
    :cond_0
    const-string v0, "threads"

    const-string v1, "secret_mode"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3153
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion67 : threads secret_mode Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    :cond_1
    :goto_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion67 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    return-void

    .line 3155
    :cond_2
    const-string v0, "ALTER TABLE threads ADD COLUMN secret_mode INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion68(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 3164
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    const-string v0, "sms"

    const-string v1, "sim_slot"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3168
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 sms.sim_slot Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :cond_0
    :goto_0
    const-string v0, "sms"

    const-string v1, "sim_imsi"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3179
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 sms.sim_imsi Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    :goto_1
    const-string v0, "pdu"

    const-string v1, "sim_slot"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3185
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 table_pdu.sim_slot Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :cond_1
    :goto_2
    const-string v0, "pdu"

    const-string v1, "sim_imsi"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3196
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 table_pdu.sim_imsi Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    :goto_3
    const-string v0, "wpm"

    const-string v1, "sim_slot"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3202
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 wpm.sim_slot Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    :cond_2
    :goto_4
    const-string v0, "wpm"

    const-string v1, "sim_imsi"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3213
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 wpm.sim_imsi Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    :goto_5
    const-string v0, "mychannels"

    const-string v1, "sim_slot"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3219
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 mychannels. sim_slot Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    :goto_6
    const-string v0, "pending_msgs"

    const-string v1, "sim_slot2"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3225
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 MmsSmsProvider.TABLE_PENDING_MSG PendingMessages.SIM_SLOT Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    :cond_3
    :goto_7
    const-string v0, "raw"

    const-string v1, "sim_slot"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3234
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 raw sim_slot Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    :cond_4
    :goto_8
    const-string v0, "raw"

    const-string v1, "format"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3243
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 raw format Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    :goto_9
    const-string v0, "spam_pdu"

    const-string v1, "sim_slot"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3249
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 table_spam_pdu.sim_slot Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :cond_5
    :goto_a
    const-string v0, "spam_pdu"

    const-string v1, "sim_imsi"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3260
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 table_spam_pdu.sim_imsi Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    :goto_b
    const-string v0, "spam_sms"

    const-string v1, "sim_slot"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3266
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 spam_sms.sim_slot Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_6
    :goto_c
    const-string v0, "spam_sms"

    const-string v1, "sim_imsi"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3277
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 spam_sms.sim_imsi Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    :goto_d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgrade_pdu_Table_trigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3284
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgrade_sms_Table_trigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3285
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgrade_wpm_Table_trigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3288
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3289
    if-eqz v0, :cond_8

    const-string v1, "h3gduoszn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "h3gduosctc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ja3gchnduoszn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ja3gduosctc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3294
    :cond_7
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgrade 65 for CHN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    const-string v1, "pdu"

    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "sub"

    aput-object v0, v2, v10

    const-string v0, "sub_cs"

    aput-object v0, v2, v11

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3304
    const-string v1, "spam_pdu"

    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "sub"

    aput-object v0, v2, v10

    const-string v0, "sub_cs"

    aput-object v0, v2, v11

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3313
    const-string v1, "pdu"

    invoke-direct {p0, v1, v8, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->convertMmsSubjectEncoding(Ljava/lang/String;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3314
    const-string v1, "spam_pdu"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->convertMmsSubjectEncoding(Ljava/lang/String;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3316
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->NewupdateThreadsSnippetTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3317
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->NewupdateThreadsForSnippet(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3320
    :cond_8
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion68 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    return-void

    .line 3170
    :cond_9
    const-string v0, "ALTER TABLE sms ADD COLUMN sim_slot INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3171
    const-string v0, "sms"

    const-string v1, "card_mode"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3172
    const-string v0, "UPDATE sms SET sim_slot = card_mode"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3173
    :cond_a
    const-string v0, "sms"

    const-string v1, "phonetype"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3174
    const-string v0, "UPDATE sms SET sim_slot = phonetype"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3181
    :cond_b
    const-string v0, "ALTER TABLE sms ADD COLUMN sim_imsi TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3187
    :cond_c
    const-string v0, "ALTER TABLE pdu ADD COLUMN sim_slot INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3188
    const-string v0, "pdu"

    const-string v1, "card_mode"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3189
    const-string v0, "UPDATE pdu SET sim_slot = card_mode"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3190
    :cond_d
    const-string v0, "pdu"

    const-string v1, "phonetype"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3191
    const-string v0, "UPDATE pdu SET sim_slot = phonetype"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3198
    :cond_e
    const-string v0, "ALTER TABLE pdu ADD COLUMN sim_imsi TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3204
    :cond_f
    const-string v0, "ALTER TABLE wpm ADD COLUMN sim_slot INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3205
    const-string v0, "wpm"

    const-string v1, "card_mode"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3206
    const-string v0, "UPDATE wpm SET sim_slot = card_mode"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3207
    :cond_10
    const-string v0, "wpm"

    const-string v1, "phonetype"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3208
    const-string v0, "UPDATE wpm SET sim_slot = phonetype"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3215
    :cond_11
    const-string v0, "ALTER TABLE wpm ADD COLUMN sim_imsi TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3221
    :cond_12
    const-string v0, "ALTER TABLE mychannels ADD COLUMN sim_slot INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3227
    :cond_13
    const-string v0, "ALTER TABLE pending_msgs ADD COLUMN sim_slot2 INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3228
    const-string v0, "pending_msgs"

    const-string v1, "pending_phonetype"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3229
    const-string v0, "UPDATE pending_msgs SET sim_slot2 = pending_phonetype"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3236
    :cond_14
    const-string v0, "ALTER TABLE raw ADD COLUMN sim_slot INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3237
    const-string v0, "raw"

    const-string v1, "phonetype"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3238
    const-string v0, "UPDATE raw SET sim_slot = phonetype"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3245
    :cond_15
    const-string v0, "ALTER TABLE raw ADD COLUMN format TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3251
    :cond_16
    const-string v0, "ALTER TABLE spam_pdu ADD COLUMN sim_slot INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3252
    const-string v0, "spam_pdu"

    const-string v1, "card_mode"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3253
    const-string v0, "UPDATE spam_pdu SET sim_slot = card_mode"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3254
    :cond_17
    const-string v0, "spam_pdu"

    const-string v1, "phonetype"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3255
    const-string v0, "UPDATE spam_pdu SET sim_slot = phonetype"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3262
    :cond_18
    const-string v0, "ALTER TABLE spam_pdu ADD COLUMN sim_imsi TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 3268
    :cond_19
    const-string v0, "ALTER TABLE spam_sms ADD COLUMN sim_slot INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3269
    const-string v0, "spam_sms"

    const-string v1, "card_mode"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3270
    const-string v0, "UPDATE spam_sms SET sim_slot = card_mode"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3271
    :cond_1a
    const-string v0, "spam_sms"

    const-string v1, "phonetype"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3272
    const-string v0, "UPDATE spam_sms SET sim_slot = phonetype"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 3279
    :cond_1b
    const-string v0, "ALTER TABLE spam_sms ADD COLUMN sim_imsi TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method private upgradeDatabaseToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3326
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion69 start"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    const-string v0, "sms"

    const-string v1, "spam_report"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3328
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion69 Sms.spam_report Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    :goto_0
    const-string v0, "pdu"

    const-string v1, "spam_report"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3334
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion69 Mms.spam_report Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :goto_1
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableBlackList:Z

    if-eqz v0, :cond_0

    .line 3340
    const-string v0, "spam_sms"

    const-string v1, "spam_report"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3341
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion69 Spam Sms.spam_report Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    :goto_2
    const-string v0, "spam_pdu"

    const-string v1, "spam_report"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3347
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion69 Spam Mms.spam_report Column Exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :cond_0
    :goto_3
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgradeDatabaseToVersion69 end"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    return-void

    .line 3330
    :cond_1
    const-string v0, "ALTER TABLE sms ADD COLUMN spam_report INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 3336
    :cond_2
    const-string v0, "ALTER TABLE pdu ADD COLUMN spam_report INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 3343
    :cond_3
    const-string v0, "ALTER TABLE spam_sms ADD COLUMN spam_report INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    .line 3349
    :cond_4
    const-string v0, "ALTER TABLE spam_pdu ADD COLUMN spam_report INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private upgradePartTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3907
    const-string v0, "part"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3908
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradePartTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    :goto_0
    return-void

    .line 3911
    :cond_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradePartTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    const-string v0, "CREATE TABLE part_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3932
    const-string v0, "INSERT INTO part_temp SELECT * from part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3933
    const-string v0, "DROP TABLE part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3934
    const-string v0, "ALTER TABLE part_temp RENAME TO part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3936
    const-string v0, "CREATE INDEX partIndex1 ON part (mid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3939
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private upgradePduTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3947
    const-string v0, "pdu"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3948
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradePduTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    :goto_0
    return-void

    .line 3951
    :cond_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradePduTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    const-string v0, "CREATE TABLE pdu_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,date INTEGER,date_sent INTEGER DEFAULT 0,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,deletable INTEGER DEFAULT 0,hidden INTEGER DEFAULT 0,app_id INTEGER DEFAULT 0,msg_id INTEGER DEFAULT 0,callback_set INTEGER DEFAULT 0,reserved INTEGER DEFAULT 0,text_only INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3999
    const-string v0, "INSERT INTO pdu_temp SELECT * from pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4000
    const-string v0, "DROP TABLE pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4001
    const-string v0, "ALTER TABLE pdu_temp RENAME TO pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4003
    const-string v0, "CREATE INDEX pduIndex1 ON pdu (thread_id,locked);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4006
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method private upgradeThreadsTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 3841
    const-string v0, "threads"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3842
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: already upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    :goto_0
    return-void

    .line 3845
    :cond_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeThreadsTableToAutoIncrement: upgrading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    const-string v0, "CREATE TABLE threads_temp (_id INTEGER PRIMARY KEY AUTOINCREMENT,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0,unread_count INTEGER DEFAULT 0,alert_expired INTEGER DEFAULT 1,reply_all INTEGER DEFAULT -1,group_snippet TEXT,message_type INTEGER DEFAULT 0,display_recipient_ids TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3873
    const-string v0, "INSERT INTO threads_temp SELECT * from threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3874
    const-string v0, "DROP TABLE threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3875
    const-string v0, "ALTER TABLE threads_temp RENAME TO threads;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3877
    const-string v0, "CREATE INDEX threadsIndex1 ON threads (date);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgrade_pdu_Table_trigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2529
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgrade_pdu_Table_trigger start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2533
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM pdu          WHERE read = 0            AND thread_id = threads._id             AND (m_type=132 OR m_type=130 OR m_type=128))       WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2539
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2540
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_on_update AFTER  UPDATE OF date, sub  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     snippet = substr(new.sub,1,500),     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2547
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2548
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_insert AFTER INSERT ON pdu WHEN new.m_type=130  OR new.m_type=135 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     sim_slot2,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,      new.sim_slot,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2572
    const-string v0, "DROP TRIGGER IF EXISTS insert_mms_pending_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2573
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_update AFTER UPDATE ON pdu WHEN new.m_type=128  AND new.msg_box=4  AND old.msg_box!=4 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     sim_slot2,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,      new.sim_slot,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2595
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgrade_pdu_Table_trigger end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    return-void
.end method

.method private upgrade_sms_Table_trigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2599
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgrade_sms_Table_trigger start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2603
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id  AND (new.reserved = 0 OR (new.reserved = 1 AND new.type = 3));   UPDATE threads SET date = NULL        WHERE (threads._id = new.thread_id)           AND new.reserved > 0           AND 1 = (SELECT COUNT(sms._id) FROM sms WHERE thread_id = new.thread_id)           AND 0 = (SELECT COUNT(wpm._id) FROM wpm WHERE thread_id = new.thread_id)           AND 0 = (SELECT COUNT(pdu._id) FROM pdu WHERE thread_id = new.thread_id AND (m_type=132 OR m_type=130 OR m_type=128));   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM sms          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2606
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2607
    const-string v0, "CREATE TRIGGER sms_update_thread_date_on_update AFTER  UPDATE OF body, date  ON sms BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2612
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgrade_sms_Table_trigger end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    return-void
.end method

.method private upgrade_wpm_Table_trigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2616
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgrade_wpm_Table_trigger start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_on_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2620
    const-string v0, "CREATE TRIGGER wpm_update_thread_on_insert AFTER INSERT ON wpm BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(wpm._id) FROM wpm LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id      ) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3) , unread_count =        (SELECT count(*) FROM sms LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND sms.read = 0 AND sms.type = 1) +        (SELECT count(*) FROM wpm LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id       AND wpm.read = 0 ) +        (SELECT count(*) FROM pdu LEFT JOIN threads        ON threads._id = thread_id       WHERE thread_id = new.thread_id        AND pdu.read = 0        AND (m_type = 128 OR m_type = 132 OR m_type = 130)       AND msg_box = 1)        WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE (SELECT COUNT(*)          FROM wpm          WHERE read = 0            AND thread_id = threads._id)      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2623
    const-string v0, "DROP TRIGGER IF EXISTS wpm_update_thread_date_on_update;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2624
    const-string v0, "CREATE TRIGGER wpm_update_thread_date_on_update AFTER  UPDATE OF date, body  ON wpm BEGIN  UPDATE threads SET    date = new.date,     snippet = substr(new.body,1,300),     snippet_cs = 0  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2629
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "upgrade_wpm_Table_trigger end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    return-void
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3698
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 3700
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    if-nez v0, :cond_0

    .line 3701
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sTriedAutoIncrement:Z

    .line 3702
    const-string v0, "threads"

    invoke-direct {p0, v6, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    .line 3703
    const-string v3, "canonical_addresses"

    invoke-direct {p0, v6, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    .line 3704
    const-string v4, "part"

    invoke-direct {p0, v6, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    .line 3705
    const-string v4, "pdu"

    invoke-direct {p0, v6, v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->hasAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    .line 3706
    const-string v4, "TP/MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getWritableDatabase] hasAutoIncrementThreads: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " hasAutoIncrementAddresses: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " hasAutoIncrementPart: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " hasAutoIncrementPdu: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    if-nez v0, :cond_6

    .line 3715
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3722
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeThreadsTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3723
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3728
    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v5, v1

    .line 3731
    :goto_0
    if-nez v3, :cond_5

    .line 3732
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3739
    :try_start_3
    invoke-direct {p0, v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeAddressTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3740
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3746
    :try_start_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v4, v1

    .line 3749
    :goto_1
    if-nez v7, :cond_4

    .line 3750
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3757
    :try_start_5
    invoke-direct {p0, v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradePartTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3758
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3764
    :try_start_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v1

    .line 3767
    :goto_2
    if-nez v8, :cond_3

    .line 3768
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3775
    :try_start_7
    invoke-direct {p0, v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradePduTableToAutoIncrement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3776
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 3782
    :try_start_8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    .line 3785
    :goto_3
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 3789
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    if-eqz v0, :cond_0

    .line 3791
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "Unregistering mLowStorageMonitor - we\'ve upgraded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3812
    :cond_0
    :goto_4
    monitor-exit p0

    return-object v6

    .line 3724
    :catch_0
    move-exception v0

    .line 3725
    :try_start_9
    const-string v4, "TP/MmsSmsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add autoIncrement to threads;: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3728
    :try_start_a
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v5, v2

    .line 3729
    goto :goto_0

    .line 3728
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3698
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3741
    :catch_1
    move-exception v0

    .line 3742
    :try_start_b
    const-string v3, "TP/MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add autoIncrement to canonical_addresses: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3746
    :try_start_c
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v4, v2

    .line 3747
    goto/16 :goto_1

    .line 3746
    :catchall_2
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3759
    :catch_2
    move-exception v0

    .line 3760
    :try_start_d
    const-string v3, "TP/MmsSmsDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to add autoIncrement to part: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 3764
    :try_start_e
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v3, v2

    .line 3765
    goto/16 :goto_2

    .line 3764
    :catchall_3
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 3777
    :catch_3
    move-exception v0

    .line 3778
    :try_start_f
    const-string v1, "TP/MmsSmsDatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to add autoIncrement to pdu: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 3782
    :try_start_10
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v2

    .line 3783
    goto/16 :goto_3

    .line 3782
    :catchall_4
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 3796
    :cond_1
    sget-boolean v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    if-eqz v0, :cond_2

    .line 3797
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->sFakeLowStorageTest:Z

    .line 3802
    :cond_2
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    if-nez v0, :cond_0

    .line 3803
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "[getWritableDatabase] turning on storage monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    new-instance v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;-><init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    .line 3805
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3806
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3807
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3808
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mLowStorageMonitor:Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_4

    :cond_3
    move v0, v1

    goto/16 :goto_3

    :cond_4
    move v3, v1

    goto/16 :goto_2

    :cond_5
    move v4, v1

    goto/16 :goto_1

    :cond_6
    move v5, v1

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 941
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 944
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 947
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWpmTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 949
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 951
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createChannelTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 953
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsSnippetTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 954
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 955
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadsMessageTypeTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 956
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 958
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCmasTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 960
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 961
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 963
    iget-boolean v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mEnableBlackList:Z

    if-eqz v0, :cond_0

    .line 964
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSpamMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 965
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSpamSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 966
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSpamMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 967
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSpamFilterTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 969
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 2026
    const-string v0, "TP/MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    packed-switch p2, :pswitch_data_0

    .line 2484
    :goto_0
    const-string v0, "TP/MmsSmsDatabaseHelper"

    const-string v1, "Destroying all old data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2486
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2487
    :cond_0
    :goto_1
    return-void

    .line 2030
    :pswitch_0
    const/16 v0, 0x28

    if-le p3, v0, :cond_0

    .line 2034
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2036
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2037
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2042
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2046
    :pswitch_1
    const/16 v0, 0x29

    if-le p3, v0, :cond_0

    .line 2050
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2052
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2053
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2058
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2062
    :pswitch_2
    const/16 v0, 0x2a

    if-le p3, v0, :cond_0

    .line 2066
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2068
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2069
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2074
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2078
    :pswitch_3
    const/16 v0, 0x2b

    if-le p3, v0, :cond_0

    .line 2082
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2084
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2085
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2090
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2094
    :pswitch_4
    const/16 v0, 0x2c

    if-le p3, v0, :cond_0

    .line 2098
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2100
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2101
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2110
    :pswitch_5
    const/16 v0, 0x2d

    if-le p3, v0, :cond_0

    .line 2113
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2115
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2116
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2121
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2125
    :pswitch_6
    const/16 v0, 0x2e

    if-le p3, v0, :cond_0

    .line 2129
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2131
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 2137
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2141
    :pswitch_7
    const/16 v0, 0x2f

    if-le p3, v0, :cond_0

    .line 2145
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2147
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2148
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 2153
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2157
    :pswitch_8
    const/16 v0, 0x30

    if-le p3, v0, :cond_0

    .line 2161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2163
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion49(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 2169
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2172
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2174
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2175
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 2180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2184
    :pswitch_9
    const/16 v0, 0x31

    if-le p3, v0, :cond_0

    .line 2187
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2189
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2190
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 2195
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2199
    :pswitch_a
    const/16 v0, 0x32

    if-le p3, v0, :cond_0

    .line 2203
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2205
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2206
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 2211
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2215
    :pswitch_b
    const/16 v0, 0x33

    if-le p3, v0, :cond_0

    .line 2221
    :pswitch_c
    const/16 v0, 0x34

    if-le p3, v0, :cond_0

    .line 2225
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2227
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2228
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 2233
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2238
    :pswitch_d
    const/16 v0, 0x35

    if-le p3, v0, :cond_0

    .line 2242
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2244
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2245
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 2250
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2254
    :pswitch_e
    const/16 v0, 0x36

    if-le p3, v0, :cond_0

    .line 2258
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2260
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2261
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 2266
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2270
    :pswitch_f
    const/16 v0, 0x37

    if-le p3, v0, :cond_0

    .line 2274
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2276
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2277
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 2282
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2286
    :pswitch_10
    const/16 v0, 0x38

    if-le p3, v0, :cond_0

    .line 2290
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2292
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2293
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 2298
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2302
    :pswitch_11
    const/16 v0, 0x39

    if-le p3, v0, :cond_0

    .line 2305
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2307
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion58(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2308
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 2312
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2316
    :goto_2
    :pswitch_12
    const/16 v0, 0x3a

    if-le p3, v0, :cond_0

    .line 2319
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2321
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2322
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 2326
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2330
    :goto_3
    :pswitch_13
    const/16 v0, 0x3b

    if-le p3, v0, :cond_0

    .line 2333
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2335
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2336
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 2340
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2345
    :goto_4
    :pswitch_14
    const/16 v0, 0x3c

    if-le p3, v0, :cond_0

    .line 2349
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2351
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2352
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 2357
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2362
    :pswitch_15
    const/16 v0, 0x3d

    if-le p3, v0, :cond_0

    .line 2366
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2368
    :try_start_15
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2369
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 2374
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2378
    :pswitch_16
    const/16 v0, 0x3e

    if-le p3, v0, :cond_0

    .line 2382
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2384
    :try_start_16
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2385
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 2390
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2394
    :pswitch_17
    const/16 v0, 0x3f

    if-le p3, v0, :cond_0

    .line 2397
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2399
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2400
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 2404
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2408
    :goto_5
    :pswitch_18
    const/16 v0, 0x40

    if-le p3, v0, :cond_0

    .line 2411
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2413
    :try_start_18
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2414
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 2418
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2422
    :goto_6
    :pswitch_19
    const/16 v0, 0x41

    if-le p3, v0, :cond_0

    .line 2425
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2427
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2428
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 2432
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2436
    :goto_7
    :pswitch_1a
    const/16 v0, 0x42

    if-le p3, v0, :cond_0

    .line 2439
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2441
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion67(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2442
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 2446
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2451
    :goto_8
    :pswitch_1b
    const/16 v0, 0x43

    if-le p3, v0, :cond_0

    .line 2454
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2456
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion68(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2457
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 2461
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2467
    :goto_9
    :pswitch_1c
    const/16 v0, 0x44

    if-le p3, v0, :cond_0

    .line 2470
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2472
    :try_start_1c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2473
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 2477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 2038
    :catch_0
    move-exception v0

    .line 2039
    :try_start_1d
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 2042
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2054
    :catch_1
    move-exception v0

    .line 2055
    :try_start_1e
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 2058
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2070
    :catch_2
    move-exception v0

    .line 2071
    :try_start_1f
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 2074
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2086
    :catch_3
    move-exception v0

    .line 2087
    :try_start_20
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 2090
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2102
    :catch_4
    move-exception v0

    .line 2103
    :try_start_21
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 2106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2117
    :catch_5
    move-exception v0

    .line 2118
    :try_start_22
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 2121
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2133
    :catch_6
    move-exception v0

    .line 2134
    :try_start_23
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    .line 2137
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2149
    :catch_7
    move-exception v0

    .line 2150
    :try_start_24
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    .line 2153
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2165
    :catch_8
    move-exception v0

    .line 2166
    :try_start_25
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .line 2169
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2176
    :catch_9
    move-exception v0

    .line 2177
    :try_start_26
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    .line 2180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2191
    :catch_a
    move-exception v0

    .line 2192
    :try_start_27
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 2195
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2207
    :catch_b
    move-exception v0

    .line 2208
    :try_start_28
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    .line 2211
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2229
    :catch_c
    move-exception v0

    .line 2230
    :try_start_29
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    .line 2233
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2246
    :catch_d
    move-exception v0

    .line 2247
    :try_start_2a
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    .line 2250
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_d
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2262
    :catch_e
    move-exception v0

    .line 2263
    :try_start_2b
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    .line 2266
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_e
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2278
    :catch_f
    move-exception v0

    .line 2279
    :try_start_2c
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    .line 2282
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_f
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2294
    :catch_10
    move-exception v0

    .line 2295
    :try_start_2d
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 2298
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_10
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2309
    :catch_11
    move-exception v0

    .line 2310
    :try_start_2e
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    .line 2312
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    :catchall_11
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2323
    :catch_12
    move-exception v0

    .line 2324
    :try_start_2f
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    .line 2326
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    :catchall_12
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2337
    :catch_13
    move-exception v0

    .line 2338
    :try_start_30
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_13

    .line 2340
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4

    :catchall_13
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2353
    :catch_14
    move-exception v0

    .line 2354
    :try_start_31
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_14

    .line 2357
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_14
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2370
    :catch_15
    move-exception v0

    .line 2371
    :try_start_32
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_15

    .line 2374
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_15
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2386
    :catch_16
    move-exception v0

    .line 2387
    :try_start_33
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_16

    .line 2390
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_16
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2401
    :catch_17
    move-exception v0

    .line 2402
    :try_start_34
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_17

    .line 2404
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_5

    :catchall_17
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2415
    :catch_18
    move-exception v0

    .line 2416
    :try_start_35
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_18

    .line 2418
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_6

    :catchall_18
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2429
    :catch_19
    move-exception v0

    .line 2430
    :try_start_36
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    .line 2432
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_7

    :catchall_19
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2443
    :catch_1a
    move-exception v0

    .line 2444
    :try_start_37
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1a

    .line 2446
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_8

    :catchall_1a
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2458
    :catch_1b
    move-exception v0

    .line 2459
    :try_start_38
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1b

    .line 2461
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9

    :catchall_1b
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2474
    :catch_1c
    move-exception v0

    .line 2475
    :try_start_39
    const-string v1, "TP/MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    .line 2477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    :catchall_1c
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2028
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public rebuildCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4640
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4641
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCmasTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4642
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCmasTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4644
    return-void
.end method

.method public rebuildWrodsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4634
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4635
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4636
    return-void
.end method
