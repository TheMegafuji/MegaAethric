.class public interface abstract Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;
.super Ljava/lang/Object;
.source "UrlEncodedBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract setBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation
.end method

.method public abstract setBodyParameters(Ljava/util/Map;)Lcom/koushikdutta/ion/builder/UrlEncodedBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)TU;"
        }
    .end annotation
.end method
