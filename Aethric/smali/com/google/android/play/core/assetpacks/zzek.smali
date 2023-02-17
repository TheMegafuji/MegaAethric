.class final Lcom/google/android/play/core/assetpacks/zzek;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzb:Lcom/google/android/play/core/internal/zzco;

.field private final zzc:Lcom/google/android/play/core/assetpacks/zzde;

.field private final zzd:Lcom/google/android/play/core/internal/zzco;

.field private final zze:Lcom/google/android/play/core/assetpacks/zzco;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzb:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzd:Lcom/google/android/play/core/internal/zzco;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzek;->zze:Lcom/google/android/play/core/assetpacks/zzco;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzei;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzei;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzl:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzb:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    .line 5
    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzd:Lcom/google/android/play/core/internal/zzco;

    .line 10
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzej;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/zzej;-><init>(Lcom/google/android/play/core/assetpacks/zzek;Lcom/google/android/play/core/assetpacks/zzei;)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzc:Lcom/google/android/play/core/assetpacks/zzde;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzb:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzde;->zzk(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zze:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzl:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzco;->zzc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zzb:Lcom/google/android/play/core/internal/zzco;

    .line 14
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzk:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/zzy;->zzh(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v5, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzl:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "Cannot promote pack %s from %s to %s"

    .line 9
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzk:I

    invoke-direct {v5, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 2
    :cond_1
    new-instance v1, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzl:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Cannot find pack files to promote for pack %s at %s"

    .line 4
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzk:I

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method final synthetic zzb(Lcom/google/android/play/core/assetpacks/zzei;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzb:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzB(Ljava/lang/String;IJ)V

    return-void
.end method
