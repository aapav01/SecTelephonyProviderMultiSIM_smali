.class Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;
.super Ljava/lang/Object;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubjectPairs"
.end annotation


# instance fields
.field private mMsgId:J

.field private mSub_cs:I

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3500
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mMsgId:J

    .line 3501
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSubject:Ljava/lang/String;

    .line 3502
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSub_cs:I

    .line 3503
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0
    .param p1, "msgId"    # J
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "sub_cs"    # I

    .prologue
    .line 3505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3506
    iput-wide p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mMsgId:J

    .line 3507
    iput-object p3, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSubject:Ljava/lang/String;

    .line 3508
    iput p4, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSub_cs:I

    .line 3509
    return-void
.end method


# virtual methods
.method public getMsgId()J
    .locals 2

    .prologue
    .line 3513
    iget-wide v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mMsgId:J

    return-wide v0
.end method

.method public getSubCs()I
    .locals 1

    .prologue
    .line 3521
    iget v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSub_cs:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$SubjectPairs;->mSubject:Ljava/lang/String;

    return-object v0
.end method
