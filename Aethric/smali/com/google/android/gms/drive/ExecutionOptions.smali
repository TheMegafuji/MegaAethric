.class public Lcom/google/android/gms/drive/ExecutionOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    }
.end annotation


# static fields
.field public static final CONFLICT_STRATEGY_KEEP_REMOTE:I = 0x1

.field public static final CONFLICT_STRATEGY_OVERWRITE_REMOTE:I = 0x0

.field public static final MAX_TRACKING_TAG_STRING_LENGTH:I = 0x10000


# instance fields
.field private final zzan:Ljava/lang/String;

.field private final zzao:Z

.field private final zzap:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzan:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzao:Z

    .line 4
    iput p3, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzap:I

    return-void
.end method

.method public static zza(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 24
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/ExecutionOptions;

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzan:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/ExecutionOptions;->zzan:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzap:I

    iget v3, p1, Lcom/google/android/gms/drive/ExecutionOptions;->zzap:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzao:Z

    iget-boolean p1, p1, Lcom/google/android/gms/drive/ExecutionOptions;->zzao:Z

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzan:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzap:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzao:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/drive/Drive;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zza(Lcom/google/android/gms/internal/drive/zzaw;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzaw;)V
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzao:Z

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->zzah()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzan:Ljava/lang/String;

    return-object v0
.end method

.method public final zzm()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzao:Z

    return v0
.end method

.method public final zzn()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzap:I

    return v0
.end method
