.class final enum Lcom/google/android/gms/internal/drive/zzkg;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/drive/zzkg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzrg:Lcom/google/android/gms/internal/drive/zzkg;

.field public static final enum zzrh:Lcom/google/android/gms/internal/drive/zzkg;

.field public static final enum zzri:Lcom/google/android/gms/internal/drive/zzkg;

.field public static final enum zzrj:Lcom/google/android/gms/internal/drive/zzkg;

.field private static final synthetic zzrl:[Lcom/google/android/gms/internal/drive/zzkg;


# instance fields
.field private final zzrk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkg;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/drive/zzkg;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkg;->zzrg:Lcom/google/android/gms/internal/drive/zzkg;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkg;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/drive/zzkg;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkg;->zzrh:Lcom/google/android/gms/internal/drive/zzkg;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkg;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/drive/zzkg;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkg;->zzri:Lcom/google/android/gms/internal/drive/zzkg;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/drive/zzkg;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/drive/zzkg;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzkg;->zzrj:Lcom/google/android/gms/internal/drive/zzkg;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/gms/internal/drive/zzkg;

    .line 9
    sget-object v6, Lcom/google/android/gms/internal/drive/zzkg;->zzrg:Lcom/google/android/gms/internal/drive/zzkg;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/drive/zzkg;->zzrh:Lcom/google/android/gms/internal/drive/zzkg;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/drive/zzkg;->zzri:Lcom/google/android/gms/internal/drive/zzkg;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/drive/zzkg;->zzrl:[Lcom/google/android/gms/internal/drive/zzkg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/drive/zzkg;->zzrk:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/drive/zzkg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkg;->zzrl:[Lcom/google/android/gms/internal/drive/zzkg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/drive/zzkg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/drive/zzkg;

    return-object v0
.end method
