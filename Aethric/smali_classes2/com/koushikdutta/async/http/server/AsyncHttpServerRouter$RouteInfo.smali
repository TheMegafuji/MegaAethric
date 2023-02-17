.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RouteInfo"
.end annotation


# instance fields
.field bodyCallback:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

.field callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field method:Ljava/lang/String;

.field regex:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;-><init>()V

    return-void
.end method
