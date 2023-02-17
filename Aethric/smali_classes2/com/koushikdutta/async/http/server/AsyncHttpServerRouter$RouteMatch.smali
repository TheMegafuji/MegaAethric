.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteMatch"
.end annotation


# instance fields
.field public final bodyCallback:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

.field public final callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field public final matcher:Ljava/util/regex/Matcher;

.field public final method:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->method:Ljava/lang/String;

    .line 352
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->path:Ljava/lang/String;

    .line 353
    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->matcher:Ljava/util/regex/Matcher;

    .line 354
    iput-object p4, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 355
    iput-object p5, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;->bodyCallback:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;)V
    .locals 0

    .line 343
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;)V

    return-void
.end method
