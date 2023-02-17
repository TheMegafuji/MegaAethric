.class final Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/TransferPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/TransferPreferencesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzbl:I

.field private final zzbm:Z

.field private final zzbn:I


# direct methods
.method constructor <init>(IZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbm:Z

    .line 4
    iput p3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbn:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;

    .line 15
    iget v2, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    iget v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbm:Z

    iget-boolean v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbm:Z

    if-ne v2, v3, :cond_2

    iget p1, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbn:I

    iget v2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbn:I

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getBatteryUsagePreference()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbn:I

    return v0
.end method

.method public final getNetworkPreference()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isRoamingAllowed()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbm:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbl:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$zza;->zzbn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "NetworkPreference: %s, IsRoamingAllowed %s, BatteryUsagePreference %s"

    .line 18
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
