.class public interface abstract Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.0.0"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract activate(Lcom/google/android/gms/maps/internal/zzaj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deactivate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
