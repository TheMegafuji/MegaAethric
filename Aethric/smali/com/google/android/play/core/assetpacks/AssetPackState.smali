.class public abstract Lcom/google/android/play/core/assetpacks/AssetPackState;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;
    .locals 13

    .line 1
    new-instance v12, Lcom/google/android/play/core/assetpacks/zzbn;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v0, v0, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v8, v0

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/play/core/assetpacks/zzbn;-><init>(Ljava/lang/String;IIJJIILjava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method static zzc(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;Lcom/google/android/play/core/assetpacks/zzbe;)Lcom/google/android/play/core/assetpacks/AssetPackState;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "status"

    .line 1
    invoke-static {v2, v1}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v3, p4

    .line 2
    invoke-interface {v3, v2, v1}, Lcom/google/android/play/core/assetpacks/zzbe;->zza(ILjava/lang/String;)I

    move-result v2

    const-string v3, "error_code"

    .line 3
    invoke-static {v3, v1}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "bytes_downloaded"

    .line 4
    invoke-static {v4, v1}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "total_bytes_to_download"

    .line 5
    invoke-static {v6, v1}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v8, p2

    .line 7
    invoke-virtual {v8, v1}, Lcom/google/android/play/core/assetpacks/zzco;->zza(Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "pack_version"

    .line 8
    invoke-static {v10, v1}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "pack_base_version"

    .line 10
    invoke-static {v12, v1}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x1

    const/4 v15, 0x4

    if-ne v2, v15, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v2, v12, v16

    if-eqz v2, :cond_1

    cmp-long v2, v12, v10

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/4 v14, 0x2

    goto :goto_0

    :cond_0
    move v15, v2

    :cond_1
    :goto_0
    const-string v2, "pack_version_tag"

    .line 12
    invoke-static {v2, v1}, Lcom/google/android/play/core/assetpacks/model/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "app_version_code"

    .line 13
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzeb;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move v1, v15

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move v9, v14

    .line 16
    invoke-static/range {v0 .. v11}, Lcom/google/android/play/core/assetpacks/AssetPackState;->zzb(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract bytesDownloaded()J
.end method

.method public abstract errorCode()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract status()I
.end method

.method public abstract totalBytesToDownload()J
.end method

.method public abstract transferProgressPercentage()I
.end method

.method public abstract zza()I
.end method

.method public abstract zzd()Ljava/lang/String;
.end method

.method public abstract zze()Ljava/lang/String;
.end method
