.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$yA0E4MQeNDHgWOYz3s7hI7v-Zm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/SuccessCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/-$$Lambda$yA0E4MQeNDHgWOYz3s7hI7v-Zm8;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final success(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/-$$Lambda$yA0E4MQeNDHgWOYz3s7hI7v-Zm8;->f$0:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
