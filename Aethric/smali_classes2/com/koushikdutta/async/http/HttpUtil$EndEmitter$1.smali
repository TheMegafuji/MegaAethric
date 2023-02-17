.class final Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$ret:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->val$ret:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->val$ret:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->val$e:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->access$000(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V

    return-void
.end method
