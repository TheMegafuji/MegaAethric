.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[B

.field public final synthetic f$1:[B

.field public final synthetic f$2:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

.field public final synthetic f$3:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic f$4:Ljava/net/InetAddress;

.field public final synthetic f$5:I

.field public final synthetic f$6:Lcom/koushikdutta/async/callback/ListenCallback;


# direct methods
.method public synthetic constructor <init>([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$0:[B

    iput-object p2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$1:[B

    iput-object p3, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$2:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    iput-object p4, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$3:Lcom/koushikdutta/async/AsyncServer;

    iput-object p5, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$4:Ljava/net/InetAddress;

    iput p6, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$5:I

    iput-object p7, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$6:Lcom/koushikdutta/async/callback/ListenCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$0:[B

    iget-object v1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$1:[B

    iget-object v2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$2:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    iget-object v3, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$3:Lcom/koushikdutta/async/AsyncServer;

    iget-object v4, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$4:Ljava/net/InetAddress;

    iget v5, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$5:I

    iget-object v6, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;->f$6:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->lambda$listenSecure$4([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V

    return-void
.end method
