.class Lcom/android/providers/telephony/MmsSmsProvider$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 4430
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsProvider$2;->this$0:Lcom/android/providers/telephony/MmsSmsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4433
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4434
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider$2;->this$0:Lcom/android/providers/telephony/MmsSmsProvider;

    const/4 v1, 0x1

    # invokes: Lcom/android/providers/telephony/MmsSmsProvider;->scheduleSecretModeChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->access$100(Lcom/android/providers/telephony/MmsSmsProvider;Z)V

    .line 4438
    :cond_0
    :goto_0
    return-void

    .line 4435
    :cond_1
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4436
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsProvider$2;->this$0:Lcom/android/providers/telephony/MmsSmsProvider;

    const/4 v1, 0x0

    # invokes: Lcom/android/providers/telephony/MmsSmsProvider;->scheduleSecretModeChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->access$100(Lcom/android/providers/telephony/MmsSmsProvider;Z)V

    goto :goto_0
.end method
