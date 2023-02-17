.class public Lcom/koushikdutta/async/http/body/MultipartFormDataBody;
.super Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/server/BoundaryEmitter;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field public static final PRIMARY_TYPE:Ljava/lang/String; = "multipart/"


# instance fields
.field contentType:Ljava/lang/String;

.field formData:Lcom/koushikdutta/async/http/Headers;

.field lastData:Lcom/koushikdutta/async/ByteBufferList;

.field lastPart:Lcom/koushikdutta/async/http/body/Part;

.field liner:Lcom/koushikdutta/async/LineEmitter;

.field mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;"
        }
    .end annotation
.end field

.field totalToWrite:I

.field written:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    const-string v0, "multipart/form-data"

    .line 112
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;-><init>()V

    const-string v0, "multipart/form-data"

    .line 112
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/koushikdutta/async/http/Multimap;->parseSemicolonDelimited(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object p1

    const-string v0, "boundary"

    .line 115
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 117
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No boundary found for multipart/form-data"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->report(Ljava/lang/Exception;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addFilePart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 231
    new-instance v0, Lcom/koushikdutta/async/http/body/FilePart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    return-void
.end method

.method public addPart(Lcom/koushikdutta/async/http/body/Part;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStringPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 235
    new-instance v0, Lcom/koushikdutta/async/http/body/StringPart;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/body/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    return-void
.end method

.method public get()Lcom/koushikdutta/async/http/Multimap;
    .locals 2

    .line 247
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/Multimap;-><init>(Lcom/koushikdutta/async/http/Multimap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->get()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .line 188
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMultipartCallback()Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method handleLast()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastData:Lcom/koushikdutta/async/ByteBufferList;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastData:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->peekString()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastPart:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/Part;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "unnamed"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastPart:Lcom/koushikdutta/async/http/body/Part;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/Part;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_0
    new-instance v2, Lcom/koushikdutta/async/http/body/StringPart;

    invoke-direct {v2, v1, v0}, Lcom/koushikdutta/async/http/body/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastPart:Lcom/koushikdutta/async/http/body/Part;

    iget-object v3, v3, Lcom/koushikdutta/async/http/body/Part;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    iput-object v3, v2, Lcom/koushikdutta/async/http/body/StringPart;->mHeaders:Lcom/koushikdutta/async/http/Headers;

    .line 51
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->addPart(Lcom/koushikdutta/async/http/body/Part;)V

    .line 53
    iget-object v2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->formData:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v2, v1, v0}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastPart:Lcom/koushikdutta/async/http/body/Part;

    .line 56
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastData:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method public length()I
    .locals 9

    .line 202
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setBoundary(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/body/Part;

    .line 208
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->getRawHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v3

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryStart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    int-to-long v4, v0

    .line 211
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/body/Part;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v2, v0

    add-long/2addr v6, v2

    const/4 v0, 0x2

    int-to-long v2, v0

    add-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryEnd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 214
    iput v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->totalToWrite:I

    return v0
.end method

.method protected onBoundaryEnd()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryEnd()V

    .line 68
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->handleLast()V

    return-void
.end method

.method protected onBoundaryStart()V
    .locals 3

    .line 73
    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 74
    new-instance v1, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {v1}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    .line 75
    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/LineEmitter;->setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setMultipartCallback(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/body/Part;

    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "multipart content is empty"

    return-object v0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    new-instance p1, Lcom/koushikdutta/async/future/Continuation;

    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;

    invoke-direct {v0, p0, p3}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$2;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 148
    iget-object p3, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mParts:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/body/Part;

    .line 149
    new-instance v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$5;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$4;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/body/Part;Lcom/koushikdutta/async/DataSink;)V

    .line 157
    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$3;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    goto :goto_0

    .line 175
    :cond_1
    new-instance p3, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;

    invoke-direct {p3, p0, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V

    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 183
    invoke-virtual {p1}, Lcom/koushikdutta/async/future/Continuation;->start()Lcom/koushikdutta/async/future/Continuation;

    return-void
.end method
