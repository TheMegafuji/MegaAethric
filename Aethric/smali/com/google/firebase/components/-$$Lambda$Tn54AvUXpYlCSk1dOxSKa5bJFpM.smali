.class public final synthetic Lcom/google/firebase/components/-$$Lambda$Tn54AvUXpYlCSk1dOxSKa5bJFpM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrarProcessor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/components/-$$Lambda$Tn54AvUXpYlCSk1dOxSKa5bJFpM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/-$$Lambda$Tn54AvUXpYlCSk1dOxSKa5bJFpM;

    invoke-direct {v0}, Lcom/google/firebase/components/-$$Lambda$Tn54AvUXpYlCSk1dOxSKa5bJFpM;-><init>()V

    sput-object v0, Lcom/google/firebase/components/-$$Lambda$Tn54AvUXpYlCSk1dOxSKa5bJFpM;->INSTANCE:Lcom/google/firebase/components/-$$Lambda$Tn54AvUXpYlCSk1dOxSKa5bJFpM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processRegistrar(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 0

    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
