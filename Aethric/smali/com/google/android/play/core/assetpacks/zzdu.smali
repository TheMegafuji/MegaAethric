.class final Lcom/google/android/play/core/assetpacks/zzdu;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Lcom/google/android/play/core/assetpacks/zzbh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "MergeSliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzdu;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdu;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    return-void
.end method

.method private static zzb(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/android/play/core/assetpacks/zzdu;->zzb(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/play/core/assetpacks/zzck;

    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to delete directory: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return-void

    .line 8
    :cond_3
    new-instance p1, Lcom/google/android/play/core/assetpacks/zzck;

    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to move file: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p0, Lcom/google/android/play/core/assetpacks/zzck;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "File clashing with existing file from other slice: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzdt;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdu;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzb:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzc:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzq(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdu;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v4, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzl:Ljava/lang/String;

    iget v5, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zza:I

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzb:J

    .line 4
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/zzbh;->zzj(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/play/core/assetpacks/zzdu;->zzb(Ljava/io/File;Ljava/io/File;)V

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdu;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzl:Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zza:I

    iget-wide v5, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzb:J

    .line 8
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/zzbh;->zzb(Ljava/lang/String;IJ)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzdu;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzl:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zza:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzb:J

    add-int/lit8 v9, v0, 0x1

    .line 9
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/zzbh;->zzA(Ljava/lang/String;IJI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/google/android/play/core/assetpacks/zzdu;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Writing merge checkpoint failed with %s."

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/google/android/play/core/assetpacks/zzck;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzk:I

    const-string v2, "Writing merge checkpoint failed."

    .line 11
    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 2
    :cond_1
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzc:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Cannot find verified files for slice %s."

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/zzdt;->zzk:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
