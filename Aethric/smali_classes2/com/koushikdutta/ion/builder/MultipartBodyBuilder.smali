.class public interface abstract Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
.super Ljava/lang/Object;
.source "MultipartBodyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addMultipartParts(Ljava/lang/Iterable;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/koushikdutta/async/http/body/Part;",
            ">;)TM;"
        }
    .end annotation
.end method

.method public varargs abstract addMultipartParts([Lcom/koushikdutta/async/http/body/Part;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/koushikdutta/async/http/body/Part;",
            ")TM;"
        }
    .end annotation
.end method

.method public abstract setMultipartContentType(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TM;"
        }
    .end annotation
.end method

.method public abstract setMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TM;"
        }
    .end annotation
.end method

.method public abstract setMultipartFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TM;"
        }
    .end annotation
.end method

.method public abstract setMultipartParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TM;"
        }
    .end annotation
.end method

.method public abstract setMultipartParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)TM;"
        }
    .end annotation
.end method
