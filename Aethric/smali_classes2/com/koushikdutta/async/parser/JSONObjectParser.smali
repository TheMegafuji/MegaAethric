.class public Lcom/koushikdutta/async/parser/JSONObjectParser;
.super Ljava/lang/Object;
.source "JSONObjectParser.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMime()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 28
    const-class v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/StringParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    sget-object v0, Lcom/koushikdutta/async/parser/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;->INSTANCE:Lcom/koushikdutta/async/parser/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 15
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/parser/JSONObjectParser;->write(Lcom/koushikdutta/async/DataSink;Lorg/json/JSONObject;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public write(Lcom/koushikdutta/async/DataSink;Lorg/json/JSONObject;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/parser/StringParser;->write(Lcom/koushikdutta/async/DataSink;Ljava/lang/String;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
