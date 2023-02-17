.class public final Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/maps/model/LatLng;

.field private zzb:F

.field private zzc:F

.field private zzd:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "previous must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/CameraPosition;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zza:Lcom/google/android/gms/maps/model/LatLng;

    .line 3
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzb:F

    .line 4
    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzc:F

    .line 5
    iget p1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzd:F

    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzd:F

    return-object p0
.end method

.method public build()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zza:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzb:F

    iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzc:F

    iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzd:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 1

    const-string v0, "location must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zza:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzc:F

    return-object p0
.end method

.method public zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zzb:F

    return-object p0
.end method
