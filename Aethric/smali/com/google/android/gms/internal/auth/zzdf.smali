.class final Lcom/google/android/gms/internal/auth/zzdf;
.super Lcom/google/android/gms/internal/auth/zzdh;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# static fields
.field static final zza:Lcom/google/android/gms/internal/auth/zzdf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/zzdf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzdf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzdf;->zza:Lcom/google/android/gms/internal/auth/zzdf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzdh;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x79a31aac

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
