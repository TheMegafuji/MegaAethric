.class public final synthetic Lcom/google/firebase/components/-$$Lambda$Component$LDWunTP14i_DtHnzlsCO6vhCq9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$Component$LDWunTP14i_DtHnzlsCO6vhCq9U;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/-$$Lambda$Component$LDWunTP14i_DtHnzlsCO6vhCq9U;->f$0:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/firebase/components/Component;->lambda$of$0(Ljava/lang/Object;Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
