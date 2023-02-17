.class public final synthetic Lcom/koushikdutta/async/future/-$$Lambda$aZvS3YDHoKr6bnGLhb3C3itLA-c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$aZvS3YDHoKr6bnGLhb3C3itLA-c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/-$$Lambda$aZvS3YDHoKr6bnGLhb3C3itLA-c;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/-$$Lambda$aZvS3YDHoKr6bnGLhb3C3itLA-c;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/-$$Lambda$aZvS3YDHoKr6bnGLhb3C3itLA-c;->INSTANCE:Lcom/koushikdutta/async/future/-$$Lambda$aZvS3YDHoKr6bnGLhb3C3itLA-c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
