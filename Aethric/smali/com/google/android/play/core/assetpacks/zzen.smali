.class final Lcom/google/android/play/core/assetpacks/zzen;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzd:Ljava/lang/String;

.field private final zze:I

.field private final zzf:J

.field private final zzg:Ljava/lang/String;

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "SliceMetadataManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzen;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzb:[B

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzd:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zze:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzf:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzg:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    return-void
.end method

.method private final zzn()Ljava/io/File;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzd:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zze:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzf:J

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzg:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzo(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private final zzo()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzd:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zze:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzf:J

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzg:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzn(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-object v0
.end method


# virtual methods
.method final zza()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzd:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zze:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzf:J

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzg:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzn(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    .line 4
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "fileStatus"

    const-string v2, "-1"

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const-string v1, "previousChunk"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 8
    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v1, "Slice checkpoint file corrupt."

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw v0
.end method

.method final zzb()Lcom/google/android/play/core/assetpacks/zzem;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "-1"

    .line 1
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzd:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zze:I

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzf:J

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzg:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/play/core/assetpacks/zzbh;->zzn(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    new-instance v2, Ljava/util/Properties;

    .line 4
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    .line 5
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const-string v1, "fileStatus"

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Slice checkpoint file corrupt."

    if-eqz v3, :cond_0

    const-string v3, "previousChunk"

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 11
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "fileName"

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "fileOffset"

    .line 13
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "remainingBytes"

    .line 14
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v0, "metadataFileCounter"

    const-string v1, "0"

    .line 16
    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzbp;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/play/core/assetpacks/zzbp;-><init>(ILjava/lang/String;JJI)V

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/google/android/play/core/assetpacks/zzck;

    .line 18
    invoke-direct {v1, v4, v0}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    .line 10
    invoke-direct {v0, v4}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    throw v0

    .line 2
    :cond_1
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v1, "Slice checkpoint file does not exist."

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzc()Ljava/io/File;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzn()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s-NAM.dat"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final zzd(Ljava/io/InputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzc()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    .line 2
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzb:[B

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzb:[B

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, p3, v0, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/16 p3, 0x2000

    if-eq p2, p3, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw p1
.end method

.method final zze(J[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzc()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    .line 2
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {v1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw p1
.end method

.method final zzf(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "3"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzc()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileOffset"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    .line 6
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzo()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw v0
.end method

.method final zzg(Ljava/lang/String;JJI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fileName"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fileOffset"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "remainingBytes"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "previousChunk"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "metadataFileCounter"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    .line 8
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzo()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw p2
.end method

.method final zzh([BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "2"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzo()Ljava/io/File;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p2, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzd:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/play/core/assetpacks/zzen;->zze:I

    iget-wide v5, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzf:J

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzg:Ljava/lang/String;

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/zzbh;->zzm(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 11
    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 12
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    throw p1

    :catchall_2
    move-exception p1

    .line 5
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    throw p1
.end method

.method final zzi(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "4"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzo()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw v0
.end method

.method final zzj([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzn()Ljava/io/File;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "%s-LFH.dat"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v1, "Could not write metadata file."

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method final zzk([BLjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzc()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzb:[B

    .line 4
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzb:[B

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v0, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzb:[B

    .line 6
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw p1
.end method

.method final zzl([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzh:I

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzen;->zzc()Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw p1
.end method

.method final zzm()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzd:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzen;->zze:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzf:J

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzen;->zzg:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzn(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/util/Properties;

    .line 4
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "fileStatus"

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/google/android/play/core/assetpacks/zzen;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Slice checkpoint file corrupt while checking if extraction finished."

    .line 9
    invoke-virtual {v0, v3, v1}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 10
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2

    :catchall_0
    move-exception v0

    .line 3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzen;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Could not read checkpoint while checking if extraction finished. %s"

    .line 7
    invoke-virtual {v3, v0, v1}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    return v2
.end method
