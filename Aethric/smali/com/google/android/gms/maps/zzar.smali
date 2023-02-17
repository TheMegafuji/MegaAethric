.class final Lcom/google/android/gms/maps/zzar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/maps/internal/StreetViewLifecycleDelegate;


# instance fields
.field private final zza:Landroid/view/ViewGroup;

.field private final zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

.field private zzc:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    iput-object p2, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/maps/zzar;->zza:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzaq;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzaq;-><init>(Lcom/google/android/gms/maps/zzar;Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/internal/zzbr;)V
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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 8
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/zzbz;->zzb(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/internal/zzbz;->zzb(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->getView()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/gms/maps/zzar;->zzc:Landroid/view/View;

    iget-object p1, p0, Lcom/google/android/gms/maps/zzar;->zza:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/google/android/gms/maps/zzar;->zza:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/maps/zzar;->zzc:Landroid/view/View;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "onCreateView not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->onDestroy()V
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

.method public final onDestroyView()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onDestroyView not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "onInflate not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onLowMemory()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->onLowMemory()V
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

.method public final onPause()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->onPause()V
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

.method public final onResume()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->onResume()V
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

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 5
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/internal/zzbz;->zzb(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/internal/zzbz;->zzb(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onStart()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->onStart()V
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

.method public final onStop()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/zzar;->zzb:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->onStop()V
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
