.class public final synthetic Lcom/koushikdutta/ion/gson/-$$Lambda$GsonSerializer$3qExlpJlqtvTDYgX7E0HWRtgvPc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/ion/gson/GsonSerializer;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/ion/gson/GsonSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonSerializer$3qExlpJlqtvTDYgX7E0HWRtgvPc;->f$0:Lcom/koushikdutta/ion/gson/GsonSerializer;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonSerializer$3qExlpJlqtvTDYgX7E0HWRtgvPc;->f$0:Lcom/koushikdutta/ion/gson/GsonSerializer;

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;->lambda$parse$0$GsonSerializer(Lcom/koushikdutta/async/ByteBufferList;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
