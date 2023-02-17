.class public final Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;
.super Lcom/google/android/gms/games/internal/zzc;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/SnapshotContents;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final zza:Ljava/lang/Object;


# instance fields
.field private zzb:Lcom/google/android/gms/drive/Contents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zza:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/games/snapshot/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/Contents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzb:Lcom/google/android/gms/drive/Contents;

    return-void
.end method

.method private final zzc(I[BIIZ)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Must provide a previously opened SnapshotContents"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zza:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzb:Lcom/google/android/gms/drive/Contents;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    .line 4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 5
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    int-to-long v4, p1

    .line 7
    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 8
    invoke-virtual {v2, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p5, :cond_0

    .line 9
    array-length p1, p2

    int-to-long p1, p1

    invoke-virtual {v3, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 10
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception p1

    const-string p2, "SnapshotContentsEntity"

    const-string p3, "Failed to write snapshot data"

    .line 11
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/games/zzft;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot mutate closed contents!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzb:Lcom/google/android/gms/drive/Contents;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzb:Lcom/google/android/gms/drive/Contents;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final modifyBytes(I[BII)Z
    .locals 6

    .line 1
    array-length v4, p2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzc(I[BIIZ)Z

    move-result p1

    return p1
.end method

.method public final readFully()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Must provide a previously opened Snapshot"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zza:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzb:Lcom/google/android/gms/drive/Contents;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/drive/Contents;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    .line 4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    .line 5
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/IOUtils;->readInputStreamFully(Ljava/io/InputStream;Z)[B

    move-result-object v1

    .line 8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SnapshotContentsEntity"

    const-string v3, "Failed to read snapshot data"

    .line 9
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/games/zzft;->zze(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    throw v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final writeBytes([B)Z
    .locals 6

    .line 1
    array-length v4, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzc(I[BIIZ)Z

    move-result p1

    return p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzb:Lcom/google/android/gms/drive/Contents;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/drive/Contents;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzb:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->zzb:Lcom/google/android/gms/drive/Contents;

    return-void
.end method
