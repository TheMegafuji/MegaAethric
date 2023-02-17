.class final Lcom/google/android/play/core/splitinstall/zzy;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

.field final synthetic zzb:Lcom/google/android/play/core/splitinstall/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/zzaa;Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzy;->zzb:Lcom/google/android/play/core/splitinstall/zzaa;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/zzy;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzy;->zzb:Lcom/google/android/play/core/splitinstall/zzaa;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/zzaa;->zzc(Lcom/google/android/play/core/splitinstall/zzaa;)Lcom/google/android/play/core/splitinstall/zzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzy;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getModuleNames()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/zzy;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallRequest;

    invoke-virtual {v2}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getLanguages()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/zzaa;->zzd(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    .line 2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "session_id"

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "status"

    const/4 v6, 0x5

    .line 4
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "error_code"

    .line 5
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "module_names"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "languages"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const-string v1, "total_bytes_to_download"

    const-wide/16 v4, 0x0

    .line 10
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bytes_downloaded"

    .line 11
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    invoke-static {v3}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zzd(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/splitinstall/zzx;->zzm(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
