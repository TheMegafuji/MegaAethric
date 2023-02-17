.class Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeChunk"
.end annotation


# static fields
.field private static final CONFIG_SIZE:B = 0x40t

.field private static final HEADER_SIZE:S = 0x54s

.field private static final OFFSET_NO_ENTRY:I = -0x1


# instance fields
.field private final config:[B

.field private final entryCount:I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final offsetTable:[I

.field private final resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Set;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;I)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 433
    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->config:[B

    .line 438
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->entryCount:I

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    const/4 v0, 0x0

    .line 443
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 444
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 445
    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    new-instance v4, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$1300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    new-array p1, p3, [I

    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    const/4 p1, 0x0

    :goto_1
    if-ge v2, p3, :cond_2

    .line 451
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    aput p1, v0, v2

    add-int/lit8 p1, p1, 0x10

    goto :goto_2

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_1

    .line 459
    :cond_2
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 p2, 0x201

    const/16 p3, 0x54

    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getChunkSize()I

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    return-void
.end method

.method private getEntryStart()I
    .locals 1

    .line 481
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getOffsetTableSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x54

    return v0
.end method

.method private getOffsetTableSize()I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method getChunkSize()I
    .locals 2

    .line 477
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getEntryStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 464
    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 465
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->entryCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 466
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getEntryStart()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 467
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->config:[B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 468
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->offsetTable:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 469
    invoke-static {v4}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->resEntries:[Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 472
    invoke-virtual {v3, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
