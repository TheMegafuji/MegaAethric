.class final Lcom/google/android/gms/wallet/callback/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/callback/zzd;

.field private final zzb:Lcom/google/android/gms/wallet/callback/CallbackInput;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/wallet/callback/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/callback/zzd;Lcom/google/android/gms/wallet/callback/CallbackInput;Landroid/os/Messenger;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzc;->zza:Lcom/google/android/gms/wallet/callback/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzb:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iput-object p4, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzc:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/wallet/callback/zzb;

    invoke-direct {p1, p3, p5}, Lcom/google/android/gms/wallet/callback/zzb;-><init>(Landroid/os/Messenger;I)V

    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzd:Lcom/google/android/gms/wallet/callback/zzb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "BaseCallbackTaskService"

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzc:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Running Callback Task w/ tag %s"

    .line 2
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/zzc;->zza:Lcom/google/android/gms/wallet/callback/zzd;

    iget-object v1, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzb:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iget-object v3, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzd:Lcom/google/android/gms/wallet/callback/zzb;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wallet/callback/zzd;->onRunTask(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzd:Lcom/google/android/gms/wallet/callback/zzb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zza()Lcom/google/android/gms/wallet/callback/zzj;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzb:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iget v3, v3, Lcom/google/android/gms/wallet/callback/CallbackInput;->zza:I

    iget-object v4, v2, Lcom/google/android/gms/wallet/callback/zzj;->zza:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    iput v3, v4, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zza:I

    const/4 v3, 0x5

    iput v3, v4, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zzb:I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/wallet/callback/zzj;->zza:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    iput-object v3, v2, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zzd:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/callback/zzb;->zza(Lcom/google/android/gms/wallet/callback/CallbackOutput;)V

    .line 7
    throw v0
.end method
