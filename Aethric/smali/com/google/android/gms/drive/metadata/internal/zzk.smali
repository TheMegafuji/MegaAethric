.class public final Lcom/google/android/gms/drive/metadata/internal/zzk;
.super Ljava/lang/Object;


# instance fields
.field private zzji:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzji:Ljava/lang/String;

    return-void
.end method

.method public static zzg(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzk;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_2
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/metadata/internal/zzk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/metadata/internal/zzk;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzji:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzji:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzji:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isFolder()Z
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzji:Ljava/lang/String;

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzji:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbh()Z
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzji:Ljava/lang/String;

    const-string v1, "application/vnd.google-apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
