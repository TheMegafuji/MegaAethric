.class final enum Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
.super Ljava/lang/Enum;
.source "ChunkedInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_LEN_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_LEN_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum ERROR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_LEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 15
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_LEN_CR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 16
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_LEN_CRLF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 17
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 18
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_CR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_CRLF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 20
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "COMPLETE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 21
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->ERROR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 13
    sget-object v10, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    aput-object v10, v1, v2

    sget-object v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    aput-object v2, v1, v6

    sget-object v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    aput-object v2, v1, v7

    sget-object v2, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->$VALUES:[Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
    .locals 1

    .line 13
    const-class v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
    .locals 1

    .line 13
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->$VALUES:[Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    return-object v0
.end method
