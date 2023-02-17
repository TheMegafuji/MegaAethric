.class final Lcom/google/android/play/core/assetpacks/zzds;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private zza:[B

.field private zzb:I

.field private zzc:J

.field private zzd:J

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:Z

.field private zzi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzds;->zzd()V

    return-void
.end method

.method private final zze(I[BII)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzb:I

    if-ge v0, p1, :cond_1

    sub-int v0, p1, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzb:I

    .line 2
    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzb:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzb:I

    if-ge p2, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzf:I

    return v0
.end method

.method public final zzb([BII)I
    .locals 9

    const/16 v0, 0x1e

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/zzds;->zze(I[BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzc:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    const/4 v4, 0x0

    .line 2
    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/zzbr;->zzc([BI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzc:J

    const-wide/32 v7, 0x4034b50

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    iput-boolean v4, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzh:Z

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    const/16 v4, 0x12

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/zzbr;->zzc([BI)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzd:J

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    const/16 v4, 0x8

    .line 4
    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/zzbr;->zza([BI)I

    move-result v3

    iput v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzg:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    const/16 v4, 0x1a

    .line 5
    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/zzbr;->zza([BI)I

    move-result v3

    iput v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zze:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    const/16 v4, 0x1c

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/zzbr;->zza([BI)I

    move-result v3

    iget v4, p0, Lcom/google/android/play/core/assetpacks/zzds;->zze:I

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzf:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    .line 7
    array-length v3, v3

    if-ge v3, v4, :cond_2

    :goto_0
    add-int/2addr v3, v3

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    .line 8
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzh:Z

    .line 8
    :cond_2
    :goto_1
    iget v3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzf:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 9
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/zzds;->zze(I[BII)I

    move-result p1

    if-ne p1, v2, :cond_3

    return v2

    :cond_3
    add-int/2addr v1, p1

    iget-boolean p1, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzh:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzi:Ljava/lang/String;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    iget p3, p0, Lcom/google/android/play/core/assetpacks/zzds;->zze:I

    invoke-direct {p1, p2, v0, p3}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzi:Ljava/lang/String;

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public final zzc()Lcom/google/android/play/core/assetpacks/zzet;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzb:I

    iget v2, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzf:I

    if-ge v1, v2, :cond_0

    iget-object v4, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzi:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzd:J

    iget v7, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzg:I

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    iget-boolean v9, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzh:Z

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzbq;

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/play/core/assetpacks/zzbq;-><init>(Ljava/lang/String;JIZZ[B)V

    return-object v1

    :cond_0
    iget-object v12, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzi:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzd:J

    iget v15, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzg:I

    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/zzds;->zza:[B

    .line 2
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v18

    iget-boolean v1, v0, Lcom/google/android/play/core/assetpacks/zzds;->zzh:Z

    new-instance v2, Lcom/google/android/play/core/assetpacks/zzbq;

    const/16 v16, 0x0

    move-object v11, v2

    move/from16 v17, v1

    invoke-direct/range {v11 .. v18}, Lcom/google/android/play/core/assetpacks/zzbq;-><init>(Ljava/lang/String;JIZZ[B)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/core/assetpacks/zzds;->zzd()V

    return-object v2
.end method

.method public final zzd()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzb:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/play/core/assetpacks/zzds;->zze:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzc:J

    iput-boolean v0, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzh:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzf:I

    iput-wide v2, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzd:J

    iput v1, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzg:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzds;->zzi:Ljava/lang/String;

    return-void
.end method
