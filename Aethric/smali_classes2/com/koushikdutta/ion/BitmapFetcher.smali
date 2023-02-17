.class Lcom/koushikdutta/ion/BitmapFetcher;
.super Ljava/lang/Object;
.source "BitmapFetcher.java"

# interfaces
.implements Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;


# static fields
.field public static final MAX_IMAGEVIEW_LOAD:I = 0x5


# instance fields
.field animateGif:Z

.field bitmapKey:Ljava/lang/String;

.field builder:Lcom/koushikdutta/ion/IonRequestBuilder;

.field decodeKey:Ljava/lang/String;

.field deepZoom:Z

.field hasTransforms:Z

.field info:Lcom/koushikdutta/ion/bitmap/BitmapInfo;

.field postProcess:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/ion/bitmap/PostProcess;",
            ">;"
        }
    .end annotation
.end field

.field sampleHeight:I

.field sampleWidth:I

.field transforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/ion/bitmap/Transform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeTransforms(Lcom/koushikdutta/ion/Ion;)V
    .locals 9

    .line 100
    iget-boolean v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->hasTransforms:Z

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p1, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v7, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    new-instance v8, Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/koushikdutta/ion/BitmapFetcher;->transforms:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/koushikdutta/ion/BitmapFetcher;->postProcess:Ljava/util/ArrayList;

    move-object v1, v8

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/ion/TransformBitmap;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7, v8}, Lcom/koushikdutta/async/util/HashList;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private fastLoad(Ljava/lang/String;)Z
    .locals 13

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    .line 40
    iget-boolean v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->deepZoom:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    const-string v1, "file:/"

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 44
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v10

    .line 46
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/ion/loader/MediaFile;->getFileType(Ljava/lang/String;)Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    iget v1, v1, Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;->fileType:I

    invoke-static {v1}, Lcom/koushikdutta/ion/loader/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 48
    :cond_2
    new-instance p1, Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->animateGif:Z

    const/4 v8, 0x0

    invoke-direct {p1, v0, v1, v2, v8}, Lcom/koushikdutta/ion/LoadDeepZoom;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZLcom/koushikdutta/async/util/FileCache;)V

    .line 49
    new-instance v0, Lcom/koushikdutta/ion/Response;

    const/4 v3, 0x0

    sget-object v4, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/ion/Response;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-virtual {p1, v8, v0}, Lcom/koushikdutta/ion/LoadDeepZoom;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V

    return v9

    :cond_3
    :goto_0
    return v10

    .line 56
    :cond_4
    iget-boolean v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->hasTransforms:Z

    xor-int/lit8 v11, v1, 0x1

    .line 58
    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getLoaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/ion/Loader;

    .line 59
    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->contextReference:Lcom/koushikdutta/ion/IonContext;

    invoke-interface {v2}, Lcom/koushikdutta/ion/IonContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    iget v6, p0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleWidth:I

    iget v7, p0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleHeight:I

    iget-boolean v8, p0, Lcom/koushikdutta/ion/BitmapFetcher;->animateGif:Z

    move-object v3, v0

    move-object v5, p1

    invoke-interface/range {v1 .. v8}, Lcom/koushikdutta/ion/Loader;->loadBitmap(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 61
    new-instance p1, Lcom/koushikdutta/ion/LoadBitmapBase;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    invoke-direct {p1, v0, v2, v11}, Lcom/koushikdutta/ion/LoadBitmapBase;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Z)V

    .line 62
    new-instance v0, Lcom/koushikdutta/ion/BitmapFetcher$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/ion/BitmapFetcher$1;-><init>(Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/BitmapCallback;)V

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    return v9

    :cond_6
    return v10
.end method

.method public static shouldDeferImageView(Lcom/koushikdutta/ion/Ion;)Z
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/HashList;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/HashList;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    iget-object v5, p0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v5, v4}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 83
    instance-of v4, v4, Lcom/koushikdutta/ion/LoadBitmapBase;

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-le v3, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method


# virtual methods
.method public defer()Lcom/koushikdutta/ion/DeferredLoadBitmap;
    .locals 3

    .line 93
    new-instance v0, Lcom/koushikdutta/ion/DeferredLoadBitmap;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/koushikdutta/ion/DeferredLoadBitmap;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Lcom/koushikdutta/ion/BitmapFetcher;)V

    .line 94
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-direct {p0, v1}, Lcom/koushikdutta/ion/BitmapFetcher;->executeTransforms(Lcom/koushikdutta/ion/Ion;)V

    return-object v0
.end method

.method public execute()V
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->ion:Lcom/koushikdutta/ion/Ion;

    .line 122
    iget-object v1, v0, Lcom/koushikdutta/ion/Ion;->responseCache:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->getFileCache()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-boolean v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->noCache:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/util/FileCache;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->deepZoom:Z

    if-nez v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->postProcess:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/ion/BitmapCallback;->getBitmapSnapshot(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 129
    :cond_0
    iget-object v2, v0, Lcom/koushikdutta/ion/Ion;->bitmapsPending:Lcom/koushikdutta/async/util/HashList;

    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/util/HashList;->tag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->uri:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/koushikdutta/ion/BitmapFetcher;->fastLoad(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/koushikdutta/ion/IonRequestBuilder;->setHandler(Landroid/os/Handler;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 131
    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p0, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->loadRequestCallback:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

    .line 133
    iget-boolean v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->deepZoom:Z

    if-nez v2, :cond_1

    .line 134
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    new-instance v2, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v2}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    new-instance v3, Lcom/koushikdutta/ion/BitmapFetcher$2;

    invoke-direct {v3, p0, v0}, Lcom/koushikdutta/ion/BitmapFetcher$2;-><init>(Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/Ion;)V

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/ion/IonRequestBuilder;->execute(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Lcom/koushikdutta/ion/future/ResponseFuture;->withResponse()Lcom/koushikdutta/async/future/Future;

    move-result-object v8

    .line 146
    new-instance v9, Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->hasTransforms:Z

    xor-int/lit8 v4, v1, 0x1

    iget v5, p0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleWidth:I

    iget v6, p0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleHeight:I

    iget-boolean v7, p0, Lcom/koushikdutta/ion/BitmapFetcher;->animateGif:Z

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/koushikdutta/ion/LoadBitmap;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZIIZ)V

    invoke-interface {v8, v9}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Lcom/koushikdutta/async/util/FileCache;->getTempFile()Ljava/io/File;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/ion/IonRequestBuilder;->write(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->withResponse()Lcom/koushikdutta/async/future/Future;

    move-result-object v2

    .line 152
    new-instance v3, Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v4, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/koushikdutta/ion/BitmapFetcher;->animateGif:Z

    invoke-direct {v3, v0, v4, v5, v1}, Lcom/koushikdutta/ion/LoadDeepZoom;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZLcom/koushikdutta/async/util/FileCache;)V

    .line 153
    invoke-interface {v2, v3}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 157
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/BitmapFetcher;->executeTransforms(Lcom/koushikdutta/ion/Ion;)V

    return-void
.end method

.method public loadRequest(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Z
    .locals 0

    .line 113
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/BitmapFetcher;->fastLoad(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public recomputeDecodeKey()V
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->builder:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleWidth:I

    iget v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->sampleHeight:I

    iget-boolean v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->animateGif:Z

    iget-boolean v4, p0, Lcom/koushikdutta/ion/BitmapFetcher;->deepZoom:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeDecodeKey(Lcom/koushikdutta/ion/IonRequestBuilder;IIZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->decodeKey:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->transforms:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/koushikdutta/ion/IonBitmapRequestBuilder;->computeBitmapKey(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->bitmapKey:Ljava/lang/String;

    return-void
.end method
