.class public interface abstract Lcom/koushikdutta/ion/builder/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
.implements Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "R::",
        "Lcom/koushikdutta/ion/builder/RequestBuilder;",
        "M::",
        "Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;",
        "U::",
        "Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/ion/builder/MultipartBodyBuilder<",
        "TM;>;",
        "Lcom/koushikdutta/ion/builder/UrlEncodedBuilder<",
        "TU;>;"
    }
.end annotation


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract addHeaders(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)TR;"
        }
    .end annotation
.end method

.method public abstract addQueries(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)TR;"
        }
    .end annotation
.end method

.method public abstract addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract basicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract followRedirect(Z)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation
.end method

.method public abstract noCache()Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract onHeaders(Lcom/koushikdutta/ion/HeadersCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/HeadersCallback;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract progress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/ProgressCallback;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract progressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract progressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ProgressDialog;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract progressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/ProgressCallback;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract proxy(Ljava/lang/String;I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TR;"
        }
    .end annotation
.end method

.method public abstract setByteArrayBody([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TF;"
        }
    .end annotation
.end method

.method public abstract setDocumentBody(Lorg/w3c/dom/Document;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")TF;"
        }
    .end annotation
.end method

.method public abstract setFileBody(Ljava/io/File;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TF;"
        }
    .end annotation
.end method

.method public abstract setHandler(Landroid/os/Handler;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method

.method public varargs abstract setHeader([Lcom/koushikdutta/async/http/NameValuePair;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/koushikdutta/async/http/NameValuePair;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract setJsonArrayBody(Lcom/google/gson/JsonArray;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            ")TF;"
        }
    .end annotation
.end method

.method public abstract setJsonObjectBody(Lcom/google/gson/JsonObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")TF;"
        }
    .end annotation
.end method

.method public abstract setJsonPojoBody(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TF;"
        }
    .end annotation
.end method

.method public abstract setJsonPojoBody(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)TF;"
        }
    .end annotation
.end method

.method public abstract setLogging(Ljava/lang/String;I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TR;"
        }
    .end annotation
.end method

.method public abstract setStreamBody(Ljava/io/InputStream;)Lcom/koushikdutta/ion/builder/Builders$Any$F;
.end method

.method public abstract setStreamBody(Ljava/io/InputStream;I)Lcom/koushikdutta/ion/builder/Builders$Any$F;
.end method

.method public abstract setStringBody(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation
.end method

.method public abstract setTimeout(I)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation
.end method

.method public abstract uploadProgress(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/ProgressCallback;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract uploadProgressBar(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract uploadProgressDialog(Landroid/app/ProgressDialog;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ProgressDialog;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract uploadProgressHandler(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/ProgressCallback;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract userAgent(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method
