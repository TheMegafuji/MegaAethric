.class final Lcom/google/android/play/core/assetpacks/zzeg;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzc:Lcom/google/android/play/core/internal/zzco;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "PatchSliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzeg;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzc:Lcom/google/android/play/core/internal/zzco;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzef;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzef;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzb:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzh(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/zzef;->zza:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzb:J

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    .line 2
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzi(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-direct {v7, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzh:Ljava/io/InputStream;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/zzef;->zze:I

    if-eq v5, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    const/16 v6, 0x2000

    .line 4
    invoke-direct {v5, v4, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v5

    :goto_0
    :try_start_1
    new-instance v5, Lcom/google/android/play/core/assetpacks/zzbk;

    .line 5
    invoke-direct {v5, v0, v7}, Lcom/google/android/play/core/assetpacks/zzbk;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v9, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget v10, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzc:I

    iget-wide v11, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzd:J

    iget-object v13, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    .line 6
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/assetpacks/zzbh;->zzp(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    new-instance v13, Lcom/google/android/play/core/assetpacks/zzen;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v8, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget v9, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzc:I

    iget-wide v10, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzd:J

    iget-object v12, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/play/core/assetpacks/zzen;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Ljava/lang/String;IJLjava/lang/String;)V

    new-instance v6, Lcom/google/android/play/core/assetpacks/zzcn;

    .line 10
    invoke-direct {v6, v0, v13}, Lcom/google/android/play/core/assetpacks/zzcn;-><init>(Ljava/io/File;Lcom/google/android/play/core/assetpacks/zzen;)V

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzg:J

    invoke-static {v5, v4, v6, v7, v8}, Lcom/google/android/play/core/internal/zzcl;->zza(Lcom/google/android/play/core/internal/zzcm;Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 11
    invoke-virtual {v13, v3}, Lcom/google/android/play/core/assetpacks/zzen;->zzi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v0, Lcom/google/android/play/core/assetpacks/zzeg;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "Patching and extraction finished for slice %s of pack %s."

    .line 16
    invoke-virtual {v0, v5, v4}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeg;->zzc:Lcom/google/android/play/core/internal/zzco;

    .line 17
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzk:I

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    .line 18
    invoke-interface {v0, v4, v5, v6, v3}, Lcom/google/android/play/core/assetpacks/zzy;->zzg(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_3
    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzh:Ljava/io/InputStream;

    .line 19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 12
    :catch_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzeg;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "Could not close file for slice %s of pack %s."

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    .line 19
    sget-object v4, Lcom/google/android/play/core/assetpacks/zzeg;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v5, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "IOException during patching %s."

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzf:Ljava/lang/String;

    aput-object v5, v1, v3

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzl:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error patching slice %s of pack %s."

    .line 15
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzef;->zzk:I

    invoke-direct {v4, v1, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v4
.end method
