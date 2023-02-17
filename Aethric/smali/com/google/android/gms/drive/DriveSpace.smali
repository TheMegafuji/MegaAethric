.class public Lcom/google/android/gms/drive/DriveSpace;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzah:Lcom/google/android/gms/drive/DriveSpace;

.field public static final zzai:Lcom/google/android/gms/drive/DriveSpace;

.field public static final zzaj:Lcom/google/android/gms/drive/DriveSpace;

.field private static final zzak:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzal:Ljava/lang/String;

.field private static final zzam:Ljava/util/regex/Pattern;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/google/android/gms/drive/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveSpace;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    new-instance v0, Lcom/google/android/gms/drive/DriveSpace;

    const-string v1, "DRIVE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/DriveSpace;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/DriveSpace;->zzah:Lcom/google/android/gms/drive/DriveSpace;

    .line 19
    new-instance v0, Lcom/google/android/gms/drive/DriveSpace;

    const-string v1, "APP_DATA_FOLDER"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/DriveSpace;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/DriveSpace;->zzai:Lcom/google/android/gms/drive/DriveSpace;

    .line 20
    new-instance v0, Lcom/google/android/gms/drive/DriveSpace;

    const-string v1, "PHOTOS"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/DriveSpace;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/DriveSpace;->zzaj:Lcom/google/android/gms/drive/DriveSpace;

    .line 21
    sget-object v1, Lcom/google/android/gms/drive/DriveSpace;->zzah:Lcom/google/android/gms/drive/DriveSpace;

    sget-object v2, Lcom/google/android/gms/drive/DriveSpace;->zzai:Lcom/google/android/gms/drive/DriveSpace;

    .line 22
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/drive/DriveSpace;->zzak:Ljava/util/Set;

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/drive/DriveSpace;->zzal:Ljava/lang/String;

    const-string v0, "[A-Z0-9_]*"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/drive/DriveSpace;->zzam:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/drive/DriveSpace;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/drive/DriveSpace;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveSpace;->name:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/drive/DriveSpace;

    iget-object p1, p1, Lcom/google/android/gms/drive/DriveSpace;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveSpace;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4a54c0de    # 3485751.5f

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveSpace;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveSpace;->name:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 14
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
