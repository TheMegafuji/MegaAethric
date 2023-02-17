.class final Lcom/google/android/play/core/assetpacks/zzac;
.super Lcom/google/android/play/core/internal/zzah;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:Ljava/util/List;

.field final synthetic zzb:Ljava/util/Map;

.field final synthetic zzc:Lcom/google/android/play/core/tasks/zzi;

.field final synthetic zzd:Ljava/util/List;

.field final synthetic zze:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Ljava/util/List;Ljava/util/Map;Lcom/google/android/play/core/tasks/zzi;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzac;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzac;->zza:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzac;->zzb:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzac;->zzc:Lcom/google/android/play/core/tasks/zzi;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzac;->zzd:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/zzah;-><init>(Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzac;->zza:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/zzaw;->zzv(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzac;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/zzaw;->zzs(Lcom/google/android/play/core/assetpacks/zzaw;)Lcom/google/android/play/core/internal/zzas;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/internal/zzas;->zze()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/zzu;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzac;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/zzaw;->zzu(Lcom/google/android/play/core/assetpacks/zzaw;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzac;->zzb:Ljava/util/Map;

    .line 3
    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/zzaw;->zzn(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v10, Lcom/google/android/play/core/assetpacks/zzav;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzac;->zze:Lcom/google/android/play/core/assetpacks/zzaw;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzac;->zzc:Lcom/google/android/play/core/tasks/zzi;

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/zzaw;->zzp(Lcom/google/android/play/core/assetpacks/zzaw;)Lcom/google/android/play/core/assetpacks/zzco;

    move-result-object v7

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/zzaw;->zzq(Lcom/google/android/play/core/assetpacks/zzaw;)Lcom/google/android/play/core/assetpacks/zzeb;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/play/core/assetpacks/zzac;->zzd:Ljava/util/List;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/zzav;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;Ljava/util/List;)V

    .line 4
    invoke-interface {v1, v2, v0, v3, v10}, Lcom/google/android/play/core/internal/zzu;->zzl(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/zzw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/zzaw;->zzr()Lcom/google/android/play/core/internal/zzag;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzac;->zza:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "startDownload(%s)"

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzac;->zzc:Lcom/google/android/play/core/tasks/zzi;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void
.end method
