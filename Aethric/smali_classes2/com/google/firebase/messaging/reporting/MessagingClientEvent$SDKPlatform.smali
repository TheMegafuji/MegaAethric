.class public final enum Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;
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
    name = "SDKPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;",
        ">;",
        "Lcom/google/firebase/encoders/proto/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public static final enum ANDROID:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public static final enum IOS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public static final enum UNKNOWN_OS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public static final enum WEB:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;


# instance fields
.field private final number_:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 326
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    const-string v1, "UNKNOWN_OS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->UNKNOWN_OS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 328
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    const-string v1, "ANDROID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->ANDROID:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 330
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    const-string v1, "IOS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->IOS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 332
    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    const-string v1, "WEB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->WEB:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 325
    sget-object v6, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->UNKNOWN_OS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->ANDROID:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->IOS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->$VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 337
    iput p3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->number_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;
    .locals 1

    .line 325
    const-class v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;
    .locals 1

    .line 325
    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->$VALUES:[Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    invoke-virtual {v0}, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->number_:I

    return v0
.end method
