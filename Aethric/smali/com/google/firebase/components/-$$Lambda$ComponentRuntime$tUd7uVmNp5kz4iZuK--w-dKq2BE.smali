.class public final synthetic Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$tUd7uVmNp5kz4iZuK--w-dKq2BE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/components/LazySet;

.field public final synthetic f$1:Lcom/google/firebase/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$tUd7uVmNp5kz4iZuK--w-dKq2BE;->f$0:Lcom/google/firebase/components/LazySet;

    iput-object p2, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$tUd7uVmNp5kz4iZuK--w-dKq2BE;->f$1:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$tUd7uVmNp5kz4iZuK--w-dKq2BE;->f$0:Lcom/google/firebase/components/LazySet;

    iget-object v1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$tUd7uVmNp5kz4iZuK--w-dKq2BE;->f$1:Lcom/google/firebase/inject/Provider;

    invoke-static {v0, v1}, Lcom/google/firebase/components/ComponentRuntime;->lambda$processSetComponents$3(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
