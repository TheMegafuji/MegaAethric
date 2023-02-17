.class Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;
.super Ljava/lang/Object;
.source "UrlEncodedFormBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

.field final synthetic val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic val$data:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->this$0:Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->val$data:Lcom/koushikdutta/async/ByteBufferList;

    iput-object p3, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1

    if-nez p1, :cond_0

    .line 80
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->this$0:Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->val$data:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/Multimap;->parseUrlEncoded(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->access$002(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/http/Multimap;)Lcom/koushikdutta/async/http/Multimap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 79
    :cond_0
    :try_start_1
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
