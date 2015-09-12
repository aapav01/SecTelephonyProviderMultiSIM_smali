.class Lcom/android/providers/telephony/MmsSmsProvider$1;
.super Landroid/os/Handler;
.source "MmsSmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/MmsSmsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/MmsSmsProvider;)V
    .locals 0

    .prologue
    .line 4390
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsProvider$1;->this$0:Lcom/android/providers/telephony/MmsSmsProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 4394
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 4401
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4402
    return-void

    .line 4397
    :pswitch_0
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider$1;->this$0:Lcom/android/providers/telephony/MmsSmsProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    # invokes: Lcom/android/providers/telephony/MmsSmsProvider;->updateSecretMode(Z)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->access$000(Lcom/android/providers/telephony/MmsSmsProvider;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 4394
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
