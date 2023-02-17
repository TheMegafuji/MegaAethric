.class public final synthetic Lcom/koushikdutta/async/parser/-$$Lambda$Eu-f2pcfSTqxq1moNJ7WmhpzGyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/parser/-$$Lambda$Eu-f2pcfSTqxq1moNJ7WmhpzGyM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/parser/-$$Lambda$Eu-f2pcfSTqxq1moNJ7WmhpzGyM;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/-$$Lambda$Eu-f2pcfSTqxq1moNJ7WmhpzGyM;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/parser/-$$Lambda$Eu-f2pcfSTqxq1moNJ7WmhpzGyM;->INSTANCE:Lcom/koushikdutta/async/parser/-$$Lambda$Eu-f2pcfSTqxq1moNJ7WmhpzGyM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
