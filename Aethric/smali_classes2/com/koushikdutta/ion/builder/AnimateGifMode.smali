.class public final enum Lcom/koushikdutta/ion/builder/AnimateGifMode;
.super Ljava/lang/Enum;
.source "AnimateGifMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/ion/builder/AnimateGifMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field public static final enum ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field public static final enum ANIMATE_ONCE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field public static final enum NO_ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const-string v1, "NO_ANIMATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->NO_ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 14
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const-string v1, "ANIMATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 18
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const-string v1, "ANIMATE_ONCE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE_ONCE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 6
    sget-object v5, Lcom/koushikdutta/ion/builder/AnimateGifMode;->NO_ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/koushikdutta/ion/builder/AnimateGifMode;->ANIMATE:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/koushikdutta/ion/builder/AnimateGifMode;->$VALUES:[Lcom/koushikdutta/ion/builder/AnimateGifMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/AnimateGifMode;
    .locals 1

    .line 6
    const-class v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/ion/builder/AnimateGifMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->$VALUES:[Lcom/koushikdutta/ion/builder/AnimateGifMode;

    invoke-virtual {v0}, [Lcom/koushikdutta/ion/builder/AnimateGifMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/ion/builder/AnimateGifMode;

    return-object v0
.end method
