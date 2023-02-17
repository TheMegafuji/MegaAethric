.class public Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.super Ljava/lang/Object;
.source "DataCallback.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/callback/DataCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullDataCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 11
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void
.end method
