.class Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorResource"
.end annotation


# instance fields
.field private final entryId:S

.field private final name:Ljava/lang/String;

.field private final packageId:B

.field private final typeId:B

.field private final value:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;

    .line 547
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I

    const p2, 0xffff

    and-int/2addr p2, p1

    int-to-short p2, p2

    .line 549
    iput-short p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 550
    iput-byte p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 551
    iput-byte p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S
    .locals 0

    .line 536
    iget-short p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B
    .locals 0

    .line 536
    iget-byte p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I
    .locals 0

    .line 536
    iget p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B
    .locals 0

    .line 536
    iget-byte p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B

    return p0
.end method
