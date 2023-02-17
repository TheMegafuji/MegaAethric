.class final Lcom/google/android/gms/games/multiplayer/realtime/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/gms/games/multiplayer/realtime/zzb;

    invoke-direct {p1}, Lcom/google/android/gms/games/multiplayer/realtime/zzb;-><init>()V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/games/multiplayer/realtime/zzb;

    return-object p1
.end method
