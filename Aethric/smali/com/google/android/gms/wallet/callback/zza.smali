.class final Lcom/google/android/gms/wallet/callback/zza;
.super Lcom/google/android/gms/internal/wallet/zzh;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/callback/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/callback/zzd;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zza;->zza:Lcom/google/android/gms/wallet/callback/zzd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/wallet/zzh;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_callback_input"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/google/android/gms/wallet/callback/CallbackInput;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/wallet/callback/CallbackInput;

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_task_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/wallet/callback/zzc;

    iget-object v2, p0, Lcom/google/android/gms/wallet/callback/zza;->zza:Lcom/google/android/gms/wallet/callback/zzd;

    .line 8
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v6, p1, Landroid/os/Message;->arg1:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wallet/callback/zzc;-><init>(Lcom/google/android/gms/wallet/callback/zzd;Lcom/google/android/gms/wallet/callback/CallbackInput;Landroid/os/Messenger;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/wallet/callback/zza;->zza:Lcom/google/android/gms/wallet/callback/zzd;

    iget-object p1, p1, Lcom/google/android/gms/wallet/callback/zzd;->zza:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
