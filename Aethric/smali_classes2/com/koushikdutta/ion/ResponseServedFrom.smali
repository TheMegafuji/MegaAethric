.class public final enum Lcom/koushikdutta/ion/ResponseServedFrom;
.super Ljava/lang/Enum;
.source "ResponseServedFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/ion/ResponseServedFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/ion/ResponseServedFrom;

.field public static final enum LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

.field public static final enum LOADED_FROM_CONDITIONAL_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

.field public static final enum LOADED_FROM_MEMORY:Lcom/koushikdutta/ion/ResponseServedFrom;

.field public static final enum LOADED_FROM_NETWORK:Lcom/koushikdutta/ion/ResponseServedFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/koushikdutta/ion/ResponseServedFrom;

    const-string v1, "LOADED_FROM_MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/ResponseServedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_MEMORY:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 8
    new-instance v0, Lcom/koushikdutta/ion/ResponseServedFrom;

    const-string v1, "LOADED_FROM_CACHE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/ion/ResponseServedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 9
    new-instance v0, Lcom/koushikdutta/ion/ResponseServedFrom;

    const-string v1, "LOADED_FROM_CONDITIONAL_CACHE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/ion/ResponseServedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CONDITIONAL_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 10
    new-instance v0, Lcom/koushikdutta/ion/ResponseServedFrom;

    const-string v1, "LOADED_FROM_NETWORK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/koushikdutta/ion/ResponseServedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_NETWORK:Lcom/koushikdutta/ion/ResponseServedFrom;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 6
    sget-object v6, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_MEMORY:Lcom/koushikdutta/ion/ResponseServedFrom;

    aput-object v6, v1, v2

    sget-object v2, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    aput-object v2, v1, v3

    sget-object v2, Lcom/koushikdutta/ion/ResponseServedFrom;->LOADED_FROM_CONDITIONAL_CACHE:Lcom/koushikdutta/ion/ResponseServedFrom;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/koushikdutta/ion/ResponseServedFrom;->$VALUES:[Lcom/koushikdutta/ion/ResponseServedFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/ion/ResponseServedFrom;
    .locals 1

    .line 6
    const-class v0, Lcom/koushikdutta/ion/ResponseServedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/ion/ResponseServedFrom;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/ion/ResponseServedFrom;
    .locals 1

    .line 6
    sget-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->$VALUES:[Lcom/koushikdutta/ion/ResponseServedFrom;

    invoke-virtual {v0}, [Lcom/koushikdutta/ion/ResponseServedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/ion/ResponseServedFrom;

    return-object v0
.end method
