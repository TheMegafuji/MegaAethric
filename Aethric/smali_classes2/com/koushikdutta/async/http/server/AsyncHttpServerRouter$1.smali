.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->directory(Ljava/lang/String;Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

.field final synthetic val$directory:Ljava/io/File;

.field final synthetic val$list:Z


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;Ljava/io/File;Z)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->val$directory:Ljava/io/File;

    iput-boolean p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->val$list:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 8

    .line 287
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getMatcher()Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->val$directory:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;->val$list:Z

    if-eqz v0, :cond_3

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 294
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 300
    :cond_1
    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;)V

    .line 307
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 308
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 310
    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 313
    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    .line 314
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const-string v2, "<div><a href=\'%s\'>%s</a></div>"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 316
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->send(Ljava/lang/String;)V

    return-void

    .line 320
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    const/16 v0, 0x194

    if-nez p1, :cond_4

    .line 321
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 322
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void

    .line 326
    :cond_4
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0xc8

    .line 327
    invoke-interface {p2, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 328
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$2;

    invoke-direct {v3, p0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1$2;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    invoke-static {p1, v1, v2, p2, v3}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 336
    :catch_0
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 337
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    :goto_3
    return-void
.end method
