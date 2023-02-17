.class public final synthetic Lcom/google/firebase/messaging/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/messaging/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    invoke-direct {v0}, Lcom/google/firebase/messaging/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:Lcom/google/firebase/messaging/-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
