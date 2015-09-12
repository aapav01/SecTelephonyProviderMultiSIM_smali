.class public Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;
.super Ljava/lang/Object;
.source "MmsSmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeChecker"
.end annotation


# static fields
.field private static sStartT:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sEnd()Ljava/lang/String;
    .locals 11

    .prologue
    .line 4087
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-wide v6, Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;->sStartT:J

    sub-long v0, v4, v6

    .line 4088
    .local v0, "elapsed":J
    const-string v2, ""

    .line 4090
    .local v2, "endTime":Ljava/lang/String;
    :try_start_0
    const-string v4, "Elapsed time : %.3f ms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-double v7, v0

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4094
    :goto_0
    return-object v2

    .line 4091
    :catch_0
    move-exception v3

    .line 4092
    .local v3, "ex":Ljava/lang/IncompatibleClassChangeError;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public static sStart()V
    .locals 2

    .prologue
    .line 4083
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;->sStartT:J

    .line 4084
    return-void
.end method
