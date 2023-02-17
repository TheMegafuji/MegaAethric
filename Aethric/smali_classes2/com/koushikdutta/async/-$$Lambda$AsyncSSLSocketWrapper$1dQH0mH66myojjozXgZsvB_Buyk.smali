.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/SimpleCancellable;

.field public final synthetic f$1:Lcom/koushikdutta/async/callback/ConnectCallback;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$0:Lcom/koushikdutta/async/future/SimpleCancellable;

    iput-object p2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$1:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$3:I

    iput-boolean p5, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 7

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$0:Lcom/koushikdutta/async/future/SimpleCancellable;

    iget-object v1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$1:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$3:I

    iget-boolean v4, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;->f$4:Z

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->lambda$connectSocket$2(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZLjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method
