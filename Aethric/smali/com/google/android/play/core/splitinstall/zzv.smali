.class final Lcom/google/android/play/core/splitinstall/zzv;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/zzf;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

.field final synthetic zzb:Landroid/content/Intent;

.field final synthetic zzc:Landroid/content/Context;

.field final synthetic zzd:Lcom/google/android/play/core/splitinstall/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/zzx;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzd:Lcom/google/android/play/core/splitinstall/zzx;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/zzv;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzb:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzc:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzd:Lcom/google/android/play/core/splitinstall/zzx;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzv;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/zzx;->zzd(Lcom/google/android/play/core/splitinstall/zzx;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;II)V

    return-void
.end method

.method public final zzb(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzd:Lcom/google/android/play/core/splitinstall/zzx;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzv;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/play/core/splitinstall/zzx;->zzd(Lcom/google/android/play/core/splitinstall/zzx;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;II)V

    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzb:Landroid/content/Intent;

    const-string v1, "triggered_from_app_after_verification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzb:Landroid/content/Intent;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzc:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzb:Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzv;->zzd:Lcom/google/android/play/core/splitinstall/zzx;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/zzx;->zzb(Lcom/google/android/play/core/splitinstall/zzx;)Lcom/google/android/play/core/internal/zzag;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Splits copied and verified more than once."

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
