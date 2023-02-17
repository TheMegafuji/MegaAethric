.class Lcom/koushikdutta/async/util/FileCache$CacheEntry;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheEntry"
.end annotation


# instance fields
.field final size:J

.field final synthetic this$0:Lcom/koushikdutta/async/util/FileCache;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/util/FileCache;Ljava/io/File;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache$CacheEntry;->this$0:Lcom/koushikdutta/async/util/FileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/koushikdutta/async/util/FileCache$CacheEntry;->size:J

    return-void
.end method
