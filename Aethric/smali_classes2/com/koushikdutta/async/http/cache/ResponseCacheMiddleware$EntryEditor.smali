.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryEditor"
.end annotation


# instance fields
.field done:Z

.field key:Ljava/lang/String;

.field outs:[Ljava/io/FileOutputStream;

.field temps:[Ljava/io/File;

.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Ljava/lang/String;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->key:Ljava/lang/String;

    .line 808
    invoke-static {p1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->access$400(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/util/FileCache;->getTempFiles(I)[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->temps:[Ljava/io/File;

    new-array p1, p2, [Ljava/io/FileOutputStream;

    .line 809
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method abort()V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 829
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->temps:[Ljava/io/File;

    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->removeFiles([Ljava/io/File;)V

    .line 830
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->access$608(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I

    const/4 v0, 0x1

    .line 833
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->done:Z

    return-void
.end method

.method commit()V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 814
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->access$400(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->temps:[Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/util/FileCache;->commitTempFiles(Ljava/lang/String;[Ljava/io/File;)V

    .line 817
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->access$508(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)I

    const/4 v0, 0x1

    .line 818
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->done:Z

    return-void
.end method

.method newOutputStream(I)Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 823
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->temps:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v0, p1

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    aget-object p1, v0, p1

    return-object p1
.end method
