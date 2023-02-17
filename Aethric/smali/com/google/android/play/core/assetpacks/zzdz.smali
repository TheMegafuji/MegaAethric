.class final Lcom/google/android/play/core/assetpacks/zzdz;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzb:Lcom/google/android/play/core/internal/zzco;

.field private final zzc:Lcom/google/android/play/core/assetpacks/zzde;

.field private final zzd:Lcom/google/android/play/core/internal/zzco;

.field private final zze:Lcom/google/android/play/core/assetpacks/zzco;

.field private final zzf:Lcom/google/android/play/core/common/zza;

.field private final zzg:Lcom/google/android/play/core/assetpacks/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/common/zza;Lcom/google/android/play/core/assetpacks/zzeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzb:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzd:Lcom/google/android/play/core/internal/zzco;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zze:Lcom/google/android/play/core/assetpacks/zzco;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzf:Lcom/google/android/play/core/common/zza;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzg:Lcom/google/android/play/core/assetpacks/zzeb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzdw;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzj(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    .line 2
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzl(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    .line 5
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    new-instance v8, Ljava/io/File;

    .line 9
    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    const-string v2, "merge.tmp"

    .line 10
    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    .line 11
    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/zzbh;->zzi(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzf:Lcom/google/android/play/core/common/zza;

    const-string v1, "assetOnlyUpdates"

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/common/zza;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzg:Lcom/google/android/play/core/assetpacks/zzeb;

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    iget v7, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v8, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    iget-object v10, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzc:Ljava/lang/String;

    .line 16
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/play/core/assetpacks/zzeb;->zzb(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzd:Lcom/google/android/play/core/internal/zzco;

    .line 19
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzdy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/zzdy;-><init>(Lcom/google/android/play/core/assetpacks/zzdz;Lcom/google/android/play/core/assetpacks/zzdw;)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "Could not write asset pack version tag for pack %s: %s"

    .line 18
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzk:I

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzd:Lcom/google/android/play/core/internal/zzco;

    .line 21
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/play/core/assetpacks/zzdx;

    invoke-direct {v2, v1}, Lcom/google/android/play/core/assetpacks/zzdx;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    .line 22
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzde;->zzk(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zze:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzco;->zzc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zzb:Lcom/google/android/play/core/internal/zzco;

    .line 24
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzk:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/zzy;->zzh(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_1
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzk:I

    const-string v1, "Cannot move metadata files to final location."

    .line 14
    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzk:I

    const-string v1, "Cannot move merged pack files to final location."

    .line 8
    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3
    :cond_3
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "Cannot find pack files to move for pack %s."

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzk:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final synthetic zzb(Lcom/google/android/play/core/assetpacks/zzdw;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzB(Ljava/lang/String;IJ)V

    return-void
.end method
