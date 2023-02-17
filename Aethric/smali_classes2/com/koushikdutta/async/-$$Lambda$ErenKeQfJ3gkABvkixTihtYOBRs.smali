.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$ErenKeQfJ3gkABvkixTihtYOBRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/BufferedDataSink;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$ErenKeQfJ3gkABvkixTihtYOBRs;->f$0:Lcom/koushikdutta/async/BufferedDataSink;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$ErenKeQfJ3gkABvkixTihtYOBRs;->f$0:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->end()V

    return-void
.end method
