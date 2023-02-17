.class public abstract Lcom/google/android/gms/maps/model/UrlTileProvider;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# instance fields
.field private final zza:I

.field private final zzb:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->zza:I

    iput p2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->zzb:I

    return-void
.end method


# virtual methods
.method public final getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/UrlTileProvider;->getTileUrl(III)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/maps/model/UrlTileProvider;->NO_TILE:Lcom/google/android/gms/maps/model/Tile;

    return-object p1

    :cond_0
    const/16 p2, 0x1100

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/maps/zzf;->zzb(I)V

    .line 3
    new-instance p2, Lcom/google/android/gms/maps/model/Tile;

    iget p3, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->zza:I

    iget v0, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->zzb:I

    .line 4
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "from must not be null."

    .line 7
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "to must not be null."

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 9
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 12
    invoke-direct {p2, p3, v0, p1}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/maps/zzf;->zza()V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 10
    :try_start_1
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/maps/zzf;->zza()V

    .line 14
    throw p1

    .line 13
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/maps/zzf;->zza()V

    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public abstract getTileUrl(III)Ljava/net/URL;
.end method
