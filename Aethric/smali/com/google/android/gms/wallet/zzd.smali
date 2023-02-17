.class public final Lcom/google/android/gms/wallet/zzd;
.super Landroid/app/Fragment;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# instance fields
.field zza:Z

.field private zzb:I

.field private zzc:Lcom/google/android/gms/wallet/zzc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/wallet/zzd;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/zzd;->zzb(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/zzd;->zza:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/zzd;->zza:Z

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/zzd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/google/android/gms/wallet/zzd;->zzb:I

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/wallet/AutoResolveHelper;->zzc(Landroid/app/Activity;ILcom/google/android/gms/tasks/Task;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/wallet/zzd;->zzb:I

    new-instance v1, Landroid/content/Intent;

    .line 4
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/google/android/gms/wallet/AutoResolveHelper;->zzb(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/zzd;->zzc:Lcom/google/android/gms/wallet/zzc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/wallet/zzc;->zzb(Lcom/google/android/gms/wallet/zzd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/zzd;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requestCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wallet/zzd;->zzb:I

    .line 3
    sget-wide v0, Lcom/google/android/gms/wallet/AutoResolveHelper;->zza:J

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/zzd;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "initializationElapsedRealtime"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wallet/zzd;->zzc:Lcom/google/android/gms/wallet/zzc;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/zzd;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "resolveCallId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/google/android/gms/wallet/zzc;->zzb:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/zzc;

    iput-object v0, p0, Lcom/google/android/gms/wallet/zzd;->zzc:Lcom/google/android/gms/wallet/zzc;

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "delivered"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/zzd;->zza:Z

    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/wallet/zzd;->zzc()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/wallet/zzd;->zzc:Lcom/google/android/gms/wallet/zzc;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/wallet/zzc;->zzc(Lcom/google/android/gms/wallet/zzd;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    const-string v1, "AutoResolveHelper"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Sending canceled result for garbage collected task!"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/wallet/zzd;->zzb(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/zzd;->zza:Z

    const-string v1, "delivered"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/wallet/zzd;->zzc()V

    return-void
.end method
