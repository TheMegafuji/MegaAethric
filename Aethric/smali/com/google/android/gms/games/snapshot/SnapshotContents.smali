.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotContents;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract modifyBytes(I[BII)Z
.end method

.method public abstract readFully()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytes([B)Z
.end method

.method public abstract zza()Lcom/google/android/gms/drive/Contents;
.end method

.method public abstract zzb()V
.end method
