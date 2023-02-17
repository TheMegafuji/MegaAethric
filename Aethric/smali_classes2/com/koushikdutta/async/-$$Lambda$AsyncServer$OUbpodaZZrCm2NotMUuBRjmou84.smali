.class public final synthetic Lcom/koushikdutta/async/-$$Lambda$AsyncServer$OUbpodaZZrCm2NotMUuBRjmou84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/callback/CompletedCallback;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$OUbpodaZZrCm2NotMUuBRjmou84;->f$0:Lcom/koushikdutta/async/callback/CompletedCallback;

    iput-object p2, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$OUbpodaZZrCm2NotMUuBRjmou84;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$OUbpodaZZrCm2NotMUuBRjmou84;->f$0:Lcom/koushikdutta/async/callback/CompletedCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/-$$Lambda$AsyncServer$OUbpodaZZrCm2NotMUuBRjmou84;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->lambda$post$1(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    return-void
.end method
