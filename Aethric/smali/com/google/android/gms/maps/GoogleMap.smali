.class public Lcom/google/android/gms/maps/GoogleMap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;,
        Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;,
        Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;,
        Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;,
        Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;,
        Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;,
        Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_HYBRID:I = 0x4

.field public static final MAP_TYPE_NONE:I = 0x0

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2

.field public static final MAP_TYPE_TERRAIN:I = 0x3


# instance fields
.field private final zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

.field private zzb:Lcom/google/android/gms/maps/UiSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    return-void
.end method


# virtual methods
.method public final addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;
    .locals 2

    :try_start_0
    const-string v0, "CircleOptions must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/maps/model/Circle;

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/internal/maps/zzl;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/Circle;-><init>(Lcom/google/android/gms/internal/maps/zzl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;
    .locals 1

    :try_start_0
    const-string v0, "GroundOverlayOptions must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/internal/maps/zzo;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/GroundOverlay;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/GroundOverlay;-><init>(Lcom/google/android/gms/internal/maps/zzo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    :try_start_0
    const-string v0, "MarkerOptions must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/internal/maps/zzx;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/Marker;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;
    .locals 2

    :try_start_0
    const-string v0, "PolygonOptions must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/maps/model/Polygon;

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/internal/maps/zzaa;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/Polygon;-><init>(Lcom/google/android/gms/internal/maps/zzaa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 2

    :try_start_0
    const-string v0, "PolylineOptions must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/maps/model/Polyline;

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/internal/maps/zzad;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;-><init>(Lcom/google/android/gms/internal/maps/zzad;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;
    .locals 1

    :try_start_0
    const-string v0, "TileOverlayOptions must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/internal/maps/zzag;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlay;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/TileOverlay;-><init>(Lcom/google/android/gms/internal/maps/zzag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 1

    :try_start_0
    const-string v0, "CameraUpdate must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/CameraUpdate;->zza()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->animateCamera(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .locals 2

    :try_start_0
    const-string v0, "CameraUpdate must not be null."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/maps/CameraUpdate;->zza()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/zzaa;

    .line 6
    invoke-direct {v1, p3}, Lcom/google/android/gms/maps/zzaa;-><init>(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    move-object p3, v1

    .line 7
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->animateCameraWithDurationAndCallback(Lcom/google/android/gms/dynamic/IObjectWrapper;ILcom/google/android/gms/maps/internal/zzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 8
    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .locals 2

    :try_start_0
    const-string v0, "CameraUpdate must not be null."

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/maps/CameraUpdate;->zza()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/zzaa;

    .line 11
    invoke-direct {v1, p2}, Lcom/google/android/gms/maps/zzaa;-><init>(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    move-object p2, v1

    .line 12
    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->animateCameraWithCallback(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/internal/zzd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 13
    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final clear()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getFocusedBuilding()Lcom/google/android/gms/maps/model/IndoorBuilding;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getFocusedBuilding()Lcom/google/android/gms/internal/maps/zzr;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/internal/maps/zzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMapType()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getMapType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMaxZoomLevel()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getMaxZoomLevel()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMinZoomLevel()F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getMinZoomLevel()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getMyLocation()Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getProjection()Lcom/google/android/gms/maps/Projection;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/Projection;

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getProjection()Lcom/google/android/gms/maps/internal/IProjectionDelegate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/Projection;-><init>(Lcom/google/android/gms/maps/internal/IProjectionDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getUiSettings()Lcom/google/android/gms/maps/UiSettings;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zzb:Lcom/google/android/gms/maps/UiSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/UiSettings;

    iget-object v1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->getUiSettings()Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/UiSettings;-><init>(Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zzb:Lcom/google/android/gms/maps/UiSettings;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zzb:Lcom/google/android/gms/maps/UiSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isBuildingsEnabled()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->isBuildingsEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isIndoorEnabled()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->isIndoorEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isMyLocationEnabled()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->isMyLocationEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isTrafficEnabled()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->isTrafficEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 1

    :try_start_0
    const-string v0, "CameraUpdate must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/CameraUpdate;->zza()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->moveCamera(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public resetMinMaxZoomPreference()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->resetMinMaxZoomPreference()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setBuildingsEnabled(Z)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setBuildingsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setContentDescription(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setContentDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setIndoorEnabled(Z)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setIndoorEnabled(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/zzi;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzf;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzf;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setInfoWindowAdapter(Lcom/google/android/gms/maps/internal/zzi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setLatLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setLatLngBoundsForCameraTarget(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setLocationSource(Lcom/google/android/gms/maps/LocationSource;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setLocationSource(Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzs;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzs;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/LocationSource;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setLocationSource(Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMapType(I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setMapType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setMaxZoomPreference(F)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setMaxZoomPreference(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setMinZoomPreference(F)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setMinZoomPreference(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraChangeListener(Lcom/google/android/gms/maps/internal/zzn;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzt;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzt;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraChangeListener(Lcom/google/android/gms/maps/internal/zzn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraIdleListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraIdleListener(Lcom/google/android/gms/maps/internal/zzp;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzx;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzx;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraIdleListener(Lcom/google/android/gms/maps/internal/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/internal/zzr;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzw;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzw;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraMoveCanceledListener(Lcom/google/android/gms/maps/internal/zzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraMoveListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraMoveListener(Lcom/google/android/gms/maps/internal/zzt;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzv;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzv;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraMoveListener(Lcom/google/android/gms/maps/internal/zzt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/internal/zzv;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzu;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzu;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCameraMoveStartedListener(Lcom/google/android/gms/maps/internal/zzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnCircleClickListener(Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCircleClickListener(Lcom/google/android/gms/maps/internal/zzx;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzn;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzn;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCircleClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnCircleClickListener(Lcom/google/android/gms/maps/internal/zzx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnGroundOverlayClickListener(Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnGroundOverlayClickListener(Lcom/google/android/gms/maps/internal/zzz;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzm;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzm;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnGroundOverlayClickListener(Lcom/google/android/gms/maps/internal/zzz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/internal/zzab;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzk;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzk;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnIndoorStateChangeListener(Lcom/google/android/gms/maps/internal/zzab;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/zzad;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzc;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzc;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/internal/zzad;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnInfoWindowCloseListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnInfoWindowCloseListener(Lcom/google/android/gms/maps/internal/zzaf;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zze;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zze;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnInfoWindowCloseListener(Lcom/google/android/gms/maps/internal/zzaf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnInfoWindowLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnInfoWindowLongClickListener(Lcom/google/android/gms/maps/internal/zzah;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzd;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzd;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnInfoWindowLongClickListener(Lcom/google/android/gms/maps/internal/zzah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapClickListener(Lcom/google/android/gms/maps/internal/zzal;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzy;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzy;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapClickListener(Lcom/google/android/gms/maps/internal/zzal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/zzan;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzj;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzj;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/internal/zzan;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/zzap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzz;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzz;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapLongClickListener(Lcom/google/android/gms/maps/internal/zzap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/zzat;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zza;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zza;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMarkerClickListener(Lcom/google/android/gms/maps/internal/zzat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/zzav;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzb;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzb;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMarkerDragListener(Lcom/google/android/gms/maps/internal/zzav;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/internal/zzax;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzh;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzh;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationButtonClickListener(Lcom/google/android/gms/maps/internal/zzax;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/internal/zzaz;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzg;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzg;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/internal/zzaz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnMyLocationClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationClickListener(Lcom/google/android/gms/maps/internal/zzbb;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzi;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzi;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMyLocationClickListener(Lcom/google/android/gms/maps/internal/zzbb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnPoiClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnPoiClickListener(Lcom/google/android/gms/maps/internal/zzbd;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzr;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzr;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnPoiClickListener(Lcom/google/android/gms/maps/internal/zzbd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnPolygonClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnPolygonClickListener(Lcom/google/android/gms/maps/internal/zzbf;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzo;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzo;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnPolygonClickListener(Lcom/google/android/gms/maps/internal/zzbf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setOnPolylineClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnPolylineClickListener(Lcom/google/android/gms/maps/internal/zzbh;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 3
    new-instance v1, Lcom/google/android/gms/maps/zzp;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzp;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnPolylineClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnPolylineClickListener(Lcom/google/android/gms/maps/internal/zzbh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPadding(IIII)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setPadding(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final setTrafficEnabled(Z)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setTrafficEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
    .locals 1

    const-string v0, "Callback must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "Callback must not be null."

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lcom/google/android/gms/dynamic/ObjectWrapper;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzq;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzq;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->snapshot(Lcom/google/android/gms/maps/internal/zzbu;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 6
    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final stopAnimation()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zza:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->stopAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
