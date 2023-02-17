.class public final enum Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
.super Ljava/lang/Enum;
.source "MessagingClientEvent.java"

# interfaces
.implements Lcom/google/firebase/encoders/proto/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;",
        ">;",
        "Lcom/google/firebase/encoders/proto/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public static final enum DATA_MESSAGE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public static final enum DISPLAY_NOTIFICATION:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public static final enum TOPIC:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public static final enum UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 305
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 307
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const-string v1, "DATA_MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DATA_MESSAGE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 309
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const-string v1, "TOPIC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->TOPIC:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 311
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const-string v1, "DISPLAY_NOTIFICATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DISPLAY_NOTIFICATION:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 304
    sget-object v6, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DATA_MESSAGE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->TOPIC:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->$VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 316
    iput p3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
    .locals 1

    .line 304
    const-class v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
    .locals 1

    .line 304
    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->$VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    invoke-virtual {v0}, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->number_:I

    return v0
.end method
