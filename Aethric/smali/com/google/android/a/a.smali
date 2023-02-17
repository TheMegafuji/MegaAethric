.class public Lcom/google/android/a/a;
.super Ljava/lang/Object;
.source "BaseProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/a;->a:Landroid/os/IBinder;

    const-string p1, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    iput-object p1, p0, Lcom/google/android/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Landroid/os/Parcel;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/a;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method protected final b(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/a/a;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-interface {v1, v2, p1, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 7
    throw v0
.end method
