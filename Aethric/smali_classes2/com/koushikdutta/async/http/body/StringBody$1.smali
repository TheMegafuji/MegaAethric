.class Lcom/koushikdutta/async/http/body/StringBody$1;
.super Ljava/lang/Object;
.source "StringBody.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/StringBody;->parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/StringBody;

.field final synthetic val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/StringBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/StringBody$1;->this$0:Lcom/koushikdutta/async/http/body/StringBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/StringBody$1;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/body/StringBody$1;->onCompleted(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/StringBody$1;->this$0:Lcom/koushikdutta/async/http/body/StringBody;

    iput-object p2, v0, Lcom/koushikdutta/async/http/body/StringBody;->string:Ljava/lang/String;

    .line 28
    iget-object p2, p0, Lcom/koushikdutta/async/http/body/StringBody$1;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
