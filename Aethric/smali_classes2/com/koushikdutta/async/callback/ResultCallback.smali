.class public interface abstract Lcom/koushikdutta/async/callback/ResultCallback;
.super Ljava/lang/Object;
.source "ResultCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TS;TT;)V"
        }
    .end annotation
.end method
