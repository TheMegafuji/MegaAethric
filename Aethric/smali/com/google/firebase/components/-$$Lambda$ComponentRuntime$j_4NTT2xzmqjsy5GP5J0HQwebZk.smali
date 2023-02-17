.class public final synthetic Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$j_4NTT2xzmqjsy5GP5J0HQwebZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/components/OptionalProvider;

.field public final synthetic f$1:Lcom/google/firebase/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$j_4NTT2xzmqjsy5GP5J0HQwebZk;->f$0:Lcom/google/firebase/components/OptionalProvider;

    iput-object p2, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$j_4NTT2xzmqjsy5GP5J0HQwebZk;->f$1:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$j_4NTT2xzmqjsy5GP5J0HQwebZk;->f$0:Lcom/google/firebase/components/OptionalProvider;

    iget-object v1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$j_4NTT2xzmqjsy5GP5J0HQwebZk;->f$1:Lcom/google/firebase/inject/Provider;

    invoke-static {v0, v1}, Lcom/google/firebase/components/ComponentRuntime;->lambda$processInstanceComponents$2(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
