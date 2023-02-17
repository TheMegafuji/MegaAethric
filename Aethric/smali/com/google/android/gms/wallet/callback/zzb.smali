.class final Lcom/google/android/gms/wallet/callback/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/wallet/callback/OnCompleteListener;


# instance fields
.field private zza:Landroid/os/Messenger;

.field private final zzb:I


# direct methods
.method constructor <init>(Landroid/os/Messenger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzb;->zza:Landroid/os/Messenger;

    iput p2, p0, Lcom/google/android/gms/wallet/callback/zzb;->zzb:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic complete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/wallet/callback/CallbackOutput;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/callback/zzb;->zza(Lcom/google/android/gms/wallet/callback/CallbackOutput;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/wallet/callback/CallbackOutput;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/zzb;->zza:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget v0, p1, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zzb:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Callback Response Status must be set - status value must be non-zero."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/google/android/gms/wallet/callback/zzb;->zzb:I

    .line 4
    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/os/Bundle;

    .line 5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_callback_output"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object p1

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/wallet/callback/zzb;->zza:Landroid/os/Messenger;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzb;->zza:Landroid/os/Messenger;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "BaseCallbackTaskService"

    const-string v1, "Error sending result of task to the callback service client for BaseCallbackTaskService"

    .line 10
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
