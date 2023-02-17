.class public Lcom/koushikdutta/async/util/FileCache$Snapshot;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field fins:[Ljava/io/FileInputStream;

.field lens:[J


# direct methods
.method constructor <init>([Ljava/io/FileInputStream;[J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->fins:[Ljava/io/FileInputStream;

    .line 34
    iput-object p2, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->lens:[J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->fins:[Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method

.method public getLength(I)J
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache$Snapshot;->lens:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method
