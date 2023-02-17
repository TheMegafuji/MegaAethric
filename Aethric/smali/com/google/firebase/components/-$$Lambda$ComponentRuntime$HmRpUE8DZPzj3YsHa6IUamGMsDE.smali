.class public final synthetic Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$HmRpUE8DZPzj3YsHa6IUamGMsDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/ComponentRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$HmRpUE8DZPzj3YsHa6IUamGMsDE;->f$0:Lcom/google/firebase/components/ComponentRegistrar;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$HmRpUE8DZPzj3YsHa6IUamGMsDE;->f$0:Lcom/google/firebase/components/ComponentRegistrar;

    invoke-static {v0}, Lcom/google/firebase/components/ComponentRuntime;->lambda$toProviders$1(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object v0

    return-object v0
.end method
