.class Lcom/koushikdutta/ion/FileCacheStore$2;
.super Ljava/lang/Object;
.source "FileCacheStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/FileCacheStore;->as(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/FileCacheStore;

.field final synthetic val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/FileCacheStore;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    iput-object p2, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p3, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    invoke-static {v0}, Lcom/koushikdutta/ion/FileCacheStore;->access$000(Lcom/koushikdutta/ion/FileCacheStore;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    iget-object v1, v1, Lcom/koushikdutta/ion/FileCacheStore;->cache:Lcom/koushikdutta/async/util/FileCache;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/util/FileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v2, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    iget-object v2, v2, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v3, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->this$0:Lcom/koushikdutta/ion/FileCacheStore;

    iget-object v3, v3, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v3}, Lcom/koushikdutta/ion/Ion;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/ion/Ion;->build(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/koushikdutta/ion/builder/LoadBuilder;->load(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    iget-object v2, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

    .line 109
    invoke-interface {v0, v2}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->as(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore$2;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
