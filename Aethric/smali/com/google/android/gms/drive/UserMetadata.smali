.class public Lcom/google/android/gms/drive/UserMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/UserMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbo:Ljava/lang/String;

.field private final zzbp:Ljava/lang/String;

.field private final zzbq:Ljava/lang/String;

.field private final zzbr:Z

.field private final zzbs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/android/gms/drive/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/UserMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbo:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbp:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbq:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbr:Z

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbo:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbp:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbq:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbr:Z

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbs:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Permission ID: \'%s\', Display Name: \'%s\', Picture URL: \'%s\', Authenticated User: %b, Email: \'%s\'"

    .line 19
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbo:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbp:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbq:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbr:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/drive/UserMetadata;->zzbs:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
