.class Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;
.super Ljava/lang/Object;
.source "AsyncHttpServerRequestImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
