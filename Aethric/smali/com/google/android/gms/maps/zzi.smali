.class final Lcom/google/android/gms/maps/zzi;
.super Lcom/google/android/gms/maps/internal/zzba;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzi;->zza:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzba;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/zzi;->zza:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;->onMyLocationClick(Landroid/location/Location;)V

    return-void
.end method
