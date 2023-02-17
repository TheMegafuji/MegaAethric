.class public final synthetic Lcom/koushikdutta/ion/gson/-$$Lambda$GsonParser$QGHZPfnGJN9lMrx43qrWJGDKYWs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/ion/gson/GsonParser;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/ion/gson/GsonParser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonParser$QGHZPfnGJN9lMrx43qrWJGDKYWs;->f$0:Lcom/koushikdutta/ion/gson/GsonParser;

    iput-object p2, p0, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonParser$QGHZPfnGJN9lMrx43qrWJGDKYWs;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonParser$QGHZPfnGJN9lMrx43qrWJGDKYWs;->f$0:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object v1, p0, Lcom/koushikdutta/ion/gson/-$$Lambda$GsonParser$QGHZPfnGJN9lMrx43qrWJGDKYWs;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonParser;->lambda$parse$0$GsonParser(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
