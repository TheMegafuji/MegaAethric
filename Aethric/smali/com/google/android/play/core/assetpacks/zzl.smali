.class final Lcom/google/android/play/core/assetpacks/zzl;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/AssetPackManager;


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzc:Lcom/google/android/play/core/internal/zzco;

.field private final zzd:Lcom/google/android/play/core/assetpacks/zzbb;

.field private final zze:Lcom/google/android/play/core/splitinstall/zzs;

.field private final zzf:Lcom/google/android/play/core/assetpacks/zzde;

.field private final zzg:Lcom/google/android/play/core/assetpacks/zzco;

.field private final zzh:Lcom/google/android/play/core/assetpacks/zzbx;

.field private final zzi:Lcom/google/android/play/core/internal/zzco;

.field private final zzj:Lcom/google/android/play/core/common/zza;

.field private final zzk:Lcom/google/android/play/core/assetpacks/zzeb;

.field private final zzl:Landroid/os/Handler;

.field private zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzl;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/splitinstall/zzs;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzbx;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/common/zza;Lcom/google/android/play/core/assetpacks/zzeb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzl:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzc:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzl;->zze:Lcom/google/android/play/core/splitinstall/zzs;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzf:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzg:Lcom/google/android/play/core/assetpacks/zzco;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzh:Lcom/google/android/play/core/assetpacks/zzbx;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzj:Lcom/google/android/play/core/common/zza;

    iput-object p10, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzk:Lcom/google/android/play/core/assetpacks/zzeb;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/play/core/assetpacks/zzl;)Lcom/google/android/play/core/assetpacks/zzbx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzh:Lcom/google/android/play/core/assetpacks/zzbx;

    return-object p0
.end method

.method static synthetic zze(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzl;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Could not sync active asset packs. %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzi;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/zzi;-><init>(Lcom/google/android/play/core/assetpacks/zzl;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/util/List;)Lcom/google/android/play/core/assetpacks/AssetPackStates;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/assetpacks/AssetPackStates;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzl;->zzf:Lcom/google/android/play/core/assetpacks/zzde;

    invoke-virtual {v2, v1}, Lcom/google/android/play/core/assetpacks/zzde;->zzf(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    .line 2
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, v6

    :goto_1
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const-string v17, ""

    move-object v6, v5

    .line 6
    invoke-static/range {v6 .. v17}, Lcom/google/android/play/core/assetpacks/AssetPackState;->zzb(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v6

    .line 7
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzl;->zzc:Lcom/google/android/play/core/internal/zzco;

    .line 8
    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzy;

    invoke-interface {v2, v1}, Lcom/google/android/play/core/assetpacks/zzy;->zze(Ljava/util/List;)V

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzbo;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/play/core/assetpacks/zzbo;-><init>(JLjava/util/Map;)V

    return-object v1
.end method

.method public final clearListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    invoke-virtual {v0}, Lcom/google/android/play/core/listener/zzc;->zze()V

    return-void
.end method

.method public final fetch(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/assetpacks/AssetPackStates;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzu()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzj:Lcom/google/android/play/core/common/zza;

    const-string v4, "assetOnlyUpdates"

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/play/core/common/zza;->zza(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_code"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "bytes_downloaded"

    const-string v6, "total_bytes_to_download"

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "status"

    .line 13
    invoke-static {v9, v4}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    .line 14
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-static {v1, v4}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    invoke-static {v6, v4}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    invoke-static {v5, v4}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "pack_names"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 23
    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzg:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzk:Lcom/google/android/play/core/assetpacks/zzeb;

    .line 24
    invoke-static {v0, p1, v1}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->zza(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;)Lcom/google/android/play/core/assetpacks/AssetPackStates;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/play/core/tasks/Tasks;->zzb(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzc:Lcom/google/android/play/core/internal/zzco;

    .line 26
    invoke-interface {p1}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/zzy;

    .line 27
    invoke-interface {p1, v2, v1, v0}, Lcom/google/android/play/core/assetpacks/zzy;->zzc(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getAssetLocation(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetLocation;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzm:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/play/core/assetpacks/zzh;

    invoke-direct {v2, p0}, Lcom/google/android/play/core/assetpacks/zzh;-><init>(Lcom/google/android/play/core/assetpacks/zzl;)V

    .line 2
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzm:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzG(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzf(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zze:Lcom/google/android/play/core/splitinstall/zzs;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/zzs;->zzc()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->zza()Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    return-object v2

    .line 4
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->packStorageMethod()I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/play/core/assetpacks/AssetLocation;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->packStorageMethod()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 7
    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/play/core/assetpacks/zzbh;->zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/AssetPackLocation;)Lcom/google/android/play/core/assetpacks/AssetLocation;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzl;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object p1, v3, v1

    const-string p1, "The asset %s is not present in Asset Pack %s"

    .line 8
    invoke-virtual {v0, p1, v3}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2
.end method

.method public final getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzh;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/zzh;-><init>(Lcom/google/android/play/core/assetpacks/zzl;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzm:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzG(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzf(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zze:Lcom/google/android/play/core/splitinstall/zzs;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/zzs;->zzc()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->zza()Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final getPackLocations()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/AssetPackLocation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzv()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzl;->zze:Lcom/google/android/play/core/splitinstall/zzs;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/play/core/splitinstall/zzs;->zzc()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->zza()Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v4

    .line 4
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getPackStates(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/assetpacks/AssetPackStates;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzc:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zze;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/zze;-><init>(Lcom/google/android/play/core/assetpacks/zzl;)V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/zzbh;->zzu()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/play/core/assetpacks/zzy;->zzb(Ljava/util/List;Lcom/google/android/play/core/assetpacks/zzbe;Ljava/util/Map;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    invoke-virtual {v0}, Lcom/google/android/play/core/listener/zzc;->zzj()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/play/core/listener/zzc;->zzf(Lcom/google/android/play/core/listener/StateUpdatedListener;)V

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzl;->zzh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final removePack(Ljava/lang/String;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzi;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    .line 2
    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/play/core/assetpacks/zzj;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/zzj;-><init>(Lcom/google/android/play/core/assetpacks/zzl;Ljava/lang/String;Lcom/google/android/play/core/tasks/zzi;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/zzi;->zza()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final showCellularDataConfirmation(Landroid/app/Activity;)Lcom/google/android/play/core/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/play/core/tasks/Tasks;->zza(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzh:Lcom/google/android/play/core/assetpacks/zzbx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzbx;->zza()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    const/16 v0, -0xc

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/play/core/tasks/Tasks;->zza(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    .line 4
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzh:Lcom/google/android/play/core/assetpacks/zzbx;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/zzbx;->zza()Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "confirmation_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/play/core/tasks/zzi;

    .line 6
    invoke-direct {v1}, Lcom/google/android/play/core/tasks/zzi;-><init>()V

    .line 7
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzk;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzl:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/play/core/assetpacks/zzk;-><init>(Lcom/google/android/play/core/assetpacks/zzl;Landroid/os/Handler;Lcom/google/android/play/core/tasks/zzi;)V

    const-string v3, "result_receiver"

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/google/android/play/core/tasks/zzi;->zza()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final unregisterListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/listener/zzc;->zzh(Lcom/google/android/play/core/listener/StateUpdatedListener;)V

    return-void
.end method

.method final zza(ILjava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-virtual {v0, p2}, Lcom/google/android/play/core/assetpacks/zzbh;->zzG(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/play/core/assetpacks/zzbh;->zzG(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eq p1, v1, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method final synthetic zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzy()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzw()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzx()V

    return-void
.end method

.method final synthetic zzd(Ljava/lang/String;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/play/core/tasks/zzi;->zzc(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzc:Lcom/google/android/play/core/internal/zzco;

    .line 3
    invoke-interface {p2}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/assetpacks/zzy;

    invoke-interface {p2, p1}, Lcom/google/android/play/core/assetpacks/zzy;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failed to remove pack %s."

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/play/core/tasks/zzi;->zzb(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic zzf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzc:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzu()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/zzy;->zzd(Ljava/util/Map;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    .line 3
    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/play/core/assetpacks/zzg;

    invoke-direct {v3, v2}, Lcom/google/android/play/core/assetpacks/zzg;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;)V

    .line 4
    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    .line 5
    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/play/core/assetpacks/zzf;->zza:Lcom/google/android/play/core/assetpacks/zzf;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method final zzg(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    invoke-virtual {v0}, Lcom/google/android/play/core/listener/zzc;->zzj()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzd:Lcom/google/android/play/core/assetpacks/zzbb;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/play/core/listener/zzc;->zzg(Z)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzl;->zzh()V

    :cond_0
    return-void
.end method
