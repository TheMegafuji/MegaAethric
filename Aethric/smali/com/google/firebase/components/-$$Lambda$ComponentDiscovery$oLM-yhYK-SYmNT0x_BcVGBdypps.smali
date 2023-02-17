.class public final synthetic Lcom/google/firebase/components/-$$Lambda$ComponentDiscovery$oLM-yhYK-SYmNT0x_BcVGBdypps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/-$$Lambda$ComponentDiscovery$oLM-yhYK-SYmNT0x_BcVGBdypps;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/-$$Lambda$ComponentDiscovery$oLM-yhYK-SYmNT0x_BcVGBdypps;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/components/ComponentDiscovery;->lambda$discoverLazy$0(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object v0

    return-object v0
.end method
