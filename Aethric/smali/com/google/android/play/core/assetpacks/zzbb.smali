.class final Lcom/google/android/play/core/assetpacks/zzbb;
.super Lcom/google/android/play/core/listener/zzc;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zzc:Lcom/google/android/play/core/assetpacks/zzde;

.field private final zzd:Lcom/google/android/play/core/assetpacks/zzcl;

.field private final zze:Lcom/google/android/play/core/internal/zzco;

.field private final zzf:Lcom/google/android/play/core/assetpacks/zzbx;

.field private final zzg:Lcom/google/android/play/core/assetpacks/zzco;

.field private final zzh:Lcom/google/android/play/core/internal/zzco;

.field private final zzi:Lcom/google/android/play/core/internal/zzco;

.field private final zzj:Lcom/google/android/play/core/assetpacks/zzeb;

.field private final zzk:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/assetpacks/zzcl;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzbx;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzeb;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "AssetPackServiceListenerRegistry"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/listener/zzc;-><init>(Lcom/google/android/play/core/internal/zzag;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzk:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzd:Lcom/google/android/play/core/assetpacks/zzcl;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zze:Lcom/google/android/play/core/internal/zzco;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzg:Lcom/google/android/play/core/assetpacks/zzco;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzf:Lcom/google/android/play/core/assetpacks/zzbx;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzh:Lcom/google/android/play/core/internal/zzco;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzi:Lcom/google/android/play/core/internal/zzco;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzj:Lcom/google/android/play/core/assetpacks/zzeb;

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v0, "pack_names"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzg:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzj:Lcom/google/android/play/core/assetpacks/zzeb;

    sget-object v4, Lcom/google/android/play/core/assetpacks/zzbd;->zza:Lcom/google/android/play/core/assetpacks/zzbd;

    .line 6
    invoke-static {p1, v0, v1, v3, v4}, Lcom/google/android/play/core/assetpacks/AssetPackState;->zzc(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;Lcom/google/android/play/core/assetpacks/zzbe;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p2

    const-string p2, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    .line 7
    invoke-virtual {v1, p2, v2}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p2, "confirmation_intent"

    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzf:Lcom/google/android/play/core/assetpacks/zzbx;

    .line 9
    invoke-virtual {v1, p2}, Lcom/google/android/play/core/assetpacks/zzbx;->zzb(Landroid/app/PendingIntent;)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzi:Lcom/google/android/play/core/internal/zzco;

    .line 10
    invoke-interface {p2}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzaz;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/zzaz;-><init>(Lcom/google/android/play/core/assetpacks/zzbb;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    .line 11
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzh:Lcom/google/android/play/core/internal/zzco;

    .line 12
    invoke-interface {p2}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzay;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/zzay;-><init>(Lcom/google/android/play/core/assetpacks/zzbb;Landroid/os/Bundle;)V

    .line 13
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Corrupt bundle received from broadcast."

    .line 4
    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Empty bundle received from broadcast."

    .line 14
    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method final synthetic zzb(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzde;->zzp(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzd:Lcom/google/android/play/core/assetpacks/zzcl;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/zzcl;->zza()V

    :cond_0
    return-void
.end method

.method final synthetic zzc(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzde;->zzo(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/play/core/assetpacks/zzbb;->zzd(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zze:Lcom/google/android/play/core/internal/zzco;

    .line 3
    invoke-interface {p1}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/zzy;

    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/zzy;->zzf()V

    :cond_0
    return-void
.end method

.method final zzd(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbb;->zzk:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzba;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/zzba;-><init>(Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
