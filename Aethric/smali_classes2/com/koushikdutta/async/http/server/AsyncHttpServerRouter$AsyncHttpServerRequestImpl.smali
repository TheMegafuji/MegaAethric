.class abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.source "AsyncHttpServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncHttpServerRequestImpl"
.end annotation


# instance fields
.field matcher:Ljava/util/regex/Matcher;

.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatcher()Ljava/util/regex/Matcher;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;->matcher:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method public setMatcher(Ljava/util/regex/Matcher;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;->matcher:Ljava/util/regex/Matcher;

    return-void
.end method
