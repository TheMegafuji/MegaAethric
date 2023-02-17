.class public final synthetic Lcom/google/firebase/tracing/-$$Lambda$ComponentMonitor$v3o8gipGciakn7UZ7-TyzlTsBXo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/google/firebase/components/Component;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/components/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/tracing/-$$Lambda$ComponentMonitor$v3o8gipGciakn7UZ7-TyzlTsBXo;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/tracing/-$$Lambda$ComponentMonitor$v3o8gipGciakn7UZ7-TyzlTsBXo;->f$1:Lcom/google/firebase/components/Component;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/tracing/-$$Lambda$ComponentMonitor$v3o8gipGciakn7UZ7-TyzlTsBXo;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/tracing/-$$Lambda$ComponentMonitor$v3o8gipGciakn7UZ7-TyzlTsBXo;->f$1:Lcom/google/firebase/components/Component;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/tracing/ComponentMonitor;->lambda$processRegistrar$0(Ljava/lang/String;Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
