.class public Lcom/koushikdutta/ion/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private headers:Lcom/koushikdutta/ion/HeadersResponse;

.field private request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/ResponseServedFrom;",
            "Lcom/koushikdutta/ion/HeadersResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/koushikdutta/ion/Response;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 11
    iput-object p2, p0, Lcom/koushikdutta/ion/Response;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 12
    iput-object p3, p0, Lcom/koushikdutta/ion/Response;->headers:Lcom/koushikdutta/ion/HeadersResponse;

    .line 13
    iput-object p4, p0, Lcom/koushikdutta/ion/Response;->exception:Ljava/lang/Exception;

    .line 14
    iput-object p5, p0, Lcom/koushikdutta/ion/Response;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/koushikdutta/ion/Response;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/ion/HeadersResponse;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/ion/Response;->headers:Lcom/koushikdutta/ion/HeadersResponse;

    return-object v0
.end method

.method public getRequest()Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/ion/Response;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/koushikdutta/ion/Response;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getServedFrom()Lcom/koushikdutta/ion/ResponseServedFrom;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/koushikdutta/ion/Response;->servedFrom:Lcom/koushikdutta/ion/ResponseServedFrom;

    return-object v0
.end method
