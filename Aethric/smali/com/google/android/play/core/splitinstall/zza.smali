.class final Lcom/google/android/play/core/splitinstall/zza;
.super Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:J

.field private final zze:J

.field private final zzf:Ljava/util/List;

.field private final zzg:Ljava/util/List;

.field private final zzh:Landroid/app/PendingIntent;

.field private final zzi:Ljava/util/List;


# direct methods
.method constructor <init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/splitinstall/zza;->zza:I

    iput p2, p0, Lcom/google/android/play/core/splitinstall/zza;->zzb:I

    iput p3, p0, Lcom/google/android/play/core/splitinstall/zza;->zzc:I

    iput-wide p4, p0, Lcom/google/android/play/core/splitinstall/zza;->zzd:J

    iput-wide p6, p0, Lcom/google/android/play/core/splitinstall/zza;->zze:J

    iput-object p8, p0, Lcom/google/android/play/core/splitinstall/zza;->zzf:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/play/core/splitinstall/zza;->zzg:Ljava/util/List;

    iput-object p10, p0, Lcom/google/android/play/core/splitinstall/zza;->zzh:Landroid/app/PendingIntent;

    iput-object p11, p0, Lcom/google/android/play/core/splitinstall/zza;->zzi:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bytesDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zzd:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iget v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zza:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzb:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzc:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/play/core/splitinstall/zza;->zzd:J

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/play/core/splitinstall/zza;->zze:J

    .line 7
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzf:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zzb()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zzb()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzg:Ljava/util/List;

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zza()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zza()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzh:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzi:Ljava/util/List;

    if-nez v1, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zzc()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zzc()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    return v0

    :cond_6
    :goto_4
    return v2
.end method

.method public final errorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zzc:I

    return v0
.end method

.method public final hashCode()I
    .locals 10

    .line 4
    iget v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zza:I

    iget v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzb:I

    iget v2, p0, Lcom/google/android/play/core/splitinstall/zza;->zzc:I

    iget-wide v3, p0, Lcom/google/android/play/core/splitinstall/zza;->zzd:J

    iget-wide v5, p0, Lcom/google/android/play/core/splitinstall/zza;->zze:J

    const v7, 0xf4243

    xor-int/2addr v0, v7

    mul-int v0, v0, v7

    xor-int/2addr v0, v1

    mul-int v0, v0, v7

    xor-int/2addr v0, v2

    mul-int v0, v0, v7

    const/16 v1, 0x20

    ushr-long v8, v3, v1

    xor-long v2, v8, v3

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v7

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v7

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzf:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    mul-int v0, v0, v7

    .line 4
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzg:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    mul-int v0, v0, v7

    .line 4
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzh:Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int v0, v0, v7

    .line 4
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zza;->zzi:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    return v0
.end method

.method public final resolutionIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zzh:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final sessionId()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zza:I

    return v0
.end method

.method public final status()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zzb:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/play/core/splitinstall/zza;->zza:I

    iget v2, v0, Lcom/google/android/play/core/splitinstall/zza;->zzb:I

    iget v3, v0, Lcom/google/android/play/core/splitinstall/zza;->zzc:I

    iget-wide v4, v0, Lcom/google/android/play/core/splitinstall/zza;->zzd:J

    iget-wide v6, v0, Lcom/google/android/play/core/splitinstall/zza;->zze:J

    iget-object v8, v0, Lcom/google/android/play/core/splitinstall/zza;->zzf:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/play/core/splitinstall/zza;->zzg:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/play/core/splitinstall/zza;->zzh:Landroid/app/PendingIntent;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/play/core/splitinstall/zza;->zzi:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit16 v12, v12, 0xfb

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    add-int/2addr v12, v15

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "SplitInstallSessionState{sessionId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalBytesToDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", moduleNamesNullable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languagesNullable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resolutionIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", splitFileIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final totalBytesToDownload()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zze:J

    return-wide v0
.end method

.method final zza()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zzg:Ljava/util/List;

    return-object v0
.end method

.method final zzb()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zzf:Ljava/util/List;

    return-object v0
.end method

.method final zzc()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zza;->zzi:Ljava/util/List;

    return-object v0
.end method
