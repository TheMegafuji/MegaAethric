.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$nLUzEUAkwlIcHRA8apYh908-V4g;

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

    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
